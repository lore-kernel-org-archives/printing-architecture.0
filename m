Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=to:cc:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding;
	bh=6Jr+zuTf4pGONCbalMuHQXZfNVNS003TlkpnFs75Dyw=;
	b=mTYwp8GB2bLacLAifz1AwhaumDecmwXGinIJMHMq4P+KTSzgQEh2atY/uUq6DK2SdH
	M6G6+7/ZbqAPr06Agvl/RwTwEVL8A6DH3+gpx5+xx581fKHwY1OzJ8BTguueMt5P80oe
	MkeNqbuyF7cIZ9pyxOP3mz5t0T0kV9gHxhaPXcCY8ImvCohVc0vmSDHMbrGJaCUIcawx
	LkEze8BYbdrg+Dq0BzTX4lgghXzD++tMOhW7qeZyHT6fG6fMgD+DTT4RD2AMkqr21XxJ
	Yz6uIJ2FyfbN6b1VN6Xq0NwmOJvHcAs9Zs3WYHonCuL1pHwIhkY/brTRSHepI+DQyYmp
	WGaA==
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <6ccbe376-b5d2-eb1f-ffdc-7e614915cd92@gmail.com>
Date: Sat, 19 Nov 2016 21:44:09 -0200
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Testing driverless printing on
 Apple-Raster-based printers with CUPS on Linux
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "The CUPS developer list." <cups-devel@cups.org>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>

Hi,

there are not yet very many IPP Everywhere printers 
(http://www.pwg.org/dynamo/eveprinters.php), but driverless printing 
fortunately existed already for longer time in a very similar form: 
AirPrint (https://en.wikipedia.org/wiki/AirPrint), originally thought 
out for Apple's iOS devices.

AirPrint is also Bonjour/IPP-based as IPP Everywhere with the main 
difference being the raster format which is Apple Raster (image/urf) and 
not PWG Raster (image/pwg-raster). Even these two raster formats are 
very similar.

And there are more than 2600 printers from practically all manufacturers 
supporting AirPrint (https://support.apple.com/en-us/HT201311).

In the GIT repository of CUPS 2.2.x beta support of Apple Raster was 
added (to appear in the upcoming CUPS 2.2.2) and beta means usually that 
it should be tested. So I did, found some bugs which I fixed and Mike 
Sweet quickly committed to the GIT, and after that I have three HP 
printers perfectly working via Apple Raster:

- HP OfficeJet Pro 8500 A910
- HP DeskJet Ink Advantage 2540
- HP Color LaserJet CM3530 MFP via HP 1200w Mobile Print Accessory

I have set up them all via

lpadmin -p <queue name> -E -v <URI> -m everywhere

<queue name> you can define freely and <URI> you can find by running the 
"ippfind" command (comes with CUPS).

In all cases the PPD file passes "cupstestppd" and jobs get correctly 
printed, also options like Duplex work.

You need the current GIT snapshot of CUPS (or the 2.2.2 release if it is 
already out when you are reading this) and cups-filters, preferably the 
current release (1.11.6).

So the Apple Raster support in CUPS seems already be in a good shape and 
a great companion to PWG Raster, adding more than 2600 printers to be 
working under Linux and other Posix-style operating systems, including 
many models users got frustrated about that they do not work.

So everyone reading this, please test your printers. If you have 
not-too-old network-connected printers they probably support Apple 
Raster and so work driverless with current CUPS.

I have also started to support Apple Raster printers with cups-filters. 
If you use the current BZR snapshot (or the upcoming 1.12.0) together 
with the newest CUPS cups-browsed will also auto-setup Apple Raster 
printers and not only IPP Everywhere and some legacy 
IPP/PostScript/PDF/PCL printers.

    Till
