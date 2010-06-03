Message-ID: <4C07C08B.8050807@gmail.com>
Date: Thu, 03 Jun 2010 16:47:39 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <OF1B6EED96.C683C88C-ON49257731.00332DC3-49257731.0033E717@mta.ricoh.co.jp>	<4BFF94E6.4080108@gmail.com>
	<4C074B5C.9030903@fujixerox.co.jp>
In-Reply-To: <4C074B5C.9030903@fujixerox.co.jp>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [Printing-japan] OpenPrinting Japan
	May. 2010 Meeting
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-japan@lists.linux-foundation.org, Open Printing <printing-architecture@lists.linux-foundation.org>
Cc: Osamu MIHARA <osamu.mihara@fujixerox.co.jp>

On 06/03/2010 08:27 AM, Osamu MIHARA wrote:
> Hi, here is the translation:
>

Thank you very much. Comments inline.

> OpenPrinting (Japan) Meeting
> 28th May, 2010 @ The Linux Foundation Japan Kiocho-Office
>
> Attendee:
> Olaf (Avasys), Mihara (Fuji Xerox), Saito (NEC Soft), Otani (BBR),
> Miyata (Canon), Toratani (Canon), Chigusa (Ricoh)
>
>
> *** Action Items Follow-ups ***
>
> o Vector API Approval Status
>
> ->  Not yet confirmed (Mihara)
>
> o Confirm CUPS problem (STR #3273 - http://www.cups.org/str.php?L3273 )
>
> Problem: In CUPS 1.4.x, "Clean Print Heads" and "Print Self Test Page"
> can be selected even if printer or filter does not provide these
> feature.  The problem has been registered as STR #3273 which seems not
> to be fixed.
>
> ->  net yet confirmed
>

This is really a problem and Mike Sweet is not willing to fix it, as he 
supports only PostScript printers and CUPS Raster drivers and no 
Ghostscript-based printer support. The problem occurs for all PPD files 
which take application/vnd.cups-postscript as input format, also if the 
input is passed through a filter.

Do we need to maintain a fork of CUPS for Linux and Unix environments 
which use Ghostscript or in general for better support of non Mac OS X 
systems?

> o Maintenance of GS CUPS raster driver
>    (Ask Till-san via Fukuyasu director)
>

I have answered the e-mail and I will do at least work on bugs in the 
CUPS Raster output device of Ghostscript until we find another 
maintainer. It seems that Mike Sweet is no concentrated on the Mac OS X 
parts of CUPS (Mac OS X does not use Ghostscript). For using CUPS with 
Ghostscript we are on our own now.

> ->  OPJ has asked Fukuyasu-san.
>
>
> *** OpenPrinting Tele-conference (US/EU) Review ***
>
> Minutes:
> ftp://ftp.pwg.org/pub/pwg/fsg/minutes/OP-Minutes-20100518.htm
>
> o Plan for Completion of the Common Printing Dialog
> https://www.linuxfoundation.org/collaborate/workgroups/openprinting/plan-completion-common-printing-dialog
>
> Schedule for GTK implementation is shown, but KDE is not.  OPJ thinks it
> is preferable that implementations of both of GTK and KDE progress at
> the same pace.

I told in the work plan that for KDE the same has to be done and so we 
need the same amount of work, and a person who does the work. This 
person needs the same amount to be paid as Lars needs for his GTK work.

>
> o PWG IPP Everywhere Project Charter
> ftp://ftp.pwg.org/pub/pwg/ipp/wd/wd-ippeverywhere-charter-20100417.pdf
>
> OPJ thinks the PPD search method should be standardized, at least in the
> Linux environment.  If there are differences in the manner of PPD
> matching between distros, it should be troubles for both of users and
> vendors.
>

I agree with that. Currently the PPD matching is done by the printer 
setup toools and each tool does it on its own way. Best would be to have 
the matching algorithm in the CUPS library. Another reason to fork CUPS?

>
> *** Action Items ***
> o Vector API Approval Status: Mihara to organize status.
> o Confirm CUPS problem: Toratani-san to explain and try persuade Mike again.
                                                       ^^^^^^^^^^^^^^^^^^
                                               This is the important part

    Till
