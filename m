Message-ID: <CFEE79A465B35C4385389BA5866BEDF00C784A@mailsrvnt02.enet.sharplabs.com>
From: "McDonald, Ira" <imcdonald@sharplabs.com>
Date: Tue, 24 Aug 2004 14:52:58 -0700
MIME-Version: 1.0
Content-Type: text/plain;
	charset="ISO-8859-1"
Subject: [Printing-architecture] FW: PWG> Posted Micro Job Ticket draft (24
	August 2004)
List-Id: Printing architecture under linux
	<printing-architecture.mail.freestandards.org>
List-Unsubscribe: <http://mail.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@mail.freestandards.org?subject=unsubscribe>
List-Archive: <http://mail.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@mail.freestandards.org>
List-Help: <mailto:printing-architecture-request@mail.freestandards.org?subject=help>
List-Subscribe: <http://mail.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@mail.freestandards.org?subject=subscribe>
To: printing-architecture@freestandards.org

-----Original Message-----
From: owner-pwg@pwg.org [mailto:owner-pwg@pwg.org]On Behalf Of McDonald,
Ira
Sent: Tuesday, August 24, 2004 5:50 PM
To: 'pwg@pwg.org'
Subject: PWG> Posted Micro Job Ticket draft (24 August 2004)


Hi folks,                                       Tuesday (24 August 2004)

[for comments from designers and implementors and for review at the next
PWG face-to-face in Lexington in October]

I have just posted a Micro Job Ticket draft:

    ftp://ftp.pwg.org/pub/pwg/BOFs/mjt/tb-mjt10-20040824.htm

Below are:  (a) abstract; (b) change log.

Cheers,
- Ira

Ira McDonald (Musician / Software Architect)
Blue Roof Music / High North Inc
PO Box 221  Grand Marais, MI  49839
phone: +1-906-494-2434
email: imcdonald@sharplabs.com

------------------------------------------------------------------------

Abstract:  This document defines the semantics and encoding for the
PWG Micro Job Ticket v1.0 (MJT/1.0).  A mobile device (e.g., digital
camera or cell phone) can transfer a standard MJT/1.0 job ticket via
removable media (e.g., memory card or DVD), direct connect (e.g., USB
or parallel), or network interface (e.g., IEEE 802.11 or Ethernet) to
a print service or a print device.

For industry coherence, this document imports the semantics (but not
the encoding) of the Job and Document objects and selected attributes
from the PWG Semantic Model [PWG5105.1].

In order to support low-cost mobile devices, this document defines a
compact string encoding (non-XML) for the MJT/1.0, using minimal
markup and numeric tokens in place of textual attribute names and
values.  This encoding also allows the inclusion of vendor extensions
as well as other attributes from the complete PWG Semantic Model.

------------------------------------------------------------------------

[changes from previous draft for CE BOF in May 2004]

(1) Minor editorial changes.

(2) Renamed document from 'Simple Job Ticket' to 'Micro Job Ticket',
    per suggestion of Harry Lewis (IBM).

(3) Changed structural markup delimiter from dot '.' to caret '^',
    per suggestion of Pete Zehler (Xerox) in Montreal 16 August 2004.

(4) Revised "JobMedia" attribute to correctly reference "media-size" and
    "media-type" attributes in PWG 5100.3 for normative definitions,
    per suggestion of Fumio Nagasaka (Epson).

------------------------------------------------------------------------

