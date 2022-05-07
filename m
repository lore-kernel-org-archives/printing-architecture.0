Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=aFI0v9X7fnvWDUYyazrdl6rEBWrCib1u2FS76ryCgdA=;
 b=DdIX66kuCc+nQfpe8488ryVHKonVyTmUtB/iocmn43WpKZ1e88bGe1ZArQha/vUfxQ
 oRPfkCtJB0++RqF0MZZfsHD9DQuRevs0Sq5ZWQFi191tvFqIzXG+g1JELZR7Qhz9ZtVD
 ILK5FOB9bD9C2QlQtm7ynJsop1HEb7gC+EFFmaICiz+Vw9Yg/Vcy7cv+Hiwy7qg3dN8t
 3HrOrcvdgOt3Il35YjQhHEkB+mZePq4HkZlN7FiZKfn1vOqrfPfTPmO8+SAe9YXNHn8H
 BOm9hMFXUJGJhpGwK5SKmiYqnW7SgzhTgRZyVd/jX/Ya/pOBuKEcAIRY2J5twWKYS4lt
 alaA==
Message-ID: <2fc86159-d585-d454-8d73-04419073be34@gmail.com>
Date: Sat, 7 May 2022 09:05:35 +0200
MIME-Version: 1.0
Content-Language: en-US
References: <0aa65341-6244-d76e-2751-75dd02413568@gmail.com>
 <8172806B-108A-4857-95F3-F5749789ED36@msweet.org>
 <89dde39d-560b-f74b-9999-5644ffb38fce@gmail.com>
 <E1514B68-CA63-46AD-B2C7-806A83021006@msweet.org>
 <20db2ac3-f93f-1aa7-60f8-b7eca5a00cc3@gmail.com>
 <45E96DFD-D08D-4742-8BE1-2D36650652AD@msweet.org>
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <45E96DFD-D08D-4742-8BE1-2D36650652AD@msweet.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] CUPS 3.x: How we make it converting job
	data formats?
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

On 07/05/2022 00:32, Michael Sweet wrote:
> Till,
> 
>> On May 6, 2022, at 3:18 PM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
>> ...
>> and then will all build libcupsfilters with PostScript support. So perhaps better move the PostScript support code into the PostScript Printer Application. WDYT?
> 
> Long term that is probably the best approach.  But I suspect CUPS 2.x will be around for a while yet so I wouldn't jump at moving things around until we are done supporting cups-filters.
> 

So I will keep it. It is only a small piece of code, as the dirty work 
is done by external executables (one of Ghostscript, Poppler's pdftops, 
MuPDF). Users who do not need PostScript output support do not need to 
install these executables.

>>> The "exotic" image formats are already supported by desktop (Gimp, etc.) and command-line (Imagemagick, etc.) applications that can handle printing.
>>>
>>
>> The support for them is still lurking around in libcupsfilters 2.x. Probably they will never get used. I could remove them now, making use that we are starting a new generation (2). WDYT?
> 
> Up to you, but it would make sense.
> 

Removing them would CUPS 2.x not supporting them any more, but in 
practise no one sends these directly to the printer any more. I will 
remove them for maintainability reasons.

>> The printers are the HP LaserJet M14, M15, M16, M17
> 
> LaserJet *Pro* M14-M17, and they do not appear to be manufactured anymore (looks like there are few still available from Amazon, just not from HP directly that I can see) and have been replaced by the M110 series which *does* support AirPrint and Apple Raster.
> 
> Anyways, if that is the extent of the PCLm-only printers we need to support, I am not convinced we need to add the complexity of supporting PCLm - it's not just a matter of the format, you also have to support the banding, etc. attributes and values.
> 

Once, free software code for PCLm is in cups-filters and Ghostscript, 
the former is the license of CUPS from cups-filters 2.x on, but second 
it is really exotic.

I am currently managing a project of the printer setup tool in GNOME 
Control Center being replaced by a new one for the New Architecture. At 
one point it must determine whether a discovered printer is driverless 
or not (to decide whether to look up a Printer Application). Usually I 
would strictly follow the standards here, which is IPP 2.x + at least 
one of PDF, Apple Raster, PWG Raster, PCLm. This would make PCLm-only 
printers considered driverless and CUPS 3.x would fail with them.

I can change this check into IPP 2.x + at least one of PDF, Apple 
Raster, PWG Raster, making a PCLm-only printer considered not 
driverless. With current market of printers these would be that HP's and 
the printer setup tool would install the HPLIP Printer Application, 
making this printer work. Only if we discover PCLm-only printers which 
are not from HP we would need a PCLm Printer Application.

>> Which sufficiently free PDF interpreter will you put at MuPDF's place?
> 
> Xpdf/Popper are GPL2, which fit the bill.
>

So GPL2 is OK and AGPL of Ghostscript/Artifex not? Why?

So I can make sure that libcupsfilters will always support Poppler-based 
PDF rendering (but offer the others as alternative).

> It would be better to preprocess the PDF so that the PDF interpreter only has to rasterize content.
>

Sop something pdftopdf-alike?

>>> Again, I wasn't suggesting that functionality would go away.
>>
>> How is it planned to get implemented in CUPS 3.x.
> 
> In the transform program.
> 
>>>> - The pdftopdf filter flattens filled PDF forms and annotations, which assures that the filled in text actually gets printed by the printer, independent whether the printer prints PDF directly or when need to to convert incoming PDF to some raster format.
>>> Right, but the current QPDF-based filtering seems to cause problems for some printers.
>>
>> OK, what is your alternative?
> 
> PDFio.
>

Means that after the release of cups-filters 2.x, one of the first new 
features in 2.n will be a pdftopdf based on PDFio, as soon as PDFio 
supports flattening PDF forms.

By the way, we have seen some printers which do not like PDF output of 
QPDF (I got one bug report in the last days). Are there many more? 
Should we report a bug on QPDF? Or has it some general fault making 
reporting a bug on it not worthwhile?

Note that PDF interpreters in printers can have quirks like PostScript 
interpreters. They also do not necessarily only hit QPDF output, but can 
also hit the ourput of Ghostscript, GTK, Qt, even PDFio.

So in my opinion we should not necessarily rush on getting rid of QPDF 
(we report bugs on QPDF compatibility issues to QPDF though) but better 
make sure that if a driverless printer is not able to print a PDF file 
that we smoothly fall back to raster, what you are currently fixing/have 
already fixed.

I agree with replacing of QPDF by PDFio for sake of simplicity and 
getting rid of C++ though. As you probably I am much more comfortable 
with regular C.

>> ...
>> So I need to know whether it is still worthwhile to invest in cups-filters or whether I should perhaps put it into maintenance mode and move to for example working on PDFio to make it flatten forms and do other things to replace the pdftopdf filter?
> 
> You'll need to support cups-filters for a while yet, obviously, and it would be useful (even for cups-filters) to use PDFio instead of QPDF for PDF filtering...

Yes, one of the 2.n releases will have a PDFio-based pdftopdf() filter 
function, depends on PDFio's feature-completeness, especially flattening 
PDF forms.

    Till
