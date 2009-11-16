Date: Mon, 16 Nov 2009 08:57:26 +0100 (CET)
From: Kai-Uwe Behrmann <ku.b@gmx.de>
In-Reply-To: <200911151226.49297.hvengel@astound.net>
Message-ID: <alpine.LSU.2.00.0911160610150.5067@sirius.rasena>
References: <e395be80811270817n502ccd16wf6cc90f85364f5ae@mail.gmail.com>
	<620c0af50911141715y3c5739ffxf51480387fa0be59@mail.gmail.com>
	<77618445-60C9-4D30-99F8-B42DBCCBF24E@apple.com>
	<200911151226.49297.hvengel@astound.net>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; format=flowed; charset=US-ASCII
Subject: Re: [Printing-architecture] [Openicc] [Gimp-print-devel]   Colour
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "Hal V. Engel" <hvengel@astound.net>
Cc: Roy Harrington <roy@harrington.com>, Michael Sweet <msweet@apple.com>, openicc <openicc@lists.freedesktop.org>, printing-architecture@lists.linux-foundation.org, gimp-print-devel@lists.sourceforge.net

Am 15.11.09, 12:26 -0800 schrieb Hal V. Engel:
> This is something that I can generally agree with.  One of the goals of the
> Oyranos project is to facilitate exactly this kind of user experience.  I also
> think this is what the CPD is intended to support in the long run.  The key
> points are:
>
> 1. A very simple printing UI that hides most things color related.
>
> 2. In general all (non-target, non-prematched) CM is handled on the back end
> and color is managed using ICC profiles.

Ah, that would be equal with the Colourmanage by System mode.

Well, as I wrote my initial response, my take was to let CPD implement and 
present a UI for full colour management control. With the additional 
requirements to softproofing and other stuff let me throw the question,
will CPD have a architecture to allow custom application side tabs and 
windows in a style of plug-ins? Can these plug-ins be shared between 
applications? It would allow for additional features like a bigger print 
preview including soft proofing out of gamut marking and att that.

On the opposite, please correct me, Hal seems to favourise a API which 
allowes for that advanced colour management (CM) stuff. That includes 
changing of rendering intent, BPC, obtaining the printer profile for soft 
proofing. How shall that UI wise integrate with CPD? In CinePaint I never 
touched the Gutenprint panel. It was sub ideal (a hack) to have the colour 
management dialog in advance to the print dialog. The print profile is not 
known during soft proofing. The proofing profile can be different from the 
print profile. I found printing dialogs much more useful, which allowed 
a scalable preview. Some came even with a pager. Shall CPD show a print 
preview button. Sorry if that is already discussed on the Linuxprinting
mailing list.

IMO, the current way to present toppic clouds in CPD is useable to hide CM 
controls for most users, but still they are always reachable for those who 
want them. Breaking consitency of print settings related to the selected 
ICC profile should, if at all allowed, be indicated by a big warning.

There are situations where people try to improve their results with canned 
ICC profiles by tweaking the print settings. This is something, I 
regulary did in times, where I had no ICC workflow available. A way to 
include custom corrections and effect profiles would be nice to have 
anyway.

Effect profiles can then be used for the preferenced artistic look of a 
print out. 
This would more egalise the selection of a special printer just for the 
style of interpreting colours and favoure individual user selectable 
effects and styles. Vivid and natural is than available for all users not 
just on single products. (Still media, inks and print hardware will make a 
differencs for handling, eveness, gamut, UV stability and so on.)

The abstract class of ICC profiles, combined with a profile manipulator or 
a traditional colour correction curves panel with additional sliders for 
HSV manipilations which saves abstract ICC profiles, can then be used 
to do colour tweakings.
Abstract profiles are almost not a path for colour professionals to get 
1:1 output or relyable TAC reduction and so on. Thats something for the 
device link class of profiles or special and thus selectable CMMs. Beside 
that custom CMMs might help in the future on the artistic side too, e.g. 
per image gamut mappings.

Effect profiles are part of the print dialog on osX. I do not know about 
Windows' native dialog.

Now we get back to early versus remote colour binding.
This all requires early colour binding and thus CPD has to locally
render final values. In a more complicated workflow, CPD could tag the 
content with appropriately manipulated profiles for remote applyance. With 
more resources I could imagine to get effect profiles reproduceable 
working in a remote and late colour binding scenario. But that would 
certainly require much support and man power. This later path is unlikely 
to get implemented in the forseeable future.


To summarise:
a) Effect profiles are cool and very flexible.
b) Device link profiles and selectable CMMs allow for advanced
    professional and artistic stuff.
