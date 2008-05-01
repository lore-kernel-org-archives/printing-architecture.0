Message-ID: <481A017F.5010006@gmail.com>
Date: Thu, 01 May 2008 19:44:31 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <481212B6.9040301@gmail.com> <4819EE1D.8030502@gmx.de>
In-Reply-To: <4819EE1D.8030502@gmx.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Coding the Common Printing Dialog and
 its interface - PPD and Foomatic extensions
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Lars Uebernickel <larsuebernickel@gmx.de>
Cc: printing-architecture@lists.linux-foundation.org

Lars Uebernickel wrote:
> Till Kamppeter wrote:
>> Hi,
>>
>> here is my suggestion for part 1 of the specs, the extensions for PPDs:
>>
>>
>> 1. Custom options/Advanced data types
>> -------------------------------------
>>
>> We use the CUPS extensions for custom options, so that not only boolean 
>> and enumerated choice options are posible but also more advanced datatypes:
>>
>> - integer numbers
>> - real numbers - interpreted linearly or exponentially, for example for
>>   color and brightness adjustments
>> - lengths in points - for example for margin widths
>> - strings - for example for user names and fax numbers
>> - passwords - numerical or alphanumerical
>>
>> See section "Custom Options" on
>> http://www.cups.org/documentation.php/spec-ppd.html
> 
> Are there any other datatypes that might be needed often? The more 
> precise an option is defined in the PPD, the better a gui can show
> it to the user (and prevent false entries).
> 
> For example, Ricoh's "UserCode" option, which is basically an 
> eight-digit number, but should be displayed as a string rather than a 
> slider or spinbox. This is similar to the 'passcode' option, only in 
> clear text. If it is exposed as a string, the dialog can not warn a user 
> if he enters non-digit characters.
> 
> If there is a need for additional types like this, we should try to get 
> them into CUPS as soon as possible, otherwise all kinds of workarounds 
> might get into the PPDs.
>

CUPS 1.4 seems to be shortly before beta and so shortly before feature 
freeze. I do not kno whether we will get still something new in, but you 
should try. Make a feature request for a new custom option, like for 
example "code" which allows a string of digits in a given length range, 
but with visible input of the code.

> 
>  > --- snip ---
>  >
>> 3. "Quick Presets" button support
>> ---------------------------------
>>
>> There are two possibilities to describe such buttons in the PPD file 
>> (and we should support both for maximum flexibility):
>>
>> a) One option in the PPD has to be selected to represent the quick 
>> preset buttons in the default view of the OpenUsability printing dialog. 
>>  This option will not appear under the tags then, even if it is tagged 
>> in the PPD. It must be an enumerated choice option where each choice 
>> will make up one button. We will select it by using the following 
>> keyword ONCE in the PPD file:
>>
>> *OPQuickPresetsOption: PrintoutMode
>>
>> In this example "PrintoutMode" is the option selected to make up the 
>> buttons.
>>
>> In Foomatic we could add the tag
>>
>> <QuickPresets />
>>
>> to one option XML file to select the appropriate option.
>>
>> b) With special keywords we define each button and which options it 
>> should set:
>>
>> *OPQuickPresetsButton Document/Office Document: "Resolution=600dpi 
>> MediaType=Plain"
>> *OPQuickPresetsButton Photo/Photo: "Resolution=1200dpi MediaType=Glossy"
>> ...
> 
> I think "*OPQuickPreset" suffices. It might not be implemented as
> buttons in all cases.
> 

You mean simply to replace the keyword *OPQuickPresetsButton by 
*OPQuickPreset here? I think this is a good idea. It is also shorter.

> 
>> --- snip ---
>  >
>> 5. Icons for options and choices
>> --------------------------------
>>
>> Let us also give the possibility to add an icon to every human-readable 
>> text item in the dialog: option names, choice names, tag names. ...
>>
>> To not need to invent too many new keywords, let us simply add 
>> "translations" with the language code "OPIcon" for option choices and 
>> let them have the base-64-UU-encoded icon, either a PNG image or SVG 
>> drawing as its code:
>>
>> *OPIcon.InputSlot Auto: "begin-base64 644 InputSlot-Auto.png
>> iVBORw0KGgoAAAANSUhEUgAAAOAAAAC6CAMAAACA5rFCAAADAFBMVEX/////
>> /8z/zP//zMz/zGb/zDP/zAD/mWb/mTP/mQD/Zmb/MzPM///M/8zM/zPMzP/M
>> zMzMzJnMzGbMzDPMzADMmf/MmczMmZnMmWbMmTPMmQDMZjPMZgCZzP+ZzMyZ
>> ...
>> 4SfnV38C83lfZ0FU5/N58n1aZI2z2fxfwOTVfkPrH2h/Luv33J7bc3tuz+25
>> Pbfn9tye25+5/T9t163O+/ghTQAAAABJRU5ErkJggg==
>> ===="
>> *End
>>
>> For main keywords lets use
>>
>> *OPIcon InputSlot: "begin-base64 644 InputSlot.png
>> iVBORw0KGgoAAAANSUhEUgAAAOAAAAC6CAMAAACA5rFCAAADAFBMVEX/////
>> ..."
>> *End
> 
> Will those icons only be defined in the PPD files? This could mean that
> the options and tags have different icons for different printers 
> (especially if they are from different vendors), which might be 
> confusing. Wouldn't it make sense to have a set of standard icons for 
> the most common options (such as PaperSize), and only use custom icons 
> for options which are specific to a printer/vendor?
>

We can do it as follows:

We let the dialog provide standard icons, and they are used as long as 
the appropriate option or choice in the PPD does not bring its own icon. 
If neither the dialog nor the PPD has an icon, the option or choice 
stays without icon.

In the specs we should give a list of the icons we provide and also info 
about the desired size for icons provided by the PPD. The dialog should 
scale icons which are of unsuitable size though.

> 
>> For a manufacturer-specific picture (logo or so) let us use '*OPIcon 
>> Manufacturer: "..."' and for a model-specific picture (image of the 
>> printer or so) let us use '*OPIcon ModelName: "..."'.
> 
> Where will the logo appear in the dialog? If we reserve space for it 
> somewhere in the dialog, we should probably publish some some size 
> restrictions for it (or at least an aspect ratio).
> 

Yes, we should give an aspect ratio, perhaps even more than one scheme 
(horizontal top banner, left side banner, ...).

    Till
