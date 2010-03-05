Message-ID: <4B90ECFA.1030506@gmail.com>
Date: Fri, 05 Mar 2010 12:37:30 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <20100305095257.9953.E0F122DE@canon.co.jp>
In-Reply-To: <20100305095257.9953.E0F122DE@canon.co.jp>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [Printing-japan] OpenPrinting Japan
 Mar. 2010 meeting minutes (in	English)
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: TORATANI Yasumasa <toratani.yasumasa@canon.co.jp>
Cc: printing-architecture@lists.linux-foundation.org, printing-japan@lists.linux-foundation.org

Toratani-san, thank you for the quick translation.

Comments inline below.

    Till

On 03/05/2010 03:09 AM, TORATANI Yasumasa wrote:
> OpenPrinting Mar. f2f Meeting Minutes
>
> Date and Time: 14:30-18:30 on Mar.4th, 2010
> Meeting Place: The Linux Foundation Tokyo Office
>
> Attendees:
>    Kunai (The Linux Foundation), Chigusa (Ricoh), Olaf (Avasys)
>    Ohtani (BBR), Miyata (Canon), Toratani (Canon, minutes taker)
>
> Agenda:
> 1) Confirm the progress of action items
> 2) Report of the US/EU/Japan joint telecon held on Mar.
> 3) Printing Summit
> 4) Items to be developed during the next GSoC project
> 5) LINUXCON Tokyo plan
> 6) CUPS bugs related to "cupsCommand" keyword
>
>
> 1) Confirm the progress of action items
>
> Action Item #1) Check CPD current status
>    - Tried to compile on Debian Stable, but failed (Olaf)

Olaf, please send a mail with the errors to me and to Lars Uebernickel 
(larsuebernickel@gmx.de).

>    - Tried to build on Ubuntu9.10 and succeed. Level 2 feature has
>      already implemented on GNOME version, but not yet Level 3.

The actual state is:

The GNOME version was brought very far in last year's Google Summer of 
Code. Level 3 was implemented. Missing is the size and some layout 
issues are still to solve.

The Qt dialog has a completely implemented level 2, recently finished by 
Lars Uebernickel, financed by a German federal government agency. For 
level 3 there are only code pieces which are not activated currently.

>    - Shared the info. that CPD will not be supported on the next
>      Ubuntu LTS release.

Ubuntu 10.10 at the earliest, but only if we get enough man power. I 
asked Canonical whether they help funding (no answer yet). I also posted 
a GSoC project idea for patching toolkits and applications.

>    - Comments from attendees are as following;
>        - For most office use, Level 3 features are not needed.
>        - For the CPD first step release, it's better that development
>           resources focus on Level 2 implementation (for instanse
>           test with some applications) than to develop Level 3 feature.
>

We will have to release with level 3, as access to the PPD options was 
available before and removing this feature would be a regression.

> Action Item #2) Raise examples JobTicket attributes which should be
>                       dealt par page (Except page size and rotation)
>    - Coat paper for particular color image page, and plain paper for other.
>    - Simplex for cover page, duplex for other
>    - Folding particular page
>
> Action Item #3) Comment to the translated OpenPrinting page
>    - No one have comments
>
> 2) Report of the US/EU/Japan joint telecon held on Mar.
>
>    - Continue Vector API approval process
>    - Level 2 has been implemetend on CPD, but not yet Level 3 due to
>      short and slow funding
>    - Collect GSoC development item for OpenPrinting
>    - Telecon requirement from Japan for Printing Summit
>
> 3) Printing Summit
>
>    - Parson from EPSON US and RICOH US will participate in the meeting
>    - Need to call from Japan
>        - If the agenda includes SANE (Olaf)
>        - If the agenda includes NetBook Printing (Miyata, Toratani)
>

For call-in from Japan I have set up an evening session on Thursday 
April 15. This falls into the morning in Japan.

>    - Comment to agenda
>        - Demonstrations and Screenshots
>            - Hope to see the demonstration streaming or movies if possible
>

Demos of the Common Printing Dialog will be done with the real 
implementations of it. For call-in participants I can perhaps make a 
Ubuntu package so that one can boot a Ubuntu live CD and then install 
the package to try out the dialog.

>        - CUPS Raster Driver in Ghostscript maintenance
>            - Few maintainer for Ghostscript CUPS raster driver? *1
>

The problem occurred when ESP Ghostscript got merged into GPL 
Ghostscript. Since then Mike Sweet did not do any maintenance work on 
the CUPS Raster output device any more. I have fixed many bugs in it in 
the time up to now, but as I am not a Ghostscript expert I did not 
succeed to fix all bugs. The Ghostscript developers at Artifex do no do 
much on this driver, too.

It would be great if someone could help here. CUPS Raster is one of the 
three standard printer driver architectures (standardized in the LSB).

>        - CUPS Status
>            - CUPS 1.4 topic? or something new? *2
>

This session will be held by Mike Sweet, it is as in the previous years 
mainly planned development for the next version (1.5).

> 4) Items to be developed during the next GSoC project
>    - Implement CPD with major applications (OpenOffice, Firefox)
>    - NetBook Printing sample printer driver
>

Netbook printer driver are not planned for GSoC. What is planned is to 
have a session about netbook printing on the OpenPrinting Summit.

> 5) LINUXCON Tokyo plan
>    - Will be held since 27th Sept until 29th in Tokyo
>

Could also be an opportunity to couple a printer driver tutorial for the 
Japanese manufacturers.

> 6) CUPS bugs related to "cupsCommand" keyword
>    - We think that the following "cupsCommand" spec is not preferable, and
>       if a PPD does not contain "cupsCommand" keyword, it should be dealt
>       that the printer driver defined by the PPD does not support
>       "cupsCommand" features.
>
>      http://www.cups.org/documentation.php/doc-1.4/spec-command.html
>      "If no cupsCommands keyword is provided, the command filter must support
>      AutoConfigure, Clean, PrintSelfTestPage, and ReportLevels"
>
>    - Can this spec be changed in CUPS 1.5?  *3
>

Probably yes, and I think we should change it. There are a lot of 
printers (especially laser printers) which do not have all these for 
hardware features implemented.

