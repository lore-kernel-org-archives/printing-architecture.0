Return-Path: <george.liu@ussj.ricoh.com>
Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Date: Wed, 4 Apr 2007 11:50:59 -0700
Message-ID: <8B8709E6C8B8784583FA9C7C013CB4513A9794@etd1.etd.ussj.ricoh.com>
From: "George Liu" <george.liu@ussj.ricoh.com>
Subject: [Printing-architecture] Problem related to automatic driver download
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>, printing-architecture@lists.freestandards.org

While downloading a PPD file or a driver package from openprinting.org,
user can see the requirement or instructions from printer/driver
information page.=20

It will introduce confusion if a downloaded PPD/driver does not work on
user's Linux box.

Scenario 1:=20
Printer has Postscript as option. CUPS downloaded Postscript drivers
automatically without informing user Postscript option needs to be
installed on the printer.=20


Scenario 2:
User installed CUPS 1.3 (which supports auto PPD/driver download) on Red
Hat Enterprise Server 4. CUPS downloaded an GS-opvp driver, but GS/opvp
is not supported on the Linux box.=20


Here's my suggestions on how these problems can be addressed:

1. Make a PPD extension "*DriverInformation: ". It can state either
"Recommended" or whatever deems fit. E.g.
*DriverInformation: "Recommended"
*DriverInformation: "Printer needs to have Postscript Option Installed"
Printer setup utility or CUPS web UI need to display it to user.
=20

2. Make another PPD extension and list all the required components. E.g.
*DriverDependencies: foomatic-rip	3.43
*DriverDependencies: gs       8.15   =20
*DriverDependencies: LSB	3.1
Distribution can use which command/or whatever they chose to determine
whether the required components exist.

WDYT?


-----Original Message-----
From: printing-architecture-bounces@lists.freestandards.org
[mailto:printing-architecture-bounces@lists.freestandards.org] On Behalf
Of Till Kamppeter
Sent: Wednesday, April 04, 2007 3:41 AM
To: printing-architecture@lists.freestandards.org
Subject: [Printing-architecture] Status of distribution-independent
driverpackages/LSB DDK

Hi,

here is an update on the distribution-independent driver packages and=20
the LSB DDK.

As I probably already reported on earlier telecons the API for querying=20
driver packages and related driver info is up and running:

http://www.linux-foundation.org/en/OpenPrinting/Database/Query

To be able to create and test distribution-independent driver packages=20
the LSB DDK is needed. It consists of the following components:

- LSB Build Environment (supplied by LSB, for current work version 3.1.1
   is used)
- CUPS (created a distribution-independent CUPS 1.2.10 package, which
   installs in LSB Build Environment - DONE)
- GhostScript (created a distribution-independent ESP GhostScript 8.15.4
   package, which installs in LSB Build Environment - DONE)
- foomatic-filters (TO DO)
- RPM macro set for maintainer scripts. Due to several missing
   facilities in the LSB which are needed to easily implement system
   tool/component packages the maintainer scripts (pre/post (un)install
   scripts) get very awkward. To make it easy for driver authors and
   printer manufacturers to supply correct maintainer scripts in their
   packages I plan to create appropriate RPM macros. I also reported on
   the lsb-discuss mailing list that system config features are missing
   in the LSB.

In addition, a little change is needed in the printing requirements of=20
the LSB 3.2:

Distribution maintainers (Red Hat, Ubuntu) complained about that the=20
CUPS package requires directories in and links into /opt and /usr/local.

Therefore I decided to let all distribution-independent driver packages=20
work as follows:

- Install all files into /opt/<supplier> according to FHS requirements=20
for applications.

- Let the PPD directory of the driver package get symlinked into=20
/usr/share/ppd by the packages maintainer scripts

- Let the maintainer script also do additional tasks like symlinking=20
CUPS backends into the appropriate directories and add directories with=20
printer maintenance tools (ink levels, nozzle cleaning, ...) to the
path.

The directory requirements for LSB 3.2 reduce then to have

/usr/share/ppd/<supplier>

as PPD search directory.

Example for a distribution-independent driver package:

http://openprinting.org/show_driver.cgi?driver=3Dgutenprint

Examples for the awkward maintainer scripts:

http://www.linuxprinting.org/download/printdriver/SPECS/cups.spec
http://www.linuxprinting.org/download/printdriver/SPECS/ghostscript.spec
http://www.linuxprinting.org/download/printdriver/SPECS/gutenprint.spec

    Till

_______________________________________________
Printing-architecture mailing list
Printing-architecture@lists.freestandards.org
http://lists.freestandards.org/mailman/listinfo/printing-architecture


