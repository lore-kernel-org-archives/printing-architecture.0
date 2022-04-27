Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 7461F82543
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1651063405;
 bh=pus9fSsxy273//wz9OMiJ55EzHttsZM4juzbVdprlbQ=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=WmCrB6DCcaD1rDG/JvVWuJptW+mOdoI2lf9/BBpL1JE4PVwTLPlhI/iqjHK8fZyLi
 8NeeFxfTJpiFkIvucgQ9+ZHvioPrVBjW4uGt8SfPIabN3SIDFm3zH5HTV8sltIMuOF
 GD/7rrikVv3wW11Uvf1bcAK0PrvHj63nvNlS66IA=
Content-Type: multipart/signed;
 boundary="Apple-Mail=_2465596A-1066-47EA-A1E0-71C9C444D362";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.11\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <0aa65341-6244-d76e-2751-75dd02413568@gmail.com>
Date: Wed, 27 Apr 2022 08:43:23 -0400
Message-Id: <8172806B-108A-4857-95F3-F5749789ED36@msweet.org>
References: <0aa65341-6244-d76e-2751-75dd02413568@gmail.com>
Subject: Re: [Printing-architecture] CUPS 3.x: How we make it converting job
	data formats?
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


--Apple-Mail=_2465596A-1066-47EA-A1E0-71C9C444D362
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Till,

For CUPS 3.0 I'd like us to limit "filtered" printing to a smaller set =
of common formats: plain (Unicode) text, JPEG and PNG images, and PDF.  =
Then we "only" need to support converting from those formats to =
PWG/Apple Raster and PDF using the standard IPP Everywhere Job Template =
attributes. Obviously we can still allow printer-specific formats (PCL, =
PostScript, ESC/P, ZPL, etc.) sent to compatible printers, but limiting =
the formats we process locally will greatly simplify development and =
testing.

> On Apr 26, 2022, at 11:42 AM, Till Kamppeter =
<till.kamppeter@gmail.com> wrote:
> ...
> 1. Continue with external filter executables from cups-filters, but =
now they do not need support PPDs, they can be based on the original =
filter functions in libcupsfilters. The "universal" CUPS filter, based =
on the "cfFilterUniversal()" filter function, can be used to call filter =
chains from a single executable to reduce external executable calls).

I think that isolating the filtering in a separate process is an =
important security and reliability choice - a filter crashing stops a =
single job, but crashing the local spooler will stop (and potentially =
lose) everything, not to mention likely causing issues for the =
applications that are talking to it.

The model I used in the PWG ippserver and ippeveprinter sample code =
(with an external transform command) is probably the way we want to go, =
with that executable handling all of the basic filtering functionality =
in one program.  I really don't want to see a proliferation of filters =
like we have in the current CUPS since that has historically been a =
great source of pain/support calls.  Better to have a smaller set of =
file formats we support consistently.

WRT filtering functionality, we've recently had new requests to be able =
to add watermarking and header/footer text to pages, in addition to the =
current IPP Everywhere-based filter options.  Doing so is important for =
replicating common printer driver options, and is also useful in =
enterprise environments where printing is under greater =
control/restrictions.

________________________
Michael Sweet




--Apple-Mail=_2465596A-1066-47EA-A1E0-71C9C444D362
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkIbDzcZsP1Y8+PQFvmfHXsgfMkQFAmJpOmsACgkQvmfHXsgf
MkSKQg//TpfM3/5P4b2AvxZidxAh0XKJEzm9GR7HdRtlLIwkx5kf4V6lwsVLyUv6
BzZJN1lxhtkgWOCrghMEP7QjcvUUQsS/1wU5JMYY+f2mw9up0SQ/QDMUjFcSY+lb
FtHxQICsotW3Q5EHiXPhPZROvINziShbr2Of1w90FO8O13k4Er4+U+ORKLAqSNMu
06L3ClUs/Md1ABihKzE4JoNfJk1YtpCc0A0QJANBEDe3RiXZPqeQUXpJ0cjH9vWd
UWTlfE2KRD/GFRj0QIeRQcNTM/NZRK8c6+9PigLRFDe22g3ni2vLtHuVIO8x1kk0
5nU1ADMtxcPsk0ebobAioJLzA/pXGFBiDxxG66uCxhSYkUOcbmborKhVM5QXllX/
FnGRG/aRyZXmEgCTSFQo/MHXKxA9vdVuXO8QNNVhOTIlNAjCI/EhUV+X4YEXShMB
pBlShSQBJ5MIbjskSgASfGc1xFPh5eYK3DlpwefkqrFitwZ5ZrjMslH/QRLrt34Y
U7S9dqaZqCig3EimUAui3+rR4UEk2NaKVKshh9EMBSNnMQNdl4C+l8K/ACEMvjZ4
3kelTQcFC9J3GjYhHj0fPsTNCwQK/Q6P9Jx8CX4odWPg//6X6Fcos2S6tz0yZwre
zTKsRW0EqZAozmquTvckGXc3d8cETGZ6asgKw+mqXzCQU2r/pUA=
=bTEz
-----END PGP SIGNATURE-----

--Apple-Mail=_2465596A-1066-47EA-A1E0-71C9C444D362--
