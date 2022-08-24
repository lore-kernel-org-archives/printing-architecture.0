Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 154E660FDB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 600FD60F30
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 0F92280438
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1661371234;
 bh=o/B//z+RnVi3xSNJDrWbIIxahsi1hKZ3gJs9gQSEQg8=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=Hw2knd4Rq5MV0XrM00HDozl1bd6fi4XeunSrtVxUWkxxqy+tPFaHUmY1jLLGXHVT0
 uwKLKXZrfu1yqTQy0RBKO3UxiOdBpplCXea8TjGCRgm5qPRQuLA2gzEHH1+8ZOqCZ1
 Rqm2/nxchgz1Sgv80S6DfRTcOGgIn7k3NrVSb3lM=
Content-Type: multipart/signed;
 boundary="Apple-Mail=_D42C018C-A260-44C7-89CF-4FBA7A758BC5";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <35597c1ab89c5e30017aaa638438e355@sebastianwick.net>
Date: Wed, 24 Aug 2022 16:00:32 -0400
Message-Id: <07875CB4-C3EB-4E12-9DBB-AB81BB861729@msweet.org>
References: <e75ae2ef-3b1b-649e-24d0-74e9311268cb@gmail.com>
 <b9ea823b370b12f20c91e6ee00dabcb5@sebastianwick.net>
 <49e9161a-6ded-8196-cc67-9ce8d06c8176@gmail.com>
 <BDF4CF3B-C196-4CDE-AA35-6D47AC4B3CDF@msweet.org>
 <2a25a2c6-c80c-be2c-4ab2-d595ed4267b7@gmail.com>
 <81DCCB8E-C960-4CAC-BA69-3352A5200022@msweet.org>
 <9c5a7d55b9bb9bdcb9c23d772bbb5bc3@sebastianwick.net>
 <7F1853F5-8BA6-4037-BAB9-139924C2F9A2@msweet.org>
 <35597c1ab89c5e30017aaa638438e355@sebastianwick.net>
Subject: Re: [Printing-architecture] Bye-Bye colord - OR - Poll ICC profiles
 via IPP for soft proofing
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Sebastian Wick <sebastian@sebastianwick.net>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Till Kamppeter <till.kamppeter@gmail.com>


--Apple-Mail=_D42C018C-A260-44C7-89CF-4FBA7A758BC5
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Sebastien,

> On Aug 24, 2022, at 11:47 AM, Sebastian Wick =
<sebastian@sebastianwick.net> wrote:
> ...
> For input they all support sRGB, sGray. Some also support AdobeRGB, =
but
> how do you know when a printer supports AdobeRGB? Some support device
> profiles and they are advertised with printer-icc-profiles.

The "pwg-raster-document-types-supported" and "urf-supported" attributes =
advertise the supported raster color spaces. We use that to determine =
which cupsColorSpace values to use in the PPD file.

> Assuming I know what input profiles the printer supports, how do I =
tell
> the printer what profile my document is in? You already partially
> answered the question: PDF printers use the embedded ICC profiles. Do
> all the document formats support embedded profiles? Is that always how
> printers figure out the source profile of a document?

PDF supports it, PostScript somewhat less so.  For raster =
(image/pwg-raster and image/urf), the color space is a single well-known =
space (sRGB, sGray, AdobeRGB) or device color space (RGB, CMY, CMYK, K, =
W), for which the Client has converted all color data in the source =
document to the destination color space.

>>> Is this kind of information documented somewhere?
>> Yes, in the IPP Everywhere specification:
>> 	https://www.pwg.org/ipp/everywhere.html
>=20
> Either I missed something, which is highly likely, or the way color
> management is supposed to work is very open to interpretation (looked =
at
> IPP Everywhere v1.1, and PWG 5100.13).

We are adding clarifications to the updates of these documents now, so =
if you can provide some specific feedback I can make sure your concerns =
are addressed.

________________________
Michael Sweet


--Apple-Mail=_D42C018C-A260-44C7-89CF-4FBA7A758BC5
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkIbDzcZsP1Y8+PQFvmfHXsgfMkQFAmMGg2AACgkQvmfHXsgf
MkS5WQ//YuRH/E2EvpId3OIxw2DFW7CVASmg99vone86lK9Kga94S1oHO1rp+pBu
Gn3yhbf8CuIvH9+iQLTWyAVLhh/2v1q92ExckMKtyJ6LYnZLPpXl7NK6AVZyhxXv
4vr+4JbHRIKnwpN9VW0r8/ZDORQHMFII2wSuL4K1jLD5i7BTxoNJIGx168D3XfVR
xiCxc5Cvnk6+WrFpolsbt/BKiEKADEsy//b+WBOZtjN1Oy0j2wFv52IUkSw6wKFb
q2nzSz2DciKB39sh/F5R/qgzgt0VPV+39OCv9TgHt11rYr8AauKilAlJPA3y6/HR
4kobSxqea0kaDwiLRyqMINqmsmyFLipXlEyEH1AzBgpq6fKaOdDmjWysPzVEDwbH
YchQVmJgkfawT5Yu11xvnxosIpq4x744EFD1PYbzNpFWE5yq+H+MrXYJCslZsQRN
V25H+paDTNwuukii8+24XxETWhvfAI/Ms+vAtmFUE1jEvyW5ufdkt9JRwoMfgHDS
s9ZNUL12zYJCeFxLaLzbnkApLoypXj40i0phGWGC2/1RpyKSLQ4Hn6/YimHCau8n
ZFoqnMz8US8RdTcuzcHjyd1jdm6sbUzvUCZIOG9u3xmyw4f+CUmQWmmjtihYtb7y
0JanckHLD+gnGIg4E5QofeC8UL8kYg3g6ATOOy/cug6PxGpB75k=
=sN8T
-----END PGP SIGNATURE-----

--Apple-Mail=_D42C018C-A260-44C7-89CF-4FBA7A758BC5--
