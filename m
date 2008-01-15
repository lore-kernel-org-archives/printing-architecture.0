Date: Tue, 15 Jan 2008 12:39:31 +0900
From: TORATANI Yasumasa <toratani.yasumasa@canon.co.jp>
Subject: Re: [Printing-architecture] Posted OP SC Minutes - 14 Jan 2008
In-Reply-To: <e395be80801141602t100e2ac6u2a6a9d49de1385a5@mail.gmail.com>
References: <e395be80801141602t100e2ac6u2a6a9d49de1385a5@mail.gmail.com>
Message-Id: <20080115123254.E64B.TORATANI.YASUMASA@canon.co.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Ira McDonald <blueroofmusic@gmail.com>
Cc: printing-architecture@lists.freestandards.org

Hi,

This is the OpenPrinting Japan f2f meeting outline notes;

---
OpenPrinting Japan f2f Meeting Outline

Date and Time
  10th Jan. 2008

Attendees
  Otani (BBR)
  Toratani (Canon)
  Olaf (EPSON Avasys)
  Miyata (EPSON Avasys)
  Sekiguchi (Konica Minolta)
  Saitoh (NEC Soft)
  Sakai (NEC Soft)
  Ogasawara (RICOH)
  Izumisawa (TLF Japan)

Agenda
- Check Action Items
- Common Printing Dialog
- LF OpenPrinting Meeting in Tokyo
- Compatibility Test
- pdftoraster and texttopdf

<Check Action Items>
- ppd options conflicts of Common Printing Dialog
    - Should check the current status and how this issue has been resolved.
      (because this issue has already been done on the TLF-OP page)
- IPA font issue on major applications
    - Waiting results from IPA
- OPVP rpc update
    - Under testing.
- New IPA(CJK) font announcement on the OPFC sourceforge page
    - Should be done by the next f2f meeting

<Common Printing Dialog>
- Comment from vendors
    - How the common dialog shows the ppd options conflict to users?
       (Not defined on the Peter's dialog)
      The current common printing dialog design is fine, but because
      the dialog has more complex features than the current GNOME
      or KDE print dialog, showing the conflict to users easily might be
      more difficult (If conflicts occur, message box are shown? Or
      some conflicts mark are shown on the dialog?)
    - Need the new ppd keyword for grouping items
       (Grouping keyword for each ppd options including vendor options)

<LF OpenPrinting Meeting in Tokyo>
- TLF-Japan suggested to have a TFL OpenPrinting f2f meeting Tokyo
   in 11th of Mar. if we have some agenda.
   - For instance, if the Common Printing Dialog Hacker's meeting in
      Europe will be held before the Tokyo meeting, and if we can see
      the prototype dialog working on PC, it can be a good agenda.
   - All vendors should bring other meeting agenda at the next Japan meeting.

<Compatibility Test>
- We read all the document Glen posted at the meeting, and confirmed
   that we agree on the basic concept of the document.

<pdftoraster and texttopdf>
- Currently we do not have any development resources for these filters.
   Under arranging, but will inform the result of it around Apr.

Next meeting
  7th of Feb. 2008

