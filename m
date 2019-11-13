Return-Path: <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3601.0.10\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <02265d8c-8678-5edb-be08-a948d5ee9dcb@gmail.com>
Date: Wed, 13 Nov 2019 07:24:10 -0500
Content-Transfer-Encoding: quoted-printable
Message-Id: <46536F8B-A55B-48A1-B5E8-75E47263D35D@msweet.org>
References: <02265d8c-8678-5edb-be08-a948d5ee9dcb@gmail.com>
Subject: Re: [Printing-architecture] PWG Raster format (IPP Everywhere) not
 reliable
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Till,

As the PWG isn't in the business of enforcing standards, there isn't a =
whole lot the PWG can do except when the vendor has submitted their =
printer (self) certification results.  IPP Everywhere printer =
self-certification uses PWG Raster test documents, so if any of the =
printers in question show up on the IPP Everywhere printers page =
(https://www.pwg.org/printers) then the PWG can ask the vendor to =
provide a firmware update and/or remove the listing from the page =
pending a re-certification.

Currently only HP has submitted self-certification results to the PWG.  =
I know many other vendors have been working towards that, but so far no =
Brother, Canon, or Epson printer has been added to the IPP Everywhere =
printers page.


> On Nov 13, 2019, at 6:27 AM, Till Kamppeter <till.kamppeter@gmail.com> =
wrote:
>=20
> Hi,
>=20
> recently, I saw several bug reports where certain printer models =
advertise to understand PWG Raster but in fact are not able to print =
this format. Fortunately all IPP-Everywhere/Mopria/Wi-Fi-Direct printers =
also do AirPrint and so one can print in Apple Raster which reliably =
works.
>=20
> The bug reports are
>=20
> https://github.com/apple/cups/issues/5238
>   Create PPD file from get-printer-attributes
>   (Printer: Canon Pixma Pro 10)
>=20
> https://github.com/OpenPrinting/cups-filters/pull/168
>   Epson ET-7700 does not support image/pwg-raster
>=20
> https://github.com/OpenPrinting/cups-filters/issues/171
>   Attribute differences
>   (Printer: Epson Workforce WF-2630)
>=20
> All these got solved by modifying the PPD generators of CUPS and =
cups-filters so that if a printer supports both Apple Raster and PWG =
Raster that the printing gets done in Apple Raster.
>=20
> This bug report can have the same reason:
>=20
> https://bugs.launchpad.net/ubuntu/+source/cups/+bug/1850127
>   Unable to print with Brother printer since upgrade to Ubuntu 19.10
>   (Printer: Brother HL-L8260CDW)
>=20
> It got solved by a printer firmware update and it is also not clear by =
the attached files whether it was actually tried to print in PWG Raster.
>=20
> This makes the impression that the implementation of PWG Raster =
support in many printers is buggy and so IPP Everywhere and generally =
driverless IPP printing standards using PWG Raster is not reliable. And =
PWG Raster was created as a free and open standard format for driverless =
printing.
>=20
> I think this should get escalated to the PWG and especially better =
verification methods for PWG Raster creation and consumption should get =
introduced, and firmware updates issued for existing printers.
>=20
>   Till
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> =
https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>=20

________________________
Michael Sweet



