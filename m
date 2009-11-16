From: "Hal V. Engel" <hvengel@astound.net>
Date: Mon, 16 Nov 2009 13:08:51 -0800
References: <e395be80811270817n502ccd16wf6cc90f85364f5ae@mail.gmail.com>
	<5D2F46F4-82CB-44F0-8E08-466733DFABBB@mmiworks.net>
	<Pine.LNX.4.64.0911161329000.22140@sirius.rasena>
In-Reply-To: <Pine.LNX.4.64.0911161329000.22140@sirius.rasena>
MIME-Version: 1.0
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit
Message-Id: <200911161308.51533.hvengel@astound.net>
Subject: Re: [Printing-architecture] [Gimp-print-devel] [Openicc]  Colour
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Kai-Uwe Behrmann <ku.b@gmx.de>
Cc: Roy Harrington <roy@harrington.com>, Michael Sweet <msweet@apple.com>, openicc <openicc@lists.freedesktop.org>, Till Kamppeter <till.kamppeter@gmail.com>, printing-architecture@lists.linux-foundation.org, gimp-print-devel@lists.sourceforge.net

On Monday 16 November 2009 09:36:26 am Kai-Uwe Behrmann wrote:
> Am 16.11.09, 13:09 +0100 schrieb kate price:
> > Hi all
> >
> > I've been reading all posts with varying levels of comprehension, but
> > always with great interest.
> > To get back to my own concern, design of the UI for the CPD I'm going
> > to boil this down to a quite high level statement which expresses the
> > direction we believe the CPD should take. This is not only in response
> > to the information gleaned here, but also very much in the context of
> > our own convictions about the design of a print dialogue for all users.
> >
> > So:
> >
> > *If printing doesn't exist, colour printing also doesn't exist. Terms
> > and concepts like colour management and ICC profiles have no meaning
> > to a vast majority of users. Most users  want their colour printing to
> > just work with no intervention required.
> 
> Agreed, most users do not need to know about techical details.
> As soon as they want colour to just work, ICC colour management is the
> right choice to get this done. So at least the results of colour
> management are understood, and meeting of expectations regarding colour is
> part of how they are satisfied with the print system.
> 
> > *Successful colour printing is as much about media as it is about the
> > ink which goes on it. This means that for successful colour printing
> > from the CPD a holistic picture of the print is required.
> 
> Colour experts will largely agree.
> 
> > *Detailed controls of colour settings, detailed proofing of colour
> > fidelity etc. is far better suited to and achievable within the print
> > preview of a suitable application (GIMP, photoshop etc etc).
> 
> Is it planed to omit a detailed print preview? I have seen this kind of
> windows and modes in office applications,  mainly to walk through multi
> page documents before printing. They are very useful there.

I think the CPD design probably needs to be clarified for those who have not 
had a chance to review the current design.  The CPD has a print preview that:

1. Is always displayed unless the user says "just print" which bypasses the 
UI.

2. Has a fixed size and is fairly small.

3. The preview is NOT intended for proofing since it's small size makes it of 
limited usefulness for this and the apps that are used by users who need/want 
soft proofing generally already have this built in or available as a plug-in 
(GIMP, Scribus...).

While I am not sure that I totally agree with these design choices they are 
reasonable and are a good starting point for moving forward.

For more details on the UI design see

http://www.mmiworks.net/eng/publications/labels/openPrinting.html

> 
> How is the print preview integrated with CPD? Shall it work like a
> button inside CPD, which calls into the main application with some
> parameters to render the preview on application side? Or is it a tab?

The CPD does not use tabs.  See the above link for details on why this is the 
case.  Keep in mind that the CPD is designed for the new PDF based printing 
work flow so it expects that the app will pass it a PDF file and this is used to 
render the preview.  The same PDF is passed to the back end when the users 
commits the print job.

> A link to according documentation would be great.

See the above link.

> 
> > *Professionals and power users and enthusiasts  need to be able to use
> > profiles and presets they have made or downloaded.  Therefore there is
> > a clear need to use colour presets directly from the CPD, even if it
> > is accepted that they cannot be made within the CPD.
> 
> How can we learn details about CPD presets? What makes it difficult to
> dump out a CPD preset?

Users can create CPD presets and these are persistent.  A static set of 
presets are also configured in the PPD file by the driver vendor so that certain 
presets are vendor/device specific and always present.  IE. there are a set of 
presets that are specified by the vendor in the PPD file that are always present 
unless a local admin has modified the printer PPD file.

I don't know anything about extracting and sharing user created presets.  

> 
> > Practically this means that:
> >
> > *Color controls are not in the CPD or at the very most, barely there.
> 
> While the idea was provided to hide low level ICC options, I would
> see it as an disadvantage to have the ICC related controls not
> available and would favour to make the outlined CM controls available in
> CPD through a experts only panel, 

