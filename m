Return-Path: <pascal@obry.net>
Message-ID: <1417549437.5922.28.camel@obry.net>
From: Pascal Obry <pascal@obry.net>
Date: Tue, 02 Dec 2014 20:43:57 +0100
In-Reply-To: <8ACDAB6F-4D54-4AA5-9C08-51D013D0CB39@apple.com>
References: <8ACDAB6F-4D54-4AA5-9C08-51D013D0CB39@apple.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0
Subject: Re: [Printing-architecture] CUPS STR #4521: Unexplained high CPU
 use by cupsd on Linux...
Reply-To: pascal@obry.net
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org

Le mardi 02 d=C3=A9cembre 2014 =C3=A0 11:35 -0500, Michael Sweet a =C3=A9cr=
it :=20
> All,
>=20
> We've received several bug reports about cupsd using 100% CPU, either on =
startup or after connecting/turning on a printer:
>=20
>     https://www.cups.org/str.php?L4521
>=20
> I cannot reproduce myself, but was hoping someone more familiar with all =
of the helper programs running on Linux might be able to shed some light on=
 this?

Isn't this that the issue with the /tmp filling bug?

https://bugs.launchpad.net/ubuntu/+source/system-config-printer/+bug/115639=
8

There was a similar bug reported on Debian.

--=20
  Pascal Obry /  Magny Les Hameaux (78)

  The best way to travel is by means of imagination

  http://v2p.fr.eu.org
  http://www.obry.net

  gpg --keyserver keys.gnupg.net --recv-key F949BD3B

