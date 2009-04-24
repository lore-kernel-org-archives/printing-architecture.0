From: "Hal V. Engel" <hvengel@astound.net>
Date: Fri, 24 Apr 2009 13:02:40 -0700
References: <ED4094DE5E8ACD4BBDACA6AD398E608F379D52@EEAEX03.us.epson.net>
	<49F1F5A2.5060707@gmail.com>
	<ED4094DE5E8ACD4BBDACA6AD398E608F379DB6@EEAEX03.us.epson.net>
In-Reply-To: <ED4094DE5E8ACD4BBDACA6AD398E608F379DB6@EEAEX03.us.epson.net>
MIME-Version: 1.0
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200904241302.40953.hvengel@astound.net>
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

On Friday 24 April 2009 11:33:51 am Petrie, Glen wrote:
snip
> > > ==============================================================
> > > ==============================================================
> > > ==============================================================
> > > 2. Who renders the preview
> > >
> > > I really do want to push the case where the print-system creates the
> > > preview from the print-content.  It is really the only way for the
>
> print
>
> > > preview to display the best representation (we can do today) that
>
> the
>
> > > printer will actually print.
> >
> > What we do is taking the output geometry from the printer by polling
>
> the
>
> > PPD from the CUPS server. We will also poll the ICC profile to allow a
> > preview of the color reproduction of the printer. CUPS' page
>
> management
>
> > options and their behavior are known so we can emulate them in the
> > preview. 

This is called soft proofing and I am not sure that this is a good fit for the 
CPD preview as it adds additional complexity that may only be useful to a 
small subset of users and because of the small size of the preview it may not 
be useful at all.

> > Also PPD options with known behavior (like grayscale) we can
> > emulate in the preview. So the dialog will display the preview based
>
> on
>
> > PDF coming from the app.

This is one place where using a proofing transform may make sense since it is 
possible that the user may be sending a color document to a gray scale device 
and this should be reflected in the preview.

>
> 1. I was not aware that the print preview would be concerned with CM.

If we are using PDF then CM is not optional.  PDF rendering engines are 
required by the PDF specification to use CIE color spaces and ICC profiles to 
do the rendering.  My point was that it is trivial to get the actual display 
profile from XOrg and pass it to the PDF rendering engine so that it can use 
the actual device profile rather than some generic "best guess" profile.  On 
many displays a generic "best guess" profile like sRGB is not ideal but may be 
"good enough" for users who are not doing color critical work.  But wide gamut 
displays are becoming increasingly common and with this type of display using 
a generic "best guess" profile will result in the colors in the preview being 
quite distorted.   These colors will be way too saturated to the point that 
the printed output would be far different from the preview and this will 
likely be an issue for even for users who are not doing color critical work.  
Why have that happen if it can be prevented with a few lines of fairly trivial 
code?

As a side note if the XOrg _ICC_PROFILE atom is not set the CPD should default 
the display profile to sRGB. This is not ideal but if the user has not set the 
_ICC_PROFILE atom then they are likely not too concerned about color accuracy 
and they will probably find the result acceptable if they do not have a wide 
gamut display.

> I
> though of it more as what the print format would be and not on the fine
> details like "is this the right blue".  I am confused how this works.  I
> would have thought the preview would have to use CM stuff for the
> display; I guess the preview could use the reduced gamut of the printer.

Again we are mixing up soft proofing with getting a reasonably accurate 
preview.  I don't think the small preview being proposed is large enough to be 
a workable solution for soft proofing.  Applications where color critical work 
is normally done like GIMP, cinepaint and Scribus already have soft proofing 
as a built in feature of the actual image/document editor (Photoshop and other 
parts of the Adobe suite also do this).  So I don't think soft proofing is a 
requirement for the preview and I agree with Glen that at least for now 
getting and using the correct display profile, if it is set, or a suitable 
default, if it is not set, is what should be done for the preview.

> But, what will the user do with this knowledge.  The best the user can
> do is go back to the calling application.  But, if the calling
> application cannot adjust the content to account for the intended
> printer; then what.

Glen is correct.  Only users who are using apps that can correct for this (IE. 
GIMP, cinepaint, Scribus...) need soft proofing and then they need it directly 
in the app so that they see the affects of those edits on the soft proof as 
the changes are made.

Hal
