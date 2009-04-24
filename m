From: "Hal V. Engel" <hvengel@astound.net>
Date: Thu, 23 Apr 2009 20:22:13 -0700
References: <ED4094DE5E8ACD4BBDACA6AD398E608F379D52@EEAEX03.us.epson.net>
	<49F08830.70207@gmail.com>
	<ED4094DE5E8ACD4BBDACA6AD398E608F379D8D@EEAEX03.us.epson.net>
In-Reply-To: <ED4094DE5E8ACD4BBDACA6AD398E608F379D8D@EEAEX03.us.epson.net>
MIME-Version: 1.0
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200904232022.14149.hvengel@astound.net>
Subject: Re: [Printing-architecture]
 =?iso-8859-1?q?=5BPrinting-summit=5D_Prin?=
 =?iso-8859-1?q?t=09Dialog=3APreviewProcessing=3A_Only_A_Question?=
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

On Thursday 23 April 2009 11:56:44 am Petrie, Glen wrote:
> ==============================================================
> 3. Should applications support just PDF print format.
>
> Till, in general I understand and probably agree with your comments.  
>
> PDF format is great for documents.  There are concerns about have any
> filters in the print-chain between photo applications and the
> printer-driver (i.e. rendering and re-rendered image).

I would also argue that PDF is great for image formats as well.  For example 
it will facilitate color management and also help with correct page formating 
(IE the user only wants to use the top or bottom half of the page for this 
photo).

>
> Can we support at least one image format or have a way for the filers
> that process PDF to not alter the original images.  

The problem is that current drivers do not handle images correctly at least 
not without some external help.  For example none of the current drivers does 
color management and this must be done someplace upstream from the driver.

snip
> The point is "why the constraints".
>
> > CUPS converts PostScript
> > and PDF to the driver's input format.
> >
> > > If I have a photo app that wants to print an image. The steps are
> > >
> > > 1. app creates a pdf instantiation of the image
> > > 2. send pdf to print dialog
> > > 3. send pdf to CUPS
> > > 4. CUPS sends pdf to GhostScript to render
> > > 5. Ghostscript creates an image
> > > 6. Image is sent to a printer driver
> >
> > The image created in 5. is not the same format as the image coming
>
> from
>
> > the app. The app sends JPG or PNG, in 5. PCL, ESC/P 2, or CUPS Raster
>
> is
>
> > created.

Yes but the image embedded in the PDF is an unaltered JPG or PNG or TIFF... 
file.  The PDF is a container and the image is NOT altered when it is embedded 
in the PDF.  But there are necessary steps that will take place in #5 that are 
currently NOT happening.

>
> As a vendor supporting photo printing; print vendors may have an issue
> with step 5.  If the filters (i.e. Ghostscript) dithers, halftone or
> changes the colors 

Dithering and half toning should not be happening at this stage.  The only 
transformation that should be happening at this stage is application of the 
correct ICC profiles to target the print device.   This is "changing the 
colors" but it is a necessary step for getting correct results that can not be 
avoided unless the user does not care about color accuracy and only then if 
the user is only dealing with simple images or documents that are already in 
the devices generic color space.  After all if the driver expects images to be 
RGB and the user sends a CMY(K) image to CUPS the color will have to be 
changed at some point along the way.  It seems logical that the software doing 
this would use the images embedded CMY(K) profile and the printers RGB profile 
to do the transformation correctly rather than using some generic CMYK to RGB 
transform unless it had no other choice.  The image(s) and other objects in 
the PDF file should have embedded profile(s) and CUPS should pass the correct 
printer profile to the pdftoraster filter based on the cupsICCProfile settings 
in the PPD file.   Images without embedded profiles can be handled in a more 
generic way (IE. using default image profiles) but in that case the user 
apparently does not care about color correctness. 

