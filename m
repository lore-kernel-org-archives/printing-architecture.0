Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=I1h7DH9eHOkRELWYdaS+2RpnuU6qXGS/TrP/TT5iLqM=;
 b=ewk0vcdkgifIn3/6CGXSkTIKooNOXMrUdc7MDQOA7yTnru6YFkjVYs26Em7+oqaTJs
 BZwoJnt9wHDiscJ5TtfeF80M5eTo1n0GBzvwcrca3vjhlpEfCwaPqFYrU5iAsTP2WKNK
 X9Mvc+xllzwot8M/0LdbEX7RAWGOIGHy8gte3NKGmVGC3Gfaxookw3+RCW0J4x9UwbYG
 vbOcRInauM8DZTtjo3hRrGxRxzlle5dKmJVdIWrK7CXlgj0jmPEV7PMWKfFE/If1Zqc7
 Uwjj6WRo2y/PYBCs5fZIgfOaE/JTB4/UR68/UI+BOxiBtn1bL83GPpKpVKQb9zdPofi5
 kdCg==
Message-ID: <f555b483-6eb8-d6b3-009e-d7ba0647d1e0@gmail.com>
Date: Thu, 20 Jan 2022 13:23:21 -0300
MIME-Version: 1.0
Content-Language: en-US
References: <9c17c59d-0ed6-c1c3-42ce-4bcef58363f8@gmail.com>
 <CAAqMZmaderbgCakFtoPutkg3a94naCCqnLmy6wKuLE6+sXFjsA@mail.gmail.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <CAAqMZmaderbgCakFtoPutkg3a94naCCqnLmy6wKuLE6+sXFjsA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Use of filter functions in CUPS 2.x and
 3.x
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Zdenek Dohnal <zdohnal@redhat.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, Pranshu Kharkwal <pranshukharkwal08@gmail.com>



On 20/01/2022 10:53, Zdenek Dohnal wrote:
> Hi Till,
> 
> I'm sorry for answering this late - HDD got wasted, Christmas, all new 
> year responsibilities and I'm not particularly strong on my feet 
> regarding filters, so I'm not sure whether my feedback will relevant, 
> but so there it is:
> 
> On Mon, Dec 13, 2021 at 10:07 PM Till Kamppeter 
> <till.kamppeter@gmail.com <mailto:till.kamppeter@gmail.com>> wrote:
> 
>     Hi,
> 
>     with the background of CUPS 3.x, planned to get released 2 years from
>     now, not supporting PPD files any more and only considering driverless
>     IPP printers I have changed the architecture of cups-filters,
>     converting
>     filter executables (CUPS filters) into filter functions (library
>     functions doing a filter's task, with standardized call
>     scheme/interface) so that the code of the filters is preserved but they
>     get more universally usable.
> 
> 
> Kudos for doing that! I would propose to leave each filter binaries for 
> check/test target and use them in the test suite. IMO it would be great 
> to know that at least common use cases work the same way as with the 
> previous filter binaries.
> 

There are still filter binaries for calling the filters the classic way. 
To not duplicate code they are stubs which do not more than calling the 
corresponding filter function. The binaries are in filter/ (as the 
executables before) and the filter functions in libcupsfilter/. So 
filters can be called in 3 ways:

1. As individual executables
2. Filter function chains called by the "universal" filter
3. Filter functions directly

>     So before I complete this (if not, the universal filter will at
>     least be
>     used to make cups-browsed's "implicitclass" backend use filter
>     functions
>     instead of external filters) I want to hear some opinions about this,
>     especially also whether actually saving external executable calls is
>     more resource-saving than for example saving forked parallel tasks and
>     pipes between them.
> 
> 
> IMO it would be great to have this before we fully switch to non-PPD 
> printing stack - this way we could test the filtering functions on more 
> places than just in printer applications, which still aren't widely used 
> for now.
> 

The simple switch-over to cups-filters 2.x already makes the filter 
functions being used, called through the individual wrappers (see (1) 
above). By simply replacing a config file one can switch the universal 
wrapper calling filter function chains. So a quick switch-over to 
cups-filters 2.x will give us already a lot of testing before we get 
CUPS 3.x.

Also more use of the Printer Applications (for example in distros with 
snapped/sandboxed CUPS) will provide more testing.

> 
> 
>     Forking and piping vs. one filter after the other
>     -------------------------------------------------
> 
>     In general if forking and piping for a filter chain consumes much more
>     than calling each filter function one after the other directly and let
>     them write their output into temporary files for the next filter
>     functions in the chain reading from the previous filter function's temp
>     file I am also thinking about adding a second mode to filterChain() to
>     let it operate this way. WDYT?
> 
> 
> To be honest forking and piping sounds better for me - a file can stay 
> on system if something goes wrong, taking the resources, additionally 
> protective systems can complain about accessing/creating files in 
> unexpected location. AFAIK forking and piping sounds cleaner to me...
> 

OK.

> 
> 
>     Using filter functions directly in CUPS
>     ---------------------------------------
> 
>     And, finally, should we make the filter functions be directly used by
>     CUPS, either that in CUPS 2.5.x in scheduler/job.c we call filter
>     functions instead of external filter executables (at least for
>     standard,
>     non-driver filters), or that for CUPS 3.x we do the needed file format
>     conversions by filter function calls (there are no driver filters)?
>     Backends could also be converted to filter functions and be directly
>     called. WDYT?
> 
> 
> I would prefer universal filter binary for the current CUPS 2.x, 
> because, as you wrote below, filter functions from libcupsfilters would 
> cause circular deps and the CUPS splitting is best done in CUPS 3.0.
> 

OK.

> 
>     Also, do we need extra functionality in the filter function concept for
>     using it directly in CUPS? For example add a field to the records of
>     the
>     filter functions called by filterChain() to tell as which user each
>     individual filter function should get run?
> 
> 
> I'm not sure if I am able to tell something relevant about this - how I 
> imagine the filter function is a 'in' pointer, 'out' pointer, ipp 
> attributes of the destination and array of CUPS options related to the 
> job (basically similar what current filter binaries take as parameters 
> and produce, with exception that instead of PPD we have IPP attributes). 
> Maybe to have some 'void' pointer for additional data, if some filter 
> function will need more info?
> 

The call scheme of filter functions already has this void pointer, the 
"parameters" pointer. See use of filter functions in the source code of 
the universal() filter function and also in libpappl-retrofit, the 
job-processing part especially.

> 
>     Also, if we want CUPS to use filter functions, we need to do
>     re-structuring to avoid circular dependencies, as libcupsfilters uses
>     libcups and if a function in libcups would call a filter function of
>     libcupsfilters, libcups is using libcupsfilters, ... The planned
>     splitting of libcups, local CUPS daemon, sharing CUPS daemon of CUPS
>     3.x
>     could help here as if the daemons call filter functions but not
>     libcups,
>     we will not get a circular dependency. WDYT?
> 
> 
> As I wrote above, I would prefer an universal driver binary because of 
> this for now to prevent the circular dependency and pasting cups-filters 
> code into CUPS.
> 

OK.

    Till
