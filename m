Return-Path: <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.1\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <20210603075805.3D0A083E2D@smtp1.osuosl.org>
Date: Thu, 3 Jun 2021 14:32:29 -0400
Content-Transfer-Encoding: quoted-printable
Message-Id: <C2302F7F-E843-4786-8D99-56AA1ACB6D22@msweet.org>
References: <20210603075805.3D0A083E2D@smtp1.osuosl.org>
Subject: Re: [Printing-architecture] Q: Dot-by-dot (dot perfect) raster
 printing?
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Honoh Suzuki <honoh@sci.u-toyama.ac.jp>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Honoh,

> On Jun 3, 2021, at 3:50 AM, Honoh Suzuki <honoh@sci.u-toyama.ac.jp> =
wrote:
>=20
> Hi,
>=20
> Sorry for the multi-posting (I first tried Gutenprint in vain).  I =
have a newbie question. =20
>=20
> Is it possible to do raster printing dot by dot (dot perfect)? =20

In general, no.  You can be dot-aligned but most printers will take a =
300/360/600/720dpi image and upscale and dither it to a higher =
resolution with the corresponding colors and dot sizes.

If you generate a printer-specific language like PCL or ESC/P, it is =
possible to send bitmap graphics (or in the case of many Epson printers, =
2-bit per color graphics) that are not altered by the printer, but this =
is very printer-specific.

________________________
Michael Sweet



