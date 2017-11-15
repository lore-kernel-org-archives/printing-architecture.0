Return-Path: <pizza@stuffed.shaftnet.org>
Date: Wed, 15 Nov 2017 15:44:24 -0500
From: Solomon Peachy <pizza@shaftnet.org>
Message-ID: <20171115204424.GA29468@shaftnet.org>
References: <7be55082-0911-5282-733c-d7670603e16a@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="Qxx1br4bt0+wmkIi"
Content-Disposition: inline
In-Reply-To: <7be55082-0911-5282-733c-d7670603e16a@gmail.com>
Subject: Re: [Printing-architecture] Need of Printer Drivers for Modern
 Printers
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
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>


--Qxx1br4bt0+wmkIi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 10, 2017 at 04:09:39PM -0200, Till Kamppeter wrote:
> 1. If a manufacturer equips a modern printer with network printing or even
> IPP support, would they nowadays not go straight-away and make this print=
er
> support driverless printing? This would mean that mean that if drivers are
> needed for new printers, they are only needed for USB-only printers.

Logically, yes.  But only for truly new printer models...

> 2. How is the situation with USB-only printers? Is it getting common to
> equip them with IPP-over-USB? Or is it still more common that these print=
ers
> get designed for use with drivers.

In the dyesub space I inhabit, the newer consumer-focused printers are=20
wifi-enabled, but they're not quite IPP-Everywhere.  Instead they're=20
typically intended to interface with smartphone apps (not generic=20
printing plugins!) Even on Windows they still require a native driver=20
to use the printer via wifi.  (One of the ones I have natively speaks=20
the Microsoft "WS-Print" protocol.  Fun..)

Putting aside the consumer gear and into the more professional market,=20
nearly none of those are natively wifi yet, although several=20
manufacturers have come out with bolt-on network/wifi print servers of=20
one sort or another.  I know at least one is built on top of CUPS/avahi,=20
so in theory it already has IPP everywhere support for free, but the=20
norm is still to use a proprietary smartphone app or bulk upload using=20
FTP or SMB or whatever.  Nothing truly universal/generic yet.

This is even more stark with the USB connectivity. I have yet to see an=20
IPP-over-USB dyesub printer, even in the consumer space, but that's not=20
too surprising given multi-year product family lifecycles (even if they=20
refresh the models, the underlying engine doesn't get updated often)

The pro market is more of the same, with decade-long product=20
lifecycles. They care about forwards compatibility so the models tend to=20
have similar communication/driver requirements (barring minor tweaks=20
here and there).  The idea is to allow users to migrate to newer=20
printers with only minimal (if any) software changes.

This is especially true as you move into the higher-end or more=20
specialized printers; in that space users more usually ignore the OS=20
printer driver and have their applications tie into a=20
manufacturer/family-specific SDK that allow a very high degree of fine=20
control over printer settings and output.  (Or if no SDK is available,=20
they will just directly emit native printer commands)

In that space, any notion of "driverless printing" is a joke.  :)

> 3. If we offer a concept for distribution-independent printer driver
> packages in Linux and drivers are not needed any more for modern printers
> bur they are still needed for legacy printers, would manufacturers publish
> driver packages for their legacy printers?

For Linux?  I highly doubt it.  It's still challenging to get non-PS=20
printer makers to acknowledge that Linux even exists.  Instead, with=20
only a few notable exceptions, it falls on the somewhat more motivated=20
(if not outright demented) members community to reverse engineer things=20
and come up with native drivers.

Not so coincidentally, this reverse-engineering-of-printers work is=20
something I do for fun and occasional profit.  Sometimes I get=20
[un]official help from the manufacturers, but usually it's done on my=20
own time and dime.

The results all end up in Gutenprint.  FWIW, I'm currently exploring the=20
feasibility of creating a native IPP frontend to Gutenprint.  It would=20
allow for some seriously cool functionality, but would also be a lot of=20
work, as we'd have to re-create a lot of the functionality we=20
traditionally relied on CUPS for (eg spooling, logging, option=20
parsing/etc, UI, and so on..).

And on that same token, IMO it would be quite valuable to create a=20
Gunenprint snap to go with the CUPS snap you created, or perhaps even=20
bundling it directly in there.

> 4. Or are there certain printer classes (home, small office, big network,
> ...) where driverless printing or printing with driver is preferred?

See above -- Once you move away from traditional office-type printing=20
tasks (ie business use on normal paper) and low-volume home printing,=20
printers tend to not only rely much more heavily on custom drivers, but=20
the higher-end/specialization you go, the more likely users forego a=20
tradidional "driver" altogether and instead rely on a dedicated RIP or=20
SDK that is closely tied to a specific printer family.

> Can someone, especially someone from the printer manufacturers tell about
> what the current situation is?

I can't speak for any manufacturers; I can't even claim to be terribly=20
knowledgeable outside of what dyesub printers tend to use, be they=20
consumer or pro-oriented.  But I hope my ramblings will at least be=20
useful.

 - Solomon
--=20
Solomon Peachy			       pizza at shaftnet dot org
Coconut Creek, FL                          ^^ (email/xmpp) ^^
Quidquid latine dictum sit, altum videtur.

--Qxx1br4bt0+wmkIi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iEYEABECAAYFAloMpyYACgkQPuLgii2759Bl2QCgnE1N8rvvS/ESNf0S+Bf1r++7
43MAoLu0MXyttDI2cCXZa0cu7ESls/tJ
=vVPU
-----END PGP SIGNATURE-----

--Qxx1br4bt0+wmkIi--
