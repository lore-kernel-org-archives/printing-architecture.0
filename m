Return-Path: <fsg-spam-admin@freestandards.org>
Message-ID: <4448095B.6050806@gmx.net>
Date: Fri, 21 Apr 2006 00:21:15 +0200
From: Till Kamppeter <till.kamppeter@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] My suggestions for Ira on the LSB meeting
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: "'McDonald, Ira'" <imcdonald@sharplabs.com>, printing-architecture <printing-architecture@freestandards.org>, "desktop_printing@osdl.org" <desktop_printing@osdl.org>

Oi,

Ira, as you asked for on the phone on Wednesday I give my suggestions here:

The best would be that a distro to be LSB-certified requires all FSG
OpenPrinting standards to be implemented and included: JTAPI, PAPI, PCM,
OpenPrinting vector, ... (and also a PDF-based printing workflow)

But as long as "apt-get install libjtapi-dev" tells me that the package
does not exist, I think we will not be able to make LSB requiring this.
So I urgently suggest to FSG OpenPrinting to apply as a mentor
organization on the Google Summer of Code 2006
(http://code.google.com/soc/, deadline May 1st, 17:00 pacific). This way
we can perhaps achieve our goal on a later LSB version.

For currently existing software I suggest the following requirements
(Ira, probably you will not like this, but somehow we have to start now):

- CUPS 1.2.0 or newer with

   o Either standard paths (/etc/cups, /usr/lib/cups, /usr/share/cups,
     ...)

        OR

     cups-config in the main CUPS package (not in -devel) for path
     auto-detection

   o Working web interface (no blocking like in Ubuntu, or Digest
     Authentification like in SuSE)

- Foomatic (current CVS of all sub-packages or newer) with

   o Standard paths (/usr/share/foomatic, /usr/bin, ...)

   o On-the-fly building of PPDs with CUPS 1.2 (I added this feature to
     the CVS yesterday)

- GhostScript (ex. current SVN rev of ESP GS or newer) with

   o Standard program and font paths

   o At least the ijs, cups, opvp, pswrite, and pdfwrite
     devices (opvp is OpenPrinting Vector, already available on
     Subversion of ESP GS)

- KDE with

   o CUPS support (compiled against libcups)

   o Patched/fixed to smoothly work with CUPS 1.2 in standard
     configuration

- GTK/GNOME with

   o newest libgtk/Cairo with the new printing support and CUPS-enabled
     dialog

- General

   o All KDE and GNOME applications and also OpenOffice.org have to
     feature a printing dialog which gives access to all printers and
     PPD options. Better even if Firefox and Thunderbird fulfill this,
     too.

WDYT?

   Till

