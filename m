Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=0zbFr/1s52psgjHIMBJyB5DhLBzY6X3ascldFwrAbW0=;
 b=fSSBkHvn/Aie572pxAKUb8sMAW4+bWG9jneK/rrWNm8WdV3zbwz1lJ5dSgpDMcNNNi
 PcVZLy5PrYHftbjEUe05vOoMGfArljpLsuLB/7hMY1pFh7Hh0MOUyjJLuBoe2BV9Y7vH
 G1q02MV0ODBfAaXv50j20606aaNHGszimoS7RfVhekEanohTVdV2oVtbaUEJwSh6puXd
 L3WpGB4IzeXq+mpMnfRPpf+c3JIFneJDxYBz+fVz73m1W4B4EVFKWkUYQ9xbhp3hQuJz
 XraW4YYr1nr8OGFmorxHqSnISZCMTlw/s29Yv/VqERp/Yt58d7HtNkreTxRfcjoKpwjH
 ntJw==
Message-ID: <89dde39d-560b-f74b-9999-5644ffb38fce@gmail.com>
Date: Fri, 6 May 2022 17:14:44 +0200
MIME-Version: 1.0
Content-Language: en-US
References: <0aa65341-6244-d76e-2751-75dd02413568@gmail.com>
 <8172806B-108A-4857-95F3-F5749789ED36@msweet.org>
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <8172806B-108A-4857-95F3-F5749789ED36@msweet.org>
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

Seems that your plans are to discontinue cups-filters and to include a 
new from-scratch filter approach in CUPS 3.x. Am I right?

I think this is not a good idea. cups-filters contains 2 decades of hard 
work and even if we do not make use of its full functionality we should 
not throw it overboard.

First, to the formats we will need.

PostScript and all these old, exotic image formats which older CUPS 
versions and cups-filters support we indeed do not need. PDF, JPEG, PNG, 
and text is good enough, especially as desktop applications usually send 
PDF. Output should be PDF, Apple Raster. PWG Raster, and PCLm. PCLm is 
also actually needed as there are PCLm-only printers which fulfill the 
driverless printing standards. We discovered such printers recently. I 
really do not want to have to provide a Printer Application for printers 
which fulfill driverless printing standards.

Also there is some useful functionality compared to tools/ipptransform.c 
which I like to keep:

- Ghostscript is the PDF renderer best optimized for printing. The 
interpreter got recently converted to be completely written in C, 
improving its performance and resource usage. So calling Ghostscript as 
external executable (to not need to worry about license compatibility) 
could improve things compared to MuPDF (and AFAIR MuPDF and Ghostscript 
have the same license).

- Ghostscript produces all the 4 driverless printing output formats: PDF 
(not actually needed in our use case), Apple Raster (I have added it in 
9.56.0), PWG Raster, and PCLm, so no post-filtering after Ghostscript 
needed, the output of Ghostscript can be directly passed on to the 
printer. For Snaps and other sandboxed packages or for IoT Ghostscript 
can be compiled with only the needed output devices (I do this in the 
Printer Application Snaps).

- CUPS provides some extra functions in page management: N-up, even/odd, 
mirror, ... via the pdftopdf filter. We should conserve them.

- The pdftopdf filter flattens filled PDF forms and annotations, which 
assures that the filled in text actually gets printed by the printer, 
independent whether the printer prints PDF directly or when need to to 
convert incoming PDF to some raster format.

- Thorough page geometry tests and fixes have been performed on all 
filters of cups-filters recently. All combinations of the print-scaling 
and number-up attributes should work, and with both standard portrait 
and also landscape-oriented (long-edge-first) paper size settings.


Now on the finalization of the 2.x release I will make libcupsfilters 
fully free of PPD dependency. I have already worked out a design for 
this and only need to implement it.

I have already written up my idea and reported some progress on it:

 From my 18th-April weekly report at Canonical:

https://discourse.ubuntu.com/t/desktop-team-updates-monday-18th-april-2022/27715/8

