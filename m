Return-Path: <till.kamppeter@gmail.com>
Message-ID: <45B11475.4080704@gmail.com>
Date: Fri, 19 Jan 2007 18:56:53 +0000
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] FHS extension and CUPS
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: Dan Kohn <dan@dankohn.com>, 'Ian Murdock' <imurdock@imurdock.com>
Cc: printing-architecture@lists.freestandards.org, lsb-discuss <lsb-discuss@lists.freestandards.org>

Hi,

I have posted a feature request for CUPS being adapted to the new FHS 
extension 
(http://lists.freestandards.org/pipermail/printing-architecture/2006/001512.html) 
for printing:

http://www.cups.org/str.php?L2202

Mike has answered that he will implement this in CUPS 1.3.

The problems are

- Of CUPS 1.3 there is not even an alpha version, will it go final
   before the LSB 3.2 deadline?

- Novell and Red Hat want to put out an update to fulfill the FHS
   extensions. Is it not perhaps a too high impact for an enterprise
   distro to replace CUPS 1.2 (x >> 0) by CUPS 1.3, especially 1.3.0?

Or should we better recommend to the distros to simply do

ln -s /usr/share/ppd /usr/share/cups/model/usrshareppd
ln -s /opt/share/ppd /usr/share/cups/model/optshareppd
ln -s /usr/local/share/ppd /usr/share/cups/model/usrlocalshareppd

in their CUPS package for now? This makes CUPS searching for the PPDs in 
the right places.

    Till

