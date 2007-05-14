Return-Path: <toratani.yasumasa@canon.co.jp>
From: TORATANI Yasumasa <toratani.yasumasa@canon.co.jp>
Message-Id: <20070514190316.BAB5.TORATANI.YASUMASA@canon.co.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Japan side activities update 07/04
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
Date: Mon, 14 May 2007 10:34:09 -0000
To: OP SC <printing-sc@freestandards.org>

Hi

This is Toratani.
As I posted before, I have another internal meeting on 15th, I post the following
updates of the Japan side activities in stead of participating in the meeting.


OPVP spec

Revised OPVP 1.0 document RC2 has been posted at the following site.
ftp://ftp.pwg.org/pub/pwg/fsg/vector/pdapi-spec-1.0rc2-070511-1.odt
ftp://ftp.pwg.org/pub/pwg/fsg/vector/pdapi-spec-1.0rc2-070511-1.pdf
We have a schedule to have a f2f meeting to discuss several ambiguous/TBD
specs marked in the document.

We've already implemented the ghostscript "opvp" driver which conforms to
OPVP 1.0 RC2 spec, and finished the sample driver test made by FUJI XEROX
Printing Systems. The new "opvp" ghostscript driver also supports the former
OPVP 0.2 spec, so, the printer driver which conforms to OPVP 0.2 can also
work with it, but not yet testd. The former driver test will be done this month.


CUPS PDF filter implementation (Project funded by Japan Agency)

We realized that we need the confirmation about several points of PDF support
under CUPS. We'll summarize the points ASAP, and have plan to discuss it with
Michael Sweet this month.

-----------------------------------------
TORATANI Yasumasa
NPC Development Dept.23
Platform Technology Development HQs, CANON INC.

