Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=YH1m0od7/zdYQBm0Z58dIBLpOsXTnv5P7a80M/6w048=;
 b=H6Ub00LFma0Fgdgz2ygQwHv7W1Am0n9yL3W4EyuA+YvdNItGzrMpvB3aLtOh79JhB2
 iAHiOZgZKJXgomPEQuJK9zZwUfgcmgQ6HtkgFDB8t9FPCJqHNNpmktzDaLzjYBAjgw2w
 d9h+elf2QS77C4wvlyIHi3JyDZbyYNcjMfba6ebecaXgSYBIf1oqv8SdVnECxzT/sArs
 jdwmhJt1z3eWLnaZyoh1t4HiPQAYEUKAsbQCDevzyhNsPeyoCAcl4Bm1vPcDdTztjccj
 HIt8FWXinCTL2uj6kNpFwsZAx9bqmfJbq4rNDbKlf36d5c8w/hT2OfFJl/dVzQ7eKyZ8
 NzRw==
References: <8c101e3b-2f80-666c-db86-05b7dd170a7c@gmail.com>
 <FC123AED-25FA-4E37-9957-29565F89DC1D@msweet.org>
 <e8060298-8b2b-94d9-3eaf-1386cbc9543c@gmail.com>
 <29E8A83D-5BBB-49AA-83A6-4B3EB765828A@msweet.org>
 <9db67beb-7ca2-249c-88e4-ead29d19ce63@gmail.com>
 <FC95906E-6085-4121-AEA8-9E53613872AD@msweet.org>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <54eda145-936b-a920-b645-66a104b23ad4@gmail.com>
Date: Sun, 9 May 2021 00:45:53 +0200
MIME-Version: 1.0
In-Reply-To: <FC95906E-6085-4121-AEA8-9E53613872AD@msweet.org>
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

I am thinking about doing the auto-generation of the PPD file and the 
filtering for a CUPS queue pointing to a driverless IPP printer as follows:

1. The PPD generator creates a ColorModel option which only contains the 
choices of the print-color-mode-supported IPP attribute. The choice's 
pseudo-PostScript-code snippets represent color depth and color space 
for the normal print quality (usually 8-bit, sRGB).

2. It also adds the usual print quality option with 3 levels, one is "high".

3. In (PDF, ... -rendering) filters, if print-quality=high is chosen, 
right after each ppdRasterInterpretPPD() call, we modify the raster 
header created by the function, to 16-bit and to AdobeRGB if the printer 
supports it, latter only with also print-color-mode/output-mode=color. 
This makes PDF input be rendered in the printer's highest quality if 
"high" quality is requested.

4. In filters where input is PWG/Apple/CUPS Raster we use the color 
depth and color space of the input, and not of the attributes, as they 
could have been upgraded by a previous filter due to (3)

5. In filters where the input is raster or an image, pass it on in ts 
original color depth and color space, only convert if the printer does 
not support the color depth/space or the user wants to print in 
grayscale. Especially we also do not want to convert 8-bit input to 
16-bit (if the printer supports both) or sRGB input to AdobeRGB as this 
does not improve the output quality.

6. For the resolution always use the requested resolution (usually via 
the pseudo-PostScript code in the print-quality option choices).

7. As the PPD generator does not add choices for the extended color 
modes to the ColorModel option (see (1)) we need to somehow add the info 
of how to upgrade the color depth and color space for print-quality=high 
in (3) and which is the highest color depth/space supported by the 
printer for (5). So we let the PPD generator add a line like 
"*cupsHighQuality: 16bit,AdobeRGB" (exact content depends on what the 
printer supports).

8. A way to make it even better is to somehow detect whether PDF input 
is a raster-only PDF (PCLm, PDF-IS, PDF-R, PDF from scanner, PDF from 
photo editor/manager) and in this case run it through pclmtoraster 
instead of through gstoraster or pdftoraster and treat it like raster 
input a in (4) and (5).

This way the user chooses under "ColorModel" which is expected for the 
print-color-mode in IPP. The actual color depth and color space 
(standard or best) is chosen based on whether the user wants "high" 
print quality or not.

I hope this way we better map IPP to the PPD file for the CUPS queue.

WDYT?

    Till


On 07/05/2021 21:53, Michael Sweet wrote:
> Till,
> 
>> On May 7, 2021, at 2:52 PM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
>>
>>
>> TL;DR: Some doubts about supporting extended color depth and color spaces:
>> - How to discover if a page in a PDF is 8/16-bit color/grayscale
>>    sRGB/Adobe RGB?
> 
> So there are ways to do this, but none are pretty... :/
> 
>> - How important is Adobe RGB for printing? If a printer advertises that
>>    it supports it, is it worthwhile for us to support jobs in Adobe RGB?
> 
> Very important, since a lot of cameras use AdobeRGB (or provide an option for it) for an expanded color gamut.  And if you are going from Display P3 (which is another one you'll see a lot of from iPhones/iPads) it is even more important since sRGB is a really small color space.
> 
>> - How is all this influenced by the "print-content-optimize" setting?
> 
> Two different things - certainly the 'photo' value might be hint that AdobeRGB/deep color is useful/important, but I'd also say that "print-quality" can also feature in this decision, e.g., 'high' (5) print quality might indicate deep color is preferred.
> 
>> I want to make it possible to make use of the support for extended color spaces of driverless IPP printers (or Printer Applications).
>>
>> IPP allows the user to only select from the following color modes for a job (list taken from PAPPL, actually available modes advertised in the
>> "print-color-mode-supported" IPP attribute):
>>
>>   'auto'               - Automatic color/monochrome print mode
>>   'auto-monochrome'    - Automatic monochrome/process mono print mode
>>   'bi-level'           - B&W (threshold) print mode
>>   'color'              - Full color print mode
>>   'monochrome'         - Grayscale print mode using 1 color
>>   'process-monochrome' - Grayscale print mode using multiple colors
>>
>> On mono/grayscale printers there is no 'auto-monochrome' and 'color'
>>
>> Printers support some extended color space modes, at least for raster input, as advertised in the "urf-supported" attribute for Apple Raster, and the "pwg-raster-document-type-supported" attribute for PWG Raster. The extensions are:
>>
>> - 16 bit per color instead of 8 bit per color in color or grayscale
>> - Adobe RGB instead of sRGB in color
> 
> So print-color-mode and pwg-raster-document-type-supported/urf-support do two different things.  "print-color-mode" is a rendering intent (color, grayscale, bi-level, etc.) while the others list the actual color spaces and bit depths that are supported.
> 
> ________________________
> Michael Sweet
> 
> 
> 
