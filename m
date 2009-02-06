From: "Hal V. Engel" <hvengel@astound.net>
Date: Thu, 5 Feb 2009 17:32:37 -0800
References: <ED4094DE5E8ACD4BBDACA6AD398E608F379471@EEAEX03.us.epson.net>
In-Reply-To: <ED4094DE5E8ACD4BBDACA6AD398E608F379471@EEAEX03.us.epson.net>
MIME-Version: 1.0
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200902051732.38081.hvengel@astound.net>
Subject: Re: [Printing-architecture] [Printing-japan] Last OP SC - Mon/Tue
	-2/3 February 2009 - The Recording
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org
Cc: "Petrie, Glen" <glen.petrie@eitc.epson.com>, Printing-japan <printing-japan@lists.linux-foundation.org>

On Thursday 05 February 2009 08:41:07 am Petrie, Glen wrote:
> Hello Hal,
>
> Thanks for review of our printing "color management" discussion.  We are
> all looking for inputs to help in this complex subject.
>
> PLEASE, please, ... note that my only objective in my reply below is to
> seek understanding and create general understanding by all interested
> parties.

That is one of the primary intents of OpenICC participation here and with 
other projects.  The other intent to get and keep color management on the 
table until it is an accepted part of all of those systems where it should be 
used.  In addition we are active in doing actual CM related coding for various 
applications some of which are CM specific like LProf, ArgyllCMS, Oyranos, 
Kolor Manager, iccexamin and LCMS.

>
> I have exactly the same understanding that you do in discussing document
> applications.  That is applications like GIMP, Open Office, and so
> forth.  Each of these document applications must work with different,
> multiple, modified, enhanced and even user defined color spaces.

Of course some of these are smarter than others about color management.  GIMP 
and Krita have some CM awareness but do not know how to handle CM when 
printing.  As far as I know OpenOffice is color management dumb (as that term 
would be used by OpenICC members).  Probably the two most advanced document 
handling applications with regard to color management are Cinepaint and 
Scribus both of which can handle CM printing.  Cinepaint along with Kolor 
Manager are the only apps that currently use Oyranos which is the system level 
CM configuration back end.  The Scribus, Cinepaint and Krtia projects have 
active representation on the OpenICC and OpenICC was founded by one of the 
Scribus developers.

Having already worked with a number of projects on this process these seem to 
fall into three groups.

1. The "we are already working on it" group.  In this group are projects like 
Cinepaint, Scribus, UFRAW, Krita, ImageMagick and GhostScript.  

2. The projects who after being pushed a little about CM say "OK your right we 
need CM, we will get back to you when we have something working".  This is 
what happened with X-Sane and recently Poppler.  All these folks needed was 
for someone to point out the need and they were off and running without any 
need to assist them although in some cases it took awhile to happen.

3. The "OK your right we do need CM but we don't know how to approach this can 
you help" group?  Open Printing appears to be in this group.   

The first step is for them to understand CM basics.  At this point we are not 
even talking about how the CM tools or APIs work.  This is just an advanced 
user level understanding of how things should work.   At this stage it seems 
that almost every group I have worked with goes through a "we need a standard 
color space" phase.  This is where you guys are at and the OpenICC group is 
more than happy to spend some time working through this with you.

Next you need to understand what your part of the puzzle needs to do to 
support CM.  Printing happens to be the most complex single area with respect 
to CM because of the number of variables involved and the breath of things 
that need to be done and the number of systems touched by this.  This is most 
definitely not something that will be trivial to implement although most of 
the work will be on things that are not directly related to using the color 
management back end. 

>
> What about printing?
>
> Let's define the print processes as starting with a document
> application, moving to a print spooler/manager (i.e. CUPS) and
> associated transforms (i.e. Ghostscript); and, finally, the print
> drivers which produces the physical print.
>
> As I stated above document application must handle "color management" in
> its broad scope.
>
> The print spooler/Manager, like CUPS, does not care about "color
> management".  Yes, CUPS has a capability to produce "raster" output, but
> as a generic spooler/manager it is does not get involved in the "color
> management" aspects of a document. 

