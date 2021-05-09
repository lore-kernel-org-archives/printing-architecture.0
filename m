Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=eM9tzKEJYKw1PYHSUgaEW9TvrLKEjt6/aNK7dd8J4Yg=;
 b=fSUZ+oNYfTSFJx/TVUIXku7+RTgTCTJvlbbGmh3FbPDvsXQ4j9i0ZxaZSS7lBMzCA8
 aI3M3CjdcwkNIjgf7zFq7RvYBM8dESAvArR1YVe+JRqcWH8zagG2w1zenIy/U9xKpRPR
 p0IpadIf6g8WQgs+jjAiTqzEgCetn2a5d2QGweOpx/3FTPOBegAZxjNTVyyW8ZlZoz3F
 6wd0Ai/DgkRdYllinZPrrh37hx2qIGQuvebvqGrqJv2G3F2PBcZbqXnWAhBdWaW5Xy2S
 mXHJj8ffw9aTrRUznBmD5HvrhJejCIKhIbuzFZ5jjo4Hw9wFdDiGV2E00rqW8vidh3AM
 /Lcg==
References: <8c101e3b-2f80-666c-db86-05b7dd170a7c@gmail.com>
 <FC123AED-25FA-4E37-9957-29565F89DC1D@msweet.org>
 <e8060298-8b2b-94d9-3eaf-1386cbc9543c@gmail.com>
 <29E8A83D-5BBB-49AA-83A6-4B3EB765828A@msweet.org>
 <9db67beb-7ca2-249c-88e4-ead29d19ce63@gmail.com>
 <FC95906E-6085-4121-AEA8-9E53613872AD@msweet.org>
 <54eda145-936b-a920-b645-66a104b23ad4@gmail.com>
 <YJc9BYPyXoSyi8X/@shaftnet.org>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <46c7d30c-b28d-1585-e4b6-49aa22b9efc2@gmail.com>
Date: Sun, 9 May 2021 11:20:57 +0200
MIME-Version: 1.0
In-Reply-To: <YJc9BYPyXoSyi8X/@shaftnet.org>
Content-Type: text/plain; charset=windows-1252; format=flowed
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
To: Solomon Peachy <pizza@shaftnet.org>, Michael Sweet <msweet@msweet.org>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Jay Berkenbilt <ejb@ql.org>, Vikrant Malik <vikrant@iitk.ac.in>



On 09/05/2021 03:38, Solomon Peachy wrote:
>> 7. As the PPD generator does not add choices for the extended color modes to
>> the ColorModel option (see (1)) we need to somehow add the info of how to
>> upgrade the color depth and color space for print-quality=high in (3) and
>> which is the highest color depth/space supported by the printer for (5). So
>> we let the PPD generator add a line like "*cupsHighQuality: 16bit,AdobeRGB"
>> (exact content depends on what the printer supports).
> 
> It is is mistake to think about colorspace conversions in terms of
> "print quality" and as such something that can be "upgraded". Instead,
> one should think about it in terms of "correctness".
> 

OK< then I will only upgrade from 8 to 16 bit (for the rasterizing of a 
standard vector-graphics-PDF) when the user requests "high" quality and 
the printer supports it.

My problem now is the following use cases:

1. A user wants to print photos in best possible (wide gammut) color 
reproduction quality. So he either sets his camera to produce AdobeRGB 
JPEGs or he shoots RAW and saves the processed RAW images in 
16-bit-per-color AdobeRGB. He sends his images out of his photo 
editor/manager to the printer, but the application sends print jobs in 
PDF. So we get a raster-only PDF with the raster data embedded being 
16-bit AdobeRGB (assuming that the printer supports it as the 
application's print dialog does a get-printer-attributes request and so 
knows what the printer supports).

In this case in the CUPS filtering process we have to discover at first 
whether the incoming PDF is raster-only. In this case we would not 
render it but pass it through pclmtoraster to extract the raster data 
with its color space info (AdobeRGB). We do not convert this to sRGB or 
anything else, but pass on a Raster file in AdobeRGB.

Question here: Do we need to discover that the PDF is raster-only and 
then use pclmtoraster? Or can we simply do the standard rendering 
(GhostScript, Poppler, or MuPDF) and tell the renderer (by command line 
for example) that we want AdobeRGB output? Would the renderer pass on 
the AdobeRGB data without conversion, especially not doing AdobeRGB -> 
sRGB -> AdobeRGB?


2. Another user wants to write a review of mobile phone providers, 
containing pictures and logos of the candidates (one of them is 
T-Mobile). In order to avoid the providers feeling stepped on their toes 
he wants to have best color reproduction. So he creates the print output 
(which is in PDF) in AdobeRGB as he knows that the printer supports it.

My question: Now how can the CUPS filters auto-discover that the PDF is 
in AdobeRGB and therefore the PDF needs to get rasterized in AdobeRGB? 
Is there some tool for that? Some special call of GhostScript or QPDF? 
Or can I uncompress the PDF and then search it for "/ColorSpace" keys? 
Also how to rasterize if there are some sRGB and some AdobeRGB pieces in it?

    Till
