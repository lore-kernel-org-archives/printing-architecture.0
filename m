Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=to:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=fa3JKUaHZ5WDPgFvXh99c+RurBjhxIWQ+XaWwOMW60g=;
 b=S2EGz3nrKUqr1MOCehE6GBebZsls4n5WuUoPFh0qMrD32I2fbzQQl432F8Cv6M0WBo
 /7ChuBkLqwlAc3Fpr39KmkmRb459N7Nc9XmhyAJXypKqWa6CFYorX8VFOObI5z+VS9zc
 D9Lcz8HjTIHIva5iS1rNrpjhuHCcxJInDtl1CWXcw8p4Ln4l/7SpazqJNlfPww12SWpb
 sYnzqOdy+swoxXwysy/0XOCX/EYZx9wzE3eP57jwZoMap8bP4YTvT2XfP7rLv9tpSRhX
 NR38RXrnFPtbdO5rbBMeWX2QGDfJ0baDF/p9uorQZVwgjUy9utkmDVhSdXZTxNlRq0XW
 ngLQ==
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <9a274d55-ba96-b9d5-7580-d13766d8ac2f@gmail.com>
Date: Tue, 21 Sep 2021 18:47:43 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Linux Plumbers 2021: OpenPrinting
	Micro-Conference - The Recording
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Open Printing <printing-architecture@lists.linux-foundation.org>

Hi,

here is the recording of the micro-conference on YouTube:

https://www.youtube.com/watch?v=5KogjLb1Hb4

I have also updated my News Post:

https://openprinting.github.io/OpenPrinting-News-September-2021/

Notes taken by Zdenek Dohnal (thanks a lot!) below.

    Till


----------

Linux Plumber Conference 2021 - Open Printing Micro Conference
==============================================================
- new member of Open Printing group - Thorsten Alteholz - Debian CUPS 
maintainer - welcome to the team! :)
- our goal is to make printing and scanning easier for users - no 
installtion, just plug-and-print

----------------------------
CUPS 2.4/2.5 - Michael Sweet
----------------------------
- Apple vs. Open Printing CUPS
   - Mike left Apple in 2019 and not much activity on Apple CUPS since 
then, so CUPS was
     forked into Open Printing and became the main repository for CUPS
   - Mike was contracted by Apple to fix issues in Mac OS CUPS - no 
development, only bug fixes
   - the real development in Open Printing CUPS
- Organization in Open Printing CUPS
   - currently we have no leadership structure and we manager the 
project by consensus
- Leadership and Roles
   - Mike has been CUPS devel for 23 years
   - proposal: choose a release manager for single release - minor 
release cycle lasts two years
     (one developement and one for maintenance)
- Release Manager Role:
   - responsible for coordination of a feature release (milestone in 
GitHub),
     coordination/coaching of developers in PR, monitoring CI builds,
     creation release tarballs (make source-dist script)
   - release manager doesn't need to do all coding
   - where to file bugs? Log it into Open Printing CUPS first, then to 
Apple CUPS if it is affected
     (Apple printing team is currently divided to other projects, but 
Mike can escalate the issue to his
      former manager)
   - Zdenek Dohnal will do his best for CUPS 2.4 as a release manager :)
   - security response regarding CUPS now goes to Mike's mail - Aveek 
will try to set it for linuxfoundation email

- CUPS 2.4
   - official AirPrint/Mopria printer sharing support
   - added OAuth support
   - explicit container support
   - added pkg-config support
   - deprecates cups-config and Kerberos (will be removed in 3.0, 
replaced by OAuth)
   - beta in the end of September, rc in October, 2.4.0. November, patch 
releases every 2 months since January

- CUPS 2.5
   - OAuth support in cupsd
   - OAuth callback for desktop - D-BUS API - good for containers to do 
it with DBUS-API
   - TLS/X.509 improvements
   - centralized localization - OSes usually have their own localization 
services, let's decide what to
     do about it
   - other containers techs - docker, appimage, flatpack
   - note for zdohnal: contact a person for weblate integration
   - schedule - the similar as 2.4 but in 2022

- probably the last two release for 2.x - no backports for 2.5, get 
desktop devels for Dbus OAuth stuff

------------------------
CUPS 3.0 - Michael Sweet
------------------------
- move to no driver world - cups + printer application
- Arch:
   - command
   - local server - run as user, only temp queues, spooling, filtering, 
job history limited, run on demand
     domain sockets, DBUS
   - sharing server - only perm queues, IPP domain/TCP sockets, web ui, 
runs a root, accounting
   - printer application
   - library
- local server - has a permission for finding printers, handles AAA, 
converting of files, no web interfaces,
   profiles (getting queues from server into dialog), doing stuff via 
DBUS, for people which don't want MDNS
   can use profiles or sharint server, or LDAP
- sharing server - handles all communication with printers, web 
interface, OAuth token introspection, ACLs,
   implementation of IPP Shared Infrastructure
