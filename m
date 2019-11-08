Return-Path: <msweet@apple.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apple.com;
	h=sender : content-type
	: mime-version : subject : from : in-reply-to : date : cc :
	content-transfer-encoding : message-id : references : to; s=20180706;
	bh=M/zp2LxJ10qaf/UpI3Mjh7HyOYbIESux2Ibh9pq8vAM=;
	b=nwdYnRLDN4QtYJVt7wKauVPKUkke/8MMh2b/DNoTN+6HG8DbMBbS5KvveUrftgghuK3I
	lIj9oi53LlhIbmZtouhutkpbQCT3DRvFmqFMTiNYS2xaMi34LhrdFHkdn0JArgQXmkJC
	zQ99MZfjXeMskXctOg93Sfs5+BI51ANdrw4/5B6Nqfo5Cl5dLAtzwXo24dhmuJtXExlC
	qYfgfKHV7rzAnfC6Dp95IKA3gxZiT8CEG261ADucIpBZuFlbEPWIXSIui1wupWEByou9
	GIM9l+S55owb7ncWP37ozEiu9ay2sCNKtnj3ICmWFk8DGNSlojxGfCL/w2/VTwDYWRmm
	ow== 
Sender: msweet@apple.com
Content-type: text/plain; charset=us-ascii
MIME-version: 1.0 (Mac OS X Mail 13.0 \(3601.0.10\))
From: Michael Sweet <msweet@apple.com>
In-reply-to: <20191108133339.GK26703@shaftnet.org>
Date: Fri, 08 Nov 2019 12:15:01 -0500
Content-transfer-encoding: quoted-printable
Message-id: <D99190EF-1B3A-4EAB-803A-E16952414C6C@apple.com>
References: <49db06cd-6ae8-1a6b-2a05-011762d98797@gmail.com>
	<20191107164901.GB5070@shaftnet.org>
	<a04a9c9f-4c05-0cb7-7fb6-9d13f631a866@gmail.com>
	<20191108020631.GJ26703@shaftnet.org>
	<20191108115751.54932beb@workstation64.local>
	<20191108133339.GK26703@shaftnet.org>
Subject: Re: [Printing-architecture] Upcoming work for OpenPrinting: Printer
 (Scanner) Applications and IPP System Service
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Solomon Peachy <pizza@shaftnet.org>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Solomon,

> On Nov 8, 2019, at 8:33 AM, Solomon Peachy <pizza@shaftnet.org> wrote:
>=20
> On Fri, Nov 08, 2019 at 11:57:51AM +0100, Andreas Radke wrote:
>> When cups 2.4.x will be out I will probably disable any ppd driven
>> driver support in Arch. Just to stop people using closed source =
driver
>> and to push open standards. Anything else will probably go into our
>> community maintained unsupported AUR repositories.
>=20
> It's not proprietary drivers I'm concerned about -- There's a _huge_=20=

> install base of SMB-exported or native networked PCL/PS+PPD printers,=20=

> and MajorDistros(tm) can't get away with just dropping legacy CUPS=20
> before there is a JustWorking(tm) alternative folks' existing =
printers.

Even at Apple, we are quite aware that some of our customers depend on =
SMB printing.  Our focus is on enterprise-class printers (so PostScript =
and PCL) which can largely be supported using "generic" drivers already, =
which means something like ippeveprinter (running as the logged-in user, =
which has the side benefit of cleaning up Kerberos support) to act as =
the software that talks to the SMB server.

_________________________________________________________
Michael Sweet, Senior Printing System Engineer

