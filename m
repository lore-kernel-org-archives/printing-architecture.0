Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=4u9QzbwSWDVdoe/EgygXpUhtmJ6Fxmi99lsc7tUpSr0=;
 b=gtTR9C/C/06o16mMNiv5QPvOKMF3bHdROcZ113A65LCn5D9tgvXHpdxm1tCQ94nk2T
 PbRiyFYexTx0Ab8mIl9YVlcymT7RVDGxmK8auEt5nJRgclSRJGX3fmfPV+N7cz7bf70e
 xRwtZCcM/elvGACt5r3IJBg/Wb9cord6yFzfbomvktpXxsvfPvD5Ai7gUk267g440enL
 S//MHeeOeLudnaeu0p+hsWElbgUojYWxrI7gcv0iZXKeXWTcN8elMuDIH++AkewvBVC1
 RPEuiVhFex3BYf8s4+Lx2bKpFh61nuWr77MPxYD0CWFIreu0UCpd0C1oeFRGqL2boLHu
 kO/A==
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
 <aae2e939-01a4-bdee-ddc7-940e93351eec@gmail.com>
 <4FDD96B5-A0D7-4CF7-A0E4-4D116FE73607@msweet.org>
 <320a8f00-338a-8ec8-8019-22f6ecd1d4ec@gmail.com>
 <15F0BA1D-9205-4659-A1D7-EB41F9F6F110@msweet.org>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <b9219a65-4bcd-2e7c-56e2-31a5c2c9be3e@gmail.com>
Date: Sun, 30 May 2021 21:56:33 +0200
MIME-Version: 1.0
In-Reply-To: <15F0BA1D-9205-4659-A1D7-EB41F9F6F110@msweet.org>
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

On 30/05/2021 00:32, Michael Sweet wrote:
> Right, and printers that support JPEG printing also support EXIF information (at least).  Beyond the primary chromacities, you can also embed an ICC profile in a JPEG file - only printers that advertise "icc" in their "jpeg-features-supported" attribute can properly print those files...
>

And if a printer without "icc" receives a file with embedded profile, 
does the printer reject the file or does it come out with ugly colors 
due to the profile being ignored?

> Longer term we'll need CUPS to convert JPEG files as needed and not just pass them through.
> 

To convert JPEG with embedded profile (or AdobeRGB JPEG) into sRGB? To 
support a printer which does not support the input JPEG? Probably the 
imagetoraster() filter function would need to get this facility.

>> So the printer takes care of however you set your camera in the hope to get the best image quality.
>>
>> So it seems to be more important to identify AdobeRGB in raster-only PDFs, for example if you print a photo from a photo manager or editor and here it probably depends on what the user sets in the print settings whether the PDF is AdobeRGB or sRGB. digikam allows turning on color management in the print dialog and the select from a long list of standard color spaces (includes sRGB and AdobeRGB) or with custom color profile, but one does not know whether a JPEG image in AdobeRGB gets out as a raster PDF in AdobeRGB without converting forth and back when one selects AdobeRGB for printing.
> 
> A PDF file (raster or otherwise) has color space information encoded as resources for the pages in the file. If an application actually supports different color spaces, then it should preserve the color space when printing and then the print pipeline needs to avoid doing extra conversions (Ghostscript does this, for example).
> 

In any PDF I only find /DeviceRGB, never /AdobeRGB. I even tried to 
generate PDFs in AdobeRGB with digikam and with darktable, printing an 
AdobeRGB JPEG (from my camera) and fiddling around with print dialog 
settings, but I always get files with only /DeviceRGB.

Do you know how I can get appropriate PDF files for testing? Are there 
somewhere sample files for download? Is there a recipe how to turn an 
AdobeRGB JPEG into an AdobeRGB PDF under Linux?

> I have several printers that support 48-bit AdobeRGB, and there is a definite difference in output quality for wider-gamut files.  But for me it is only worthwhile when printing photos or other large gamut content.

Unfortunately, I cannot test, as my printer only does 8-bit AdobeRGB, 
and I also do not have photo paper. Also how does one get files in 
AdobeRGB? Is the only way to simply send out-of-camera AdobeRGB JPEG files?

    Till
