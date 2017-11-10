Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-language:content-transfer-encoding;
	bh=wkS3KqH7n6ZO4ZGWPx/4Xh9pCp7Nsc8PoTpZt14w8PQ=;
	b=UXUoETprJoEFiFX+MIJ3R1ylSTDIjv1R28z4UlnMZR93qTyeOJVpZ3owLvmRw1f1aS
	WTK9EHFM/iwj8F4iP6frg2MU/8ojeCfsrUYRF389KquLZwKCuQhAnkoN8yV6uup7YxS8
	9WK3joKso8CLwqMc21iN3O/VZhF9uoEdSbrAOAmQlTD2QSA6t3ZSQn7PB4DqPvXj5VvX
	uOfM82d2jWl9DSi3a2XTJONO3AUqfcbNS8WImh7f5B7l68mMpyiYQqEfC3Fk2YhR4S/X
	GDmFkv+DpF9MF4dr+hwqlz17qXqF51dEvTayqU1R+6rwT2p5YPj0wYw6KRO6R0mddusZ
	J63A==
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <7be55082-0911-5282-733c-d7670603e16a@gmail.com>
Date: Fri, 10 Nov 2017 16:09:39 -0200
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Need of Printer Drivers for Modern Printers
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

I continued working on making a snap of the CUPS printing stack in the 
last days:

https://github.com/OpenPrinting/printing-stack-snap
https://forum.snapcraft.io/t/snapping-cups-printing-stack-avahi-support-system-users-groups/1502
https://forum.snapcraft.io/t/snapping-cups-drivers-as-plugins/1503

One goal of this project is to allow for distribution-independent 
printer driver packages, as plugin snaps for the printing stack snap.

Due to the advent of driverless printing (AirPrint, IPP Everywhere, 
Wi-Fi Direct, Mopria) there are now some questions about the need of 
printer drivers:

1. If a manufacturer equips a modern printer with network printing or 
even IPP support, would they nowadays not go straight-away and make this 
printer support driverless printing? This would mean that mean that if 
drivers are needed for new printers, they are only needed for USB-only 
printers.

2. How is the situation with USB-only printers? Is it getting common to 
equip them with IPP-over-USB? Or is it still more common that these 
printers get designed for use with drivers.

3. If we offer a concept for distribution-independent printer driver 
packages in Linux and drivers are not needed any more for modern 
printers bur they are still needed for legacy printers, would 
manufacturers publish driver packages for their legacy printers?

4. Or are there certain printer classes (home, small office, big 
network, ...) where driverless printing or printing with driver is 
preferred?

Can someone, especially someone from the printer manufacturers tell 
about what the current situation is?

    Till
