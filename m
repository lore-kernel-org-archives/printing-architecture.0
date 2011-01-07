Message-ID: <4D265C61.2000703@gmail.com>
Date: Fri, 07 Jan 2011 01:20:49 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <F30723B8678F584CB6A4269E911255CB03396379@m1a.epkowa.co.jp>
	<4B8241D4.2040207@gmail.com>
	<F30723B8678F584CB6A4269E911255CB034CE4DE@m1a.epkowa.co.jp>
	<4B8E4CEF.8040007@gmail.com>
	<F30723B8678F584CB6A4269E911255CB035D7CF6@m1a.epkowa.co.jp>
	<4BBBA6A9.5050005@gmail.com>
	<F30723B8678F584CB6A4269E911255CB0392318F@m1a.epkowa.co.jp>
	<4BD18655.8060000@gmail.com>
	<F30723B8678F584CB6A4269E911255CB03BF5E5C@m1a.epkowa.co.jp>
	<4C091F92.7050102@gmail.com> <4C1284F4.3000707@gmail.com>
	<4C89CF0C.60003@avasys.jp> <4CE55A84.3070006@gmail.com>
	<F30723B8678F584CB6A4269E911255CB04A457B1@m1a.epkowa.co.jp>
In-Reply-To: <F30723B8678F584CB6A4269E911255CB04A457B1@m1a.epkowa.co.jp>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Ubuntu Natty the first distribution which
 does automatic download of binary printer driver packages
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Open Printing <printing-architecture@lists.linux-foundation.org>, Printing-japan <printing-japan@lists.linux-foundation.org>
Cc: Martin Pitt <martin.pitt@ubuntu.com>

Hi,

Ubuntu Natty (11.04, to be released end of April) will be the first 
Linux distribution which automatically downloads binary printer driver 
packages from manufacturers via OpenPrinting.

The still missing support for signed packages got added to the 
third-party hardware driver manager Jockey today. Martin Pitt, thank for 
your great work!

See also

https://blueprints.launchpad.net/ubuntu/+spec/packageselection-desktop-n-automatic-printer-driver-download-should-support-signed-packages

and

https://bugs.launchpad.net/bugs/604698

This means that on Ubuntu Natty (and newer) printers supported by the 
manufacturer-supplied driver packages available via OpenPrinting will 
work out-of-the-box by just plugging them in or setting them up with 
system-config-printer.

So if you are making Linux printer drivers for a printer manufacturer, 
do not hesitate to add or update driver packages to support your newest 
models to have always Plug'n'Print. See

https://www.linuxfoundation.org/collaborate/workgroups/openprinting/writingandpackagingprinterdrivers

for instructions.

For testing, download Ubuntu Natty (a daily CD or an Alpha version), do 
a full update to get it to today's state (Jockey must be at least 0.7) 
and run the command lines:

cupsctl FileDevice=yes
system-config-printer --setup-printer='file:/tmp/printout' \
--devid='MFG:Epson;MDL:ME 320;'

They emulate the case that system-config-printer has detected an Epson 
ME 320.

    Till
