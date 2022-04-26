Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:content-language:to:from
 :subject:content-transfer-encoding;
 bh=uMtUClMcaUzXyFrAehek1g9yX2WuwiT96cTXsAMqatQ=;
 b=ZB5F5xfADSBFyz2IHJg/3DouZY94DZDyySMdVVxwXCO0Jj513VMwZkpQrM7KApICUF
 kwD22hfDqMadmUMee39m0Y8K888SzDQ0YkYjG2mQzBgR6iNTewCwOh7yuKLIi8pTtRkG
 5y2URinhlqkquw1k9lGfeEO/Q3gnM11U6OhJx38rq4LLjz24lwgJBdAXe0VFCVy+DPBx
 U+mFIQ0+QeaD08XIiooZi1DZVAy42aEGDeueM2DlcbR49irFUya3z0S9BlFeZRSwHVzL
 1EUESF+mAYKd7DUclwIU91kMj+QuyILTnd/Wv4jHX9tHtxhoqr1Csu5BVfKX1AeE2f3R
 lPeg==
Message-ID: <0aa65341-6244-d76e-2751-75dd02413568@gmail.com>
Date: Tue, 26 Apr 2022 17:42:37 +0200
MIME-Version: 1.0
Content-Language: en-US
From: Till Kamppeter <till.kamppeter@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] CUPS 3.x: How we make it converting job
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
To: Michael Sweet <msweet@msweet.org>, Open Printing <printing-architecture@lists.linux-foundation.org>

Hi,

I have looked through the CUPS 3.x planning and hit into the following 
problem:

Filters
-------

CUPS 3.x, independent whether local or sharing server, has to convert 
formats to turn the input format into one of the 4 output formats. So we 
need filter, not a way to add filters, but we need filters.

I am working on cups-filter 2.x for longer time now, with the principal 
intention to better integrate with the New Architecture, of driverless 
IPP-only CUPS and Printer Applications.

Especially now when I was looking about handling dependencies and moving 
PPD support completely only into the retro-fitting Printer Applications 
I have started to change libcupsfilters in a way so that it has no PPD 
support at all, especially also not by conditional compiling.

The filter functions (named "cfFilter...()" will accept printer 
properties only as an IPP message (like the response to a 
get-printer-attributes request) and job options only by an IPP message 
containing job IPP attributes (like they come with jobs via IPP) or a 
CUPS options list data structure.

All PPD handling for retro-fits and for CUPS filters to be used with 
CUPS 2.5.x or older will get moved into libppd. For this libppd will get 
some new API functions, for example for loading PPDs and converting all 
properties and options into a printer IPP attributes message compatible 
to a get-printer-attributes IPP response, and especially a set of 
PPD-supporting filter functions (named "ppdFilter...()", name 
corresponding to the appropriate original filter function in 
libcupsfilters) which load and convert the PPD, do PPD-specific action 
and then call the original filter function doing the dirty work in 
libcupsfilters. So the filter functions in libppd are wrappers around 
the ones in libcupsfilters to add PPD file support.

The CUPS filter stubs in the filter/ directory will call the filter 
functions of libppd, as they are for CUPS 2.5.x or older.

Now I am thinking about how to get filter functionality into CUPS 3.x. A 
pur IPP, PPD- and driver-free CUPS still needs filtering. CUPS 3.x will 
accept the same input formats as 2.x, PDF, PostScript, Apple/PWG Raster, 
JPG, PNG, plain text at least and as output formats it has to provide 
PDF, Apple Raster, PWG Raster, and PCLm at least, to cover all 
driverless printers. So we need to convert formats if needed and most 
probably we also want to do page management (N-up, even/odd, reverse 
order, booklet, ...) in an inbetween PDF step.

To do this there are the following possibilities:

1. Continue with external filter executables from cups-filters, but now 
they do not need support PPDs, they can be based on the original filter 
functions in libcupsfilters. The "universal" CUPS filter, based on the 
"cfFilterUniversal()" filter function, can be used to call filter chains 
from a single executable to reduce external executable calls).

2. Let CUPS use libcupsfilters to call its filter functions, makes cupsd 
(both local and sharing) depending on libcupsfilters which in turn 
depends on libcups.

3. Re-merge libcupsfilters into libcups: All functions in libcupsfilters 
get moved into libcups, their names change from "cf...()" to 
"cups...()". The CUPS project will get independent of cups-filters, both 
for build and for use. the project cups-filters will end then, libppd 
and cups-browsed will be projects on their own and both only depend on 
libcups,

4. (PLEASE DO NOT) Re-implement all the filtering independently in 
libcups. So we re-invent the wheel after more than 2 decades of filter 
experience. Note that software is like a human being, it gets experience 
throughout its life, it gets better and better ...

Independent of this, cups-browsed will get turned into a Printer 
Application whose purpose it is to create and manage printer clusters, 
especially if such functionality is not provided by the sharing CUPS 
server. The PPD dependecy of cups-browsed will get completely removed.

libppd, residing in its own project will solely be used for 
retro-fitting purposes, especially Printer Applications using 
libpappl-retrofit or old CUPS versions in enterprise distros.

cups-filters 2.x will provide the non-PPD-supporting libcupsfilters. 
libppd and cups-browsed can be already split off, but I am not yet 100% 
sure.

Now I want to ask you all how we should solve the need of the filtering 
capability of CUPS 3.x: (1), (2), (3), or ...???

WDYT?

    Till
