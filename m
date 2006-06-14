Return-Path: <till.kamppeter@gmx.net>
Message-ID: <449029BF.3000909@gmx.net>
Date: Wed, 14 Jun 2006 17:22:39 +0200
From: Till Kamppeter <till.kamppeter@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Printing on the LSB Summit 2006 in Boston
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: "desktop_printing@osdl.org" <desktop_printing@osdl.org>, printing-architecture <printing-architecture@freestandards.org>

Oi,

as talked about in the OpenPrinting steering committee meeting I am
posting here some info about the printing part of the LSB Summit 2006 in
Boston.

My slides (and pictures) you can find here:

http://freestandards.org/en/LSB_Summit
http://www.freestandards.org/~till/events/lsb2006/

- Only OpenPrinting part which can enter in LSB 3.2 is OpenPrinting
  vector, as the appropriate interface is part of ESP GhostScript 8.15.1
  or later and this ships with all major distros (Red Hat/Fedora, SuSE,
  Mandriva, Ubuntu, Debian). Official release of the Vector API is
  prepared during this month.

- PCM and SM are independent of the OpenPrinting vector driver and they
  are not in the distros yet, so they can only make it into LSB 4.0.

- PAPI, JTAPI, ... are not in the distros yet, so they are only
  interesting for LSB 4.0, too. In the OpenPrinting Steering Committee
  we talked about how to get them into the distros. For PAPI we agreed
  on that it should be made part of the CUPS package, especially as Mike
  Sweet is one of the authors of PAPI. Therefore I have posted the
  following feature request for CUPS 1.3:

  http://www.cups.org/str.php?L1767

  But there is no reaction from Mike Sweet up to now.

- Standardized directories are also a candidate for the LSB 3.2. After
  the meeting there came up a thread in the CUPS general forum/mailing
  list that a user has a problem with SE-Linux-enforced Red Hat that his
  printer driver did not work. It was dropped in /usr/local, whereas
  SE-Linux accepts printer drivers only in standard CUPS directories ny
  default. With standard directories such problems should go away.

  For the PPD file tree it was decided to have sub-directories for the
  different UI languages, so that one can easily make language packages.
  The PPD file names itself should also contain language tags.

- The only possibility to provide a printing interface to applications
  (ISVs) in LSB 3.2 is the CUPS API, but it suffers the problem that
  only Linux has standardized on CUPS and many other Unixes (like BSD or
  Solaris) not. Now there is the Question whether LSB should be
  considered as LINUX Standards Base or Unix Standards Base.


   Till