The CPD is for the most part controlled by the contents of the printer PPD 
file.  Controls are grouped and those groups are presented to users who can add 
or remove these groups from the controls that are displayed.  Controls can be 
in more than one group but are only displayed once.  In the CPD these groups 
are called tags.   By enabling or disabling these tags the user can make the 
CPD as simple or complex as they want within the limits of what is exposed in 
the PPD file.  In its simplest form the CPD only has controls to select 
presets, to select the queue, to enable the selection of tags and to select 
the number of copies printed along with the preview.

I believe that it is possible to have tags and controls that are not specified 
in the devices PPD file for doing things that are not printer specific.  This 
could be used to have a Color Management tag for those controls related to 
this functionality.  For users who choose one of the vendor created presets CM 
will likely be set to use the system default profiles and CM processing path.  

Advanced users should be able to create presets for printing targets that 
completely disable all color processing and other presets for certain types of 
prematched printing if the back end can not be configured to correctly handle 
profile selection.  I think we should be able to make the need for prematching 
a very rare occurrence if we can get Oyranos/CUPS and friends to work 
correctly.  But I think it could take some time to get all of this working the 
way we want.

Currently there are no CM controls available on the CPD unless those are in 
the devices PPD file (and none have this that I know of).
 
> which has a reset button for getting
> easily to the defaults.
> But if not, how can applications plug-in a own CM panel into CPD?
> 
> 
> As well looking at Windows and osX print dialogs, there are a lot of
> colour controls. These are not the expert controls you wrote about.
> Nevertheless they are a big selling point for photo printers.
> Delivering vivid, natural, sepia and other effects on button click
> including a canned ICC profile mode is typical integrated into driver
> panels of photo capable printers. Why would print manufacturers wast that
> space if it would be of no need?
> As well I expect most home users have a photo mode in their printing
> device. They print mostly letters but from time to time as well images
> and flyers. So this kind of ICC colour controls matters.
> 
> > *Let the API take the strain: i.e automatic colour control override is
> > desirable and achievable.
> 
> You mean setting and freezing colour related controls as soon as a ICC
> profile is selected(?) This would be the correct mode for the use of ICC
> profiles. Somehow CPD has to know, which settings are colour related for
> the particular driver. This can eigther be transported through Oyranos or
> the profile itself, which again can be translated by Oyranos.
> 
> There will be people who complain about the missed capability to hand
> tweak their colours. This is quite natural. A way to satisfy those
> demand is to support effect profiles, which fits well with the point
> above.
> 
> > *Focus on at the practical process of getting presets into our CPD
> > interface to work for enthusiasts and professionals alike.
> >
> > It seems to me that a good focus from here would be to really get the
> > presets working for the most sophisticated users (as well as others).
> > This would be an area where further imput from interested parties
> > would be welcomed because I believe that there is a great opportunity
> > already here within the current design of the CPD. Surely integrating
> > the making, saving and using of these presets into a  smooth and
> > comprehensible part of a print workflow would be a great -and
> > importantly- achievable step forward that we can provide?

I agree with this.  When I saw how the CPD was designed to work at the 
OpenPrinting Summit in April I was impressed by how flexible and user centric 
the UI design for the CPD is.  IMO it is the most advance printing UI in 
existence and it shows a lot of promise for moving things forward.  About the 
only things missing at this point are how CM should be presented and almost 
none of the vendor PPD files are setup to take full advantage of the CPD (PPD 
extensions were created to support these advanced CPD features and most PPD 
files do not use these yet). 

> 
> A big advantage of dumping out a preset is better supportability. With
> dumped files, it is possible to send such a preset to a knowledgeable
> person for remote analysis.
> Cloning presets is for administrators and for sharing among people equally
> useful.

Admins need a way to create presets that are available for all users of a 
given queue/printer.   Doing this by modifying the PPD file on the server is 
only acceptable as an interim measure. This is very important for the CM 
related presets for shared printers in organizations that need to have 
professionally configured color managed print queues.  For example color 
consultants/experts should be able to calibrate and profile a 
printer/media/drivers settings combination and then create a preset that will 
always set the printer up correctly (IE. select the correct paper tray, set 
the right driver settings, use the correct profile, lock down any controls that 
affect color...) and that preset should be available to any user who uses that 
printer/queue.  Then all users have to do to get a hand configured color 
managed print is to select that preset.

This would be useful even for local print queues.  For example my wife likes 
to print photos and complains about how complex it is to get the same quality 
of results that I do.  Her complaints are justified IMO since it requires 
jumping through hoops that are difficult for non-color experts to understand.  
If I could configure a preset that did everything to insure that the correct 
things would happen I could label that preset something like "Print Photos on 
XXX Paper" and all she would have to do is load the correct paper into the 
printer and select the custom preset.  I am sure that this would make my wife 
happy and it would also mean that I would not have to assist her every time 
she wanted to print some photos (which I think would also make her happy).

> 
> Regarding ICC profiles, a preset package would need to include the ICC
> profile.
> 
> > Kate
> >
> > Kate Price
> > man + machine interface works
> 
> kind regards
> Kai-Uwe Behrmann
> 
