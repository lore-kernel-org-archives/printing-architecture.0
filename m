Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:content-language:to:from
 :subject:cc:content-transfer-encoding;
 bh=Aam6+J4jm3eQTsVHXoP81OiwGhs31SZuVrW+HqXqnQU=;
 b=qMHO6bLExCNDaKoPkfn8GNuSMDB6fOgNcaLcRa1QwBOuxMwLOyeAXxi1oN/mwzl9vV
 7SMVSBF4QZfdLv1VicHdOnVNSKHXUfTQYm4k4lTdUVGiGY2VnToizlYntzOUQd4rBiAl
 tmuQh5aDKlUmFXGO2mxOxlqstWhZ1e2fjqTyHnAuIi0n3Cr9f29L+xv0vWeRmsB2aw8R
 Yl2NxMDdE3w2b+vthwiYO9Wx/vfHCcTTxVh/MpHIU8dIdhgFKG8bqCCe/GlFkexCpJJi
 oU0NcbnzDKmE8pCgBIhBKK6Os7NQkOp6b8MBMpiOGnhpdTVGeZL6tBh91R+MsfIiVibx
 3z6A==
Message-ID: <9c17c59d-0ed6-c1c3-42ce-4bcef58363f8@gmail.com>
Date: Mon, 13 Dec 2021 18:06:52 -0300
MIME-Version: 1.0
Content-Language: en-US
From: Till Kamppeter <till.kamppeter@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Use of filter functions in CUPS 2.x and 3.x
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
Cc: Pranshu Kharkwal <pranshukharkwal08@gmail.com>

Hi,

with the background of CUPS 3.x, planned to get released 2 years from 
now, not supporting PPD files any more and only considering driverless 
IPP printers I have changed the architecture of cups-filters, converting 
filter executables (CUPS filters) into filter functions (library 
functions doing a filter's task, with standardized call 
scheme/interface) so that the code of the filters is preserved but they 
get more universally usable.

https://openprinting.github.io/OpenPrinting-News-October-2021/#cups

In addition I have created some auxiliary functions (partially filter 
functions by themselves) to call filter functions in a chain, feed data 
into filter through a pipe, call classic CUPS external filter/backend 
executable wrapped into a filter function, save data stream between 
chained filter function calls into a file for debugging, ...

https://openprinting.github.io/news/
https://github.com/OpenPrinting/cups-filters

With this I was especially able to create Printer Applications 
retro-fitting classic CUPS printer drivers, an important step to be able 
to switch to a PPD-less and driverless CUPS without dropping support for 
legacy printers.

https://snapcraft.io/search?q=OpenPrinting
https://github.com/OpenPrinting/pappl-retrofit

Now I am also thinking about making use of the filter functions somehow 
in CUPS, both to get improvement in the upcoming 2 years where CUPS 
still supports PPD files and classic drivers and also in PPD-less CUPS 
3.x, where data-format conversions are still needed, as for example 
print jobs usually come in PDF but it is not required for a driverless 
IPP printer to support PDF. Also implementation of functionality like 
N-up or flattening filled PDF forms (both tasks currently done by 
pdftopdf) is needed in CUPS 3.x.

We should do our best to avoid duplicate code in OpenPrinting and not 
re-invent the wheel.


"universal" filter for CUPS
---------------------------

https://gist.github.com/pranshukharkwal/9413499a6744049ef549159948392023

As a first approach to improve PPDish CUPS 2.4.x and 2.5.x I have run 
the GSoC project of a universal CUPS filter, where one single CUPS 
filter executable does all the filtering for a job by calling filter 
functions, in a chain if needed. This reduces the number of external 
executable calls by CUPS vastly, as normally CUPS calls for each filter 
to run first the cups-exec helper program and cups-exec then calls the 
filter executable, making up 2 external executable calls per filter.

The filter function chaining in the universal CUPS filter still does a 
fork for each filter function though and pipes the print data from 
filter function to filter function. Also filters of printer drivers and 
CUPS backends are not part of the universal filter and need to get 
called separately by CUPS.

The disk space saved is low, as with cups-filters 2.x each filter 
executable in /usr/lib/cups/filters/ is only a little code stub calling 
the actual filter function in libcupsfilters,

Also the universal filter still needs a fix to work correctly with PPD 
files which use "cupsFilter2" instead of "cupsFilter" lines.

So it is a little bit of a question whether it is really worth the 
effort to replace the individual filters called by CUPS 2.4.x and 2.5.x 
by this universal filter, especially also that we have only more 2 years 
where CUPS uses PPD files.

So before I complete this (if not, the universal filter will at least be 
used to make cups-browsed's "implicitclass" backend use filter functions 
instead of external filters) I want to hear some opinions about this, 
especially also whether actually saving external executable calls is 
more resource-saving than for example saving forked parallel tasks and 
pipes between them.


Forking and piping vs. one filter after the other
-------------------------------------------------

In general if forking and piping for a filter chain consumes much more 
than calling each filter function one after the other directly and let 
them write their output into temporary files for the next filter 
functions in the chain reading from the previous filter function's temp 
file I am also thinking about adding a second mode to filterChain() to 
let it operate this way. WDYT?


Using filter functions directly in CUPS
---------------------------------------

And, finally, should we make the filter functions be directly used by 
CUPS, either that in CUPS 2.5.x in scheduler/job.c we call filter 
functions instead of external filter executables (at least for standard, 
non-driver filters), or that for CUPS 3.x we do the needed file format 
conversions by filter function calls (there are no driver filters)? 
Backends could also be converted to filter functions and be directly 
called. WDYT?

Also, do we need extra functionality in the filter function concept for 
using it directly in CUPS? For example add a field to the records of the 
filter functions called by filterChain() to tell as which user each 
individual filter function should get run?

Also, if we want CUPS to use filter functions, we need to do 
re-structuring to avoid circular dependencies, as libcupsfilters uses 
libcups and if a function in libcups would call a filter function of 
libcupsfilters, libcups is using libcupsfilters, ... The planned 
splitting of libcups, local CUPS daemon, sharing CUPS daemon of CUPS 3.x 
could help here as if the daemons call filter functions but not libcups, 
we will not get a circular dependency. WDYT?


It would be great if we could discuss these topics before finalizing 
cups-filters 2.x

    Till
