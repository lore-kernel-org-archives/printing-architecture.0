Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Tstq1RjtXotCNYytJyrfrWnjUVLepaV/xsJoxzu5FEY=;
 b=jIMWuQvvQKRDg2hjrjTIS7JBDwryHpu+ikmcsUzEwN75lzFsYDbppvYEWfKFiYK650
 KuiB3//Nej0EDAZLauA7+9An+JMkEtVLeRDexs4cYjipcpBR1Tlad+j3WKgsLkPwngCz
 0jlC9v7zqmyxDgRV0nIcCs+WSvz1iFKxJTBRbb8opO01MIzdwR0cGxn3lwMBbltXCAou
 6+rIal9HICuBdYEX09AtYCbmO/XcvMjOf7eH//UMujCQ7dvSXzSihBaMQdC5ouJy2T5y
 llVBwjKsyJpFnNy63PtXIeCek8lNROGwNbtaIzZc9t4Bi7bZ4GOFgI3u4hCYPhsu6Qi+
 A5nw==
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
 <b9219a65-4bcd-2e7c-56e2-31a5c2c9be3e@gmail.com>
 <63629EAE-235A-4FB9-8721-884E9E163036@msweet.org>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <8592364a-15e6-41c3-ab0e-757b3aedfed7@gmail.com>
Date: Sun, 30 May 2021 23:50:26 +0200
MIME-Version: 1.0
In-Reply-To: <63629EAE-235A-4FB9-8721-884E9E163036@msweet.org>
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

On 30/05/2021 22:53, Michael Sweet wrote:
> Yes, and there is a mechanism for that - the printer will add the document-unprintable-error value in job-state-reasons or return client-error-document-unprintable-error from the Print-Job/Send-Document request. Then CUPS will re-print as raster.
> 

Is this already implemented in CUPS? So if I send a JPEG to CUPS and the 
printer which supports JPEG chokes on my JPEG then CUPS sees the error 
and retries the job in raster (which probably lets the imagetoraster 
filter being used)?

Is this only implemented for JPEG? Or does CUPS go from one 
*cupsfilter(2): line in the PPD to the next until the printer does not 
error any more?

>>> A PDF file (raster or otherwise) has color space information encoded as resources for the pages in the file. If an application actually supports different color spaces, then it should preserve the color space when printing and then the print pipeline needs to avoid doing extra conversions (Ghostscript does this, for example).
>>
>> In any PDF I only find /DeviceRGB, never /AdobeRGB.
> 
> You will never see "AdobeRGB" or "sRGB" in the PDF file, you will see an ICC based color space or a calibrated color space (/CalRGB or /CalGray) with suitable parameters.
> 

Which parameters? Ids it documented somewhere how I can identify PDFs 
(or elements in them) as sRGB or AdobeRGB?

>> I even tried to generate PDFs in AdobeRGB with digikam and with darktable, printing an AdobeRGB JPEG (from my camera) and fiddling around with print dialog settings, but I always get files with only /DeviceRGB.
> 
> I'm guessing that Cairo is only writing out device RGB...  Which is wrong, of course.
> 

OK, but this would defeat the sophisticated color management options of 
digikam and darktable. So I hope that they do not actually use Cairo.

>> Do you know how I can get appropriate PDF files for testing? Are there somewhere sample files for download? Is there a recipe how to turn an AdobeRGB JPEG into an AdobeRGB PDF under Linux?
> 
> I will shortly have the necessary changes in pdfio (https://www.msweet.org/pdfio) to be able to embed a JPEG or PNG file in a PDF file with the expected calibrated color spaces.
> 

This is new as of today? What are the differences to QPDF? QPDF I use 
heavily in cups-filters and I have got some students adding features to it.

    Till
