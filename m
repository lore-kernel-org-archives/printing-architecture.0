Return-Path: <zdohnal@redhat.com>
References: <CAN40gSubUV9Y3dfNwU+xKSy=N92nffkdPMoSkoDpzq_Vd54D6A@mail.gmail.com>
	<649CD791-CA34-4AD0-A58B-3C0113410831@apple.com>
	<a323cfb1-6937-f621-ba7e-696a856b257a@gmail.com>
From: Zdenek Dohnal <zdohnal@redhat.com>
Message-ID: <b031d1f0-2da0-c484-2075-04b3badc9d6a@redhat.com>
Date: Mon, 14 Jan 2019 17:51:30 +0100
MIME-Version: 1.0
In-Reply-To: <a323cfb1-6937-f621-ba7e-696a856b257a@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="3oJUjSknPhWxwnWrvpfW43Lwx3ceTAyR8"
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
To: Till Kamppeter <till.kamppeter@gmail.com>, Michael Sweet <msweet@apple.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Aveek Basu <aveek.basu@lexmark.com>, Michal Sekletar <msekleta@redhat.com>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--3oJUjSknPhWxwnWrvpfW43Lwx3ceTAyR8
Content-Type: multipart/mixed; boundary="DcwD70JsOJPAVJKmBHwVWd5J9WEJ9hxxs";
 protected-headers="v1"
From: Zdenek Dohnal <zdohnal@redhat.com>
To: Till Kamppeter <till.kamppeter@gmail.com>,
 Michael Sweet <msweet@apple.com>
Cc: Ira McDonald <blueroofmusic@gmail.com>,
 "printing-architecture@lists.linux-foundation.org"
 <printing-architecture@lists.linux-foundation.org>,
 Aveek Basu <aveek.basu@lexmark.com>, Michal Sekletar <msekleta@redhat.com>
Message-ID: <b031d1f0-2da0-c484-2075-04b3badc9d6a@redhat.com>
Subject: Re: [Printing-architecture] OP Minutes (9 January)
References: <CAN40gSubUV9Y3dfNwU+xKSy=N92nffkdPMoSkoDpzq_Vd54D6A@mail.gmail.com>
 <649CD791-CA34-4AD0-A58B-3C0113410831@apple.com>
 <a323cfb1-6937-f621-ba7e-696a856b257a@gmail.com>
In-Reply-To: <a323cfb1-6937-f621-ba7e-696a856b257a@gmail.com>

--DcwD70JsOJPAVJKmBHwVWd5J9WEJ9hxxs
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

Hi everyone,

On 1/14/19 12:02 PM, Till Kamppeter wrote:
> On 14/01/2019 01:52, Michael Sweet wrote:
>> Ira,
>>
>> A bug was filed against CUPS last month requesting that we start
>> supporting systemd's new mDNS resolver (which apparently is replacing
>> the use of Avahi in systemd?!?):
>>
>> https://github.com/apple/cups/issues/5452
>>
>> I pushed back since there does not appear to be a way to browse
>> DNS-SD SRV records and there is no interface for registering services
>> outside of systemd configuration files. =C2=A0But that might be a futu=
re
>> alternative to Avahi should they extend the current interfaces to
>> support it...
>>
>
> The best would probably be here to post feature requests on this
> project so that they know what an mDNS/DNS-SD stack needs to be
> feature-complete and replace the unmaintained Avahi.

I talked about both issues with Michal Sekletar, which is systemd and
avahi maintainer for RHEL and the situation is following:

1) systemd-resolved as successor of nss-mdns module:

=C2=A0=C2=A0=C2=A0 As far as Michal knows, systemd-resolved is not curren=
tly meant as
successor of nss-mdns module + avahi since it does not support service
browsing as Mike found out. If it will in the future, he does not know
right now (probably how avahi situation will turn up...).

2) Avahi upstream maintenance

=C2=A0=C2=A0 Michal and several other people tried to convince Trent to p=
ass
ownership to someone else (Michal knew about two people, who would like
to take Avahi project at that time) about two years ago, because Trent
seemed to do not have time for the project. But Trent did not want to
give away the upstream project. Currently Michal fixes Avahi issues
downstream in Fedora/RHEL.

Is there a way how to solve the situation? Cloning the project is not
optimal, because Trent's github repo is still the first obvious choice
when you google 'avahi github'.

>
> =C2=A0=C2=A0 Till
>
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architectur=
e

--=20
Zdenek Dohnal
Associate Software Engineer
Red Hat Czech - Brno TPB-C



--DcwD70JsOJPAVJKmBHwVWd5J9WEJ9hxxs--

--3oJUjSknPhWxwnWrvpfW43Lwx3ceTAyR8
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEettYIDyl8EbygCWyFapqf01CJ9cFAlw8vhIACgkQFapqf01C
J9emFggAv5krDgTc/A5HTF02DonTm+jydS+cqfM2dYoGFLcyZK16O1/B2ftl/Vrg
ZjY78b9c1JCFb0KAxBP0jMmHuO1KpFbAEEITO02gA/wUWd2TqvFG0Hk65Ze6IfkN
UfyqYW3oZ+adRA+IucJuDLFsDtCHmTd+NeDKsZIj87pC1mNDr8MR+EZkohTz22W4
bjku+0N5GEbM1S1co6SCeDW7UhuKOFC3CK47BzSfe0slodNKN1k7gL+3fnCmP6NC
q0TTl3eFeTM/2LeGQgkbEAeCri2KfeWAW6iN+GhpI6+lixoPIZlwlGX9FX27s6Gx
z7lZ3O4/FTGaMUYwTIe5wQYldULKzg==
=EC7o
-----END PGP SIGNATURE-----

--3oJUjSknPhWxwnWrvpfW43Lwx3ceTAyR8--
