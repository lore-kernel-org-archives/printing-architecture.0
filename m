Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:content-type:content-transfer-encoding;
	bh=qKxCpCHmlss5bkvN4isgh/30yZPRAbRRIEGycCCIVX0=;
	b=uYpFKMqRnQfD6WYtXtwrD/xps44t4BExO/cU92huidsIdIRK415DQTzj/2uRTvLuO6
	HHZb3sIyEXgHiMmjj7XpbPVye6ozps6krVlYHxTssepOIxaLxAgmwo19rKu4/jQEbGl7
	upukFbTdzMbwP/tdHrkdu3uGyaay70PEk9TAT7SWYv9lNPu4wc09UV5YSCUV2A5I1mgB
	9veveiyRFUtKg7jjDQsNWgelsZb26oD9nuPYRxqcwTtOvumpblEEdk62UEWwKIaSvP/D
	kPotaTd+VVXuTtp1giz9O/XiK2z1I/gNF+s50ybXZOqY69V2A/NTaryX89wc6vk5XeKS
	BSew==
Message-ID: <51E9B6B2.4080307@gmail.com>
Date: Fri, 19 Jul 2013 23:59:14 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Bug in ippfind
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@apple.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>

Hi,

I have packaged CUPS 1.7.0 RC1 for Ubuntu Raring (13.04) and Saucy
(13.10) and uploaded them to my PPA
(https://launchpad.net/~till-kamppeter/+archive/ppa).

Then I have tested the new ippfind on Saucy by simply running

ippfind

The result is

ipp://till-lenovo.local:30466/printers/Berlin
ipp://till-lenovo.local:30466/printers/Berlin
ipp://till-lenovo.local:30466/printers/Berlin
ipp://till-lenovo.local:30466/printers/Budapest
ipp://till-lenovo.local:30466/printers/LaBoheme
ipp://till-lenovo.local:30466/printers/LaTraviata
ipp://till-lenovo.local:30466/printers/Mailand
ipp://till-lenovo.local:30466/printers/Marrakech
ipp://HPOccam.local:30466/ipp/printer
ipp://till-lenovo.local:30466/printers/Paris
ipp://till-lenovo.local:30466/printers/SanFrancisco
ipp://till-lenovo.local:30466/printers/SanFranciscoFax
ipp://till-lenovo.local:30466/printers/Santorini
ipp://till-lenovo.local:30466/printers/Singapur
ipp://till-lenovo.local:30466/printers/Tokyo
ipp://till-lenovo.local:30466/printers/Wien
ipp://NPI90E6C1.local:30466/NPI90E6C1

It should be port 631 and not 30466. Looks like an endian problem or so.
I tested on an x86_64 system running Ubuntu Saucy.

   Till
