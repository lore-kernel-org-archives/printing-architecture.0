Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=hvVEDnK9i6iIEWo18wLjZb3SZe0Sauy1UA6gbTxcpko=;
 b=Ey3HLz2BRf13WLEHLMIdG3fhfglvehyuE08pxE6VKTLBr3JerURI5ziK6M8zF8YgyS
 Uc3stiY67Cnhe2I7e6caYjKC5h9YtwKuVd+SbsL3nOVeJ5Ckgq1NHhf7yf+bXsRkJ1BG
 QF9kcZPGwgeMzMi6VZBU4/0xYR6e1kbwDzBowQ2/Y+5g/Lj4tsW1hpJO7DaQZmytuCrq
 BsyfCP1RDJfBdeaIUJrgYE66M0MhDg+ckrfw1SomcYvTCpxA911nYMOp1W3Of4xKHN9m
 3eX/5G+nB5b8+a3WKoOIqVTkQXISYqMHmLVH8ZEz0eNRGdE6XfJWKNDOdU1tWk3qXJ0Z
 uSEw==
Message-ID: <20db2ac3-f93f-1aa7-60f8-b7eca5a00cc3@gmail.com>
Date: Fri, 6 May 2022 21:18:33 +0200
MIME-Version: 1.0
Content-Language: en-US
References: <0aa65341-6244-d76e-2751-75dd02413568@gmail.com>
 <8172806B-108A-4857-95F3-F5749789ED36@msweet.org>
 <89dde39d-560b-f74b-9999-5644ffb38fce@gmail.com>
 <E1514B68-CA63-46AD-B2C7-806A83021006@msweet.org>
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <E1514B68-CA63-46AD-B2C7-806A83021006@msweet.org>
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

On 06/05/2022 20:22, Michael Sweet wrote:
> Till,
> 
>> On May 6, 2022, at 11:14 AM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
>>
>> Seems that your plans are to discontinue cups-filters and to include a new from-scratch filter approach in CUPS 3.x. Am I right?
> 
> I'm not sure at this point.  I *do* know that I'd like to see us focus out efforts on core file formats and a minimal set of dependencies for converting them - IMHO there are too many combinations to test and support properly.
> 

I understand. Therefore I want to give the possibility to compile 
libcupsfilters with only support for the input and output formats needed 
by CUPS 3.x, so that one can use this minimum version in Snaps and other 
sandboxed packages.

>> I think this is not a good idea. cups-filters contains 2 decades of hard work and even if we do not make use of its full functionality we should not throw it overboard.
> 
> I don't think I suggested that.
> 

I do not say that you suggested this, I only see that you use something 
else which makes the impression for me that you re-create the filters 
(at least the actually needed ones for the New Architecture) from scratch.

>> First, to the formats we will need.
>>
>> PostScript and all these old, exotic image formats which older CUPS versions and cups-filters support we indeed do not need.
> 
> Well, certainly the PS printer application needs PostScript support.

For that I use the pdftops() filter function of libcupsfilters 2.x. I 
could move this piece of code into ps-printer-app Or I can leave it in 
libcupsfilters 2.x but make it optionally compiled, only if requested, 
and let the PostScript Printer Application Snap build cups-filters with 
PS support. But as distributions want to provide the PostScript Printer 
Application as distro package and then will all build libcupsfilters 
with PostScript support. So perhaps better move the PostScript support 
code into the PostScript Printer Application. WDYT?

> The "exotic" image formats are already supported by desktop (Gimp, etc.) and command-line (Imagemagick, etc.) applications that can handle printing.
>

The support for them is still lurking around in libcupsfilters 2.x. 
Probably they will never get used. I could remove them now, making use 
that we are starting a new generation (2). WDYT?

>> PDF, JPEG, PNG, and text is good enough, especially as desktop applications usually send PDF. Output should be PDF, Apple Raster. PWG Raster, and PCLm. PCLm is also actually needed as there are PCLm-only printers which fulfill the driverless printing standards.
> 
> PCLm only satisfies Wi-Fi Direct and Mopria.  Can you name a single PCLm printer that also doesn't support AirPrint or IPP Everywhere?
> 

See this issue: https://github.com/apple/cups/issues/6022

>> We discovered such printers recently. I really do not want to have to provide a Printer Application for printers which fulfill driverless printing standards.
> 
> Make and model please.
> 

The printers are the HP LaserJet M14, M15, M16, M17

----------
avahi-browse -rt _ipp._tcp
- enp2s0 IPv4 bbox Ippos Printer Internet Printer local
- lo IPv4 HP LaserJet M15a (B6676D) (USB)               Internet Printer 
     local
