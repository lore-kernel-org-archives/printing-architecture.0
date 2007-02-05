Return-Path: <till.kamppeter@gmail.com>
Message-ID: <45C74982.5080009@gmail.com>
Date: Mon, 05 Feb 2007 15:13:06 +0000
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Distribution-independent printer driver
	package -- first shot
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: lsb-discuss <lsb-discuss@lists.freestandards.org>
Cc: printing-architecture@lists.freestandards.org

Hi,

here is my first try to build a distribution-independent printer driver
package:

http://www.linux-foundation.org/~till/tmp/splix-1.0.1-0.beta2.1lsb3.1.i486.rpm
http://www.linux-foundation.org/~till/tmp/splix-1.0.1-0.beta2.1lsb3.1.src.rpm
http://www.linux-foundation.org/~till/tmp/splix.spec

It installs and works on both Ubuntu Feisty and Fedora Core 6 (these two
I have tested, it should work on any modern distro fulfilling LSB 3.1).

Except the new directories for PPDs and printer drivers every modern 
distribution should already have everything needed. Proceed as follows 
for testing:

- On any Ubuntu or Debian "alien splix-1.0.1-0.beta2.1lsb3.1.i486.rpm"
- The "lsb" package, at least version 3.1 must be installed.
- The CUPS and ESP GhostScript packages of the your distro need to be
   installed (for other drivers also foomatic-filters will be needed).
- To get the new directory structure for printer drivers and PPDs as
   agreed on for LSB 3.2 on Ubuntu Feisty update the cupsys package to
   the newest version, on any other Ubuntu or Debian do

      mkdir -p /opt/share/ppd
      mkdir -p /usr/local/share/ppd
      ln -s /usr/local/share/ppd /usr/share/ppd/1-local-admin
      ln -s /opt/share/ppd /usr/share/ppd/2-third-party

   and on any other distribution do

      mkdir -p /usr/share/ppd (not needed in Ubuntu)
      mkdir -p /opt/share/ppd
      mkdir -p /usr/local/share/ppd
      ln -s /usr/local/share/ppd /usr/share/cups/model/1-local-admin
      ln -s /opt/share/ppd /usr/share/cups/model/2-third-party
      ln -s /usr/share/ppd /usr/share/cups/model/3-distribution
- Install the driver package
- Set up a print queue with cUPS.

I have built the package in the LSB Build Environment chroot. The filter
binary passes the lsbappchk test, but the package gives following output 
on lsbpkgchk:

