Message-ID: <CFEE79A465B35C4385389BA5866BEDF00C7871@mailsrvnt02.enet.sharplabs.com>
From: "McDonald, Ira" <imcdonald@sharplabs.com>
Date: Thu, 2 Sep 2004 08:22:41 -0700 
MIME-Version: 1.0
Content-Type: text/plain;
	charset="iso-8859-1"
Subject: [Printing-architecture] FW: PWG-ANNOUNCE> Open source ipr tools for
	IPP
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

Hi folks,

The note below describes command-line tools for IPP, with
downloadable binaries for Linux and Windows.

Cheers,
- Ira

Ira McDonald (Musician / Software Architect)
Blue Roof Music / High North Inc
PO Box 221  Grand Marais, MI  49839
phone: +1-906-494-2434
email: imcdonald@sharplabs.com

-----Original Message-----
From: owner-pwg-announce@pwg.org [mailto:owner-pwg-announce@pwg.org]On
Behalf Of Peter Michalek
Sent: Thursday, September 02, 2004 9:34 AM
To: pwg-announce@pwg.org
Subject: PWG-ANNOUNCE> Open source ipr tools for IPP


ipr provides a series of client programs that enable the user to do
printing compliant with the Internet Printing Protocol (IPP), directly
to an IPP printer.

ipr,ipq,iprm,ipc follow the approach of unix lpr set of commands, but
deal only with  IPP protocol.

When performing and automating print tasks on unix and windows and using
command line more often than the GUI, I kept using it instead of more
heavyweight facilities: since most new printers support IPP, it's
sometimes more efficient to talk to them directly from the command
prompt, e.g.:

ipr -P http://printerserver/printers/printer document.ps
prints the document,

ipq -P http://printerserver/printers/printer
shows all pending jobs.

This program is being rolled out as open source.
It's based on CUPS ipp library and an article I wrote together
with Michael Sweet back in 1998.
ipr is implemented in c/c++ and can be used for light-weight internet
printing from linux or windows.
The footprint is < 200K.

ipr was originally available from my company Shinesoft Systems
as part of ShinePrint suite, but only in binary form. This release
is based on that tool, but slightly different.

A description of the concept is available in the article:

Implementing an IPP client and server for Linux
Peter Michalek, Michael Sweet
Pages: 164 - 171
at http://www.acm.org


You can currently download source and binary for Windows and Linux from:

http://www.michalek.org/ipr/

I opened a project request on sourceforge.net where I'd like to move it
soon.

Note: also related to IPP is the application security project I am
developing at:
http://www.michalek.org/appsec
(see CUPS scheduler scan).


Peter






