Return-Path: <pascal@obry.net>
Message-ID: <1404896351.3466.0.camel@pascal.home.net>
From: Pascal Obry <pascal@obry.net>
Date: Wed, 09 Jul 2014 10:59:11 +0200
In-Reply-To: <57676DA0-644D-4295-B7B0-61D0F4EF51B3@apple.com>
References: <1404748055.11220.7.camel@pascal.home.net>
	<CAN40gSuqu1=Y0jq6ZS+hiiJ=T4L0-Ui+JK7cBb93KjWpu9tG+Q@mail.gmail.com>
	<ABD15507-E7F6-484D-974C-BFC0B69CF5B8@apple.com>
	<CAN40gSs5nCeUkxQ6aOcpX--keVKhPMZGVnfnADoxGCyYbPX1Kg@mail.gmail.com>
	<1404834680.9852.20.camel@pascal.home.net>
	<57676DA0-644D-4295-B7B0-61D0F4EF51B3@apple.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0
Subject: Re: [Printing-architecture] CUPS and color management
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
To: Michael Sweet <msweet@apple.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>


Michael,

> On Jul 8, 2014, at 11:51 AM, Pascal Obry <pascal@obry.net> wrote:
> > ...
> > Is the cm-calibration just a regular option?
>=20
> Yes; at the IPP level it is a boolean attribute.
>=20
> > So, should I just do:
> >=20
> >  num_options =3D cupsAddOption("cm-calibration",
> >                              "false",
> >                              num_options, &options);
>=20
> Use "true" for the value (otherwise the filter will see "nocm-calibration=
"...)

Makes sense indeed! Thanks a lot to all for the quick help.

Cheers,

--=20
  Pascal Obry /  Magny Les Hameaux (78)

  The best way to travel is by means of imagination

  http://v2p.fr.eu.org
  http://www.obry.net

  gpg --keyserver keys.gnupg.net --recv-key F949BD3B

