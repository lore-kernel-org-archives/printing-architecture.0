Return-Path: <pascal@obry.net>
Message-ID: <1404834680.9852.20.camel@pascal.home.net>
From: Pascal Obry <pascal@obry.net>
Date: Tue, 08 Jul 2014 17:51:20 +0200
In-Reply-To: <CAN40gSs5nCeUkxQ6aOcpX--keVKhPMZGVnfnADoxGCyYbPX1Kg@mail.gmail.com>
References: <1404748055.11220.7.camel@pascal.home.net>
	<CAN40gSuqu1=Y0jq6ZS+hiiJ=T4L0-Ui+JK7cBb93KjWpu9tG+Q@mail.gmail.com>
	<ABD15507-E7F6-484D-974C-BFC0B69CF5B8@apple.com>
	<CAN40gSs5nCeUkxQ6aOcpX--keVKhPMZGVnfnADoxGCyYbPX1Kg@mail.gmail.com>
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
To: Ira McDonald <blueroofmusic@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>


Hi Ira,=20
> Rev. 7225 of 'cups-filters' now replaces "no-color-management" with
> "cm-calibration" for the bool option. So the following commands should
> work without the added '=3D' symbol, and will disable ICC profile
> management:
>=20
>=20
> $ rastertopdf 1 foo bar 1 "cm-calibration" input.ras >>output.pdf
>=20
> $ foomatic-rip -p foo -o cm-calibration
>=20
>=20
> Joe Simon

Hum... I'm new to CUPS :) So how does that translate in terms of CUPS
API?

Is the cm-calibration just a regular option?

So, should I just do:

  num_options =3D cupsAddOption("cm-calibration",
                              "false",
                              num_options, &options);

And pass num_optionss & options to cupsPrintFile()?

Cheers,
Pascal.=20
--=20
  Pascal Obry /  Magny Les Hameaux (78)

  The best way to travel is by means of imagination

  http://v2p.fr.eu.org
  http://www.obry.net

  gpg --keyserver keys.gnupg.net --recv-key F949BD3B

