Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=GqO7De3+3uiDt77Z8zqa2g1NzdIKS2Vo9gcoLA/BIk8=;
 b=tQktcEA3JGKofwVa4I5JpuL6CLu4iBTK9Sfc7Spe0OWJ+YAVudsuRM+3AeibyPbNf3
 06seA3jIXRGkty46lRhS63snV7DjdcVb5w/7P3ueXi/L/qnOOB/syz8oIH3Tf5RAcTrt
 6lZWEN//GXk7T+OpZ2o2eduSfnp8wF5CuULursVt/jng8yb8OZOsb4NqCg5ZC0/0yYAE
 05PxX0Tm0nmaN8h8EzJo0qCuwdHj5uKCrZi/++6qkzEznmY0Iv/7fv2KFG2nMl2kNtDN
 SzusDwe1B2a5DPi6jHw28X2oc2Y21fegvc3fr+mBMjlYFmQMNNQxINvYlUdDZpJg6OEo
 ZXDQ==
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
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <320a8f00-338a-8ec8-8019-22f6ecd1d4ec@gmail.com>
Date: Sat, 29 May 2021 21:19:56 +0200
MIME-Version: 1.0
In-Reply-To: <4FDD96B5-A0D7-4CF7-A0E4-4D116FE73607@msweet.org>
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

Thank you very much.

Not having any files in AdobeRGB I have shot a photo in JPEG, setting 
the camera (Olympus PEN F) to AdobeRGB and shot another photo with the 
standard sRGB setting.

The sRGB picture contains "ColorSpace: sRGB" in its EXIF data (section: 
Photograph Information"), as you told, so it can easily be identified as 
such.

The AdobeRGB picture has "ColorSpace: Uncalibrated", so something 
similar to the "Other" which you told, and in the "Image Information" 
section now appears an entry "Primary Chromaticities: 64/100 33/100 
21/100 71/100 15/100 6/100" which are exactly the 6 numbers for Red 
Green, and Blue in the chromaticities table on

https://en.wikipedia.org/wiki/Adobe_RGB_color_space

The 2 numbers for White in this table also appear in the EXIF data, as 
"White Point: 313/1000 329/1000", also under "Image Information".

Note that I did not use the "official" EXIF standard via the link

https://www.jeita.or.jp/cgi-bin/standard_e/list.cgi?cateid=1&subcateid=4

as it seems to be some proprietary format presented in some reader which 
has a Japanese-only UI, even for the English version of the document.

So one can identify the picture as AdobeRGB in the ugly way you 
describe, but it seems that the EXIF standard does not actually support 
AdobeRGB, even that cameras have this sRGB/AdobeRGB switch in their 
menus for decades (probably from the beginning of digital photography, I 
think my Canon IXUS 400 of the early aughties had it already).

But there is still the question whether this works with the AdobeRGB 
pictures of all cameras or only of some of them. I really do not want to 
have an AdobeRGB-identification quirk list for digital cameras (and phones).

Only there is also one thing: If you print a JPEG picture right away 
from the command line, it does not get filtered at all, due to this line 
in the auto-generated PPD files:

*cupsFilter2: "image/jpeg image/jpeg 0 -"

So the printer takes care of however you set your camera in the hope to 
get the best image quality.

So it seems to be more important to identify AdobeRGB in raster-only 
PDFs, for example if you print a photo from a photo manager or editor 
and here it probably depends on what the user sets in the print settings 
whether the PDF is AdobeRGB or sRGB. digikam allows turning on color 
management in the print dialog and the select from a long list of 
standard color spaces (includes sRGB and AdobeRGB) or with custom color 
profile, but one does not know whether a JPEG image in AdobeRGB gets out 
as a raster PDF in AdobeRGB without converting forth and back when one 
selects AdobeRGB for printing.

It seems not to be easy to make use of the fact that a printer supports 
AdobeRGB as input (sRGB probably serves 99.9 % of all printing needs). 
Did you already try this out somehow? Do you really get better output 
quality by that? And if you tried it, how did you do so?

So I am a little bit in doubt how important the support for the 
printer's AdobeRGB is and how best to support it.

    Till


On 28/05/2021 14:59, Michael Sweet wrote:
> Till,
> 
>> On May 27, 2021, at 2:04 PM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
>> ...
>> If I look into the source code of the pclmtoraster filter of cups-filters (cupsfilters/pclmtoraster.cxx) I see that when readin the embedded bitmaps from a PDF file there only occur /DeviceGray, /DeviceRGB, and /DeviceCMYK color spaces. How do I determine whether I have sRGB or AdobeRGB? Vikrant?Ans what is the default/IPP/PWG-standard color space of /DeviceCMYK?
> 
> Assume sRGB/sGray - pclm was intended as a format for entry-level HP laser printers. DeviceCMYK is CUPS_CSPACE_CMYK (no associated profile, always a device color space).
> 
>> Also, if I have images (JPEG, TIFF, PNG, ...) how do I know which coloe space they are? imagetoraster seems not to determin whether images are sRGB or AdobeRGB.
> 
> EXIF (used for both JPEG and TIFF) includes several tags related to color space, starting with ColorSpace (sRGB or "other") and then using PrimaryChromaticities (sic) for the "other" color space to match it with the AdobeRGB primaries.
> 
> 	https://www.jeita.or.jp/cgi-bin/standard_e/list.cgi?cateid=1&subcateid=4
> 
> For PNG you need to look at the cHRM chunk to compare primaries:
> 
> 	https://datatracker.ietf.org/doc/html/rfc2083#page-20
> 
> If the file doesn't have this chunk, assume sRGB.
> 
> ________________________
> Michael Sweet
> 
> 
> 
