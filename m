Return-Path: <msweet@apple.com>
DKIM-Signature: v=1; a=rsa-sha256; d=apple.com; s=mailout2048s;
	c=relaxed/simple; 
	q=dns/txt; i=@apple.com; t=1449677081; x=2313590681;
	h=From:Sender:Reply-To:Subject:Date:Message-id:To:Cc:MIME-version:Content-type:
	Content-transfer-encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-reply-to:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=f2tCVWWJwnqgR5KF7uRD0V2tohRVE+f7gVtCX209si8=;
	b=0ZWMi7NgTkJPb9vr1w9IqsbVx3X1vRpdKKn5S0UiJ5iLHkxcDqe1kQ12GDM3nF/P
	JC7XuNkZ18LLCbUedG6NMlexRanCyoGDYOkTUqdQexdcvJBrlRLFPR+0MdM+txnT
	2639d5BUKgFFv48DUk30WCWoO3XEDnrn9xAXgVDleVskuUvi2AOc9f+oipF2HLRc
	FtE19q0rgnxcZODH7Jae2HQj1pOkPG9vj8zLoCuTX9CU2P84rsljnv9tk4OJY9pi
	vXmw2jqA9WcSdXf7Pg02jQwXIcmboTzu484QCYBNcnaeKh1NxsMsoPYHtD/4/TKD
	B/nvOOTgmsB82ubP6QkMvQ==;
Sender: msweet@apple.com
MIME-version: 1.0 (Mac OS X Mail 9.2 \(3112\))
Content-type: text/plain; charset=us-ascii
From: Michael Sweet <msweet@apple.com>
In-reply-to: <20151209102736.GC16751@var.bordeaux.inria.fr>
Date: Wed, 09 Dec 2015 11:04:38 -0500
Content-transfer-encoding: quoted-printable
Message-id: <2532643D-680A-493C-8A77-9C0CEF5D283E@apple.com>
References: <20151209102736.GC16751@var.bordeaux.inria.fr>
Subject: Re: [Printing-architecture] Contributing braille embosser support
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Samuel Thibault <samuel.thibault@ens-lyon.org>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Samuel,

This is very cool, thank you!


> On Dec 9, 2015, at 5:27 AM, Samuel Thibault =
<samuel.thibault@ens-lyon.org> wrote:
>=20
> Hello,
>=20
> I have been working on braille embosser support for CUPS, so that
> embossing a document can be as easy as printing it.  I have attached =
the
> result.
>=20
> The principle I have followed is to use the cups architecture to
> separate on one hand frontends which turn documents into braille text
> (text/vnd.cups-brf) or braille graphics (image/vnd.cups-brf), notably
> based on liblouis, and on the other hand backends which emboss braille
> text or braille graphics (I have implemented a generic driver which
> should work on all embossers, and a driver for the Index embosser =
which
> I can actually test).
>=20
> For now, I have made a separate package, so it is easy to test it
> already, but ideally, I would like to see this work integrated into =
CUPS
> filters, so that blind people don't need to install a separate =
package,
> but just configure CUPS for their embosser.  How should we proceed?
> Perhaps first iterate over the packaged version, until the code is =
fine
> for integration, and then I'll submit a patch against cups-filters?
>=20
> Samuel
> =
<cups-braille_0.1.tar.gz>_______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> =
https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lists.linuxfoundati=
on.org_mailman_listinfo_printing-2Darchitecture&d=3DBQICAg&c=3DHw-EJUFt2_D=
9PK5csBJ29kRV40HqSDXWTLPyZ6W8u84&r=3DcelVg12QtW5bvoWXWyIdeQ&m=3DjeSlmoaZFo=
vntwF_U0gp292XY4VsyoMEUfKz0PUGsAg&s=3D3XIbVXdJdTkphd6bQFfESaGPKGkmo-h4RVOy=
2MW_slQ&e=3D=20

_________________________________________________________
Michael Sweet, Senior Printing System Engineer

