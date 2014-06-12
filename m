Return-Path: <lists@colorremedies.com>
Content-Type: text/plain; charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 6.6 \(1510\))
From: Chris Murphy <lists@colorremedies.com>
In-Reply-To: <53997D3F.2060803@gmail.com>
Date: Thu, 12 Jun 2014 11:06:48 -0600
Content-Transfer-Encoding: quoted-printable
Message-Id: <2E97E8D0-4017-4415-B5DA-0F7E8090D950@colorremedies.com>
References: <53997D3F.2060803@gmail.com>
Subject: Re: [Printing-architecture] "no-color-management" not a good idea
	for a name of a boolean CUPS option
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


On Jun 12, 2014, at 4:13 AM, Till Kamppeter <till.kamppeter@gmail.com> =
wrote:

> Hi,
>=20
> I have encountered a problem with the "no-color-management" and
> cupsGetOption() not be able to recognize that the user has supplied =
"-o
> no-color-management" on the command line.
>=20
> If you have an arbitrary boolean option in CUPS filters or backends,
> like "xxx" the variants
>=20
>   -o xxx
>   -o xxx=3D1
>   -o xxx=3Don
>   -o xxx=3Dyes
>   -o xxx=3Dtrue
>=20
> are supposed to let it be interpreted as set and
>=20
>   -o noxxx
>   -o xxx=3D0
>   -o xxx=3Doff
>   -o xxx=3Dno
>   -o xxx=3Dfalse
>=20
> let it be interpreted as not set. To support the "-o noxxx" case
> cupsGetOption() seems to split a "no" in the beginning of the name off
> if there is no '=3D'. Therefore "no-color-management=3D" works but
> "no-color-management" not. The latter is probably interpreted as
> "-color-management=3Dfalse".
>=20
> Mike, am I right with this?
>=20
> So I suggest something like "calibration-mode", "cm-calibration-mode",
> "cm-calibration", or similar.

I agree that color management is too general a term and it's confusing =
what it means. So it's useful in the form of cm- to make it easier to =
find color management related switches, but the switches themselves have =
separate names:

cm-linearization
cm-calibration
cm-ICC
cm-3DLUT

And so on, each with a Boolean value.=20


Chris Murphy=