-------------------------------------------------------------------------
till@lsbbuild:~/rpm/SPECS$ /opt/lsb/bin/lsbpkgchk 
../RPMS/i486/splix-1.0.1-0.beta2.1lsb3.1.i486.rpm
checkRpmIdxHEADERSIGNATURES() Not yet checking contents
checkRpmIdxHEADERSIGNATURES() offset ffffffb0
checkRpmIdxHEADERSIGNATURES() data at b7d6e0b4
checkRpmIdxSHA1() Not yet checking SHA1 contents
SIGTAG_MD5 calculated value doesn't match expected value
checkRpmIdxHEADERIMMUTABLE() Not yet checking contents
Post-install program not checked
Post-uninstall program not checked
checkRpmIdxPROVIDENAME() type=8 offset=1428 count=1 splix
Error: Didn't see expected dependency lsb=3.1
Provide Flag not checked: 8
Optflags not checked: -O2 -g -march=i486
Error: checkRpmIdx() unexpected Index tag=1140 type=4 offset=2114 count=46
Error: checkRpmIdx() unexpected Index tag=1141 type=4 offset=222c count=46
Error: checkRpmIdx() unexpected Index tag=1142 type=8 offset=2344 count=5
Error: checkRpmIdx() unexpected Index tag=1143 type=4 offset=2404 count=46
Error: checkRpmIdx() unexpected Index tag=1144 type=4 offset=251c count=46
Error: checkRpmIdx() unexpected Index tag=1146 type=7 offset=2634 count=10
Error: checkRpmIdx() unexpected Index tag=1177 type=4 offset=2644 count=46
Warning: checkRpmIdx() Deprecated Index RPMTAG_RHNPLATFORM found
checkRpmArchiveFilename: file opt/SpliX not FHS compliant
checkRpmArchiveFilename: file opt/SpliX/bin not FHS compliant
checkRpmArchiveFilename: file opt/SpliX/bin/rastertospl2 not FHS compliant
checkRpmArchiveFilename: file opt/SpliX/doc not FHS compliant
checkRpmArchiveFilename: file opt/SpliX/doc/AUTHORS not FHS compliant
checkRpmArchiveFilename: file opt/SpliX/doc/COPYING not FHS compliant
checkRpmArchiveFilename: file opt/SpliX/doc/ChangeLog not FHS compliant
checkRpmArchiveFilename: file opt/SpliX/doc/INSTALL not FHS compliant
checkRpmArchiveFilename: file opt/SpliX/doc/README not FHS compliant
checkRpmArchiveFilename: file opt/SpliX/doc/TODO not FHS compliant
checkRpmArchiveFilename: file opt/lib/printdriver/SpliX not FHS compliant
checkRpmArchiveFilename: file opt/lib/printdriver/SpliX/rastertospl2 not 
FHS compliant
checkRpmArchiveFilename: file opt/share/ppd/SpliX not FHS compliant
checkRpmArchiveFilename: file opt/share/ppd/SpliX/Samsung not FHS compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-CLP-300-SpliX-de.ppd.gz not FHS 
compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-CLP-300-SpliX-en.ppd.gz not FHS 
compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-CLP-300-SpliX-fr.ppd.gz not FHS 
compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-CLP-300-SpliX-it.ppd.gz not FHS 
compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-CLP-500-SpliX-de.ppd.gz not FHS 
compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-CLP-500-SpliX-en.ppd.gz not FHS 
compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-CLP-500-SpliX-fr.ppd.gz not FHS 
compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-CLP-500-SpliX-it.ppd.gz not FHS 
compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-CLP-510-SpliX-de.ppd.gz not FHS 
compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-CLP-510-SpliX-en.ppd.gz not FHS 
compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-CLP-510-SpliX-fr.ppd.gz not FHS 
compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-CLP-510-SpliX-it.ppd.gz not FHS 
compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-CLP-600-SpliX-de.ppd.gz not FHS 
compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-CLP-600-SpliX-en.ppd.gz not FHS 
compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-CLP-600-SpliX-fr.ppd.gz not FHS 
compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-CLP-600-SpliX-it.ppd.gz not FHS 
compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-ML-1510-SpliX-de.ppd.gz not FHS 
compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-ML-1510-SpliX-en.ppd.gz not FHS 
compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-ML-1510-SpliX-fr.ppd.gz not FHS 
compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-ML-1510-SpliX-it.ppd.gz not FHS 
compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-ML-1520-SpliX-de.ppd.gz not FHS 
compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-ML-1520-SpliX-en.ppd.gz not FHS 
compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-ML-1520-SpliX-fr.ppd.gz not FHS 
compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-ML-1520-SpliX-it.ppd.gz not FHS 
compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-ML-1610-SpliX-de.ppd.gz not FHS 
compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-ML-1610-SpliX-en.ppd.gz not FHS 
compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-ML-1610-SpliX-fr.ppd.gz not FHS 
compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-ML-1610-SpliX-it.ppd.gz not FHS 
compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-ML-1710-SpliX-de.ppd.gz not FHS 
compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-ML-1710-SpliX-en.ppd.gz not FHS 
compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-ML-1710-SpliX-fr.ppd.gz not FHS 
compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-ML-1710-SpliX-it.ppd.gz not FHS 
compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-ML-1740-SpliX-de.ppd.gz not FHS 
compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-ML-1740-SpliX-en.ppd.gz not FHS 
compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-ML-1740-SpliX-fr.ppd.gz not FHS 
compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-ML-1740-SpliX-it.ppd.gz not FHS 
compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-ML-1750-SpliX-de.ppd.gz not FHS 
compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-ML-1750-SpliX-en.ppd.gz not FHS 
compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-ML-1750-SpliX-fr.ppd.gz not FHS 
compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-ML-1750-SpliX-it.ppd.gz not FHS 
compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-ML-2010-SpliX-de.ppd.gz not FHS 
compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-ML-2010-SpliX-en.ppd.gz not FHS 
compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-ML-2010-SpliX-fr.ppd.gz not FHS 
compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-ML-2010-SpliX-it.ppd.gz not FHS 
compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-ML-2150-SpliX-de.ppd.gz not FHS 
compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-ML-2150-SpliX-en.ppd.gz not FHS 
compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-ML-2150-SpliX-fr.ppd.gz not FHS 
compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-ML-2150-SpliX-it.ppd.gz not FHS 
compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-ML-2250-SpliX-de.ppd.gz not FHS 
compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-ML-2250-SpliX-en.ppd.gz not FHS 
compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-ML-2250-SpliX-fr.ppd.gz not FHS 
compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-ML-2250-SpliX-it.ppd.gz not FHS 
compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-ML-2550-SpliX-de.ppd.gz not FHS 
compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-ML-2550-SpliX-en.ppd.gz not FHS 
compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-ML-2550-SpliX-fr.ppd.gz not FHS 
compliant
checkRpmArchiveFilename: file 
opt/share/ppd/SpliX/Samsung/Samsung-ML-2550-SpliX-it.ppd.gz not FHS 
compliant
till@lsbbuild:~/rpm/SPECS$
-------------------------------------------------------------------------

Most of his output is caused by the fact that LSB 3.1 does not provide 
the new directories, but any help on getting rid of the other ones would 
be great.

    Till


