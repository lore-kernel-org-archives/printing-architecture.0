Return-Path: <blueroofmusic@gmail.com>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed; d=gmail.com; s=beta;
	h=domainkey-signature:received:received:message-id:date:from:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition;
	b=RUmun/eNPNBKVSK2BrSM1h3b7k12oh1l6XhGFeiIaudJSCfiXyx/+Mpyf25T3r3ortdpcm8yDwllvk2ssxJpE/eWDjozYkfkZQR2feSEGun6n2I3M5kMUakv8jCr4ng9Pf34ugMhkRoFKa39/o/+9+/uqK69cnYrsOfr+dYRY5M=
Message-ID: <e395be80705161348i2e16aeb2ma14eccab5f4396e8@mail.gmail.com>
Date: Wed, 16 May 2007 15:48:16 -0500
From: "Ira McDonald" <blueroofmusic@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Subject: [Printing-architecture] Transform API and MicroJobTicket proposals
	from PWG
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: printing-architecture@lists.freestandards.org

Hi,

Per my comments on the Open Printing Thin Thread (OP/TT)
for Linux Embedded Client Solutions during today's OP Arch
teleconference, here are pointers to two earlier proposals that
I wrote in 2004 for the IEEE-ISTO PWG:

(1) Transform API
ftp://ftp.pwg.org/pub/pwg/BOFs/tfm/tb-tfmstrawman-20040809.htm
- spec modelled on PWG PSI (PWG 5104.1-2005)
ftp://ftp.pwg.org/pub/pwg/BOFs/tfm/tfmslide-20040816.pdf
- slides about spec

(2) MicroJobTicket
ftp://ftp.pwg.org/pub/pwg/BOFs/mjt/tb-mjt10-20040824.htm
- spec with extremely compact encoding, including tokenized
  (i.e., numeric) keywords for efficient parsing and small set of
  simple datatypes

Specifically, the OP/TT implementation of the OP Job Ticket
API (JTAPI) could consume and generate MJT encoded job
tickets cheaply and with easy debugging.

Cheers,
- Ira

-- 
Ira McDonald (Musician / Software Architect)
Chair - Linux Foundation Open Printing WG
Blue Roof Music / High North Inc
PO Box 221  Grand Marais, MI  49839
phone: +1-906-494-2434
email: blueroofmusic@gmail.com

