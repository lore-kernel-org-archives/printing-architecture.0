Message-ID: <CFEE79A465B35C4385389BA5866BEDF00C774F@mailsrvnt02.enet.sharplabs.com>
From: "McDonald, Ira" <imcdonald@sharplabs.com>
Date: Fri, 25 Jun 2004 09:15:56 -0700
MIME-Version: 1.0
Content-Type: text/plain;
	charset="iso-8859-1"
Subject: [Printing-architecture] FW: PMP> RFCs/MIBs posted for Printer &
	Finisher MIBs
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
From: pmp-owner@pwg.org [mailto:pmp-owner@pwg.org]On Behalf Of McDonald,
Ira
Sent: Thursday, June 24, 2004 4:35 PM
To: 'pmp@pwg.org'
Subject: PMP> RFCs/MIBs posted for Printer & Finisher MIBs


Hi folks,                                        Thursday (24 June 2004)

Thanks to Ron Bergman for reminding me.

I've just posted both the source RFCs and the machine-extracted '.mib'
files for Printer MIB v2 and Finisher MIB on the PWG server in the
Printer MIB Project (pmp) directory:

ftp://ftp.pwg.org/pub/pwg/pmp/mibs/rfc3805.txt  - RFC - Printer MIB v2
ftp://ftp.pwg.org/pub/pwg/pmp/mibs/rfc3806.txt  - RFC - Finisher MIB
ftp://ftp.pwg.org/pub/pwg/pmp/mibs/rfc3808.txt  - RFC - IANA Charset MIB

ftp://ftp.pwg.org/pub/pwg/pmp/mibs/rfc3805a.mib - IANA Printer MIB
ftp://ftp.pwg.org/pub/pwg/pmp/mibs/rfc3805b.mib - Printer MIB v2
ftp://ftp.pwg.org/pub/pwg/pmp/mibs/rfc3806a.mib - IANA Finisher MIB
ftp://ftp.pwg.org/pub/pwg/pmp/mibs/rfc3806b.mib - Finisher MIB
ftp://ftp.pwg.org/pub/pwg/pmp/mibs/rfc3808.mib  - IANA Charset MIB

Cheers,
- Ira


Ira McDonald (Musician / Software Architect)
Blue Roof Music / High North Inc
PO Box 221  Grand Marais, MI  49839
phone: +1-906-494-2434
email: imcdonald@sharplabs.com
------------------------------------------------------------------------

[duplicate copies in Finisher MIB Project]

I also posted duplicate copies of the '.mib' files to the Finisher MIB
Project (fin) directory, to avoid confusion:

ftp://ftp.pwg.org/pub/pwg/fin/mibs/rfc3805a.mib - IANA Printer MIB
ftp://ftp.pwg.org/pub/pwg/fin/mibs/rfc3805b.mib - Printer MIB v2
ftp://ftp.pwg.org/pub/pwg/fin/mibs/rfc3806a.mib - IANA Finisher MIB
ftp://ftp.pwg.org/pub/pwg/fin/mibs/rfc3806b.mib - Finisher MIB
ftp://ftp.pwg.org/pub/pwg/fin/mibs/rfc3808.mib  - IANA Charset MIB

------------------------------------------------------------------------

[compile dependency info]


Finisher MIB (RFC3806b) imports:

(1) SMIv2 (RFC 2578)
(2) SMIv2 Conformance (RFC 2580)
(3) Host Resources MIB v2 (RFC 2790)
(4) IANA Printer MIB (old Type 2 textual conventions from RFC 1759)
(5) IANA Charset MIB (old CodedCharSet textual convention in RFC 1759)
(6) IANA Finisher MIB (old Type 2 textual conventions from drafts)


Printer MIB v2 (RFC3805b) imports:

(1) SMIv2 (RFC 2578)
(2) SMIv2 Textual Conventions (RFC 2579)
(3) SMIv2 Conformance (RFC 2580)
(4) Host Resources MIB v2 (RFC 2790)
(5) Interfaces Group MIB (RFC 2863) - instead of MIB-II (RFC 1213)
(6) IANA Printer MIB (old Type 2 textual conventions from RFC 1759)
(7) IANA Charset MIB (old CodedCharSet textual convention in RFC 1759)


Host Resources MIB v2 (RFC 2790) imports:

(1) SMIv2 (RFC 2578)
(2) SMIv2 Textual Conventions (RFC 2579)
(3) SMIv2 Conformance (RFC 2580)
(4) Interfaces Group MIB (RFC 2863) - instead of MIB-II (RFC 1213)


Interfaces Group MIB (RFC 2863) imports:

(1) SMIv2 (RFC 2578)
(2) SMIv2 Textual Conventions (RFC 2579)
(3) SMIv2 Conformance (RFC 2580)
(4) SNMP MIB (RFC 3418) - instead of MIB-II (RFC 1213)
(5) IANA Interface Type MIB


SNMP MIB (RFC 3418) imports:

(1) SMIv2 (RFC 2578)
(2) SMIv2 Textual Conventions (RFC 2579)
(3) SMIv2 Conformance (RFC 2580)

------------------------------------------------------------------------

