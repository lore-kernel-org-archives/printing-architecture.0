From: "Hal V. Engel" <hvengel@astound.net>
Date: Sun, 26 Apr 2009 13:50:36 -0700
References: <ED4094DE5E8ACD4BBDACA6AD398E608F379D52@EEAEX03.us.epson.net>
	<805FE411-4145-40DF-8BD5-6B91991B26E0@apple.com>
	<ED4094DE5E8ACD4BBDACA6AD398E608F379DC4@EEAEX03.us.epson.net>
In-Reply-To: <ED4094DE5E8ACD4BBDACA6AD398E608F379DC4@EEAEX03.us.epson.net>
MIME-Version: 1.0
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200904261350.36422.hvengel@astound.net>
Subject: Re: [Printing-architecture] [Printing-summit] Print
	Dialog:PreviewProcessing: Only A Question
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

On Friday 24 April 2009 02:20:50 pm Petrie, Glen wrote:
> (I know I start getting hate mail....)
>
> My understanding is the same a Michael; printer drivers typically
> (mostly, almost always, 'only') accept/expect sRGB.  So, as a starting
> place can we say printer driver will be accepting sRGB
>

No this is nonsensical.  Most printer drivers accept RGB input and many of 
these expect it to be sRGB but some accept many other forums of input.  The 
GutenPrint drivers, for example, accept RGB, CMYK and DeviceN input and these 
are some of the most common drivers on Linux systems. 

Getting the print content in the right color space for the printer is the job 
of the ICC printer profile(s) and the color management engine (and depending 
on exactly what is being printed some other parts of the printing pipeline way 
need to be involved).  If your driver only accepts (or is expecting) sRGB then 
simply setup the PPD file so that cupsICCProfile is set to a file that has an 
sRGB profile and set it up so that this sRGB profile is the only profile ever 
used.  Assuming (I know not a good thing to do) that the printing pipeline has 
CM support and handles this correctly you don't need to do anything else and 
your driver will only ever get sRGB unless the user does something to override 
that setting.  Overriding this will happen only when a very experienced user 
decides that the printer (IE. meaning his/her printer with his/her 
paper/inks/settings) is not really sRGB and it needs a different profile.

As an aside.  Even though sRGB is sort of a default color space and most stuff 
has been tuned to work OK (sort of, maybe) using it most "sRGB devices" really 
are not truly sRGB.  In other words almost any "sRGB device" can benefit from 
having custom profiles created.   This is particularly true for printers. 

The correct thing to say is that printer drivers can accept many different 
color representations (even if many can only accept RGB) and it the job of the 
color management system to allow for the management of the proper conversion 
of any print job into the printers actual color space.  If you set things up 
correctly no one other then the driver vendor cares what color spaces the 
driver accepts all that matters is that the PPD file correctly specifies the 
ICC profile(s) that characterize that printers color space so that printing 
pipeline passes the printer driver input in the color space it expects.

> BUT
>
> can we also define the approach, design, details of accepting other
> inputs.  It may already exist; if so, lets use it as a
> stepping-stone/staring-place.   If we can design the hooks in now, it
> will be a whole lot easier later.  This is a good area for the CM people
> to provide input the printer-driver folk.

Again the hooks are getting CM working with the most common printing work 
flows.  With a CM aware pdf work flow we have a path that can work for the 
vast majority of user applications that can accept input in any color space 
and convert it into whatever color space the printer needs.

>
> For driver developer the real question is how much effort and code will
> it take to support.  

None if you let the *toraster filters and the CM engine handle it.

> Also, for at least inkjet processing time can be
> critical.

The *toraster filter that have CM support will run slightly slower but not 
much.  But this will not affect the drivers at all are far as performance is 
concerned.  The only thing the driver suppliers need to do is to make sure 
that profiles are correctly specified in the PPD files for the printers they 
support.

>
> At some point the filter folks need to be involved if something new is
> defined.

Isn't this what is happening now with the GhostScript work and the work that 
will be happening with the pdftoraster filter when the GhostScript CM work is 
far enough along?