----------
How do we have a libcupsfilters without any PPD file support to use as 
distro package in a system with CUPS 3.x? But how still be able to 
install a (non-snapped, DEB package) retro-fitting Printer Application 
in such a system without needing to replace libcupsfilters by a 
differently built variant (is this possible in distros?) which supports 
PPDs, without needing a libcupsfilters generally supporting PPDs (and we 
all wanted to get rid of them)?

So I thought out a design change in cups-filters: Currently the filter 
functions support PPDs, libcupsfilters depends on libppd, I will remove 
the PPD support from the filter functions, making libcupsfilters 
independent of PPDs and libppd, create wrapper filter functions in 
libppd overtaking the PPD support and calling the original filter 
function. So dependencies get reversed, libppd depends on libcupsfilters 
and libppd provides the PPD-supporting set of filter functions, 
libcupsfilters the PPD-free set, and that without code duplications. Now 
I am turning this idea into code.
----------

 From my 25th-April weekly report at Canonical:

https://discourse.ubuntu.com/t/desktop-team-updates-monday-25th-april-2022/27880/7

----------
I started to do the restructuring to remove the PPD file support 
completely from libcupsfilters and move it into libppd, making libppd 
depending on libcupsfilters and libcupsfilters not depending on libppd. 
Created a first wrapper filter function ppdFilterPDFToPDF() calling 
cfFilterPDFToPDF() with the latter not having PPD file support. I let 
the PPD file loader function directly translate the PPD file into 
printer IPP attributes for the call of the original filter function in 
libcupsfilters now and I am currently creating a function to extract the 
requested paper size dimensions from job IPP attributes and options. 
This will be the last major code change before the release.
----------

This way CUPS 3.x could use libcupsfilters without pulling any 
dependency of PPD file support.

For Snaps and other types of sandboxed packages I will also add 
conditionals to libcupsfilters to skip building the support for unneeded 
data formats.

Even that libcupsfilters provides the filters as library functions 
(filter functions) we can let CUPS 3.x call them as external executable. 
We only need to write a little executable stub which calls the needed 
filter function (or a chain of them) and has the command line we need, 
for example being the same as of ipptransform. Due to the fact that we 
can easily chain filter functions we can always reduce to a single 
external executable call for any pair of input and output formats.

The pdftopdf filter is currently in C++ as it uses QPDF. Here we can 
switch to pDFio in the future as soon as PDFio provides all required 
features (especially form-flattening). But this is not a blocker for the 
cups-filters 2.0 release. The switchover does not change any APIs.

The filters in cups-filters have matured well in the years. Bug reports 
of the type "I cannot print file XXX" got extremely rare.

Watermarking could probably be easily added to pdftopdf, header/footer 
text (labels) are perhaps already in there.

WDYT?

    Till

On 27/04/2022 14:43, Michael Sweet wrote:
> Till,
> 
> For CUPS 3.0 I'd like us to limit "filtered" printing to a smaller set of common formats: plain (Unicode) text, JPEG and PNG images, and PDF.  Then we "only" need to support converting from those formats to PWG/Apple Raster and PDF using the standard IPP Everywhere Job Template attributes. Obviously we can still allow printer-specific formats (PCL, PostScript, ESC/P, ZPL, etc.) sent to compatible printers, but limiting the formats we process locally will greatly simplify development and testing.
> 
> 
> I think that isolating the filtering in a separate process is an important security and reliability choice - a filter crashing stops a single job, but crashing the local spooler will stop (and potentially lose) everything, not to mention likely causing issues for the applications that are talking to it.
> 
> The model I used in the PWG ippserver and ippeveprinter sample code (with an external transform command) is probably the way we want to go, with that executable handling all of the basic filtering functionality in one program.  I really don't want to see a proliferation of filters like we have in the current CUPS since that has historically been a great source of pain/support calls.  Better to have a smaller set of file formats we support consistently.
> 
> WRT filtering functionality, we've recently had new requests to be able to add watermarking and header/footer text to pages, in addition to the current IPP Everywhere-based filter options.  Doing so is important for replicating common printer driver options, and is also useful in enterprise environments where printing is under greater control/restrictions.
> 
> ________________________
> Michael Sweet
> 
> 
> 