c) The above is all difficult to get remotely working, so colour
    conversions should typical apply already in CPD.
d) Average users expect to select print effects at time of printing and
    thus in the print UI.
e) If CPD does not care, vendors will take their chance and fill that
    niche to provide better than average results.
d) Vendor intervention in the CM workflow is undesireable as it will
    invent lots of different solutions and potentially break things.


Given with all the above I want to reiterate about the three basic CM 
modes in CPD (Hal suggested to have only two):
* Colourmanage in Application (early colour binding).
   CPD is considered as part of the application infrastructure and not
   stand allone. The name CPD, Common Printing Dialog, implies this to me.
   So early colour binding has typical to happen in CPD. For applying of
   effect profiles and other advanced CM technices, which we do not (yet)
   know how to simply transport over PDF to a remote host, this early
   binding mode is the preference.
* Colourmanage by System (late colour binding), or colour process remotely
   is the right default with vendor supplied ICC profiles. In the
   perceptual tables can a pleasing rendering be expected.
* No Colourmanagement, print raw values. A exception for printing colour
   targets, special cases, e.g. dot by dot printing, and when the above
   does not suffice.

That written I do not at all want to fix the modes names, but they should 
be transparent to the user as they are very fundamental not only for 
developers. The names and how they are exposed to CPD users have to be 
discussed with the UI experts in detail.

Further the strong suggestion of Mike Sweet to hide the selection of the 
final print profile can be reached with deploying technices like effect 
profiles and others. This means as well that the above three basic CM 
modes would loose their prominence. Perhaps the No Colourmanagement 
mode resides in a expert tab of CPD. Perhaps that mode is intermediate 
and switches back automatically after printing the colour chart.

> 3. The driver vendors will specify (and supply if needed) the default profiles
> used by their device.

agreed

> 4. Users/admins have complete control over things like which profiles are
> installed and related settings so that the back end and how it selects and
> uses profiles can be configured by the user/admin.
>
> 5. Apps that need to do prematching or that are used to print targets will
> have a simple API available to disable back end CM for their print jobs.

Good that would omit the No Colourmanagement mode from the CPD UI. But 
then a simple application, which is always available to prints to all 
queues is a reuirement to point colour experts to. The application should 
be able to work with all drivers. Could Photoprint take this over?


> Of course at present almost none of this is in place in the non-OS/X world
> (the following is FOSS specific).
>
> #1. The CPD with proper PPD files will do this right now but none of the
> existing PPD files are setup for this type of work flow.
>
> #2. CUPS has the ability with proper *toraster filters to do #2.  But the
> needed open source *toraster filters still need work.
>
> #3. This is in place on OS/X but the cupsICCProfile settings in the PPD files
> are not correct for other platforms and I am not sure if this is the best way
> to handle this requirement.
>
> #4. At present is missing.  Trying to configure this by using/modifying the PPD
> files is at best clumsy and has lots of issues that have been touched on in
> other notes in this thread and in other threads.  The cupsICCProfile settings
> in the PPD file is simply not designed to meet this requirement. This could
> conceivably be handled by some type of interface between CUPS, Oyranos and
> user land but lots of work still needs to be done in all three areas.  Having
> a clear vision of what the pieces are and how they fit together will make it
> easier to get Oyranos, CUPS and user land tools (like Kolor Manager in KDE and
> the CPD) up to speed and should allow for creating any needed APIs in the
> various systems involved.  I think Oyranos already has most of the APIs needed
> to support user land and CUPS.  CUPS, of course, has no working interface to
> Oyranos in part because the Oyranos printer support is so new (GSoC 2009).
>
> #5. This does not currently exist as far as I can tell either on the back end
> (IE. CUPS and friends) or in any of the existing apps that are CM aware.  On
> the other hand in the open source world there are only a handful of apps that
> are CM aware at all and only a subset of those know anything about ICC profiles
> in the printing work flow (IE. most color manage to the display only - GIMP is
> an example of a limited CM aware app).  I think if there were a simple to use
> well documented API for this that those apps that need it would be modified to
> use it fairly quickly.  Particularly since the developers of most of those
> apps are members of at least one of the email lists that are part of this
> thread.   But the issue is that there needs to be a way to do this either
> through specialized applications like PhotoPrint or by having a switch on the
> CPD if no apps with this ability are available.  That is I would consider
> having a CPD switch for this to be a transition issue that would be removed
> once we had applications available that could use the no-back end CM API call.

Regarding a No Colourmanagement mode I fully agree.

> Hal

kind regards
Kai-Uwe Behrmann
-- 
developing for colour management 
www.behrmann.name + www.oyranos.org

