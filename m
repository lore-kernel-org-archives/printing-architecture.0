Return-Path: <lists@colorremedies.com>
Content-Type: text/plain; charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 6.6 \(1510\))
From: Chris Murphy <lists@colorremedies.com>
In-Reply-To: <m38upe4ya7.fsf@carbon.jhcloos.org>
Date: Mon, 2 Jun 2014 20:49:42 -0600
Content-Transfer-Encoding: quoted-printable
Message-Id: <FFB6C188-26F2-48C0-BED2-029D98ADBF3D@colorremedies.com>
References: <m3wqd2b8h7.fsf@carbon.jhcloos.org>
	<m3oayc85fp.fsf@carbon.jhcloos.org>
	<750B2F70-F6EC-42C6-93A9-C552193EFE8E@apple.com>
	<m361kj88z0.fsf@carbon.jhcloos.org>
	<3E7B815C-6CBE-4A7C-91B7-6212130BA254@apple.com>
	<m3zjhv6sle.fsf@carbon.jhcloos.org>
	<m38upe4ya7.fsf@carbon.jhcloos.org>
Subject: Re: [Printing-architecture] pwgtoraster vs calibrated spaces
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>


On Jun 2, 2014, at 6:44 PM, James Cloos <cloos@jhcloos.com> wrote:

> This is an attempt at an sGray icc Based on Argyll's sRGB.
>=20
> Corrections or verifications welcome.
>=20
> If valid, or once fixed, rastertopdf should embed it when dealing with
> sGray pages.
>=20
> <sGray.icc><sGray.xml>

Although only Y should matter, there is a difference in the X and Z =
values in the lumi tag.


Chris Murphy=
