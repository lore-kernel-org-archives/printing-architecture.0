Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=gMQEuu1XOBjeSKSpeGgpNvi+emJ/Qm+4rlHTFOHFDE4=;
	b=cmAA8+3Vr8GF1BPmR3z/wbr3qjN+Ie/zF1dp8WnDbHpn1BNHYnlNut1zhCRBGbRRnO
	uKdYpyJE0YEveuuaXxcsF9BESRbJG7HByZUMQESheeuC/IjCN0BSCmY72M8IFpVZS4kg
	XfjpM2DyD+NgO3pvCLqpW7qpEOMdC7pQnuM+zRoyFqeQV2JXHYhBhcCVJZ59T5sBPMmk
	4jnBru3gEg75WLEf/AuyAgObIGbGxmHBUpXZolB6iO6WbIV3ZUiHnPsO5rWo/6mZkLVO
	XJJSErqB7DegtadJJwMpDRUuRpTN+3zNCWNewKD4Xxmpijf4XPEaxSd68S2RaH4xCG1J
	DTyA==
Message-ID: <542C03C3.2000805@gmail.com>
Date: Wed, 01 Oct 2014 15:38:11 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <542A8535.4050602@gmail.com>
	<7948AB2C-721B-4A76-A876-963BA2C94EF7@apple.com>
In-Reply-To: <7948AB2C-721B-4A76-A876-963BA2C94EF7@apple.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Mopria
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Will Cooke <will.cooke@canonical.com>, "Kennedy,
	Smith (Wireless Architect)" <smith.kennedy@hp.com>

Today I did the first test with a device which is advertized as
supporting Mopria, the

HP 1200w Mobile Print Accy

an add-on module for WLAN printing from mobile devices on HP's laser
printers. I use it together with my HP Color LaserJet CM3530 MFP which
is listed as compatible with the device.

The device is connected to the printer via USB, it has also a
pass-through USB port if there is already a computer connected to the
printer via USB. Network connection is exclusively via WLAN. There it
has two interfaces, one to connect with a WLAN access point/router for
use in the existing local network and one WLAN host for direct
connection from a mobile device (if there is no WLAN access point or to
protect privacy in the local network). It also has NFC to make WLAN
connection easier.

It supports Mopria for Android and AirPrint for iOS. Both work for me,
the former with my Nexus 7 running Android 4.4.4 (Kit Kat) and with the
Mopria app from the Google Play Store installed, the latter with my
iPhone 4S running iOS 8.0.2 and no special app. So the device seems to
work as designed. This was all tested using my router's WLAN.

The device can be configured by a web interface, as usual for network
devices. To start, you press the button of the device for 2 seconds to
get a config page with the device's IP printed, select the device's own
WLAN on a laptop or mobile device and call the IP with a browser. The
you can connect the device to your WLAN router (the device's own WLAN
stays active) and do some other settings (mostly the usual ones of a
printer's network interface).

Now with the device known in my local network I have run

avahi-discover

one one of my Ubuntu machines. There the device appears as an "Internet
Printer" (= IPP printer) with the service name "HP 1200w Mobile Print
Accy[000000]".

The whole Bonjour record is the following:

----------
Service Type: _ipp._tcp
Service Name: HP 1200w Mobile Print Accy[000000]
Domain Name: local
Interface: eth0 IPv4
Address: NPIE8F64A.local/192.168.178.39:631
TXT Binary = T
TXT Duplex = T
TXT Copies = F
TXT Collate = F
TXT Sort = F
TXT priority = 40
TXT Fax = F
TXT rp = ipp/print
TXT ty = HP 1200w Mobile Print Accy
TXT PaperCustom = F
TXT Punch = F
TXT note = no location set
TXT adminurl = http://NPIE8F64A.local./SSI/Auth/airprint.htm
TXT txtvers = 1
TXT Transparent = T
TXT usb_CMD = ZJ/URF
TXT product = (HP 1200w Mobile Print Accy)
TXT usb_MDL = HP 1200w Mobile Print Accy
TXT qtotal = 1
TXT usb_MFG = HP
TXT Bind = F
TXT mac = 40:f0:2f:e8:f6:4aUUID=af32c5c0-cc96-6258-1572-e184c4c2a578
TXT URF = CP1,IS1,OB10,PQ3-4-5,RS300-600,W8,V1.3,DM1,SRGB24
TXT kind = document,envelope,label,photo
TXT UUID = af32c5c0-cc96-6258-1572-e184c4c2a578
TXT Scan = F
TXT Color = T
TXT pdl = image/urf,application/PCLm,image/jpeg,application/octet-stream
TXT PaperMax = legal-A4
TXT Staple = F
----------

I assume (and hope) that the capability info is based on the HP Color
LaserJet CM3530 MFP which is connected to the device and changes
appropriately if one connects another printer.

For Airprint it looks all fine, the device accepts image/urf under its
PDLs and there is an URF TXT record.

For IPP Everywhere it does not look so nice. The PDL TXT record only
contains

image/urf,application/PCLm,image/jpeg,application/octet-stream

There is no PWG Raster. The only language which looks like that it could
be an open standard language with which a machine running Ubuntu could
print on this device is application/PCLm, some kind of PCL. I have tried
the following PCL flavors, but did not get any printout:

- PCL 6/XL (Foomatic pxlcolor/pxlmono)
- PCL 5c (HPIJS)
- PCL 5e (HPIJS)

I also tried to send a file in PWG Raster format (24-bit RGB, 600 dpi)
and a JPG image (photo directly from Olympus OM-D E-M5, 16 MPixel). None
of these files got printed and nowhere any error message appeared. The
device simply accepts all these jobs, so on the computer all jobs finish
without error. In the device's web interface there is no job viewer and
no log of failed jobs. The printer is configured to print error pages if
it gets a job which it does not understand, but no error pages came out.

How do I generate PCLm? Does the device need any PJL to be able to
print? Does the device have a bug? What does it get sent by the Mopria
app? Is the device known to the PWG?

   Till

On 09/30/2014 01:31 PM, Michael Sweet wrote:
> Till,
> 
>> On Sep 30, 2014, at 6:25 AM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
>>
>> Hi,
>>
>> got this link today:
>>
>> http://www.mopria.org/
>>
>> It is all about standardized mobile printing. Is this known inside the
>> PWG? It was not talked about on the Summit.
> 
> Yes, it is known.
> 
> The Mopria Alliance is mainly a marketing organization for Android printing over Wi-Fi.  It uses IPP Everywhere for infrastructure networks and P2P Print Services (a subset of IPP Everywhere) for Wi-Fi Direct.
> 
> The Mopria Alliance is a closed (members-only) organization.  When they originally were formed, they did reach out to the PWG and make some presentations at F2F meetings.  However, since they will not allow us to put those presentations online and the PWG's bylaws require everything we do to be openly available, we have not had a Mopria presentation in almost a year.  (the invitation for Mopria to participate remains open, under the terms of the PWG IP policy, and we are trying to setup a formal liaison with them...)
> 
>> And another question: How is a printer identified as IPP Everywhere or
>> as accepting PWG Raster? What has to be in the device ID (in the CMD:
>> field)? What has to be in the Bonjour TXT record?
> 
> An IPP Everywhere printer reports 'ipp-everywhere' in the "ipp-features-supported" Printer attribute.
> 
> At the Bonjour level, it registers the _print subtype and reports "image/pwg-raster" in the "pdl" key.
> 
> In the 1284 Device ID you can look for "PWGRaster" in the CMD field.
> 
> _________________________________________________________
> Michael Sweet, Senior Printing System Engineer, PWG Chair
> 

