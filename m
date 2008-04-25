Message-ID: <481212B6.9040301@gmail.com>
Date: Fri, 25 Apr 2008 19:19:50 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit
Subject: [Printing-architecture] Coding the Common Printing Dialog and its
 interface - PPD and Foomatic extensions
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Alexander Wauck <alex.wauck@gmail.com>, Lars Uebernickel <larsuebernickel@gmx.de>
Cc: printing-architecture@lists.linux-foundation.org, Peter Sikking <peter@mmiworks.net>, Jonathan Riddell <jriddell@ubuntu.com>

Hi,

here is my suggestion for part 1 of the specs, the extensions for PPDs:


1. Custom options/Advanced data types
-------------------------------------

We use the CUPS extensions for custom options, so that not only boolean 
and enumerated choice options are posible but also more advanced datatypes:

- integer numbers
- real numbers - interpreted linearly or exponentially, for example for
   color and brightness adjustments
- lengths in points - for example for margin widths
- strings - for example for user names and fax numbers
- passwords - numerical or alphanumerical

See section "Custom Options" on
http://www.cups.org/documentation.php/spec-ppd.html


2. Multi-language PPDs
----------------------

We use also the CUPS extensions for multi-language PPDs. This way a 
print queue can be set up on a server and the users on the clients can 
use different desktop languages and the printer options appear in their 
languages.

See section "Globalized PPD Support" on
http://www.cups.org/documentation.php/spec-ppd.html


3. "Quick Presets" button support
---------------------------------

There are two possibilities to describe such buttons in the PPD file 
(and we should support both for maximum flexibility):

a) One option in the PPD has to be selected to represent the quick 
preset buttons in the default view of the OpenUsability printing dialog. 
  This option will not appear under the tags then, even if it is tagged 
in the PPD. It must be an enumerated choice option where each choice 
will make up one button. We will select it by using the following 
keyword ONCE in the PPD file:

*OPQuickPresetsOption: PrintoutMode

In this example "PrintoutMode" is the option selected to make up the 
buttons.

In Foomatic we could add the tag

<QuickPresets />

to one option XML file to select the appropriate option.

b) With special keywords we define each button and which options it 
should set:

*OPQuickPresetsButton Document/Office Document: "Resolution=600dpi 
MediaType=Plain"
*OPQuickPresetsButton Photo/Photo: "Resolution=1200dpi MediaType=Glossy"
...

Translations for the button texts are done as with option choices:

*de.OPQuickPresetsButton Document/Bürodokument: ""
*de.OPQuickPresetsButton Photo/Foto: ""
...

In Foomatic we could create an option with a new "quickpresets" option type.

The buttons have a little bit different meaning with a) and b).

In case a) always one button is selected, as each option of the PPD must 
have a value. If the driver or the PPD is designed so that this option 
sets several of the other options, there must either a quick preset 
button for manual setting of the other options or each of the other 
options must have an "Automatic", or "None" setting where the setting 
from the quick preset buttons is used and its usual settings (this 
latter case is the case for the "PrintoutMode" option in Foomatic PPDs. 
Case a) makes the quick presets available in all dialogs, not only in 
the OpenUsability one. The quick presets simply appear as an extra option.

In case b) clicking a button sets all options in the button's list to 
the given values. After having clicked one can change the options 
individually. Here no button would be shown as selected, or on each 
option change (independent whether by button or individually) one checks 
the option settings against the button's lists and shows each button 
whose options are set as in its list pressed down. In case b) there will 
be no option appearing in non-OpenUsability dialogs to represent the 
quick preset buttons.

For legacy PPDs without special keywords for quick preset buttons we use 
the "PrintoutMode" option, as this one does exactly this task in 
Foomatic PPDs.

A second fallback could be to set standard options for the printout quality:

Button       Settings
------------------------------------------------------------------
Draft        Resolution=<Lowest Choice> Economode=On
Normal       Resolution=<Second highest value> Economode=Off
High Quality Resolution=<Highest Value> Economode=Off


4. Option Tagging
-----------------

In the OpenUsability printing dialogs options are categorized by tags. 
In contrary to groups an option can have more than one tag. The option 
will be shown if any of the tags is selected. For example the Duplex 
option can have a "Paper Handling" and "Resource Saving" tag. If either 
of these is selected, the option will be shown.

In PPD options must be tagged to make this working. Let us define tags 
and translations for their human-readable texts like this:

*OPOptionTag ResourceSaving/Resource Saving: ""
*de.OPOptionTag ResourceSaving/Resourcen sparen: ""

Let each option have this keyword to assign it with one or more tags:

*OPTagList Duplex: "ResourceSaving PaperHandling
Finishing"
*End

In Foomatic add a construction like this to each option XML file (into 
the "<arg_execution>...</arg_execution>" section):

<tags>
   <tag id="PaperHandling">
      <en>Paper Handling</en>
      <de>Papierhandhabung</de>
   </tag>
   <tag id="ResourceSaving">
      <en>Resource Saving</en>
      <de>Resourcen sparen</de>
   </tag>
</tags>


5. Icons for options and choices
--------------------------------

Let us also give the possibility to add an icon to every human-readable 
text item in the dialog: option names, choice names, tag names. ...

To not need to invent too many new keywords, let us simply add 
"translations" with the language code "OPIcon" for option choices and 
let them have the base-64-UU-encoded icon, either a PNG image or SVG 
drawing as its code:

*OPIcon.InputSlot Auto: "begin-base64 644 InputSlot-Auto.png
iVBORw0KGgoAAAANSUhEUgAAAOAAAAC6CAMAAACA5rFCAAADAFBMVEX/////
/8z/zP//zMz/zGb/zDP/zAD/mWb/mTP/mQD/Zmb/MzPM///M/8zM/zPMzP/M
zMzMzJnMzGbMzDPMzADMmf/MmczMmZnMmWbMmTPMmQDMZjPMZgCZzP+ZzMyZ
...
4SfnV38C83lfZ0FU5/N58n1aZI2z2fxfwOTVfkPrH2h/Luv33J7bc3tuz+25
Pbfn9tye25+5/T9t163O+/ghTQAAAABJRU5ErkJggg==
===="
*End

For main keywords lets use

*OPIcon InputSlot: "begin-base64 644 InputSlot.png
iVBORw0KGgoAAAANSUhEUgAAAOAAAAC6CAMAAACA5rFCAAADAFBMVEX/////
..."
*End

And this is for the option tags:

*OPIcon.OPOptionTag ResourceSaving: "begin-base64 644 ResourceSaving.svg
..."
*End

For a manufacturer-specific picture (logo or so) let us use '*OPIcon 
Manufacturer: "..."' and for a model-specific picture (image of the 
printer or so) let us use '*OPIcon ModelName: "..."'.


What do you think about these specs for PPD extensions? Should we go 
this way? Or is there something missing? Breaking Adobe specs? If all is 
OK, we should start coding the dialog and the dialog interface based on 
these extensions.

    Till