It is on OS/X though the proprietary*torafter filters that Apple supplies.
 
> CUPS (spooler/manager) can manage
> transforms for the print jobs.  Example would be PS-to-image or
> PDF-to-image.  In this case, CUPS is using a transform application; but
> CUPS itself does not get involved in the "color management" processing.

See above.

>
> << side note >>  Part of understanding is understand terms.  To me, but
> not to all people, the term "raster" refers dithered, ink (not color,
> but ink) output values that a printer actually prints.  A "raster" is
> not RGB or any other color set of values; even if the image format is
> not a standard; like CUPS "raster".  CUPS "raster" should be called CUPS
> image.
>
> Back to transforms, like Ghostscript which, like CUPS above, is only
> being used as an illustrative example.  Transform applications like
> Ghostscript, to me, are document application; they are not print
> application in the sense that it is not a printer driver.  Yes,
> Ghostscripts contains, actually, it supports drivers; but actually,
> Ghostscript transforms a document from one format to another.  Example,
> it transforms a PDF or PS document to an image document (and not a
> raster format).  And yes, I'll bet Ghostscript can actually produce
> actually raster output; but, I am trying to make the point that most
> transforms are document format transform.  Thus, Ghostscript follows
> your description below and needs to support all aspects of color
> management you describe.
>
> If what I discussed above is the scope of the "color management"
> discussion for the print summit; then I believe, the "color management"
> group (you) need to continue your great support and creating
> understanding to the document applications.  However, if the "color
> management" is about color-to-ink, then .....

It is about creating a per pixel "raster" that is in device specific colors.  
This would not include things like dithering and half toning but as you 
correctly point out these things and other printer settings affect how the 
device reproduces colors and they must be taken into account in the profiling 
process.  I will add more details below about this including what I mean by 
"device".

>
> This is where I need your help on how to use and incorporate your "color
> management" with printing at the driver level.
>
> Conditions:
> 1. Inks are not pure colors;
> 	that is cyan ink is not real pure cyan color
> 	and the same is true for all inks.
>
> 2. Inks can only be deposited in discrete units (i.e. a drop
> 	and drops of different sizes).
> 	Thus, dithering is required in order to create the
> 	desired image color; but this is a tradeoff with
> 	not creating undesirable artifacts or blurring the final
>       print representation of the image.  And this is coupled
> 	with print intent; that is, dithering is different for line
> 	art/text than photos.
>
> I don't think of "color management" is doing the dithering but only
> concerned that the color value of an individual pixel (maybe an area)
> meets the intent.

This is basically correct.  One common misconception is that the color 
profiles contain "calibration" information**.  A color profile contains a 
characterization (mathematical description) of the devices reproduction 
characteristics and it has no affect on the actual characteristics of the 
device.   

The profile contains a mapping between an absolute color space such as CIE XYZ 
or CIE Lab and the "devices" representation.  The absolute color space is 
called the Profile Conversion Space or PCS.  

The term device is somewhat loosely used in that this is referring to not just 
the physical device or hardware but any software processing that occurs 
between when the profile is applied and what the actual physical hardware 
does.  In the case of printers the "device" includes driver level 
functionality like dithering.   For something like a camera the "device" in 
this context might include the RAW conversion software if that was being used 
or the in camera processing if the user were using images processed directly 
in the camera.   Again we are in general agreement and the above was to 
clarify terminology.

Because ICC profiles contain information for transforming from (in the case of 
output devices like printers) or to (in the case of input devices like a 
scanner) an absolute color space it takes two profiles to do any useful work.   
On the output side a somewhat simplified flow would look like:

document color space(s) -> transform(s) -> PCS -> transform -> printer color 
space

It is fairly normal for advanced users to work in a number of color spaces as 
part of their work flow.  Typically users will have one or more "working color 
spaces" that they do editing work in and that there stored documents use.   In 
general working color spaces are generic non-device specific color spaces. 

