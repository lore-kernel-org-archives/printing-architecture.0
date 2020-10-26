Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=4CmmYhA0hO+j4JsedEYKj0LONWf9ioAT50gJUifMy7w=;
 b=fHBGjQ5uwoy6LcGSgQIIHfMO84zmICacloiBSsp/X2oEdQAE9HprlceBBuWXzgsx2+
 TLEU7LHeqcVWcmVbPCFDL7WDtbsY0L8PIZLfrmx/Gwp9nkBVx8qNtri4+uB9DgBcwthK
 gTU+2rlhvFxFqRd49QQt5eLKRGBoWPJl0I+FcDistM5KrtE2ewz5M+l7PBrwCUMuXp78
 AD6asJuiaF+vTv8/Zfe9xs1otVy2yRc3ncmjSEXuxgila5Xp+HbF21VeU2HkI2ZOCsbk
 jEHKBoBt6igbXYBGfiwMPONICXrfJd7zkr9f7zd7YRvIJ6Un7ZFMylh9ABtUBjxI5nGs
 iBHQ==
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <e1d1f7a9-736f-6ca5-682f-ffa49b91c401@gmail.com>
Date: Mon, 26 Oct 2020 21:19:58 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] The PostScript Printer Application - First
 PAPPL-based non-Raster Printer Application
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Open Printing <printing-architecture@lists.linux-foundation.org>

Hi,

I have posted a new project on the OpenPrinting GitHub, the PostScript 
Printer Application:

https://openprinting.github.io/PostScript-Printer-Application/
https://github.com/OpenPrinting/ps-printer-app

This will be the support for all these PostScript printers which are 
(still) around, after PPD files are deprecated from the printing workflow.

As Printer Applications in general it emulates a driverless IPP printer 
for each physical printer assigned to. Internally it uses all PostScript 
Printer PPD files we got from manufacturers for free distribution. 
Mainly from foomatic-db but also from HPLIP, but one can easily add ones 
own PPDs or PPD repositories. Using these it supports PostScript 
printers converting job IPP attributes into the PostScript code to be 
inserted into the PostScript output. Settings, as which media is loaded 
in which tray, resolution, double-sided, ..., can also be set by the web 
interface.

The repository contains everything to build a Snap and the Snap works 
correctly one can add printers, assign the correct model (the PPD) and 
print, but currently only on USB, due to a hostname resolution possible 
bug in PAPPL.

This Printer Application is especially a working model for

- A non-raster Printer Application: Destination format is PostScript, a 
high-level/vector format. Input data in PostScript or PDF is accepted 
and needed conversion is not done through an inbetween raster step.

- A Printer Application which uses the new filter functions of 
cups-filters 2.x. Filter functions are library functions derived from 
cups-filters and contain decades of development and refinement starting 
from the introduction of CUPS in 2000.

- A retro-fit Printer Application for classic CUPS drivers, in this case 
the simplest form of only PPD files for PostScript printers. It lists 
PPD files from repositories included in the Snap, loads the PPD needed 
for the actual printer, extracts options from the PPD to display them in 
the web interface, accepts job settings as IPP attributes, and inserts 
the PostScript code provided by the PPD correctly into the output data 
stream.

- A Printer Application which does not pass through raw (input format is 
printer's native format) jobs. To assure that always the PostScript code 
of the PPD file is inserted into the output stream, we call the 
printer's native format "application/vnd.printer-specific" which does 
not exist as input format, so "application/postscript" input is forced 
through the pstops() filter function.

- To do not need to re-invent the code for forking into sub-processes so 
that we can pass data through a sequence of filters, we create a filter 
function to send the data off to the printer and form a chain of the 
actually converting filter function (one of pstops(), pdftops(), 
imagetops(), rastertops()) and the with this filter function using the 
filterChain() filter function.

- The PostScript Printer Application has all PostScript PPD files of the 
[foomatic-db](https://github.com/OpenPrinting/foomatic-db) and 
[HPLIP](https://developers.hp.com/hp-linux-imaging-and-printing) 
projects built-in, so most PostScript printer PPDs which usually come 
with Linux Distributions. Note that some PPDs use certain CUPS filters 
for extra functionality. These filters are not included. The user can 
add additional PPDs without needing to rebuild the Snap.

See the README.md file of the project for more details and how to build.

Issue reports and pull requests are more than welcome.

    Till
