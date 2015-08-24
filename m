Return-Path: <msweet@apple.com>
DKIM-Signature: v=1; a=rsa-sha256; d=apple.com; s=mailout2048s;
	c=relaxed/simple; 
	q=dns/txt; i=@apple.com; t=1440431973; x=2304345573;
	h=From:Sender:Reply-To:Subject:Date:Message-id:To:Cc:MIME-version:Content-type:
	Content-transfer-encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-reply-to:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=P4cpC4gWMqr3ZLg8hnlp4p2Rasluetu69QCwmqxQVcs=;
	b=IGW8dEUFuzdOiZVvohKZ141XGSUlKHqkF02YbU5vtfS/QRCd+qDnXFG+keRJrrSS
	15PXOBqnYwnojIFFX9xk3kXmOLBDhrB9L3UGwknoMvmPs0yYC1KIcMI770CpC/4c
	laj60HTnYUUw60XIdDASZ6iGHy+HbLvAzvnZnyBhxLXlkYELZbUhfu0Q4+yXj97y
	CE9cGcf4botwS+TJs5Aq1Y8TJYmSjq/TF1Jk674aDw7eFEaH2Kt/LsG6K8znIC2K
	AQLxq9r4qAhlV6v4iODRn+pi9S8OD+n+TaquSP9DeuY2bhWE9A/iD7C2UuIyKiVQ
	fJR3/8os3njM6lkgUzSyHg==;
MIME-version: 1.0 (Mac OS X Mail 8.2 \(2104\))
Content-type: text/plain; charset=us-ascii
From: Michael Sweet <msweet@apple.com>
In-reply-to: <CAN40gSsYjD_jZGDvY+ZjV5gwcE1FqSxRgmkzaghVnbw_ydczKg@mail.gmail.com>
Date: Mon, 24 Aug 2015 11:59:31 -0400
Content-transfer-encoding: quoted-printable
Message-id: <FB5CC2D9-0026-4C01-B4E3-1AEEF3474674@apple.com>
References: <CA+3RNfipMp+TTLyfTGiSUGS1UAsFUPw8dOJbA7yOKTGbpn7YgQ@mail.gmail.com>
	<CAN40gSsYjD_jZGDvY+ZjV5gwcE1FqSxRgmkzaghVnbw_ydczKg@mail.gmail.com>
Subject: Re: [Printing-architecture] PDF workflow, cupsaddsmb,
 and Windows clients
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Ira McDonald <blueroofmusic@gmail.com>
Cc: Smith Kennedy <smith.kennedy@hp.com>, "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Alex,

The Windows print system is based on Microsoft's XPS format, which is =
functionally the same as PDF but requiring different tools/filters.

I know Ghostscript and mupdf have XPS support, but I don't know of =
anyone that has either written the necessary CUPS filters nor the =
corresponding Windows drivers (which need to comply with some =
unfortunately strict Microsoft licensing...)



> On Aug 24, 2015, at 11:36 AM, Ira McDonald <blueroofmusic@gmail.com> =
wrote:
>=20
> Hi Alex,
>=20
> I've copied Mike Sweet (Apple, CUPS) and Smith Kennedy (HP, all things
> printing-related) on this reply.  I hope they can reply with more =
detail about
> Windows printing.
>=20
> But I'd like to point out that CUPS PPD API was deprecated in CUPS 1.6
> and PPDs in general are deprecated legacy in CUPS 2.0.  PDF workflow
> in Linux, UNIX, and elsewhere is based on generic print clients using =
direct
> printer queries for printer capabilities and current defaults (IPP =
Everywhere).
>=20
> PPD-based printing solutions are destined to disappear in the future.
>=20
> Cheers,
> - Ira
>=20
>=20
> Ira McDonald (Musician / Software Architect)
> Co-Chair - TCG Trusted Mobility Solutions WG
> Chair - Linux Foundation Open Printing WG
> Secretary - IEEE-ISTO Printer Working Group
> Co-Chair - IEEE-ISTO PWG Internet Printing Protocol WG
> IETF Designated Expert - IPP & Printer MIB
> Blue Roof Music / High North Inc
> http://sites.google.com/site/blueroofmusic
> http://sites.google.com/site/highnorthinc
> mailto: blueroofmusic@gmail.com
> Winter  579 Park Place  Saline, MI  48176  734-944-0094
> Summer  PO Box 221  Grand Marais, MI 49839  906-494-2434
>=20
>=20
> On Mon, Aug 24, 2015 at 10:56 AM, Alex Korobkin =
<korobkin+op@gmail.com> wrote:
> Hi all,=20
>=20
> Is there any adoption of PDF workflow in the Windows world?=20
> I used to have a setup like this:=20
> PostScript-based printers on CUPS are exported to Windows clients with =
cupsaddsmb, and happy Windows clients just point and print easily.=20
>=20
> How that I'm trying to switch my PPDs to PDF-based ones (written with =
PJL commands), this setup no longer works.=20
>=20
> Is there a solution better than uploading a manufacturer-provided =
driver for each printer? Ideally, something as automatic as current =
cupsui6/cupsps6.dll is, one that could take a PJL-based driver and build =
a UI around it to show to a Windows client?
>=20
> --=20
> -Alex
>=20
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> =
https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>=20
>=20

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