This working color space could be sRGB but advanced users will typically 
select something with a wider gamut such as BetaRGB or proPhotoRGB because 
sRGB is too limited to handle the gamuts of most capture work flows.    Users 
want to preserve document content as far into the process as possible even if 
some of that content will be lost when it is reproduced on a smaller gamut 
device like a printer.  

For input devices users will as part of the capture work flow transform from 
the input devices (camera or scanner) color space to a working color space.  
Then when working on the image/document in color management aware software 
(like GIMP, Krita, Cinepaint, Scribus...) the content on the monitor will be 
transformed from the document color space to the monitor color space when it 
is sent to the device but the actual document content will remain unchanged by 
this process.  The same thing is be true when a document is printed since both 
a printer and a monitor are output devices.      

>
> Color Management could "help" with "1." above if an ICC profile is
> supplied for every print.  That is, a document is transformed from its
> current color representation to the printer's gamut.  

This is basically correct although is is somewhat more complex than this.

> But this would
> only be "helping" since dithering "2." Typical affects the details of
> color-to-ink transformation.  Thus, this color-to-ink transform is
> typically done in the driver which understand both the effects on color.

Again this is basically true.  But as you point out printer settings like 
dither, media type, resolution and other things can affect the color/tonal 
reproduction of the printer.  Because of this it should be fairly apparent 
that those who are really picky about this will have a profile for each print 
mode (media type, resolution, dither...) that they use.  They will also tend 
to use only a limited set of these.  If you look at the documentation for the 
cupsICCProfile PPD setting you see that it is possible to define an arbitrary 
number of ICC profiles for the device that will be used under different 
conditions and that it is possible to specificity up to three things that will 
be used by the CUPS to select which profile will be used.  By default these 
are media type, resolution and output color space type (RGB, CMYK or Gray 
currently).  It is possible to override these defaults with some other printer 
setting such as dither to help with the profile selection process.  

The basic idea is sound but having only three variables is too limiting and 
this should be expanded to allow for an arbitrary number of variables to be 
used.   For example in addition to the three default variables dither could 
also be useful here and for some printer drivers there are likely other user 
settings that could be used for profile selection. 

>
> Depending upon the solution (embedded, mobile, desktop, office,
> production) the creation of ICC profile may or not be practical.
> Remember it is not just one ICC profile per printer but because of "2."
> above it could mean many ICC profiles.

Again I think we agree in principle.  In fact printers will almost always have 
more than one profile.  For example Apple typically defines at least three 
profiles for each printer as part of the default installation and this default 
is intended for users who are not doing color critical work.  As another 
example Epson makes available for download sets of profiles for specific 
printers that contain a large number of profiles that are correct for a range 
of their print media (papers).  As part of the documentation for these 
profiles they specify what printer settings each profile is valid for and for 
optimal results users must use the specified settings when using these 
profiles as well as the specific media that the profile was created for.  In 
addition, many paper and ink vendors do the same thing for their media.  So 
for Windows and Mac users it is possible, at least in some cases, to download 
dozens of off the self semi-custom profiles for a particular printer model but 
any given user may only need one or two of these.

>
> One solution is to give the "color management" system an ICC profile
> which is the sRGB gamut; problem solved.

Again it is not that simple since the "color management system" does not have 
a profile but rather is designed to manage transforms between color spaces for 
various devices each with it own (in some cases set of) arbitrary color spaces 
and the documents (again arbitrary) color space(s).   

On some devices color management using custom profiles does not make much 
sense.  For example on (most?) embedded devices and things like PDAs color 
management is of little use at the system level.  After all why would you get 
too concerned about color managing a display that only has 16 bits/pixel.  So 
this is probably a non-issue for these types of devices. Most programs that 
create ICC profiles will either give very strong warnings or refuse to create 
profiles for devices with less than 24 bits/pixel since the ICC specification 
does not define transforms for formats with less than 24 bit/pixel resolution.     
Since we are talking about printing how many embedded devices actually have 
the printing software stack installed on them?  

