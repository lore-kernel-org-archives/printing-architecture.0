Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ZeTL3dl7WJOJOrbwV3CU8UdWFa7ncB+sO27fTd1xc9s=;
 b=RpwzxbO1QdLJiKLyNAzqmkgg7e4W3DLLe/H/KgfHD7uu+oKqpmZ5w9cxLxnYnLtuzN
 9sNwuPCeGh/1XaPwDDBNAfgiwBwDaGw9pA3hbFgFSqA/LZ+SC7uaxJc7ldmg0/2xmrrs
 0GfdnZUQvsyZhcEjUdjHrf4wjf2VGGSXd57mF/NupeLbKvUwWSE0AwuKX8Odq3LI3Rnq
 h3bYKX8X2ILLV461+HaEMFTl9G/dy/M0o79LOCtoaN6J1kEcZJiEOL3+74Hd5zeLSbFX
 jeH19Yt5vazAd3U0LKqu4vXHzrtyPCqQ7h1WaWI6m+Gba3gGv37n3VQCwnYYBIt75eBh
 8cLg==
References: <304a299b-b4d8-2553-7e65-31e2cda6156c@gmail.com>
 <a0b417ce-0e4d-1f18-f755-4b94d2ad61f0@redhat.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <b4e4f197-499d-dd8f-8936-c64a6a839ff4@gmail.com>
Date: Tue, 4 Aug 2020 12:42:06 +0200
MIME-Version: 1.0
In-Reply-To: <a0b417ce-0e4d-1f18-f755-4b94d2ad61f0@redhat.com>
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
To: Zdenek Dohnal <zdohnal@redhat.com>
Cc: printing-architecture@lists.linux-foundation.org

On 04/08/2020 12:19, Zdenek Dohnal wrote:
> Hi Till and Mike,
> 
> thank you for your work on printer applications!
> 
> I have concerns about printing performance with filter functions instead
> of the current filtering, which uses separate executables.
> 

[...]

> 
> Isn't it possible to stay with external executables in printer
> applications? Or the performance will be even better than the current
> filtering?

You probably mean that filters as external executable have parallelized, 
so that while the first filter, pdftopdf for flattening the filled forms 
and applying N-up, is still working, the second filter, pdftops already 
starts turning the PDF into PostScript, and the third filter, pstops (in 
current cups-filters started by pdftops) already starts inserting option 
PostScript code from the PPD as soon as the first PostScript bits come 
out of Ghostscript.

In the filter function scenario this parallelization will still take 
place. a main process will fork a sub-process for each individual filter 
and these processes are piped together to get one filter's output to the 
next filter's input. So the individual filters run in separate processes 
on separate CPU cores in parallel.

What is optimized or improved is that the filters and the caller are now 
the same executable. Options do not need to be converted into one long 
string (5th command line argument) or into environment variables and by 
the sub process back into the needed internal data structures. CUPS 
option lists and even IPP job and printer attributes structures can get 
passed on to the filter function directly. Also a PPD file (in case of 
retro-fitting Printer Applications) does not need to be loaded from the 
disk by each individual filter and parsed into the CUPS PPD data 
structure, but instead, the data structure is generated once by the 
caller (it has to do it anyway to generate the get-printer-attributes 
IPP response), and directly passed on to the filters. Also any overhead 
of launching an external program with its command line is eliminated.

In addition, the filter functions are also more easy to use for 
scanning, in Scanner Applications.

Even CUPS performance can be improved: Instead of having a separate 
wrapper executable for each filter function, making cups-filters looking 
exactly the same as before for CUPS, one can create a universal filter 
executable which takes the input and output data from the environment 
(supplied by CUPS), calculates the chain of filter functions and calls 
them in forked processes, again loading and parsing PPD and options only 
once. Assuming that CUPS only handles the formats for driverless 
printing CUPS will work with this one single filter and a single MIME 
conversion rule for all supported input and output formats.

    Till