>
> Glen
>
> > -----Original Message-----
> > From: Michael R Sweet [mailto:msweet@apple.com]
> > Sent: Friday, April 24, 2009 2:04 PM
> > To: Ralph Giles
> > Cc: Petrie, Glen; printing-architecture@lists.linux-foundation.org;
> > Michael Vrhel; printing-summit@lists.linux-foundation.org
> > Subject: Re: [Printing-summit] [Printing-architecture] Print
> > Dialog:PreviewProcessing: Only A Question
> >
> > On Apr 24, 2009, at 12:46 PM, Ralph Giles wrote:
> > > On Fri, Apr 24, 2009 at 11:33 AM, Petrie, Glen
> > >
> > > <glen.petrie@eitc.epson.com> wrote:
> > >>> In 5. we get CUPS Raster. This is not yet dithered. The dithering
>
> is
>
> > >>> done by the rasterto... driver.
> > >>
> > >> As Ghostscript is the most critical filter here, I would like to
> > >> verify
> > >> this with the Ghostscript folks.
> > >
> > > Till and Mike are more expert here, because it's not what
>
> ghostscript
>
> > > does, but what cups asks it and the driver together to do.
> > >
> > > I don't think we have real colour management working yet. The cups
> > > raster format can accept halftoned images, in which case gs can do
>
> the
>
> > > halftoning. Normally, I think the driver does the halftoning, in
>
> which
>
> > > case ghostscript generates a continuous-tone cups raster.
> >
> > Right.  All of the original sample drivers included with CUPS and a
> > handful of third-party drivers take advantage of the Ghostscript/
> > imagetoraster/cgpdftoraster/etc. filters ability to do basic 1-bit
> > (and in some cases 2-bit and 4-bit) dithering for the driver.
> > However, the rest of the drivers in the world use at least 8-bits per
> > component and do their own dithering.
> >
> > As for color management, some existing RIP filters (notably the
> > CoreGraphics PDF to raster filter on Mac OS X) support the
> > cupsICCProfile stuff, and I hope at some point we'll get the same
> > support in the Ghostscript driver and imagetoraster filter so that it
> > is widely supported.  However, what we've found on Mac OS X is that
> > many vendors stick with sRGB and only accept sRGB in their filters (HP
> > and EPSON do this almost exclusively), so an important first step is
> > to ensure that our default RGB profile matches sRGB (and that's what
> > CUPS defines for both CUPS_CSPACE_RGB and
> > CUPS_CSPACE_W - gamma 2.2 with sRGB primaries - while CUPS_CSPACE_CMYK
> > and CUPS_CSPACE_K are defined as device-specific...)
> >
> > Drivers like Gutenprint can also use CMYK, which is where color
> > managed workflows really start getting interesting, and that is where
> > a CM-enabled preview can provide a real color proof of what will be
> > printed.
> >
> > > Ghostscript has to do *some* colour management because the input pdf
> > > could have different components in different colour spaces. Right
>
> now,
>
> > > I think everything gets converted to some 'device space' and then
>
> goes
>
> > > through some hard coded transformations in both ghostscript's
>
> graphics
>
> > > library and the cups raster driver to get the right number of
> > > components. Aside from applying an rgb matrix that looks like it
>
> came
>
> > > from the cups ppd, I don't see any attempt at calibrating these
>
> colour
>
> > > spaces.
> >
> > Right, that's pending work for the CUPS backend in Ghostscript (along
> > with cupsBackSide and proper RGBW support...)
> >
> > > The point of the work Michael talked about at the summit is that
>
> cups
>
> > > will be able to supply an ICC profile describing exactly what space
> > > ghostscript should generate output in. If the application embeds an
> > > icc profile in the pdf it generates, this will result in end-to-end
> > > colour management if ghostscript is doing the halftoning. If not,
>
> the
>
> > > PPD can at least request generation of a cups raster in an
> > > intermediate space with an appropriate gamut for passing to the
> > > rasterto* driver, which minimizes conversion loss. The printing
>
> dialog
>
> > > would supply the screen's ICC profile *and* the printer's profile,
>
> so
>
> > > ghostscript (or libpoppler, when it also has ICC support) could
> > > approximate the appearance of the document within the constraints of
> > > both the printer and the screen gamuts.
> >
> > Like I said, most vendor drivers want RGB data (and usually sRGB).
> > CMYK is often not supported directly (the CM code has to convert to
> > the destination colorspace regardless...)
> >
> > ____________________________________
> > Michael R Sweet, Senior Printing System Engineer
>
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linux-foundation.org/mailman/listinfo/printing-architecture

