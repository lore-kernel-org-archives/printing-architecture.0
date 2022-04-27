Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 2B60B82543
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1651062113;
 bh=CqbEGZgEndXrODhieCKelg5JLjXaKfbaPqYp3rml6EM=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=mKXVho85H+WJF+U8VaOSX1Ws6W3afLdmNApwyEGxLQ9bVVkXfL7ZuGdWz0XtuCl4O
 NpNHI5WsO2Za7KElDrAJL2FvuBnTQTExHqofPLsAGDEb5XQ6/NGoICHMJ0Wyl9Icvm
 qxIf4XdV7WFm80OGTGg9Kq4ztZyUvod7cLZ/JZ2g=
Content-Type: multipart/signed;
 boundary="Apple-Mail=_2C6589E0-1752-4AD6-8CFA-FED0DBF681F9";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.11\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <7ffdde3b-d938-1cfc-4932-cfb670c25b4b@gmail.com>
Date: Wed, 27 Apr 2022 08:21:51 -0400
Message-Id: <7F73C50B-E93D-450E-A7CB-5E98B56B20B2@msweet.org>
References: <7ffdde3b-d938-1cfc-4932-cfb670c25b4b@gmail.com>
Subject: Re: [Printing-architecture] CUPS 3.x: Printing via D-Bus
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


--Apple-Mail=_2C6589E0-1752-4AD6-8CFA-FED0DBF681F9
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Till,

My thoughts on the DBUS interface (and any future XPC interface, should =
Apple adopt our work) is that it should expose the same IPP operations, =
attributes, and values as are available over HTTP.

The local spooler needs to:

1. Manage a dynamic list of print destinations (DNS-SD, mDNS, local =
configuration profiles, Printer Applications, etc.)
2. Do queries for state/configuration/capabilities for a given =
destination, with some level of caching
3. Manage a dynamic list of queued jobs for those destinations, with the =
usual Create/Cancel/Reprint-Job functionality
4. Do minimal conversion/transform of document data for the destination =
(text, image, and PDF to PDF/raster)
5. Report any printer/job errors with possible actions (cancel, retry, =
etc.)
6. Handle any authentication challenges when sending jobs to =
destinations


> On Apr 26, 2022, at 12:56 PM, Till Kamppeter =
<till.kamppeter@gmail.com> wrote:
>=20
> Hi,
>=20
> I have looked through the CUPS 3.x planning and hit into the following =
feature:
>=20
> Printing via D-Bus
> ------------------
>=20
> In the local CUPS server it is planned to provide, in addition to the =
usual Unix domain socket, a D-Bus interface to receive requests from the =
client.
>=20
> This is not a new idea but before it was not thought out to be done in =
the CUPS daemon itself but in separate utilities.
>=20
> Back in 2006, on the first OpenPrinting Summit in Atlanta, Georgia we =
raised the idea of a Common Print Dialog and I started its =
implementation via the Google Summer of Code 2008, the first one ever I =
have participated in, I suggested my students to let the GUI =
applications not call the print dialog via direct library calls but by a =
D-Bus interface so that the desktop environment provides the dialog and =
so all applications appear with the same print dialog, if you use GNOME, =
all applications show the GTK dialog, also the Qt ones.
>=20
> We did not succeed to complete this due to lack of man power for the =
coding.
>=20
> Recently, I investigated how Flatpak handles applications with print =
functionality, and what they do is exactly this concept, not only for =
printing, but also for "Open", "Save as", ... dialogs. This way the =
system's dialog are used by the sandboxed application and through these =
the application has access to system resources like file systems and =
printers. I do not know whether they came to this idea by themselves or =
whether they picked up my idea of the Common Print Dialog, extending it =
to the other dialogs. They never talked with me.
>=20
> Independent of all this, back in 2017, when I did not know anything =
about Flatpak (did it exist already that time?) Aveek Basu remembered me =
to the Common Print Dialog project and whether we should revive it.
>=20
> But I came to the conclusion to not put a D-Bus interface between =
application and print dialog but between print dialog and print =
technology (CUPS, print-to-file, cloud print services, ...) so having =
the dialog being a frontend and talking to backends, one for each print =
technology, and let the author/maintainer/provider of each print =
technology also maintain his backend.
>=20
> This I have called the Common Print Dialog Backends (CPDB) then:
>=20
> =
https://linuxplumbersconf.org/event/11/contributions/1028/attachments/762/=
1433/Common-Print-Dialog-Backends.pdf
>=20
> Good part of it is already implemented in GSoC 2017 and following.
>=20
> This D-Bus interface does the standard print activity:
>=20
> - List the available printers
> - List capabilities and user-settable options for a selected printer
> - Send a job to a selected printer, with option settings
> - List the jobs
>=20
> What my imagination is for Michael's idea of a D-Bus interface to =
print on a local CUPS server is exactly this functionality. Therefore I =
think that we SHOULD NOT develop a new D-Bus interface for CUPS and then =
have our CUPS CPDB backend on its front side receive print requests from =
the print dialog via one D-Bus protocol (CPDB), convert the request to =
another D-Bus protocol (CUPS 3.x) and pass it on to CUPS, but instead, =
we right away take the CPDB D-Bus interface protocol and implement it in =
the local CUPS server, so that we do not need a separate CPDB backend =
for CUPS any more.
>=20
> Note that CPDB is not actuall;y used in the wild yet, so we can do any =
change on it to make it better suit CUPS if needed. Nothing is hammered =
in stone yet.
>=20
> WDYT?
>=20
>   Till
>=20

________________________
Michael Sweet




--Apple-Mail=_2C6589E0-1752-4AD6-8CFA-FED0DBF681F9
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkIbDzcZsP1Y8+PQFvmfHXsgfMkQFAmJpNV8ACgkQvmfHXsgf
MkQLxQ//QeGk3ISDR4COnkB83zgofbUcRlwrvRoJx3xuCKn2WK5sbhJ+jieygX29
xhbY8MUedZRPXaJwyMjT7NWAevc0CUykBZ5aZYMJtPz/MsEw3HZlQHmZ2Zs2wUn/
MkxKSztHKabhcclpDY3+cA9kiKBrvsEM5u4Z2XjV54ONyHY3Gc9T0otcWhTBwqUx
biSJmksZRZNyBlECX8L5n0uWskx9C/4a+VZz4K3MqBbL68BZe6QmvDXrrkAHKOZa
xje8iQOZq55aMXQf1MVrS0eltjPr7IlvIdDkJltScpQWgrLJ3+9EUO1/JUR/Sfb0
duMjg+wyb+bVebdvwP8IRoRq6+DA6vOrFOnzBVHWa+kkFQ6+4xnm8eAgITUTZG4Z
Bg5IpoWR9mnUELH7yTYySmJP9pMS7B0sPFnfziLt0hHLDguDPVL2Vuaias3ekcK5
iGsMXEF8zxpvpsS82yOx9D1HtPTotrwRV/xDvmIGFCB9olH9vUXzhutuXUNWpz9c
zQN9gtWLcPtomxmJDYvL4nOCyxtfrBvk/GBkwRhhsyVEoOmKw7/fLu3dBwnjK3l0
yeTmu2nflkFAHnrDv/2CEuzf8yfId6WF+wnFSziNorxgAzE3nl1PskSV+bt0L1lU
b7wLkfWbuTrCf9vdaJ46c1h+fW5olohTakDiuVCP8ujpkYdHFyE=
=oXxu
-----END PGP SIGNATURE-----

--Apple-Mail=_2C6589E0-1752-4AD6-8CFA-FED0DBF681F9--
