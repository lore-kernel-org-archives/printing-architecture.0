Message-ID: <4CDC9192.5090900@fujixerox.co.jp>
Date: Fri, 12 Nov 2010 10:00:02 +0900
From: Osamu MIHARA <osamu.mihara@fujixerox.co.jp>
MIME-Version: 1.0
References: <20101105105012.F03E.5F9CA008@canon.co.jp>
In-Reply-To: <20101105105012.F03E.5F9CA008@canon.co.jp>
Content-Type: text/plain; charset=ISO-2022-JP
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] OpenPrintig Japan November 2010 Meeting
	Minutes in English
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

OpenPrintig Japan November 2010 Meeting Minutes
Date&Time: 11, November 15:00 -
Place: Fuji Xerox Yokohama Minato Mirai R&D Square

Attendees:
Otani (BBR), Miyara (Canon), Chigusa (Ricoh), Saito (NEC Soft), Shishido
(NEC Soft), Mihara (Fuji Xerox)

- Agenda
1. Action Items Followup
2. opvp document check
3. OP Telecon (US/EU) Review
4. Others


1. Action Items Followup
opvp document modification and release (Toratani-san) - completed.
Thank you!

2. opvp document check

Following document released by Toratani was reviewed by all attendees
and confirmed all the feedback are applied.  No problem

ftp://ftp.pwg.org/pub/pwg/openprinting/vector/
Oct 16 2010 04:54       568171 opvp-api-v0100-20101007-with-changes.pdf
Oct 16 2010 04:54       108206 opvp-api-v0100-20101007.odt
Oct 16 2010 04:54       539733 opvp-api-v0100-20101007.pdf

3. OP Telecon (US/EU) review

(1) October Meeting
 ftp://ftp.pwg.org/pub/pwg/fsg/minutes/OP-Minutes-20101012.htm

- Till will come Japan to present CPD Feb/Mar 2011.  - May need to ask
setting to TLF.

- Printing Summit Apr. 2011 - Each company to investigate participation.
 At this time, OP-J may have no item to report.  Main topic may be CPD?

(2) November Meeting
 ftp://ftp.pwg.org/pub/pwg/fsg/minutes/OP-Minutes-20101109.htm

- IPP Everywhere - shows progress.  may need to watch.
- CPD
  may has risk on presentation at Desktop Summit at Berlin in August 2011
  --> Whether the delay affect on the Till's CPD present in Japan???
      When the final decision will be made whether and when Till-san
come to Japan to present CPD?

4. Other Topics

(1) Cairo Problem on 1.10.x (reported by Otani-san)

PS output from Cairo 1.10 on Fedora 14/Ubuntu has problem.  If a PDF
includes grayscale jpeg image is output from Evince, incorrect PS
command is output.  The incorrect command result in fatal error in
ghostscript.   Fedora 14 (PS print workflow) cannot print such PDF
files.  (Ubuntu can print because it uses PDF as print meta file.)

  --> currently it is observed particular PDF file, which cannot be
disclosed openly.
  --> In order to submit this issue as a bug report, we may need a free
(?) PDF file includes grayscale jpeg.

(2) pdftoraster (Otani-san)

- Till-san is suggesting poppler based "pdftoraster" is preferable
compared with GS based pdftoraster filter.
- Otani-san is woking on modify poppler based pdftoraster in order to
support CUPS extensions such as cupsBackSide.

5. Action Items
- Report review result of vector spec to architecture ML (Mihara)
- Make Grayscale Jpeg PDF (someone)
- Confirm Till-san's plan to visit to Japan.

Next Meeting
Dec. 16, 2010 15:00 (JST) -  @ TLF Office (need to confirm availability
of meeting room)
-- 
  Osamu MIHARA // Fuji Xerox
