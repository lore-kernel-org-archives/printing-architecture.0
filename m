Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:references:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=WTXaIccHqmEuKsNNp2LUs4jeyxOcNGgewQGC8kr0Aog=;
 b=SxGIN59pG0CymI39IJYIBkMLADhUk4Jd98DnCvmIzFvsEe00PppX57pEXLUf+KTpEk
 VVkfWHaK80ooa2+Z5RMh4QhTqWqpC21VkXfQKlB/i769GkSVC6O34QGnPVPFoNxApy5e
 IuVOrAw1f47tuxakBU15EgdRlHVScOjbsSaCFQyhug3gTyDCCSqE5lTeVEWNFlOdMOiM
 uGd4fiEJBgtjXy+NDTu+CI7NQi6myr7d0v7GekyPf+r88i1WS4uDdTnSDPZ/jbUcivyX
 pezlCp7EdiYk5226kpxV92ZXvvgVDfHixTY/YLz/lTYxhzvahFIx8zexDXiLlLweNjEB
 mqdA==
From: Till Kamppeter <till.kamppeter@gmail.com>
References: <304a299b-b4d8-2553-7e65-31e2cda6156c@gmail.com>
Message-ID: <9d6b78d1-1f09-9d58-d08a-af3b72540d43@gmail.com>
Date: Mon, 10 Aug 2020 14:05:53 +0200
MIME-Version: 1.0
In-Reply-To: <304a299b-b4d8-2553-7e65-31e2cda6156c@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Filter Functions - Getting years of
 development in cups-filters into Printer Applications
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Open Printing <printing-architecture@lists.linux-foundation.org>, Michael Sweet <msweet@msweet.org>, Jai Luthra <luthrajaiji@gmail.com>, Sambhav Dusad <sambhavdusad24@gmail.com>, Sahil Arora <sahilarora.535@gmail.com>, Vikrant Malik <vikrant@iitk.ac.in>, Dipanshu Verma <dipanshu.career@gmail.com>, Alexander Pevzner <pzz@apevzner.com>, Nidhi Jain <12njain06@gmail.com>, Aveek Basu <basu.aveek@gmail.com>, Deepak Patankar <patankardeepak04@gmail.com>

The conversion of the CUPS filters into filter functions is on the way. 
I have converted pstops and pdftops, Vikrant is currently converting his 
pclmtoraster filter and Jai is working on rastertops.

To make sure that filter functions work as intended I want to post here 
some guidelines for contributors.

Please keep the following points in mind when converting:


1. The "filter_data_t *data" argument of a filter function provides info 
about the printer, the job, and the logging function. It does not 
provide info about how an individual filter is used. If chaining filters 
for one job, each filter gets a pointer into the same data record here.

2. The "void *parameters" argument is individual to each filter call and 
it is not pre-structured by the API. One can put here what is useful for 
each filter, and in a typical job it can happen that one filter function 
is called twice in the chain, but with different parameters settings. As 
an example I plan to replace the gstoraster, gstopxl, and gstopdf CUPS 
filters by one ghostscript() filter function which takes the output 
format (Raster, PCL-XL, PDF) as parameter.

3. Filter functions should never output to stdout or stderr in 
hard-coded way and not take data from stdin in hard-coded way. They 
always have to take the job data from their inputfd and put out the 
resulting data to their outputfd, actual streaming is preferred to boost 
performance and parallelization of chained filters.

4. Logging should never go right to stderr but always into the logging 
function. Control terms (like "PAGE: 1 1") should not get removed and 
they should also go to the logging function, but with the 
FILTER_LOGLEVEL_CONTROL log level, so that the filter can be 
retro-fitted to CUPS. Actual log meesages for CUPS need to get their 
prefix removed and sent to the log function with a log level equivalent 
to the removed prefix. See the cups_logfunc() function in 
cupsfilters/filter.c

5. After the filter's files are moved from filter/ into the cupsfilters/ 
directory and converted, in their old place in filter/ a new file with 
filter's name is put but containing the minimum code for calling the 
filter function as CUPS filter, see filter/pstops.c and filter/pdftops.c.

6. For PPD handling, do not use libcups as the PPD handling functions in 
libcups will go away in a later CUPS version. Use libppd of 
cups-filters, with "#include <ppd/ppd.h>". I have also moved the 
functions of libcups' ppd-private.h into the public API.

7. A Printer Application linking libcupsfilters can run several jobs in 
parallel, as separate threads or forked sub processes. This means that 
the filter functions must work in parallel, being thread-safe. So please 
check whether this is OK with global variables and/or namespace {...} 
which you are using.


The planned filter chaining filter function will take as its parameters 
an array of a structure where each element contains a filter function 
plus the parameters for the filter function's call in this place. The 
filter's data record will be the same for the chaining filter function 
and all filter functions called by it. The chaining function will pass 
the job data through all the filter functions listed in the array, in 
order, and output the result.

I have also already planned a function with which taking option settings 
from job/printer IPP attributes can easily get done and which can be 
easily added to already converted filters, so do not worry for now when 
your conversion is not using the supplied IPP attributes.

I will soon post when new resources/tools/functions for filter functions 
are implemented.

    Till


On 03/08/2020 15:27, Till Kamppeter wrote:
> TL;DR: Another step towards cups-filters 2.0: Filter functions

[...]

> Therefore I have started working on a new filter concept for 
> cups-filters 2.0 (coming soon), the filter functions. The plan is to 
> turn every filter into a filter function, available in libcupsfilters. 
> The functions have a common interface and a common data structure to 
> supply job and printer properties to them. Additional functions will be 
> created to call a given chain of filter functions or to find out a 
> suitable filter chain for a given job.

[...]
