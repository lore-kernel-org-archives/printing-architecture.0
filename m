Date: Fri, 05 Mar 2010 11:09:30 +0900
From: TORATANI Yasumasa <toratani.yasumasa@canon.co.jp>
Message-Id: <20100305095257.9953.E0F122DE@canon.co.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] OpenPrinting Japan Mar. 2010 meeting
	minutes (in English)
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-japan@lists.linux-foundation.org, printing-architecture@lists.linux-foundation.org

OpenPrinting Mar. f2f Meeting Minutes

Date and Time: 14:30-18:30 on Mar.4th, 2010
Meeting Place: The Linux Foundation Tokyo Office

Attendees:
  Kunai (The Linux Foundation), Chigusa (Ricoh), Olaf (Avasys)
  Ohtani (BBR), Miyata (Canon), Toratani (Canon, minutes taker)

Agenda:
1) Confirm the progress of action items
2) Report of the US/EU/Japan joint telecon held on Mar.
3) Printing Summit
4) Items to be developed during the next GSoC project
5) LINUXCON Tokyo plan
6) CUPS bugs related to "cupsCommand" keyword


1) Confirm the progress of action items

Action Item #1) Check CPD current status
  - Tried to compile on Debian Stable, but failed (Olaf)
  - Tried to build on Ubuntu9.10 and succeed. Level 2 feature has
    already implemented on GNOME version, but not yet Level 3.
  - Shared the info. that CPD will not be supported on the next
    Ubuntu LTS release.
  - Comments from attendees are as following;
      - For most office use, Level 3 features are not needed.
      - For the CPD first step release, it's better that development
         resources focus on Level 2 implementation (for instanse
         test with some applications) than to develop Level 3 feature.

Action Item #2) Raise examples JobTicket attributes which should be
                     dealt par page (Except page size and rotation)
  - Coat paper for particular color image page, and plain paper for other.
  - Simplex for cover page, duplex for other
  - Folding particular page

Action Item #3) Comment to the translated OpenPrinting page
  - No one have comments

2) Report of the US/EU/Japan joint telecon held on Mar.

  - Continue Vector API approval process
  - Level 2 has been implemetend on CPD, but not yet Level 3 due to
    short and slow funding
  - Collect GSoC development item for OpenPrinting
  - Telecon requirement from Japan for Printing Summit

3) Printing Summit

  - Parson from EPSON US and RICOH US will participate in the meeting
  - Need to call from Japan
      - If the agenda includes SANE (Olaf)
      - If the agenda includes NetBook Printing (Miyata, Toratani)

  - Comment to agenda
      - Demonstrations and Screenshots
          - Hope to see the demonstration streaming or movies if possible

      - CUPS Raster Driver in Ghostscript maintenance
          - Few maintainer for Ghostscript CUPS raster driver? *1

      - CUPS Status
          - CUPS 1.4 topic? or something new? *2

4) Items to be developed during the next GSoC project
  - Implement CPD with major applications (OpenOffice, Firefox)
  - NetBook Printing sample printer driver

5) LINUXCON Tokyo plan
  - Will be held since 27th Sept until 29th in Tokyo

6) CUPS bugs related to "cupsCommand" keyword
  - We think that the following "cupsCommand" spec is not preferable, and
     if a PPD does not contain "cupsCommand" keyword, it should be dealt
     that the printer driver defined by the PPD does not support
     "cupsCommand" features.

    http://www.cups.org/documentation.php/doc-1.4/spec-command.html
    "If no cupsCommands keyword is provided, the command filter must support
    AutoConfigure, Clean, PrintSelfTestPage, and ReportLevels"

  - Can this spec be changed in CUPS 1.5?  *3

Action Item:
Mihara:  Define Vector API approval dead line
All:  Post more GSoC idea if have
Toratani: Confirm *1, *2 and *3 with Till (by this minutes)

Next:
  8th Apr, 2010 14:30- at The Linux Foundation Tokyo office

-----------------------------------------
TORATANI Yasumasa
Software Platform Technology Development Dept. 33
Digital Platform Technology Development HQs, CANON INC.