- maybe combine CUPS D-BUS API with CPDB CUPS?
- breaking up CUPS into smaller stuff - library, CLI, local server, 
sharing server? Till agrees, Zdenek tentatively
   agrees
- library cleanup - dump obsolete functions - cupsGetClasses(), 
cupsGetPrinters(), httpMD5Password(), PPD API - which
   we kept for binary compatibility - we need to bump
   - get a list of functions which will be removed and do queries around 
the distros to upgrade to new ones - migration
   guide with examples
- challenges for 3.0
   - more release managers, desktop support - make use of d-BUS API, 
improvement of test suite
   - graphic libraries - problematic licenses or other stuff - mupdf (no 
stable API), xpdf/poppler (GPL2 but
     we can run binaries, but has other deps), pdfio (no rasterization), 
pdfium (BSD license but needs chromium build
     system)
     - Till will file RFEs for pdfio, maybe it can be a replacement for 
qpdf in cups-filters
- proposed schedule - March 2023 beta, October 2023 full release, 
development together with 2.5


--------------------------------------
Print Management GUI - Till Kamppeter
--------------------------------------
- current printer setup tools - web ui, CLI command tools, 
system-config-printer, cups-browsed, control-center
   - all those tools sends requests to CUPS - list printers, add/modify 
queues etc.
- new arch - CUPS snap or CUPS 3.x
   - all driverless queues - native or printer app
   - admin actions moves to IPP printers - set everything in printer web 
ui, or in web ui of printer application
- new tasks in printer setup tools:
   - list IPP services, open web interface of printer etc.
   - discover non-driverless printers - find via classic backends, match 
device-id to snap or openprinting database
- printer apps for postscript, ghostscript and hplip have systemd units 
so it can start at OS startup and remembers IPP
   services from before
- comparison with old x new
              old                                 new

main window | queues with modify buttons        |  IPP devices
----------------------------------------------------------------
add printer | list devices and drivers -> queue |  list only 
non-driverless printers -> install printer app, open
             |                                   |  its web ui
-----------------------------------------------------------------

- in addition there can be scanners and IPP Fax out - other IPP services
- rename module in control-center to 'Printers and scanners'

What we have?
------------
- GSOC 2021 - GUI for listing and managing IPP print/scan services - gtk 
based control module for replacing printing
- GSOC 2020 - Linux GUI app for admin MF devices using IPP system 
services, GTk based for adding into GNOME

What we need?
------------
- tool for guiding users for non-driverless printers - finding printer 
apps locally or then in snap store, easy setup
- printer apps will not do autosetup on startup
- integrate with desktop GNOME

---------------------------------------------
Common Print Dialog Backends - Till Kamppeter
---------------------------------------------
- the core problem - every toolkit has its own print dialog which 
sometimes lags behind the current printing developement
- so common print dialog backends came - dialog is still from toolkit, 
but it speaks with backend via DBUS
- backends are maintained by maintainer of print technology
- dialog discovers backends via dbus
- arch:
   - application starts up common dialog, the dialog talks with 
frontend, frontend talks via dbus to backends (backend+
   library)
- projects - cpdb-libs, cpdb-backend-cups...
- GUI problems - GTK switched to new API this year, Qt not yet
- we will try to connect with GTK maintainers to reinitiate integration 
of cpdb into GNOME

-----------------------------------------------------------
Printer/Scanner Driver Design and Development - Till Kamppeter
------------------------------------------------------------
- old drivers contain backends/filters and PPDs
- each driver needed to be packaged, built and tested one by one :(
- old drivers cannot be installed in specific dirs with CUPS in 
SNAP/Flatpack and other container solutions
- new ways:
   - containerized packaging - snaps, flatpacks...
     - you cannot drop files into snap/flatpack, communicate only by IP, 
dbus, domain sockets
- and what to put into containers:
   - printer application - emulates non-driverless devices as IPP 
device, or provides more detailed options for
     device
   - CUPS
   - IPP Scan/eSCL for scanning
- how to create such a printer application?
   - use pappl - library for printer apps common functions - daemon, web 
ui, IPP server emulator, job handling
     answering IPP requests, discovering devices
   - and cups-filters-2.x - uses filter functions (migrated classic 
filters), libppd (for retrofitting of old printers)
   - pappl-retrofit - common functions for retrofitting printer apps for 
encapsulating classic CUPS drivers - chooses
     PPD by make&model, driver, PDL; can list ppds
   - snapcraft - for creating snap itself

Guidelines
----------
- PPD retrofit only for old devices!

--------------------------------
Scanning in PAPPL - Bhavna Kosta
--------------------------------
- discovery of scanner via DNS-SD - type 'scan'
- you can get IPP attributes for scanner by GET-PRINTER-ATTRIBUTES on 
scanner URI (IPP scan) or via special command
   for eSCL
- Scan Job goes via SANE backend under scanner application
- process - Create-Job from client, scanner replies with job-id, client 
sends Get-Next-Document-Data and scanner returns
   data
