Message-ID: <493F0F8B.7030206@gmail.com>
Date: Wed, 10 Dec 2008 01:38:35 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <20081208175343H#=oVA@bbr.jp> <493F0240.8060607@fujixerox.co.jp>
In-Reply-To: <493F0240.8060607@fujixerox.co.jp>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [Printing-japan] [Translation]
 12/5/2008 meeting minutues in OPWG/J
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Osamu MIHARA <osamu.mihara@fujixerox.co.jp>
Cc: printing-architecture@lists.linux-foundation.org, printing-japan@lists.linux-foundation.org

Osamu MIHARA wrote:
> Guys,
> 
> Here is the translation of the OPWG/J meeting minutes Dec. 2008.
> 
> [Date]
> Dec. 5th, 2008
> 
> [Place]
> The Linux Foundation Japan Meeting Room
> 
> [Attendees]
> Miyata (Canon), Toratani (Canon), Olaf (Avasys), Saito (NEC Soft),
> Uoshima (Fuji Xerox), Ogasawara (Ricoh), Otani (BBR), Higuchi,
> Kunai (LF), Kanjo (BBR), Mihara (Fuji Xerox)
> 
> [Agenda]
> 
> ---------------------------------------
> 1. LF (printer driver) Server Location
> ---------------------------------------
> The issue about the export restriction is recognized and shared by the
> LF member.  We continue to watch the development of the situation.
>

Does LF Japan have servers in Japan? If yes, does the system 
administrator of these servers speak English. Then we could set up our 
download hub (not only OpenPrinting, any kind of software we offer for 
download) there. Or we could perhaps put our download hub to Russia, 
where the LSB Navigator is located.

> 
> ---------------------------------------
> 2. Current situation of CPD
> ---------------------------------------
> Some members are watching the CPD development.  We may need a place to
> put feedbacks and reports about CPD.
> 

Lars Uebernickel (CCed) is now returning to continue the development of 
the CPD. Only one small fix is missing that he is done with Foomatic 4.0.

Wiki page of the CPD is here:

http://www.linuxfoundation.org/en/OpenPrinting/CommonPrintingDialog

Feel free to add whatever you want.

Please report bugs and feature requests on bugs.linuxfoundation.org, 
product "OpenPrinting", component "Common Printing Dialog", so that Lars 
gets informed.

> It is reported that if there is no printer entry in CUPS queue, the CPD
> fails to execute.
> 

Please report this as a bug on bugs.linuxfoundation.org, product 
"OpenPrinting", component "Common Printing Dialog".

> ---------------------------------------
> 3. pdftoopvp filter
> ---------------------------------------
> - Otani-san has been investigating the removal of dependency of
> pdftoopvp on the popper source code tree, but it seems to be very difficult.
> 
> - Otani-san to ask poppler to incorporate some APIs which is needed by opvp.
> 
> ---------------------------------------
> 4. pdftoraster
> ---------------------------------------
> - gs 8.63 degrades in performance compare to previous versions.

Please report a bug at http://bugs.ghostscript.com/.

> - Need to benchmark pdftoraster and gs in aspect of functions and
> performance.
>   performance measurement: print a PDF test chart on Ubuntu 8.10 to
> /dev/null device.
> 
> ---------------------------------------
> 5. Color management as an agenda of next Printing Summit (next April)
> ---------------------------------------
> We welcome the discussion and standardize about color management in
> Linux environment.
> 
> ---------------------------------------
> 6. The plan for next year activity
> ---------------------------------------
> - Scanner Handling
>   Currently SANE is not defined in LSB, application programs which
> requires SANE need link SANE library statically.  (Drivers and apps
> requires SANE is regarded as non-LSB compliant.)
> 
>   We take action for the purpose make SANE incorporated in LSB, starting
> organization of issues.
> 

This is urgently needed. Reason for the failure is lack of man power. So 
I kindly ask OpenPrinting Japan to do the needed work of documentation 
and creation of test scripts.

> - PDF workflow
>   Continue investigation of Job Control in PDF workflow.
> 
> ---------------------------------------
> 7. Report by Ogasawara-san in OSS community
> ---------------------------------------
> Ogasawara-san has attended some OSS cmmunity and report/discuss about
> printing in Linux (OpenPrinting).
> 
> OPWG/J will support about issues, feedbacks and questions arose in such
> activities.
> 
> Inquires and requests about Linux printing will be accepted by opfc (in
> sourceforge.jp).  Such supports will be done on Web forum and ML.
> 
> ---------------------------------------
> 8. Issues in printing on Ubuntu 8.10
> ---------------------------------------
> See https://bugs.launchpad.net/ubuntu/+source/cups
> 
> Printing from GIMP is very slow or failed:->->->
> 
>   Cairo API does not support direct drawing of raster bitmap.  Instead,
> the apps should use "pattern" API to draw raster bitmaps, which result
> in a numerous number of "pattern" data in PDF.  It causes pdftops to
> generate "array" which size exceeds the limit in GS.  As a result,
> printing from GIMP is slow or failed.
> 
> --> currently, no idea for the solution as long as pdftops is used in
> the PDF print path.
> 

This issue is about to be solved. Current Ghostscript in Ubuntu Jaunty 
has a partial fix (0ubuntu12 package).

The Ghostscript team has solved the problem upstream yesterday. 
Unfortunately I did not succeed to apply the patches to Ghostscript 8.63 
for fixing the problem in Ubuntu. I am waiting for a backport from the 
Ghostscript team.

Bug reports are here:

http://bugs.ghostscript.com/show_bug.cgi?id=690133
https://bugs.launchpad.net/ubuntu/+source/ghostscript/+bug/288570

> [Action Items]
> 1. Ask Till to investigate support and maintenance way about GSoC
> achievements such as CPD. (Owner: Toratani)
>

CPD development will get continued sson. See above.

> 2. Investigate APIs supported by Poppler upstream for opvp. (Owner: Otani)
> 
> 3. Evaluate/Benchmark of pdftoraster and gs (Owner: Toratani)
> 
> [Next Meeting]
> Jan. 15th, 2009 (Thu) 14:30- @ LF Japan

    Till
