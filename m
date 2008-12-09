Message-ID: <493F0240.8060607@fujixerox.co.jp>
Date: Wed, 10 Dec 2008 08:41:52 +0900
From: Osamu MIHARA <osamu.mihara@fujixerox.co.jp>
MIME-Version: 1.0
References: <20081208175343H#=oVA@bbr.jp>
In-Reply-To: <20081208175343H#=oVA@bbr.jp>
Content-Type: text/plain; charset=ISO-2022-JP
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] [Translation] 12/5/2008 meeting minutues in
	OPWG/J
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org, printing-japan@lists.linux-foundation.org

Guys,

Here is the translation of the OPWG/J meeting minutes Dec. 2008.

[Date]
Dec. 5th, 2008

[Place]
The Linux Foundation Japan Meeting Room

[Attendees]
Miyata (Canon), Toratani (Canon), Olaf (Avasys), Saito (NEC Soft),
Uoshima (Fuji Xerox), Ogasawara (Ricoh), Otani (BBR), Higuchi,
Kunai (LF), Kanjo (BBR), Mihara (Fuji Xerox)

[Agenda]

---------------------------------------
1. LF (printer driver) Server Location
---------------------------------------
The issue about the export restriction is recognized and shared by the
LF member.  We continue to watch the development of the situation.


---------------------------------------
2. Current situation of CPD
---------------------------------------
Some members are watching the CPD development.  We may need a place to
put feedbacks and reports about CPD.

It is reported that if there is no printer entry in CUPS queue, the CPD
fails to execute.

---------------------------------------
3. pdftoopvp filter
---------------------------------------
- Otani-san has been investigating the removal of dependency of
pdftoopvp on the popper source code tree, but it seems to be very difficult.

- Otani-san to ask poppler to incorporate some APIs which is needed by opvp.

---------------------------------------
4. pdftoraster
---------------------------------------
- gs 8.63 degrades in performance compare to previous versions.
- Need to benchmark pdftoraster and gs in aspect of functions and
performance.
  performance measurement: print a PDF test chart on Ubuntu 8.10 to
/dev/null device.

---------------------------------------
5. Color management as an agenda of next Printing Summit (next April)
---------------------------------------
We welcome the discussion and standardize about color management in
Linux environment.

---------------------------------------
6. The plan for next year activity
---------------------------------------
- Scanner Handling
  Currently SANE is not defined in LSB, application programs which
requires SANE need link SANE library statically.  (Drivers and apps
requires SANE is regarded as non-LSB compliant.)

  We take action for the purpose make SANE incorporated in LSB, starting
organization of issues.

- PDF workflow
  Continue investigation of Job Control in PDF workflow.

---------------------------------------
7. Report by Ogasawara-san in OSS community
---------------------------------------
Ogasawara-san has attended some OSS cmmunity and report/discuss about
printing in Linux (OpenPrinting).

OPWG/J will support about issues, feedbacks and questions arose in such
activities.

Inquires and requests about Linux printing will be accepted by opfc (in
sourceforge.jp).  Such supports will be done on Web forum and ML.

---------------------------------------
8. Issues in printing on Ubuntu 8.10
---------------------------------------
See https://bugs.launchpad.net/ubuntu/+source/cups

Printing from GIMP is very slow or failed:->->->

  Cairo API does not support direct drawing of raster bitmap.  Instead,
the apps should use "pattern" API to draw raster bitmaps, which result
in a numerous number of "pattern" data in PDF.  It causes pdftops to
generate "array" which size exceeds the limit in GS.  As a result,
printing from GIMP is slow or failed.

--> currently, no idea for the solution as long as pdftops is used in
the PDF print path.

[Action Items]
1. Ask Till to investigate support and maintenance way about GSoC
achievements such as CPD. (Owner: Toratani)

2. Investigate APIs supported by Poppler upstream for opvp. (Owner: Otani)

3. Evaluate/Benchmark of pdftoraster and gs (Owner: Toratani)

[Next Meeting]
Jan. 15th, 2009 (Thu) 14:30- @ LF Japan
-- 
  Osamu MIHARA // Fuji Xerox Co., Ltd.