But for most of the other categories you mention it does make sense although I 
am not sure what "production" is.  The intent should be to have something that 
is flexible enough that it can be configured to work well in all of these 
environments for both casual users (this should be the default setup) as well 
as users doing color critical work (it is OK if this needs to be hand 
configured).

>
> Changing subject slightly.  I believe the importance of printer ICC
> profiles is so that, at least an approximation of, the final printed
> document can be viewed on a display by the user and will show the final
> printed colors.  In this case, then an average/representative ICC
> profile for all of the printer modes could be supplied; at least this is
> a reduction from N to 1.

These are two separate things that should not be conflated.  Soft proofing 
does matter and is particularly important to advanced users doing color 
critical work.  But those users are likely to be the ones who are the most 
concerned about having every detail in their color management work flow as 
close to correct as possible.  These users are likely to have monitors that 
are calibrated and profiled using a hardware measurement device, custom 
profiled capture devices, specialized print viewing booths, specialized 
controlled lighting in their work room and custom printer profiles that they 
have either produced themselves (again using hardware measurement devices) or 
had a profiling service create.   They will almost never be using canned 
profiles for any of their devices and will likely have more profiles installed 
on their system than other (more "normal") users.

On the other hand there should be a default profile set that is supplied with 
every printer that is suitable for use "out of the box" by users who are not 
concerned about color reproduction to the point where they will be creating 
custom profiles (IE. your average "I just want it to work" user).   It should 
be possible in many cases to start out with these being a set of generic RGB, 
CMYK and Gray profiles that are the default base set of profiles for all 
printers unless the driver authors wish to supply profiles that are specific 
for their devices*.  

This is what Apple does for most printer types (have a look at the 
cupsICCProfile lines in recent PPD files for some examples) where they default 
to sRGB for users who are using RGB printer mode and generic (I don't know 
where they got these but these are probably under Apple copyright) CMYK and 
Gray profiles.  But the main point is that there will always be more than one 
profile per printer.   There is no way around this since it is simply the 
nature of the beast.  

For those interested the ArgyllCMS author has created a set of generic CMYK 
and Gray profiles that are very similar to the ones that Apple ships that can 
be used in an open way.  Most Linux systems now days will have a sRGB profile 
already installed or users will have available packages to install it along 
with some other generic profiles.  

>
> Now the reality of creating ICC profiles.  Due to the open source nature
> of Linux, not all contributing individuals will have the capability
> (meaning equipment), time or desire to create ICC profiles for their
> instantiation of their driver which needs to take into account "1." and
> "2." above. This was the reason for suggesting sRGB as expected input
> color space to driver.

The document color space has no relevance to the issue of creating printer or 
other device profiles.  None of the work flows in the color management system 
should care at all about what the document color space is as long as it has 
one specified.  It simply does not matter and it actually creates more issues 
than it solves to try to require a specific document color space (I can't 
think of any issue it solves actually).  

However you are correct about many users not being able to or not wanting to 
create ICC profiles.   This is particularly true for printer profiles where 
the measurement devices are fairly expensive (they currently start at about 
$400) and the process is somewhat complex.  But keep in mind that most of the 
measurement devices currently in production are now supported by open source 
software and work fine on *nix systems so this is not a users can't do it 
because they are using open source kind of thing.  For most users who want to 
do this it boils down to the cost of the hardware and this is true for Windows 
and Mac users as well.   Also keep in mind that profiling monitors and input 
devices like scanners and cameras is now fairly inexpensive and there is a 
wide range of *nix supported devices for doing this.  For example the X-Rite 
Huey is supported and can be purchased for less than $50 making monitor 
profiling with in reach of most users.   

Where Windows and Mac users have an advantage is the printer, paper and ink 
vendors now commonly supply semi-custom profiles for free that provide perhaps 
95% of what a user can get with a true custom profile.  On the other hand 
there are profiling services that will create true custom printer profiles for 
a little as $25 and for most ink jet printers these are good for the life of 
the printer as long as the user uses the same media and settings for their 
printing work flow.

