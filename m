Message-ID: <48978139.3070005@gmail.com>
Date: Tue, 05 Aug 2008 00:22:49 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <200807311309.m6VD9s5n018013@dsl092-065-009.bos1.dsl.speakeasy.net>	<200808031506.m73F6GPe025447@dsl092-065-009.bos1.dsl.speakeasy.net>	<200808030932.38287.hvengel@astound.net>
	<200808031431.06482.hvengel@astound.net>
In-Reply-To: <200808031431.06482.hvengel@astound.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [Gimp-print-devel] Common Printing
 Dialog: Color Management	(was)PPD extension specs updated
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "Hal V. Engel" <hvengel@astound.net>, gimp-print-devel@lists.sourceforge.net, "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Printing-japan <printing-japan@lists.linux-foundation.org>, Peter Sikking <peter@mmiworks.net>

Hal V. Engel wrote:
> After an extensive search I was able to find more stuff on this 
> including the UI specifications. I also built and ran the current 
> developement images.
> 
> It does appear that color management is part of the spec for 
> PhotoPrinters (But there are no details on just what that means since it 
> lists setting the profile but does not have info on things like 
> rendering intents and black point compensation) but not for any other 
> class of printer including wide format printers. The example of a wide 
> format printer in the spec is an Epson Stylus Pro 9800 which is very 
> commonly used for doing large format photo printing. Most places that do 
> this type of printing use color management in the printing work flow. So 
> I am puzzeled by the lack of CM support for wide format printers in the 
> spec.

In which part of the specs did you find that color management is 
supported for photo printers and not for large-format printers?

> The UI appears to be driven completely by the ppd file and most of it's 
> functionality is dependant on the new extensions which do not exist in 
> current ppd files. There are no example ppd files in the source code 
> with these new extensions.

Take a CVS snapshot from the current HEAD branch of Gutenprint. These 
are the first PPDs with the new PPD extensions. Tags are still missing, 
but there are custom options, translations, and widget hints.

> So it is difficult to evaluate the new dialog 
> since it is crippled when using the older (unextended) ppd files. It 
> failed to do anything with the cupsICCProfile setting in my printer ppd 
> file as far as I could tell (it does not show up in the UI). Does anyone 
> have an extended PPD file that could be used for testing? Does anyone 
> have an example of a PPD file that exposes cupsICCProfile settings to 
> the user in some useful way?
> 
> Also the design appears to be completely dependent on the calling 
> application for the preview and it only accepts pdf files for the 
> preview. Therefore every application that uses this that wants a 
> functioning preview needs to be able to produce PDF files. This implies 
> that those applications that want color managed previews will have to 
> implement CM and proofing functionality as part of producing the PDF 
> preview file.
> 

We should look into this and at least in a second version we should add 
color-managed previews.

> The KDE version of the dialog is a fixed size which makes the preview of 
> limited usefullness if users desire to inspect the preview in any 
> detail. At the very least users should be able to maximize the dialog 
> and I would really like to see a zome feature for the preview widget.
> 

These are design decisions. Peter, do you want to help him here?

> The build does not have any dependancies on any color management 
> libraries. So it appears that the preview pdf is not even corrected from 
> it's embedded colorspace to the display color space. If the preview 
> functionality supported this then preview pdf files that were in the 
> printer color space (and have that profile embedded in the pdf) would 
> automatically be soft proofed in the preview.
> 
> PDF will be the new standard file format for printering instead of 
> PostScript. It appears that the pdftoraster (and other filters related 
> to this change) are being developed at this time. Some of these may 
> already be close to complete. Since this is new developement I would 
> expect that these filters will have support for applying ICC profile 
> transformations unlike any of the existing (older) filters. This 
> assumption may not be true but if that is the case then this would have 
> been a significant design oversight. If the pdftoraster filter has 
> support for ICC profile transformations then this means that color 
> managed printing work flows are available to any and all applications 
> that use pdf files (IE. that conform to the new standard). Anyone know 
> if the new filters support color management?

Otani-san, what about color management in the new PDF filters?

    Till
