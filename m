From: "Hal V. Engel" <hvengel@astound.net>
Date: Fri, 13 Nov 2009 17:32:38 -0800
References: <e395be80811270817n502ccd16wf6cc90f85364f5ae@mail.gmail.com>
	<4AFD6C48.8000800@argyllcms.com>
	<1CBAEDEF-0F6D-47E2-9CB1-F2D271C803B6@colorremedies.com>
In-Reply-To: <1CBAEDEF-0F6D-47E2-9CB1-F2D271C803B6@colorremedies.com>
MIME-Version: 1.0
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit
Message-Id: <200911131732.38782.hvengel@astound.net>
Subject: Re: [Printing-architecture] [Openicc] [Gimp-print-devel]  Colour
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: openicc@lists.freedesktop.org
Cc: gimp-print-devel@lists.sourceforge.net, Michael Sweet <msweet@apple.com>, Graeme Gill <graeme@argyllcms.com>, printing-architecture@lists.linux-foundation.org

On Friday 13 November 2009 08:56:12 am Chris Murphy wrote:
> It depends entirely on how it's implemented.
> 
> All driver dialogs on Windows and Mac OS (not sure about Linux, but I
>  suspect it's the same) are not the actual driver itself, merely the OS
>  drawing those features on-screen. The user makes the settings, including a
>  "No Color Management" option. But that selection does NOT directly
>  communicate with the driver. It's capture metadata that the operating
>  system includes into a print spool file (and/or corresponding job ticket
>  file). Later, that print spool file and included metadata with the
>  captured driver settings, is passed onto the manufacturer's print driver
>  and interpreted - i.e. you get the "Off" LUT instead of an sRGB LUT or
>  Adobe RGB LUT.
> 
> So that's already a "smart" or "automatic" mechanism, because there is no
>  direct mechanism anyway.

On most *nix (non-OS/X) systems where users are trying to do color critical 
work the users will be using the GutenPrint drivers if there is a GutenPrint 
driver for their printer(s).   Not those from the device vendor.  In many 
cases the device vendor does not even have a *nix driver for the device. 

When using the GutenPrint driver the user is interacting directly or nearly 
directly with the driver and has a degree of control that is far beyond what 
OS/X or Windows users have over these devices.  That interaction is generally 
controlled by the printer driver PPD file.  This includes the ability to do 
RGB, CMYK and DeviceN (if the printer has more than 4 channels) printing as 
well as to change things like ink limits, GCR, sub-channel transitions and 
LUTS.  The UI for doing some of these things is a little on the primitive side 
however.

In addition work is underway on a tool that will create calibration 
(linearization) curves for GutenPrint driven printers using various 
measurement instruments (actually using ArgyllCMS to do the measurements).   
This tool is called GPLin and is still an alpha level tool but it is getting 
closer to being a useful tool as it goes through regular updates by it's 
author (Alastair M. Robinson).

But to Chris' main point.  For RGB and CMYK printing paths there is indeed a 
black box built into the driver that is doing some "color management" but with 
our open source drivers we also have true DeviceN available.  I have done 
extensive measurements of the response curves of my GutenPrint driven Epson 
R2400 printer and for the most part it's CMYK channels have fairly smooth 
response curves with minimal anomalies in the dark to light ink transitions 
although the magenta channel could be improved in this regard.  In other words 
the GutenPrint driver presents this printer as fairly well behaved CMYK device 
and CMYK profiles I have created for it using ArgyllCMS give very good results.  
I suspect that the same thing is true for those who are using this 
driver/printer combination but are using it's RGB mode and it is likely true 
for most of the Epson printers supported by the GutenPrint drivers.  

> 
> Further, on Mac OS X for some time now, there is no explicit off switch for
>  ColorSync. Apple requires multiple square dances with a dog, a pig, and a
>  pony, under a full moon, in order to get ColorSync to piss off. ColorSync
>  is only turned off through null transforms. Only when the source profile
>  for content is identical to the destination profile, is ColorSync
>  disabled.
> 
> In order to make this work, Apple has a rather convoluted mechanism for
>  certain applications to request, NOT the disabling of ColorSync, but to
>  get the current canned manufacturer profile registered for a particular
>  print mode. The application must then bogusly tag objects with that
>  profile, in order to achieve this null transform.

And this is critical for those folks who are doing color critical work.  If we 
don't have a straight forward way to print profiling/calibration targets then 
there is a problem.  

Robert Krawitz quotes Eric Crampton in the footer of all of his emails thusly.

"Linux doesn't dictate how I work, I dictate how Linux works."

I think it is fitting to use that quote to help make the point that many Linux 
users expect to be in total control of their machines.  Anything that reduces 
their control will at best be viewed with suspicion.  For example I have been 
running patched and hand modified kernels for a long time and I have other 
software on my system that I have modified so that it works the way I want.  No 
Windows or OS/X user would even think about running a customized kernel yet it 
is fairly common for Linux users. 

On the other hand since we are dealing with open source code the problems 
listed below should not happen.  For example if the drivers don't work the way 
they should and if the vendor will not fix the issues then we can fork the code 
and get things fixed.  We are NOT dependent on hardware vendors to get things 
fixed.

> 
> And as we are seeing with the clusterf8ck.com situation we've got going on
>  with Mac OS X, newer Epson drivers, and Photoshop, we've got ColorSync
>  converting ICC profile targets. And if we recall history, we've had all
>  kinds of problems with Mac OS X and printing color reliably.
> 
> In my view, Apple made a colossal mistake by attempting to follow a PDF/X-3
>  like format for their print spool file format, but then deciding to go on
>  a vendetta against DeviceRGB which is a rather important color space in 
>  PDF/X-3 to explicitly indicate such content should not be color managed if
>  the content is sent to the device it was intended for. Instead, Apple is
>  double tagging the PDF spool file: first the individual objects are aways
>  being tagged, instead of say prematched data and profile targets being set
>  to DeviceRGB, and then yet again with an OutputIntent profile.
> 
> Now, the OutputIntent tag should always be set to something. That indicates
>  the intended output space, and for prematched data can be used to soft
>  proof the print job before it goes to the printer. But in the case of
>  calibration/characterization/prematching, the color space for those
>  objects should be DeviceRGB (I am referring to desktop inkjet printers,
>  treated as RGB output devices). 

I think the same things should be true for DeviceCMYK since this is simply a 
variation on the same use case.

>  But Apple has banished DeviceRGB and
>  disallows any specialized applications from using it. Instead, they
>  require the object to be tagged with a profile, and for the OutputIntent
>  to also be set with the same profile. If an application does not submit a
>  source profile for its content, the OS will assume a color space and tag
>  that data when the PDF spool file is written to disk. So there is no way
>  around this. (Generic RGB is what's used on 10.5 and older, sRGB on 10.6
>  and newer).
> 
> Apple has argued that untagged data is evil. Yet the great thing about
>  PDF/X-3 (or X-4 or X-5) is that DeviceRGB is special because it is an
>  explicit indication that content to the intended device is not to be color
>  managed, but it still has an implicit source profile. And that's the
>  OutputIntent. So DeviceRGB isn't untagged.

The problem of course is that in the larger world many PDF documents use 
DeviceRGB as a way of doing untagged RGB.  In fact I don't think the PDF 
specification allows for untagged objects so the only option people have for 
creating PDF documents where they don't have to tag the objects in very 
specific ways is to use DeviceRGB.  Apple appears to be trying to "fix" this 
problem and their fix has the unintended consequence that it makes 
calibration/characterization/prematching very difficult.  My gut tells me that 
they are trying to fix this problem in the wrong place and this is why we are 
having these issues.

> 
> The problem is, driver vendors who don't get their print modes and
>  associate profiles, and default profiles, registered correctly with the OS
>  for some reason. It's been an on-going problem. Canon had the problem and
>  seems to have fixed it. HP had the problem, and seems to have fixed it.
>  Epson had the problem, and sometimes gets it fixed, and them sometimes
>  (like now) regresses back to broken behavior. 

This whole area is very difficult because of it's complexity.  There was lots of 
work this summer on Oyranos in this area and I think it is worth while to 
follow up on that work to see if we can't iron out any remaining issues so 
that a linux (or other FOSS OS)/Oyranos/CUPS/... system really works the way 
it should.  But lets be clear that this will not be easy to solve.

>  When they don't work
>  correctly, it can mean ColorSync will become invited to the party when it
>  wasn't asked to, but more importantly when we don't want it to:
>  calibration/characterization/prematching.
> 
> So, a user selectable off switch we do not have. And we don't even really
>  have a developer off switch either, but rather an indirect means of doing
>  this through a convoluted, and unreliable, null transform dependency.
> 
> If the architecture is designed correctly to fail safe, instead of fail
>  chaos,we would not need a driver option for Off (No Color Management).
>  That option, is a big fat lie anyway. Obviously color management of some
>  sort is required because inkjet printers do not have merely three inks
>  comprised of red, green and blue.

This is back to the RGB only assumption of Windows and OS/X.  Many of our open 
source printer drivers support RGB as well as CMYK and true DeviceN.  Since we 
have more flexible drivers available I think it changes how we should approach 
this problem to some extent.

Hal
