Return-Path: <zdohnal@redhat.com>
References: <a6b09ce3-c0ef-c273-7887-0daa4ec52edc@redhat.com>
	<12e132cd-2029-aba3-7406-8b2a4299d772@gmail.com>
From: Zdenek Dohnal <zdohnal@redhat.com>
Message-ID: <f1ec8fd4-e98d-441b-523e-25b3ba5af9f1@redhat.com>
Date: Thu, 23 May 2019 08:48:04 +0200
MIME-Version: 1.0
In-Reply-To: <12e132cd-2029-aba3-7406-8b2a4299d772@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="ihqcgOwgUfvd8KnNsf1DLhuJYUffzyRpO"
Subject: Re: [Printing-architecture] RHEL 8 and system-config-printer GUI
 removal
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>, "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--ihqcgOwgUfvd8KnNsf1DLhuJYUffzyRpO
Content-Type: multipart/mixed; boundary="4j8NKcRKRpuwazH6hpTbNXvXB7VB50pTd";
 protected-headers="v1"
From: Zdenek Dohnal <zdohnal@redhat.com>
To: Till Kamppeter <till.kamppeter@gmail.com>,
 "printing-architecture@lists.linux-foundation.org"
 <printing-architecture@lists.linux-foundation.org>
Message-ID: <f1ec8fd4-e98d-441b-523e-25b3ba5af9f1@redhat.com>
Subject: Re: [Printing-architecture] RHEL 8 and system-config-printer GUI
 removal
References: <a6b09ce3-c0ef-c273-7887-0daa4ec52edc@redhat.com>
 <12e132cd-2029-aba3-7406-8b2a4299d772@gmail.com>
In-Reply-To: <12e132cd-2029-aba3-7406-8b2a4299d772@gmail.com>

--4j8NKcRKRpuwazH6hpTbNXvXB7VB50pTd
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US


On 5/20/19 2:08 PM, Till Kamppeter wrote:
> On 20/05/2019 12:43, Zdenek Dohnal wrote:
>> Hi all,
>>
>> Red Hat released new RHEL major version, 8, where desktop team and
>> cockpit team led initiative for removal of GUIs system-config-* projec=
ts
>> like system-config-printer.
>>
>> These teams decided that GNOME control center for clients and CUPS web=

>> interface (or cockpit using CUPS web interface) for servers are valid
>> alternatives, so system-config-printer GUI is not needed. The library
>> for dbus methods used by control-center, scp-dbus-service and udev
>> subpackage (tools for automatic printer installation) stay in the
>> release.
>>
>
> With this and with the conversion of scp-dbus-service to C which will
> (hopefully) happen this summer we could split system-config-printer
> into 2 projects, one would be the core part, completely in C
> (/lib/udev/udev-configure-printer is already in C) and the other would
> be the GUI, continuing in Python. We can try to get the student to
> also convert /lib/udev/udev-add-printer).
>
>> Because of that development (work priorities were shifted) I would lik=
e
>> to ask if someone would be interested in working in cooperation as
>> system-config-printer upstream - for GUI part especially, where there =
is
>> request for IPP everywhere support. I'm trying to at least maintain th=
e
>> project, but unfortunately I cannot find much time to implement new
>> features in the present.
>
> Ubuntu also uses GNOME Control Center as default printer setup GUI and
> so a default installation of Ubuntu Desktop also does not contain the
> system-config-printer GUI (The Debian packages are split
> appropriately), so Ubuntu also does not make use of the
> system-config-printer GUI.
>
> SUSE is also not using the system-config-printer GUI. Server users are
> using the CUPS web interface, as with Red Hat, desktop users use YaST,
> it is unmaintained, should it not suffice any more, one could perhaps
> recommend GNOME Control Center there, too.
>
> So with this one question for me is which distros will continue using
> the system-config-printer GUI, so that we should ask there whether
> they would overtake maintainership.
>
> If you want to get the hosting out of your personal GitHub (and also
> out of Red Hat) we can move system-config-printer into the
> OpenPrinting GitHub,
Ok, we can do that. I would like to still have commit access though, so
I could help with some issues+merging. I'll initiate the process next
Monday.
> at least in the Core (C) part I would also contribute stuff=20
Actually I thought I gave you commit access to s-c-p.
> and for sure I will also open GSoC projects.
>
> For the GUI (Python) part it depends on which and how many distros
> want it. It is simply only one, they could host and maintain it
> themselves. A hosting on OpenPrinting makes sense as if a maintainer
> abandons it it does not need to get re-hosted when anotherone takes
> on. I simply change commit permissions.
Sounds reasonable, thank you for the help!
>
>
> =C2=A0=C2=A0 Till

--=20
Zdenek Dohnal
Software Engineer
Red Hat Czech - Brno TPB-C



--4j8NKcRKRpuwazH6hpTbNXvXB7VB50pTd--

--ihqcgOwgUfvd8KnNsf1DLhuJYUffzyRpO
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEettYIDyl8EbygCWyFapqf01CJ9cFAlzmQiQACgkQFapqf01C
J9eSGggArP+rq0TZkQH7OcwvUqKljR1ZnFqzEcVBazQGtWbn4qlVTeZY0x0kgSRZ
Pm/5inZaineQcwY9njwO3/DX/VS0LEfhLU5Br1gZ3KJJkiDgkBqHmFKaZ6SyPWtk
wjbhmd//VHieoPvraIl4GjKn/8/r3dFBPKOdGTvk2ZuyhtOSmqRk5zybdkpgtgpN
8j0Wtvwb0BBk19RH2dPCrx64aiK+lvZYBzWfpIMiZftXiRnlzTClduNeZi2S7pBZ
kqFO8qK62itpwYzHidH/8XoEOzBIjZMt/ZvQG5b7yMBld2QlVbrcu4RnzKJwh/gg
PO4TtziDAA8OaImEn6DvmwtHxHTG/w==
=6UzT
-----END PGP SIGNATURE-----

--ihqcgOwgUfvd8KnNsf1DLhuJYUffzyRpO--
