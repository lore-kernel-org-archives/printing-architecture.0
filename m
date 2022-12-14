Return-Path: <gary@extremeground.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E027041802
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 15746416EF
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=extremeground.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 Subject:From:To:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8JX80LH8C2gLK4ctuKamuFE05pHVJ2mGDmF7haWQ9oI=; b=iGNYIlwyYD0/LI+1H5LEEETDEi
 Q7bZtammb9QxEXwe+9aGM0CU6pvi3UT3lcloy8rvjXVkBJDHgVddLx2YONLWF5RnvLvAWgdlncutz
 urB0+yPmg9NdczPvRU2ifnzVD9fODKRoP2nQR3QnBDNYwLpJ+VwhjZ19YdSMft7tk5kSIjB4H6q7I
 6Z7IIENl3PKWhVY6kP+SGANGJPm9VfT1Muchc9+oPLKm6a83H+cAVk7xnSvoxXyDS+bVXzIlCe111
 uTQJdwYNxwDpN30uo6q2Gc7mf6zuSe++0RESWK056w2HHgklyxUn1OivtCkr3+IyqFfJsZtdByeTI
 k45r/CTg==;
Message-ID: <4689e6ca-01a0-8664-dabf-431fee58ac28@extremeground.com>
Date: Tue, 13 Dec 2022 21:40:08 -0500
MIME-Version: 1.0
Content-Language: en-CA
From: Gary Dale <gary@extremeground.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit
Subject: [Printing-architecture] controlling media size / paper tray
 selection when printing to a class
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org

I'm running Debian/Bookworm on an AMD64 system.

I've got a script that prints to class queue - "photo" - which has 3 
actual photo printers in it. The printers are all different except that 
they are made by Epson. On is an old R300, the second is an XP-820 and 
the third is an XP-6100.

I have a script that controls a camera to take and download a picture 
then rotate and crop it before sending it to the printer. This worked 
fine until I added the third printer and bought a new laptop.

The old R300 uses a CUPS+Gutenprint driver while the XP-820 used the 
Epson Inkjet Printer Driver (ESC/P-R) for Linux - which somehow survived 
upgrading over the years. However when I installed Linux on the new 
laptop, I had to install Debian/Bookworm - Debian/Bullseye had too many 
issues. However I've got the CUPS+Gutenprint driver now because the 
Epson drivers wouldn't install. For some reason photos printed with the 
new driver are distinctly yellowy.

The real problem however is the XP-6100, which doesn't have a Linux 
driver per se so I installed it as an ipps printer. It prints a 
beautiful test page on Letter and 4x6.borderless photo paper. However 
when I print a photo to it, it insists on printing on letter size paper 
- scaling the photo up to file the page.

The CUPS default options are 4x6.borderless glossy photo paper printing 
cropped to fit. However, when I send a photo to it using

     lpr -P photo <photo name>.jpeg

which works on the other two printers, I get letter-size output. Even if 
I remove the paper from the letter-size tray, it still wants to print 
from it.

I thought of adding a paper size definition to the lpr command but the 
first two printers have a 4x6 size for borderless printing while the 
XP-6100 uses 4x6.Borderless - the 4x6 size has a border. That would mean 
I didn't get the same output from all three printers.

Can anyone suggest a way I can get all three printers to print the same?