= enp2s0 IPv4 bbox Ippos Printer Internet Printer local
hostname = [bbox.local]
address = [192.168.1.254]
port = [631]
txt = []
= lo IPv4 HP LaserJet M15a (B6676D) (USB) Internet Printer local
hostname = [bruno-TOSH.local]
address = [127.0.0.1]
port = [60000]
txt = ["air=none" "mopria-certified=1.3" "rp=ipp/print" "priority=50" 
"kind=document,envelope,photo" "PaperMax=legal-A4" 
"UUID=564e4333-4234-3434-3231-c8d9d2b6676d" "Color=F" "Duplex=F" "note=" 
"qtotal=1" "usb_MDL=HP LaserJet M14-M17" "usb_MFG=HP" 
"usb_CMD=PJL,PML,PWG_RASTER,URP" "ty=HP LaserJet M14-M17" "product=(HP 
LaserJet M14-M17)" "pdl=application/PCLm,application/octet-stream" 
"txtvers=1" "adminurl=http://localhost:60000" "Fax=T" "rfo=ipp/faxout" 
"Scan=F"]
----------

So it is a certain series of HP printers, not many compared to the whole 
market but as they fulfill driverless printing standards we should 
consider them driverless and not require the user to install a Printer 
Application (like the HPLIP Printer Application).

>> Also there is some useful functionality compared to tools/ipptransform.c which I like to keep:
> 
> ippsample's prototyping tool?  That's effectively my model for the new 3.0 filtering/transform front-end, although I will shortly be eliminating its usage of MuPDF - that library's API is far too unstable to depend on and uses an incompatible license for production.

Which sufficiently free PDF interpreter will you put at MuPDF's place?

> 
>> - Ghostscript is the PDF renderer best optimized for printing. The interpreter got recently converted to be completely written in C, improving its performance and resource usage. So calling Ghostscript as external executable (to not need to worry about license compatibility) could improve things compared to MuPDF (and AFAIR MuPDF and Ghostscript have the same license).
> 
> We CANNOT rely on Artifex software anymore.  AGPL3 makes it a non-starter for anyone using CUPS on embedded or cloud platforms - unlike GPL(2/3) you can't just pipe the output, since AGPL applies to the work as a whole (total overreach IMHO, but it's their software...)
> 
> I have no problem with Ghostscript being an option, but we need to make sure CUPS can be used freely by everyone, not just the True GNU.
> 

So let us use Ghostscript as an option as the Linux distributions 
usually use it. I will also continue with Ghostscript in the Printer 
Application Snaps in the Snap Store.

>> - Ghostscript produces all the 4 driverless printing output formats: PDF (not actually needed in our use case), Apple Raster (I have added it in 9.56.0), PWG Raster, and PCLm, so no post-filtering after Ghostscript needed, the output of Ghostscript can be directly passed on to the printer. For Snaps and other sandboxed packages or for IoT Ghostscript can be compiled with only the needed output devices (I do this in the Printer Application Snaps).
> 
> Ghostscript may be able to rasterize PDF content, but it doesn't handle the transform/imposition/watermarking functionality that is often used.
> 

OK.

Which is the PDF rasterizer which should be used then? Or do we need a 
PDF pre-processor like pdftopdf for that?

>> - CUPS provides some extra functions in page management: N-up, even/odd, mirror, ... via the pdftopdf filter. We should conserve them.
> 
> Again, I wasn't suggesting that functionality would go away.
> 

How is it planned to get implemented in CUPS 3.x.

>> - The pdftopdf filter flattens filled PDF forms and annotations, which assures that the filled in text actually gets printed by the printer, independent whether the printer prints PDF directly or when need to to convert incoming PDF to some raster format.
> 
> Right, but the current QPDF-based filtering seems to cause problems for some printers.
> 

OK, what is your alternative?

Nothing against your ideas to get a more lightweight and more 
software-licence-compliant CUPS. I also do not want to impose the use of 
cups-filters or any given PDF renderer in CUPS. If we do something 
completely different in 3.x, no problem for me.

I only want to find out how we will exactly do CUPS 3.x and on what 
tasks I will have to concentrate in the next months/years.

For example I have invested a lot of time into cups-filters to make it 
more suitable with the New Architecture, to make it easier to use it 
from Printer Applications, both native and PPD-retro-fitting ones, to 
let it easily go through the transition into a PPD-free world, to test 
it more and find and fix some bugs, ...

Now the question naturally is whether it really is needed in the future, 
and if so which changes on its inner workings it should receive in the 
2.n versions coming after the 2.0 API change?

Distros are currently eagerly waiting for me to release cups-filters 2.x 
so that they can distro-package the retro-fitting Printer Applications.

So I need to know whether it is still worthwhile to invest in 
cups-filters or whether I should perhaps put it into maintenance mode 
and move to for example working on PDFio to make it flatten forms and do 
other things to replace the pdftopdf filter?

I also hope not to have given to many false promises working on 
cups-filters and announcing my progress in the monthly news posts.

And I want to know what I will tell on the OpenPrinting Summit what I/we 
will do in the next months.

    Till