The real issue is when the document does not have an embedded color space and 
that the app sending the document to an output device has not specified one.  
Since the color management system needs two profiles to create the transform 
how can this be handled?  The OpenICC recommended way to to assume that these 
untagged documents are sRGB.  But this is only a fall back for when the color 
space is not some how specified.  

In short it is contrary to accepted color management practice to require the 
use of a specific document color space. 

* This implies some things about the out of the box calibration of the 
printers that I will not get into at this time.

** As a side note the gutenprint team is starting to look at measurement 
driven printer calibration/linearization.  Unlike using profiles this is 
something that does directly involve the driver.  It is intended that this 
will be used in conjunction with ICC profiles.  This is currently at the very 
early stages so it will be a while before this starts appearing in anything 
other than development code. 

>
> glen
>
> > -----Original Message-----
> > From: printing-japan-bounces@lists.linux-foundation.org
>
> [mailto:printing-
>
> > japan-bounces@lists.linux-foundation.org] On Behalf Of Hal V. Engel
> > Sent: Tuesday, February 03, 2009 5:12 PM
> > To: Open Printing; Printing-japan
> > Subject: Re: [Printing-japan] [Printing-architecture] Last OP SC -
>
> Mon/Tue
>
> > -2/3 February 2009 - The Recording
> >
> > On Tuesday 03 February 2009 02:46:16 pm you wrote:
> > > Hal V. Engel wrote:
> > > > Till,
> > > >
> > > > Just listened to the recording.  Thank you for making it
>
> available.
>
> > There
> >
> > > > are apparently some misconceptions about how color management
>
> works.
>
> > So
> >
> > > > here is some feedback.
> > > >
> > > > It is not acceptable to use sRGB or any single color space as the
>
> only
>
> > > > acceptable or required document color space.  It appears that this
>
> is
>
> > > > something that comes up every time a new application starts
>
> looking at
>
> > > > color management.  For example, this same thing was discussed at
> >
> > length
> >
> > > > when the GIMP developers started looking at CM and in the end they
>
> did
>
> > > > not use the "required color space" approach since the CM experts
>
> told
>
> > > > them not to (in very strong terms) and when they actually got into
> >
> > coding
> >
> > > > it they discovered that is was actually counter productive and not
> > > > needed.
> > > >
> > > > User land applications should be able to send documents to the
>
> output
>
> > > > device (printer, monitor...) in any color space(s) it wants to
>
> use.
>
> > In
> >
> > > > fact it is common for those doing color critical work to avoid
>
> sRGB
>
> > since
> >
> > > > it has a very limited gamut and it is common for devices like
>
> scanners
>
> > > > and cameras to have much larger gamuts (in many cases almost twice
>
> as
>
> > > > big).   So friends do not let friends use sRGB.  Keep in mind that
> >
> > this
> >
> > > > is the document color space and it needs to have enough gamut for
>
> the
>
> > > > device that created the document and it's gamut has nothing to do
>
> with
>
> > > > the printers characteristics.
> > > >
> > > > The correct approach is allow the user land app to specify any
> >
> > document
> >
> > > > color space (actually compound documents like pdf can have more
>
> than
>
> > one
> >
> > > > color space since pdf allows for each individual object in the
> >
> > document
> >
> > > > to have it's own color space).  In fact there is no other
>
> reasonable
>
> > > > approach.  In addition it is typical for documents to have the
> >
> > document
> >
> > > > color space(s) embedded in the document and since the document is
> >
> > passed
> >
> > > > to the printing subsystem the document color space(s) are
>
> discoverable
>
> > by
> >
> > > > the *toraster filter.
> > > >
> > > > The consensus from discussions on the OpenICC list is that the
>
> only
>
> > time
> >
> > > > sRGB is used by default is when the user land application does not
> > > > explicitly pass a document color space(s) and any document or, for
> > > > compound documents, any object in the document that has an
>
> embedded
>
> > ICC
> >
> > > > profile has passed an explicit color space that must be used.  In
>
> fact
>
> > if
> >
> > > > the printing work flow is correctly designed there is no need to
>
> limit
>
> > > > what document color space(s) are used as this will be handled by
>
> the
>
> > > > color management engine when the *toraster filter sets up the
>
> color
>
> > > > transforms that it needs for the document it is handling.
> > > >
> > > > On the "OS level" you do NOT need agreement on what color space
>
> will
>
> > be
> >
> > > > used but rather what needs to be agreed to is how the
>
> transformations
>
> > > > from the document color space(s) to the output device color spaces
> >
> > will
> >
> > > > be handled. There is work underway on this end of things by the
> >
> > OpenICC
> >
> > > > folks. Specifically Oyranos which is a system wide CM
>
> configuration
>
> > > > management back end that is being worked on my Kai-Uwe Behrmann
>
> and
>
> > for
> >
> > > > KDE the Kolor Manager System Setting applet which is a KDE4
>
> specific
>
> > > > Oyranos front end that is now in the playground area of the KDE
>
> svn
>
> > > > repository.  We hope to have Kolor Manager included in KDE 4.3.
> > > > Currently Oyranos has no support for CM configuration of printers
>
> (the
>
> > > > only devices that currently have full support are monitors) and
>
> this
>
> > is
> >
> > > > an area that needs to be addressed along with scanners and
>
> cameras.
>
> > The
> >
> > > > KDE front end was written as part of GSoC 2008 and there were
>
> lengthly
>
> > > > discussions during that effort about how all these other devices
> >
> > should
> >
> > > > be supported.  In particular printers generated lots of interest
>
> and
>
> > > > there is some preliminary code in Kolor Manager related to printer
>
> CM
>
> > > > configuration along with similar code for scanners.  Our hope is
>
> to
>
> > > > introduce printer support into Oyranos and Kolor Manager as the CM
> >
> > parts
> >
> > > > of the printing work flow are being developed.
> > > >
> > > > Rendering intent in the color management context has a limited
>
> number
>
> > of
> >
> > > > options most of these are defined by the ICC and are to some
>
> extent
>
> > > > standardized.  These are absolute colorimetric (no white point
> > > > transformation), relative colorimetric (this causes a white point
> > > > transformation), perceptual and saturation intent.  For relative
> > > > colormetric intent users can also select black point compensation
>
> to
>
> > help
> >
> > > > reduce the loss of shadow details when the transform is going to a
> >
> > device
> >
> > > > with reduced gamut compared to the document color space.  So there
>
> are
>
> > > > actually 5 rendering intents and all of these are supported by
>
> LCMS.
>
> > So
> >
> > > > all that actually needs to happen is that users can select the
>
> intent
>
> > and
> >
> > > > this gets passed through to the *toraster filter so the the
>
> transform
>
> > > > uses the correct intent when it creates the raster that is passed
>
> to
>
> > the
> >
> > > > printer.   At present most document formats do not have a
>
> standardized
>
> > > > way of embedding this information.
> > > >
> > > > There is a need for user land applications to be able to discover
>
> the
>
> > > > printer color space(s) (IE. profiles) so that applications can do
>
> soft
>
> > > > proofing.
> > > >
> > > > RAW is NOT a color space as that term is used in the color
>
> management
>
> > > > world.
> > > >
> > > > Hal
> > >
> > > Thank you for your mail. You have sent it to me in private, but I
>
> prefer
>
> > > to discuss it on the printing-architecture mailing list, could we
>
> post
>
> > > your mail there to start the discussion?
> >
> > Yes I can do that.  I was not too sure where I should send it so I
>
> kept it
>
> > private.
> >
> > > So good to hear that the color correction
> >
> > Color Management types would say "color space transform" rather than
> > "color
> > correction" because this could also be doing things like taking an RGB
>
> (or
>
> > XYZ
> > or Lab) document and converting it into CMYK or even deviceN output
>
> for
>
> > the
> > printer.
> >
> > > can be done completely on the
> > > server side.
> >
> > Doing the transform on the server would be the preferred way to handle
> > this.
> > Right now we are limited to doing this client side in the user land
>
> apps
>
> > that
> > are sending output to the print server.  This means we only have color
> > managed
> > printing in those apps that know how to do color managed printing
>
> which
>
> > right
> > now is a very limited set of apps (probably less then a dozen total
>
> but I
>
> > can
> > only think of three off hand and one of those is a specialized front
>
> end
>
> > for
> > gutenprint).  Having this functionality on the server side means that
>
> even
>
> > CM
> > dumb apps benefit once things are properly configured.
> >
> > > A color-managed driver will then use an ICC profile in a
> > > standardized directory on the server and functions of a CM library
>
> to
>
> > > execute the color correction.  The PPD will have a "Rendering
>
> Intent"
>
> > > option with the choices mentioned in your mail, option and choices
>
> with
>
> > > standardized names for all printers. Option settings are passed to
>
> CUPS
>
> > > as IPP attributes and this way also the rendering intent gets to the
> > > driver. The driver will get all option settings by its command line.
> > > Perhaps color correction has too be better done by the renderer
> > > (Ghostscript or Poppler, Ghostscript preferred), as a raster image
>
> can
>
> > > have only one color space where as vector graphics, especially in
>
> PDF
>
> > > format, can have a separate color space for each object.
> >
> > I think this assessment is correct.  In fact having this happen in the
> > *toraster rendering filter makes things much simpler for everyone
>
> since
>
> > doing
> > this would eliminate the need to do any color management specific
> > modifications to the individual drivers and it would also centralize
>
> this
>
> > functionality in one place.  For example once GhostScript has been
>
> updated
>
> > to
> > have an up to date CM implementation (I think we should have at least
> > development versions with this capability soon) and the new
>
> pdftoraster
>
> > filter
> > is setup to handle CM the new pdf based printing work flow will have
> > functional CM for all apps using it, including apps that are not CM
>
> aware,
>
> > no
> > matter what printer/driver is being used.
> >
> > As a side note Poppler has now been patched with preliminary CM
> > functionality
> > and the testing I did with it seemed to work OK.  So it might make
>
> sense
>
> > to
> > continue to use Poppler for the common printing dialog since it's CM
> > support
> > might be "good enough" for this use.
> >
> > > The ICC profile of each print queue also needs to be downloadable by
>
> the
>
> > > clients via CUPS' http server facility, so that apps (or the Common
> > > Printing Dialog) can get them for soft proofing.
> >
> > Currently the CUPS API allows client side apps to get a list of
>
> profiles
>
> > that
> > are in cupsICCProfile lines in the PPD.  But there were several open
> > issues
> > with the CUPS implementation the last time I checked.
> >
> > 1. If the CUPS server is not local there is no way to get the profile
>
> for
>
> > soft
> > proofing.
> >
> > 2. CUPS only allows passing a user specified printer profile on the
> > command
> > line if the profile is installed in a specific directory on the CUPS
> > server
> > and there is no way in the general case for a client app to get a list
>
> of
>
> > these profiles or to get a copy of any of these profiles.
> >
> > >     Till
> > >
> > >
> > > P. S.: Thank you for registering for the OpenPrinting Summit. You
>
> are
>
> > > welcome to attend and I am looking forward for the Color Management
> > > session.
> >
> > That is why I registered.  I live with in commuting distance of the
> > conference
> > which makes it fairly easy for me to attend.  So I guess that I will
>
> be
>
> > the
> > OpenICC representative there and perhaps there will be others as well.
> >
> > > From the CM side not only you but also Michael	Vrhel
> > > (Ghostscript) is attending.
> >
> > _______________________________________________
> > Printing-japan mailing list
> > Printing-japan@lists.linux-foundation.org
> > https://lists.linux-foundation.org/mailman/listinfo/printing-japan

