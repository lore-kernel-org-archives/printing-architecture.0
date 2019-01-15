Return-Path: <zdohnal@redhat.com>
References: <CAN40gSubUV9Y3dfNwU+xKSy=N92nffkdPMoSkoDpzq_Vd54D6A@mail.gmail.com>
	<649CD791-CA34-4AD0-A58B-3C0113410831@apple.com>
	<a323cfb1-6937-f621-ba7e-696a856b257a@gmail.com>
	<b031d1f0-2da0-c484-2075-04b3badc9d6a@redhat.com>
	<b28db535-0705-a673-1e32-6a772559cdac@gmail.com>
From: Zdenek Dohnal <zdohnal@redhat.com>
Message-ID: <4d020a9a-acc1-606f-cb40-ae6439ec68bf@redhat.com>
Date: Tue, 15 Jan 2019 13:33:13 +0100
MIME-Version: 1.0
In-Reply-To: <b28db535-0705-a673-1e32-6a772559cdac@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="SgC4VMHc4IwoHV3yWhctn31apiRKQ1lFu"
Subject: Re: [Printing-architecture] OP Minutes (9 January)
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>, Michal Sekletar <msekleta@redhat.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Aveek Basu <aveek.basu@lexmark.com>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--SgC4VMHc4IwoHV3yWhctn31apiRKQ1lFu
Content-Type: multipart/mixed; boundary="qvUEVeXRyg5VlrWF3mrDpANNViJEC7HDg";
 protected-headers="v1"
From: Zdenek Dohnal <zdohnal@redhat.com>
To: Till Kamppeter <till.kamppeter@gmail.com>,
 Michal Sekletar <msekleta@redhat.com>
Cc: Michael Sweet <msweet@apple.com>, Ira McDonald <blueroofmusic@gmail.com>,
 "printing-architecture@lists.linux-foundation.org"
 <printing-architecture@lists.linux-foundation.org>,
 Aveek Basu <aveek.basu@lexmark.com>
Message-ID: <4d020a9a-acc1-606f-cb40-ae6439ec68bf@redhat.com>
Subject: Re: [Printing-architecture] OP Minutes (9 January)
References: <CAN40gSubUV9Y3dfNwU+xKSy=N92nffkdPMoSkoDpzq_Vd54D6A@mail.gmail.com>
 <649CD791-CA34-4AD0-A58B-3C0113410831@apple.com>
 <a323cfb1-6937-f621-ba7e-696a856b257a@gmail.com>
 <b031d1f0-2da0-c484-2075-04b3badc9d6a@redhat.com>
 <b28db535-0705-a673-1e32-6a772559cdac@gmail.com>
In-Reply-To: <b28db535-0705-a673-1e32-6a772559cdac@gmail.com>

--qvUEVeXRyg5VlrWF3mrDpANNViJEC7HDg
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US


On 1/14/19 6:50 PM, Till Kamppeter wrote:
> On 14/01/2019 17:51, Zdenek Dohnal wrote:
>> 2) Avahi upstream maintenance
>>
>> =C2=A0=C2=A0=C2=A0 Michal and several other people tried to convince T=
rent to pass
>> ownership to someone else (Michal knew about two people, who would lik=
e
>> to take Avahi project at that time) about two years ago, because Trent=

>> seemed to do not have time for the project. But Trent did not want to
>> give away the upstream project. Currently Michal fixes Avahi issues
>> downstream in Fedora/RHEL.
>>
>> Is there a way how to solve the situation? Cloning the project is not
>> optimal, because Trent's github repo is still the first obvious choice=

>> when you google 'avahi github'.
>
> As Debian does not accept carrying patches distro only with upstream
> not taking them and also as it is very awkward if all distros have to
> carry the same patch due to upstream not caring, and naturally also an
> integral part of the OS needs solid upstream maintainership, this is
> an unbearable situation.
I agree. We have the similar policy in RHEL/Fedora, but in reality there
still are several downstream patches due dead/unresponsive upstreams or
for OS specific changes...
>
> It would be great if someone could convince Trent to accept a
> co-maintainer who also can directly commit to and also issue releases
> of Avahi.
IMO it was other alternative what Michal tried.
> If Trent refuses this, I see as the only solution the forking of the
> project. This is the usual way how one handles these situations.
Michal, was the forking of avahi project in consideration at that time?
>
> The current official Avahi repo is
>
> https://github.com/lathiat/avahi/
>
> so it is under the personal domain of Trent and not a project domain
> as for example
>
> https://github.com/openprinting/
>
> where cups-filters, ippusbxd and others are.
>
> So I checked
>
> https://github.com/avahi/
>
> and there is something which has nothing to do with Avahi. We should
> ask the owner whether he could move his GitHub activity to another
> name to free avahi for us and then we put our fork of Avahi there.
>
> If this does not work out I suggest to host the Avahi fork on GitLab.
>
> Or should we fork Avahi under a new name then?
>
> =C2=A0=C2=A0 Till

--=20
Zdenek Dohnal
Associate Software Engineer
Red Hat Czech - Brno TPB-C



--qvUEVeXRyg5VlrWF3mrDpANNViJEC7HDg--

--SgC4VMHc4IwoHV3yWhctn31apiRKQ1lFu
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEettYIDyl8EbygCWyFapqf01CJ9cFAlw90woACgkQFapqf01C
J9f4/AgAxf7j4RehnfxWrXINB0pJPXX4YWVM6SUSH/2EaVA9v6I4dWafB+QmqYgo
tu2zaWGtneUrjtAYA8HTuC6kRgUncIavWXdALCFVwiTAhxTuKErA7r3yUWEkMrth
os0usozav/qPZX0yrnOyVrnyIBRN9MMH2lJJwPpUiVjv7chzQTEarTfpPuNyUfjI
8LDZhLTbdb8HFC6ltX0zfIn8LVO0IsWYcQNhwdxPPdeVMh28MSUpXRP1fLx4XlUZ
BDRvfaVcL5Et0a9CfLH30sRmOOdYhns3vPbH3NYTv8gDFYl2uOUTCN+gEd6RPSz1
56/6/rKa3LNizG/HZmNJlmvvq8+Cjg==
=C/AM
-----END PGP SIGNATURE-----

--SgC4VMHc4IwoHV3yWhctn31apiRKQ1lFu--
