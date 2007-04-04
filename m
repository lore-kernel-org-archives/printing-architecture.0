Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed; d=gmail.com; s=beta;
	h=domainkey-signature:received:received:message-id:date:from:user-agent:mime-version:to:subject:content-type:content-transfer-encoding;
	b=ODl3lj0yOmew2fdo67i19Pipy+v7cJt00WcjrptE/4L1wJyE8em41hFjo9M1WVsWPsno4LK2oYK5YImQtiloXiq9dSl8jpwGQSbpavIT0XK4V9nv/lZ7D49Z+03a440VdSklKgIevgQEfFTOc+eRiehsqxiJurdHyk/PF2xeDuA=
Message-ID: <4613809E.3010205@gmail.com>
Date: Wed, 04 Apr 2007 11:40:30 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Status of distribution-independent driver
	packages/LSB DDK
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

here is an update on the distribution-independent driver packages and 
the LSB DDK.

As I probably already reported on earlier telecons the API for querying 
driver packages and related driver info is up and running:

http://www.linux-foundation.org/en/OpenPrinting/Database/Query

To be able to create and test distribution-independent driver packages 
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

In addition, a little change is needed in the printing requirements of 
the LSB 3.2:

Distribution maintainers (Red Hat, Ubuntu) complained about that the 
CUPS package requires directories in and links into /opt and /usr/local. 
Therefore I decided to let all distribution-independent driver packages 
work as follows:

- Install all files into /opt/<supplier> according to FHS requirements 
for applications.

- Let the PPD directory of the driver package get symlinked into 
/usr/share/ppd by the packages maintainer scripts

- Let the maintainer script also do additional tasks like symlinking 
CUPS backends into the appropriate directories and add directories with 
printer maintenance tools (ink levels, nozzle cleaning, ...) to the path.

The directory requirements for LSB 3.2 reduce then to have

/usr/share/ppd/<supplier>

as PPD search directory.

Example for a distribution-independent driver package:

http://openprinting.org/show_driver.cgi?driver=gutenprint

Examples for the awkward maintainer scripts:

http://www.linuxprinting.org/download/printdriver/SPECS/cups.spec
http://www.linuxprinting.org/download/printdriver/SPECS/ghostscript.spec
http://www.linuxprinting.org/download/printdriver/SPECS/gutenprint.spec

    Till

