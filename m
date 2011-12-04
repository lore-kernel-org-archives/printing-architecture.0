Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=XFV0xw9Cx9GcV4f578cHyZd0hUOr01NTdVcK92sQZns=;
	b=lydn4GwsrlRU/d5HY3HbPcwJgNsbtdVKAaY0mSp9GdT+PqOevdK2BaR3LGHQxdoRgW
	od++eibQNpvWCjS+9unw3llluxeDhjDnyTthtLDEUl4qp5YVNoF09IgDNAwSXyQcNkO1
	oSmhJLbllGjuQrzQiJQt4FRpfmjbxXBuAq75A=
Message-ID: <4EDBEDAE.4010309@gmail.com>
Date: Sun, 04 Dec 2011 23:01:18 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] "cups-filters" package started its upstream
	life
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Lars Uebernickel <lars@uebernic.de>, Michael Sweet <msweet@apple.com>, Martin Pitt <martin.pitt@ubuntu.com>, Open Printing <printing-architecture@lists.linux-foundation.org>, Koji Otani <sho@bbr.jp>, Tobias Hoffmann <th55@gmx.de>, Hin-Tak Leung <htl10@users.sourceforge.net>

Hi,

all CUPS filters not relevant for Mac OS X are discontinued in the CUPS 
core project at Apple:

http://www.cups.org/str.php?L3930

and overtaken by OpenPrinting:

https://blueprints.launchpad.net/ubuntu/+spec/desktop-p-new-cups-filters-package

With these filters I have joined the filters written for the PDF 
printing workflow

https://www.linuxfoundation.org/collaborate/workgroups/openprinting/pdfasstandardprintjobformat

to have one upstream location for all CUPS filters needed for using CUPS 
with Linux (and any other non-Mac-OS-X operating system).

This package will be required for use of CUPS 1.6.x or later. For CUPS 
1.5.x and older it is optional and highly recommended to use a PDF-based 
printing workflow (for 1.5.x or older of all filters provided by both 
CUPS and cups-filters the version of cups-filters should be used).

The development of cups-filters is tracked via BZR on

http://bzr.linuxfoundation.org/openprinting/cups-filters

Bugs and feature requests are tracked on 
https://bugs.linuxfoundation.org/, product OpenPrinting, component 
cups-filters.

    Till
