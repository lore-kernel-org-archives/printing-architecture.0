Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=pg8yTdfbXuWpknMi+CpRi03AqpBPHux06c9efiQMn+8=;
 b=m8YE1RhMQEaL3rXSvX7pHL1OrXwE/K0kH29nIcRGMRuCdmaAqExrlzQWDK3N6xZYJT
 IKfYv8iGlNoE4Z+/ML3zqzMmJepVi5EXR6osfCbGVXTDNq+sJE0EEa1/O5BcDOacgMVc
 PGtIqqVlGQpgRft1CNbiXCoJPKG6vz30rYssUGxYF57Lp8KOc6a5EiX1whjPihI8vXb4
 RW05Q30g3PNLnPb/Fg2IJSQzA7BwYJAOuP1a/zN69mv4G2J2xItTzp16zyafM8wLeeYw
 J8p0+NWl9Jh5CM5j9naYsalwRbD98RryJcegeFv23npXdWrKpHFVNangakfuhKKodtD0
 C3hA==
References: <8c101e3b-2f80-666c-db86-05b7dd170a7c@gmail.com>
 <FC123AED-25FA-4E37-9957-29565F89DC1D@msweet.org>
 <e8060298-8b2b-94d9-3eaf-1386cbc9543c@gmail.com>
 <29E8A83D-5BBB-49AA-83A6-4B3EB765828A@msweet.org>
 <9db67beb-7ca2-249c-88e4-ead29d19ce63@gmail.com>
 <FC95906E-6085-4121-AEA8-9E53613872AD@msweet.org>
 <54eda145-936b-a920-b645-66a104b23ad4@gmail.com>
 <YJc9BYPyXoSyi8X/@shaftnet.org>
 <46c7d30c-b28d-1585-e4b6-49aa22b9efc2@gmail.com>
 <2427DA0B-9BB7-462B-A29E-0A3366E504A3@msweet.org>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <aae2e939-01a4-bdee-ddc7-940e93351eec@gmail.com>
Date: Thu, 27 May 2021 20:04:30 +0200
MIME-Version: 1.0
In-Reply-To: <2427DA0B-9BB7-462B-A29E-0A3366E504A3@msweet.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Make use of extended color spaces on
 IPP printers
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@msweet.org>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Jay Berkenbilt <ejb@ql.org>, Vikrant Malik <vikrant@iitk.ac.in>

As discussed on the gs-devel mailing list

https://ghostscript.com/pipermail/gs-devel/2021-May/010456.html

we came to the conclusion that for PDF files for which we do not know 
the color space the data comes in we default to sRGB in general, and 
default only to AdobeRGB if it is available in 16-bit per color and high 
color depth is requested via print-quality=high, as most PDFs are sRGB 
and if we convert sRGB to AdobeRGB with only 8 bit color depth, we can 
easily get ugly color banding.

Now I have questions about raster input files, either images or 
raster-only PDFs:

If I look into the source code of the pclmtoraster filter of 
cups-filters (cupsfilters/pclmtoraster.cxx) I see that when readin the 
embedded bitmaps from a PDF file there only occur /DeviceGray, 
/DeviceRGB, and /DeviceCMYK color spaces. How do I determine whether I 
have sRGB or AdobeRGB? Vikrant?Ans what is the default/IPP/PWG-standard 
color space of /DeviceCMYK?

Also, if I have images (JPEG, TIFF, PNG, ...) how do I know which coloe 
space they are? imagetoraster seems not to determin whether images are 
sRGB or AdobeRGB.

    Till

On 09/05/2021 15:49, Michael Sweet wrote:
> Till,
> 
>> On May 9, 2021, at 5:20 AM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
>> ...
>> 1. A user wants to print photos in best possible (wide gammut) color reproduction quality. So he either sets his camera to produce AdobeRGB JPEGs or he shoots RAW and saves the processed RAW images in 16-bit-per-color AdobeRGB. He sends his images out of his photo editor/manager to the printer, but the application sends print jobs in PDF. So we get a raster-only PDF with the raster data embedded being 16-bit AdobeRGB (assuming that the printer supports it as the application's print dialog does a get-printer-attributes request and so knows what the printer supports).
> 
> The best solution here is to look at the image color space and try to match it to the closest printer-supported color space.
> 
>> In this case in the CUPS filtering process we have to discover at first whether the incoming PDF is raster-only. In this case we would not render it but pass it through pclmtoraster to extract the raster data with its color space info (AdobeRGB). We do not convert this to sRGB or anything else, but pass on a Raster file in AdobeRGB.
> 
> Again, you want to look at the input data to determine its color space, and then pass it through or convert as needed.
> 
>> Question here: Do we need to discover that the PDF is raster-only and then use pclmtoraster? Or can we simply do the standard rendering (GhostScript, Poppler, or MuPDF) and tell the renderer (by command line for example) that we want AdobeRGB output? Would the renderer pass on the AdobeRGB data without conversion, especially not doing AdobeRGB -> sRGB -> AdobeRGB?
> 
> Ideally we want whatever converts the file to know the input color space(s) and the printer's supported color spaces.  Then we can make a semi-intelligent decision about the color space that preserves as much of the original data as possible.
> 
>> 2. Another user wants to write a review of mobile phone providers, containing pictures and logos of the candidates (one of them is T-Mobile). In order to avoid the providers feeling stepped on their toes he wants to have best color reproduction. So he creates the print output (which is in PDF) in AdobeRGB as he knows that the printer supports it.
> 
> Again, if the source images are sRGB, it is best to stay in sRGB until the last possible moment.
> 
>> My question: Now how can the CUPS filters auto-discover that the PDF is in AdobeRGB and therefore the PDF needs to get rasterized in AdobeRGB? Is there some tool for that? Some special call of GhostScript or QPDF? Or can I uncompress the PDF and then search it for "/ColorSpace" keys? Also how to rasterize if there are some sRGB and some AdobeRGB pieces in it?
> 
> Images are almost always embedded as objects in the PDF file and references in the content streams, so as to take best advantage of the available compression filters that PDF offers.  The typical exceptions are small icons or logos that wouldn't benefit from this treatment and probably wouldn't be adversely affected by an incorrect choice about color space (so long as the RIP does ICC).
> 
> Therefore, you can examine the embedded image objects (all of the current tools provide utilities for extracting them) as a hint to what color space might be best if you have to choose between AdobeRGB and sRGB.
> 
> That said, if you have a printer ICC profile and the printer supports device RGB (or device gray), then *that* is the best color space for the "last mile" to the printer.
> 
> ________________________
> Michael Sweet
> 
> 
> 
