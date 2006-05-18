Return-Path: <till.kamppeter@gmx.net>
Message-ID: <446CB64A.9090600@gmx.net>
Date: Thu, 18 May 2006 20:00:42 +0200
From: Till Kamppeter <till.kamppeter@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] PAPI is part of Mandriva Linux now!
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: "desktop_printing@osdl.org" <desktop_printing@osdl.org>, printing-architecture <printing-architecture@freestandards.org>, Tim Waugh <twaugh@redhat.com>, Martin Pitt <martin.pitt@ubuntu.com>, Johannes Meixner <jsmeix@suse.de>, Henrique de Moraes Holschuh <hmh@debian.org>, Klaus Singvogel <kssingvo@suse.de>, "Bastian, Waldo" <waldo.bastian@intel.com>

Oi,

today I have finished a first RPM package of PAPI and have already blown
it into Mandriva's Cooker:

http://archives.mandrivalinux.com/changelog/2006-05/msg01953.php

So our Cooker is now PAPI-compliant. The RPM is split up into several
binary RPMs. To make the installed Cooker PAPI compliant for users it is
enough to install the libpapi0 and papi-psm packages and to develop
applications accessing the printing infrastructure via PAPI, one has to
install the libpapi0-devel package in addition. The papi-doc package
contains the PAPI specs and additional documentation.

Overview of binary packages:

libpapi0:       The dynamic library which provides the PAPI
libpapi0-devel: The header files for and static libraries for libpapi
papi-psm:       The plug-ins to interface libpapi with CUPS/IPP and LPD
papi-doc:       PAPI specs (PDF), docs for this implementation, source
                code of the sample tools in papi-utils
papi-utils:     Some sample tools using PAPI. Try out PAPI with them and
                study there source code in papi-doc
papi-commands:  BSD and SystemV standard printing commands using PAPI,
                with complete set of man pages. You can switch between
                these commands and the commands supplied by CUPS using
                the "update-alternatives" command. The man pages are
                switched simultaneously.
ruby-papi:      Ruby bindings to allow writing Ruby programs with
                printing functionality.

The source code for these RPMs is the subversion snapshot rev 164 from
http://openprinting.sourceforge.net/. I did not succeed to compile the
(well older) beta1 release on Madriva. Of the current snapshot I
succeeded to build everything except the Apache IPP Module (which does
also not make much sense on a CUPS-eequipped Linux distribution.

I want to ask all of you who work for a Linux distribution (or a Unix in
general) to also package PAPI for your distribution and put it into the
repository which goes towards the next release of the distribution. To
make it easier for you to start, I give you all my RPM packages
including the source RPM for download on:

http://www.linuxprinting.org/till/tmp/openprinting/papi/

When we all have PAPI in our upcoming products we have much better
chances to get PAPI into LSB 3.2. So it is important to act quickly as
the LSB 3.2 meeting is in the beginning of June (Waldo, you will go there?).

   Till

