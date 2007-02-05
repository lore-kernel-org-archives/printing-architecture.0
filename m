Return-Path: <till.kamppeter@gmail.com>
Message-ID: <45C7C416.4010106@gmail.com>
Date: Mon, 05 Feb 2007 23:56:06 +0000
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Distribution-independent printer driver
	package
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
Cc: lsb-discuss <lsb-discuss@lists.freestandards.org>

Hi,

I have made the first two distribution independent driver packages (x86 
32-bit only).

They are at the new download place

http://www.openprinting.org/download/printdriver/

The drivers are in the RPMS/ subdirectory.

Please test them on all current distros (Novell/SuSE, Red Hat/Fedora, 
Mandriva, Ubuntu, Debian, ...).

Proceed as follows:

1. Make your not too old distro LSB-3.1 compliant by installing the 
"lsb" package.

2. Add the LSB 3.2 requirements for printing by installing CUPS, 
foomatic-filters, ESP GhostScript, and add some directories and links:

   o On Ubuntu Feisty, install the latest cupsys package
   o On any other Ubuntu or Debian do

       mkdir -p /opt/share/ppd
       mkdir -p /usr/local/share/ppd
       ln -s /usr/local/share/ppd /usr/share/ppd/1-local-admin
       ln -s /opt/share/ppd /usr/share/ppd/2-third-party

   o On any other distribution do

       mkdir -p /usr/share/ppd
       mkdir -p /opt/share/ppd
       mkdir -p /usr/local/share/ppd
       ln -s /usr/local/share/ppd /usr/share/cups/model/1-local-admin
       ln -s /opt/share/ppd /usr/share/cups/model/2-third-party
       ln -s /usr/share/ppd /usr/share/cups/model/3-distribution

     or install fhs-printingdirs which you find at the same place as
     where the driver packages are.

3. If you have a non-RPM-based distribution, convert the driver 
package(s) with alien.

4. Install the driver package(s).

5. Set up a print queue with your distribution's printer setup tool.

6. If you do not have the actual printer to print with the currently 
available driver packages, do a "dry test". Add a line "FileDevice Yes" 
to the /etc/cups/cupsd.conf file, restart CUPS, and then set up the 
print queue with the URI "file:/tmp/printout".

7. Watch out for more driver packages at the given place in the next days.

A HOWTO for making such packages will come later.

    Till

