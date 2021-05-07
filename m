Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=f3p15rfVBYP9vPfNuf3Czlu1FBhHlCTAkG9QI8n/CFk=;
 b=uUHPp6eE+jF4PY3NbBmYiXnBu5xQUQ5pD2UwlRtDwQXbXY2zot7Bi7UoCS1M1/d4z5
 NEV/mXIGWjr5Qhn0zrOfeLz+rRnOI66XnhB2khAzv+xAfN8nz5BwRJaGmenRIMNldKY/
 VEnKVmF//Pu358+ktGu8oPcmlUPkWD9yoy21u7IVK6g2wfLvpzjoG1Tbd8lqIGa+9MN/
 BNTs1sSRty26sH0qnibfN8MsJB63ZgNPMDLzF7/OQ4Fg3mibCafGxLMw1K1c01UhqwmP
 5JyLAOBjvT9xa1pCAt5yeOpIRR2P7ZmNvCPUuAwOltIbkewMFIoBtkcQLBlxyVW+XJFw
 6CCg==
References: <8c101e3b-2f80-666c-db86-05b7dd170a7c@gmail.com>
 <FC123AED-25FA-4E37-9957-29565F89DC1D@msweet.org>
 <e8060298-8b2b-94d9-3eaf-1386cbc9543c@gmail.com>
 <29E8A83D-5BBB-49AA-83A6-4B3EB765828A@msweet.org>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <9db67beb-7ca2-249c-88e4-ead29d19ce63@gmail.com>
Date: Fri, 7 May 2021 20:52:40 +0200
MIME-Version: 1.0
In-Reply-To: <29E8A83D-5BBB-49AA-83A6-4B3EB765828A@msweet.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Make use of extended color spaces on IPP
	printers
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>
Cc: Jay Berkenbilt <ejb@ql.org>, Vikrant Malik <vikrant@iitk.ac.in>


TL;DR: Some doubts about supporting extended color depth and color spaces:
  - How to discover if a page in a PDF is 8/16-bit color/grayscale
    sRGB/Adobe RGB?
  - How important is Adobe RGB for printing? If a printer advertises that
    it supports it, is it worthwhile for us to support jobs in Adobe RGB?
  - How is all this influenced by the "print-content-optimize" setting?


I want to make it possible to make use of the support for extended color 
spaces of driverless IPP printers (or Printer Applications).

IPP allows the user to only select from the following color modes for a 
job (list taken from PAPPL, actually available modes advertised in the
"print-color-mode-supported" IPP attribute):

   'auto'               - Automatic color/monochrome print mode
   'auto-monochrome'    - Automatic monochrome/process mono print mode
   'bi-level'           - B&W (threshold) print mode
   'color'              - Full color print mode
   'monochrome'         - Grayscale print mode using 1 color
   'process-monochrome' - Grayscale print mode using multiple colors

On mono/grayscale printers there is no 'auto-monochrome' and 'color'

Printers support some extended color space modes, at least for raster 
input, as advertised in the "urf-supported" attribute for Apple Raster, 
and the "pwg-raster-document-type-supported" attribute for PWG Raster. 
The extensions are:

  - 16 bit per color instead of 8 bit per color in color or grayscale
  - Adobe RGB instead of sRGB in color

These extensions should be used depending on the input data from the 
client and depending on the "print-content-optimize" setting for the job.

Now I am looking into implementing this in cups-filters.

To control the use of the extensions based on the input data we need to 
find out the color depth of the input and also if it is perhaps Adobe 
RGB instead of sRGB.

