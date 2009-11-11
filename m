Date: Wed, 11 Nov 2009 10:28:24 +0100 (CET)
From: Kai-Uwe Behrmann <ku.b@gmx.de>
In-Reply-To: <4AF96B6A.7030307@gmail.com>
Message-ID: <alpine.LSU.2.00.0911110746410.5392@sirius.rasena>
References: <e395be80811270817n502ccd16wf6cc90f85364f5ae@mail.gmail.com>
	<4AF14A4E.5050903@gmail.com>
	<5B109C6D-12A5-47AD-9C26-D9E0606E21D3@mmiworks.net>
	<4AF96B6A.7030307@gmail.com>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; format=flowed; charset=US-ASCII
Subject: Re: [Printing-architecture] [Openicc]  Colour
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: printing-architecture@lists.linux-foundation.org, gimp-print-devel@lists.sourceforge.net, OpenICC Liste <openicc@lists.freedesktop.org>

The following text will merely describe what I would like to see as a 
user. Some comments are added to explain what is meant colour management 
wise. Please do not wonder when not even print device selection is 
mentioned in my text. I assume such all to be covered elsewhere.
As Scribus and other projects have focus and a long experience with 
printing, it would shureley be great to read their thoughts or comments, 
what they would think are useful CM options for CPD.


Starting the print button I would like to see in a colour management tab, 
offering following basic controls:

Colourmanage by System      (*)
Colourmanage in Application ( )
No Colourmanagement         ( )
The first would be part of the CUPS *toraster system once its 
implemented.


Colourmanage in Application (early colour binding):
A print device profile is needed. So with this option enabled a
selection for a "Separation profile" should appear showing the 
system installed profiles. The one ICC profile matching the actual print 
conditions the most should be preselected. The other matching and non 
matching profiles should follow in a descending order in the selection 
list. Once Oyranos is distribution ready and availabel it can help in 
preselection and device to profile association.
The set of useful profiles is dependent to the print process. E.g. for a 
"Rgb" printer I would not like to select a Cmyk or nColour profile, for 
"Cmyk" not a Rgb one.

For application colour management the responsibility to match between 
options and ICC profile lays in the hand of the user with the help of a 
hopefully well designed application and its helpers.
It is important to note that any print profile is useful only 
within a defined set of variables associated with print device, medium, 
ink set, driver and driver settings. The Oyranos CUPS module tries to 
cover these relations as they are programatically reachable.

Two ways to get profile to print condition matching UI wise I may outline.
preserve - would mean the user selects a print queue.
            Then a profile selection system can detect a list of
            available and useful profile and they are presented to the
            user. All colour related options, except the above and below
            mentioned colour management options are not changeable. So e.g.
            a user can change positioning but not the ink set. This is a
            typical colour managed mode as many vendor drivers offer.
            A UI, offering expert level control, may allow to prominently
            breaking the profile to print settings relation as a special
            option. Typical a warning dialog could popup to say "Hey, do'nt
            change this setting or your profile does not match any more.
            Cancel[x] Break[]". You may have an alternative to popups.
sync     - a user can select whatever options are permitted by the other
            UI components. The ICC device profile selection is updated
            instantly (assuming its fast enough).

The rendering intent, blackpoint compensation would be needed as the 
minimum of options. Additionally a "Simulation profile" and further 
options of the selected CMM can be helpful to designers and prepress 
people. E.g. "Preserve Black" and the like for Cmyk2Cmyk conversions.

After that I would expect the document gets flattened and converted to the 
requested device colour space, which in turn is sent unaltered to the 
printer. The selected separation profile (must) be embedded and the whole 
thing marked as further not to be colourmanaged.
Some PDF variants allow for that. But I am no PDF expert. So someone with 
certain knowledge in this field could hopefully tell more precisely, which 
exact PDF versions and attributes are needed to do this in a standard way.


Colourmanage by System (late colour binding):
Here is not much to say. The document needs all colour spaces be assigned 
properly, that a remote print host can make colourful sense of the 
content. A option for "Flatten Document Colour Spaces" would help in 
disambiguating the compositing colour space. That is useful for mixed 
colour space documents only. The resulting colour space of a 
colour space flattened document would be the compositing colour space, 
which is typical the default editing Rgb colour space, but can differ in 
some situations. The responsibility to correctly render the document is by 
the print system. Such documents are most portable, as they do not need a 
retargetting, and should therefore be the default setting.
This approach is in colour terminology called late colour binding, because 
the colours get their final values in a rather later stage.


No Colourmanagement:
Omit all colour management related settings and enshure that the content 
is not altered during the spooling and printing. This option is important 
to print colour target, prematched files and for special applications, 
where altering of the content is undesireable. It preserves the state as 
is now.


A print preview with a check box to "Simulate on Monitor" would be great 
and many consider it a basic feature, as it will help users to predict the 
print results. To do the proofing, the selected print profile would work 
as the simulation or proofing profile. The target is the actual monitor 
profile for that screen region. Oyranos has code in the CUPS module to 
obtain certainly the locally stored user accessible ICC device profile. 
Any CUPS profiles, being them local or remote, need more details worked 
out to fit in seamless in a easy manageable workflow.

If you want to make a professional feature available the kind of on screen 
simulation can be selectable. This means to be able to alter the rendering 
intent for the proofing profile which is separate from the document to 
print rendering intent. The rendering intent for the proofing profile can 
be eigther relative colourimetric as a default and optional absolute 
colorimetric. The later would allow for a "Match to Light Booth", 
compensating for white point differences and do no compensation for the 
monitor white point. A further option would be to "Simulate Paper White" 
on screen, which is included in the previous option as well but without 
the absolute white point.


Vendor ICC colour profile can be included by device dedicated PPDs and 
therein configured ICC profiles.


A "Save to PDF" button with all settings applied would be welcome, but is 
shurely already covered by the requirement.


kind regards
Kai-Uwe Behrmann
-- 
developing for colour management 
www.behrmann.name + www.oyranos.org


PS: I would have loved to refere to the linuxfoundation page on print
     related CM but could not find. I would like to update links to it. Did
     it move(?):
https://www.linuxfoundation.org/collaborate/workgroups/openprinting/color_management


Am 10.11.09, 14:32 +0100 schrieb Till Kamppeter:
> Cross-posting to the OpenICC and Gutenprint mailing list, to get more
> input from the color experts.
>
> Anyone of the color printing/management experts can help Kate?
>
>    Till
>
> P. S.: OpenICC mailing list info page:
> http://lists.freedesktop.org/mailman/listinfo/openicc
>
> Gutenprint mailing list info page:
> https://lists.sourceforge.net/lists/listinfo/gimp-print-devel
>
> kate price wrote:
>>
>> I am working on the UI design of the CPD and  looking at the controls
>> and parameters for colour, both as presets/profiles and as more
>> detailed controls. Therefore, I'll need to get a good understanding of
>> how this all works.
>>
>> Including:
>> the workflow from application to printer
>> colour profiles
>> color management; in applications, and printer colour management.
>> what happens where?
>> detailed user interaction: what controls need to be there?
>>
>>
>> Can someone point me in the right direction? Provide some useful
>> information or sources of information?
>>
>> Thanks in anticipation,
>>
>>
>> Kate
>>
>>      man + machine interface works
