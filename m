Message-ID: <490558B7.6030606@fujixerox.co.jp>
Date: Mon, 27 Oct 2008 14:59:19 +0900
From: Osamu MIHARA <osamu.mihara@fujixerox.co.jp>
MIME-Version: 1.0
References: <20081024.140846.71105530.sho@bbr.jp>
In-Reply-To: <20081024.140846.71105530.sho@bbr.jp>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] [Translation] [Printing-japan] 10/23
	minutues
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

Here is the minutes of OpenPrinting Japan Periodical Meeting.

# export LANG=en_US.ISO8859-1

=== OpenPrinting Japan October 2008 ===

o Date & Time:
23th Oct. (Thu) 14:30-17:00

o Place:
The Linux Foundation Kioicho Office

o Attendee:
Kunai (LF), Otani (BBR), Ofal (Avasys), Ogasawara (Ricoh), Yamagishi 
(Turbolinux), Toratani (Canon), Miyata (Canon), Higuchi (Open 
Technologies), Mihara (Fuji Xerox), Uoshima (Fuji Xerox), Saitou (NEC 
Soft), Henri Shutak (Lucid Systems)

o Agenda
- Action Items Review
- PWG Slide Review
- Free discussion of networkbase device managemnet system
- PDF printing discussion at Cairo summit
- Next years theme

o Action Items Review
- Confirm Till About Acrobat Issue (Kunai)
   Same issue happens with Apple Mac OS X.  Adobe is studying how to cope
   with it.

- Location of driver distribution server (Kunai)
   The issue is recognized now.  Kunai-san to ask to continue
   consideration.

- Rating information on the LF web (kunai)
   It is deleted.  Thank you!

- Confirm implementation of locale in CUPS (Mihara)
   Already reported to the ML (5th, Sep.).

   7. Localizations are specified using a locale prefix of the form "ll"
   or "ll_CC." where "ll" is the 2-letter ISO language code and "CC" is
   the 2-letter ISO country code.

   --> Main keyword and option keyword in PPD can be designated by
       Language, and Language+Country from CUPS 1.2.

- CPD follow-up (each)
   Source code is already in public.  Everyone should/may review it.

- Modify pdftoopvp (Otani)
   Modification is almost done.  Will upload the current one.

- Post translation of minutes. (Mihara)
   Done for September.  On going for October.

- Inform SC that no one can attend the PWG meeting. (Toratani)
   Done

o PWG slide
   Reviewed.

o Free discussion of networkbase device managemnet system
   Henri Shustak (lucid systems) explained the proposal of "Oepn Network 
Control."
   - we may need open interface for the purpose of management/accounting
     of printer/scanner/multi-function device.
  - It's not Linux specific topic.
   - We need current status and coverage of specifications discussed in
     PWG.

o PDF printing discussion at Cairo summit
   - They have discussed how to embed meta data, including job control,
     into PDF.  Direction: add new API to embed meta data, which should
     not be PDF specific.

o The theme next year
   -ideas:
     Device Management Control standard (Shustak's today proposal)
     Print Job Control for PDF workflow.
     Status API
     Capability API
     Driver automatic search and install
     Study Out of Box User Experience
     Investigate Requirement for next LSB
     Color Management

o Action Items
   - Driver server location (cont'd) - Kunai
   - CPD review - Each
   - pdftoopvp - upload modified result (Otani)

o Next Meeting
   14:30-17:00 27th, November 2008
   the Linux Foundation Kioicho Office
-- 
   Recorded by Koji OTANI (BBR)
   Translation by Osamu MIHARA (Fuji Xerox)