For raster input data (Apple Raster or PWG Raster this info should be in 
the raster header and we should simply take care to keep color space and 
depth on any needed conversion, only exception is to convert to 
grayscale or (dithered) bi-level if the user requests it via 
print-color-mode attribute.

As the client knows the printer attributes we expect that it only sends 
raster data of (extended) color spaces which we support.

More complicated is if for example CUPS receives a PDF job from a user 
application, as here CUPS has to convert the PDF into the best possible 
raster format for the printer. If the printer understands PDF, we pass 
on the input PDF (only apply pdftopdf filter) and assume that the 
printer to print it in the best possible quality.

So being left with converting PDF to raster, here we would need to know 
which color space and color depth the resulting raster data needs to 
have so that the PDF's content is best reproduced but no unneeded 
overhead is produced. To do so, we need to know of the color depth and 
color space of the graphical elements of the PDF to get the maximum one 
for each page (and naturally we should only produce raster which the 
printer supports).

So my question to the PDF experts here (Jay? Vikrant? Sahil?), how can I 
determine from a page in a PDF file

- which maximum color depth is needed to reproduce it?

- is the PDF page sRGB or Adobe RGB?

For raster-only PDFs (coming from a photo manager/editor or a scanner, 
or PCLm) it is probably trivial, and one could make this working in 
pclmtoraster.

More complex it gets for actual raster graphics. Or does color depth in 
the vector graphics of PDFs not exist and gets only introduced with 
rasterization?

And how relevant is actually Adobe RGB for printing? I assume that ALL 
driverless IPP printers do sRGB and so if the input file is sRGB one 
lets get it printed in sRGB.

But for some reason some printers support printing Adobe RGB (and for 
the JPEG output of EVERY digital camera you can choose between sRGB and 
Adobe RGB). So if the input PDF is Adobe RGB we need to discover that 
and take care that the raster is also Adobe RGB. I hope I am right.

And how is all this influenced by the setting of "print-content-optimize"?

    Till


On 28/04/2021 13:43, Michael Sweet wrote:
> Till,
> 
> With IPP you *don't* select color spaces as user options as those are artifacts of the file format and not part of the job ticket.
> 
> Realistically, the best thing to do is use the "print-content-optimize" value ('auto', 'graphic', 'photo', 'text', 'text-and-graphic') and/or the original document format (e.g. printing an image means default to photo mode, etc.) and then (if sending raster data) choosing an appropriate "pwg-raster-document-type-supported"/"urf-supported" value (which is where you will find the color spaces and bit depths that the printer supports). The current CUPS PPD generator uses these to generate ColorModel choices, which is how we let the user choose a color mode today.
> 
> In the future we should hide that implementation detail (maybe exposed under "expert controls"?) since it is confusing for a lot of users.  Moreover, it is possible for a smart PDF RIP will detect the kind of colors being used in a PDF document and choose an appropriate raster color space and bit depth when rendering a page.
> 
> I know there are going to be people that scream, "I need to have absolute control over every aspect of my printing!"  But that kind of control doesn't belong in the printing system or in the main UI - it belongs in the Printer Application (or printer, in the case of an IPP Everywhere/AirPrint printer) because those are device process/calibration settings that are explicitly *not* part of the IPP model.  IPP has always been about specifying intent (*what* you want) and not process (*how* to do it).
> 
> 
>> On Apr 28, 2021, at 4:17 AM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
>>
>> I have found one problem. For the color modes IPP has only the following choices:
>>
>> "print-color-mode" = "Print Color Mode";
>> "print-color-mode.auto" = "Automatic";
>> "print-color-mode.auto-monochrome" = "Auto Monochrome";
>> "print-color-mode.bi-level" = "Text";
>> "print-color-mode.color" = "Color";
>> "print-color-mode.highlight" = "Highlight";
>> "print-color-mode.monochrome" = "Monochrome";
>> "print-color-mode.process-bi-level" = "Process Text";
>> "print-color-mode.process-monochrome" = "Process Monochrome";
>>
>> Apple Raster and PWG Raster support more modes though, especially with 16 bit instead of 8 bit color depth, "device" color modes and Adobe RGB instead of sRGB. Are there standard strings for these? And where do I find them?
>>
>>    Till
>>
>> On 27/04/2021 20:02, Michael Sweet wrote:
>>> Till,
>>> The CUPS repository already contains a nearly-complete set of these, and they came from the IPP Registry project's exported strings from the IANA IPP registry.
>>>      https://github.com/OpenPrinting/cups/tree/master/locale
>>>      https://github.com/istopwg/ippregistry/tree/master/localizations
>>> The PWG maintains a copy of the English strings (I've tried a few times to get localizations for other languages without much success) on their FTP server (also served by HTTP/HTTPS):
>>>      https://ftp.pwg.org/pub/pwg/ipp/examples/ipp.pot
>>>      https://ftp.pwg.org/pub/pwg/ipp/examples/ipp.strings
>>>> On Apr 27, 2021, at 1:46 PM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
>>>>
>>>> Hi,
>>>>
>>>> while I was looking through the code of the PPD file generators in CUPS and cups-filters for creating CUPS queues for driverless IPP printers I wa thinking about where the human-readable strings for the PPD files (and also for print dialogs) come from and whether one could also generate PPD files translated into non-English languages.
>>>>
>>>> I have also seen that printers supply human-readable strings for options and choices via the URL listed in the printer-strings-uri IPP attribute, but these strings are only for the options and choices which are not IPP or PWG standard.
>>>>
>>>> Seeing this I thought that the wide majority of IPP attributes, options, choices, and properties ar IPP/PWG standardized, and so they should always be well served by the same human-readable strings, independent of operating system, desktop, or other client software being used.
>>>>
>>>> So it would be great to have some central repository for these strings for any operating system and application software to use when working with IPP printers. Is there something like that? Was susch a thing already discussed at the PWG? Or is every OS or application developer supposed to "invent" his own, personal set of human-readable strings for standard IPP attributes?
>>>>
>>>>    Till
>>>> _______________________________________________
>>>> Printing-architecture mailing list
>>>> Printing-architecture@lists.linux-foundation.org
>>>> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>>>>
>>> ________________________
>>> Michael Sweet
>>
> 
> ________________________
> Michael Sweet
> 
> 
> 