The color management step has to occur somewhere and this is the logical place 
for it to happen.  In addition, this is one of the intended purposes of PDF 
and I know of no current printer drivers that do this.  The only way to avoid 
this and satisfy the color management community is to make all of the printer 
drivers handle the color transformations or to find another system wide 
location where this happens (if not #5 or the printer drivers then where?).  
If you are ready to add color management to your printer drivers and you can 
convince all of the other vendors to do the same then I am fine with that.   
But I don't think that is even a remote possibility.  On the other hand the 
PDF CM solution is being worked on right now and should be usable, at least 
for testing, in the not too distant future.  When this happens users using 
your drivers will end up with CM without you doing anything if they are 
sending PDFs to CUPS.   In the long run this will benefit everyone.

> and, then, the printer-driver dithers and performs
> color-to-ink conversion 

This is where dithering and half toning belong and the color management 
transformation that takes place in the pdftoraster filter should target the 
color and tonal characteristics that result from the driver doing these 
things.  And of course only the printer driver can handle the color to ink 
processing, forgetting for the moment that this could also be handled with 
deviceN printer profiles if the driver had deviceN support like the gutenprint 
drivers do.

> you have high risk of creating artifacts in the
> final print.  

Only if your assumptions are correct and I don't think all of them are.
 
snip
> I bet that neither openoffice nor firefox cares about PDF; what they
> prefer is that the GDI they are using supports a printer deviceContext
> and they just "display" to the printer deviceContext and deviceContext
> generate the print content (image, pdf, ps, cups raster, foo....)

This is probably correct for some applications but I think there are two sets 
of exceptions and these exceptions cover a wide range of applications.  

1. For some tool sets like Qt it is a fairly simple thing to create a PDF 
document as the output when using the printer context.  So this means that 
this is a non-issue for KDE/Qt applications and there this may also be true 
for some other tool sets.

2. Many applications already support exporting PDF files.  OpenOffice is an 
example and I think this is true for many other applications that require high 
quality output.  Even if the tool set they use does not support PDF as a 
printer context like Qt it should be fairly simple for these applications to 
use their PDF export code as part of the print work flow. 

So OpenOffice is not be a good example for supporting Glen's argument but his 
point may be more applicable to firefox and some other applications.  At the 
Open Printing Summit a significant part of one session was about issues with 
apps not handling printing correctly or in a consistent way.   Isn't this one 
more thing to consider as part of that list of issues?

>
> > So the dialog would
> > get much more complex if we make it capable of all formats which CUPS
> > can convert. So standardizing on one format simplifies the
> > implementation of the dialog a lot.
>
> Not if the dialog request CUPS to create the preview via it's filters.
>
> > You are now suggesting that the apps can send a wide range of formats
> > (ideally the full range of formats which the stock CUPS package
> > accepts). This would change the internal (not UI) design of the dialog
> > (and the apps) vastly.
>
> Not if the dialog request CUPS to create the preview via it's filters.

But this makes things for CUPS more complex.  For example, setting up things 
on the CPD side to color manage a PDF based preview using a color management 
aware GhostScript or poppler would be fairly easy.  In fact once there is a 
color management aware way to render PDF files the code needed to make the CPD 
do color managed previews is almost trivial (at most 20 lines of code) and 
almost mandatory to have the rendering work correctly.   I have played with 
the poppler Qt demo app along with the CM code that was added to poppler a few 
months ago.  It took perhaps 20 or 30 lines of code to add the CM hooks to the 
poppler Qt4 wrapper library which completed the Qt4 interface for this 
functionality and then it took all of 14 lines of code to make the Qt4 demo 
app color manage PDFs to the display and most of that was XOrg related code to 
get the display profile to setup the transform. 

But to do a color managed preview using the CUPS pipeline requires that CUPS  
to get the display profile otherwise it has no way to know how to create the 
needed color management transforms.  The profile could conceivably be passed 
to CUPS by the application or the CPD but there are issues with this.   CUPS 
will not use a profile that is not logically installed in the 
<prefix>/share/cups/profiles directory of the CUPS server for security reasons 
(at least this was the case - if I am wrong about this please correct me). 
Since the application would need to pass the XOrg _ICC_PROFILE atom there is 
no way currently to pass this to CUPS and even is this were possible CUPS 
would reject it because it in not located in <prefix>/share/cups/profiles 
since the _ICC_PROFILE atom is a memory blob.

Hal
