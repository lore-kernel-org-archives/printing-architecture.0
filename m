Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A64CA8145D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0A09581431
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org BEE49803D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1684360761;
 bh=8C0r3fXoFsjxlqPpW9q9HJTNb0EPbwd6HxUpIxcdpPo=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=YLrh+YnZa+tbFaQI2B+Vj9+kA0fNDUHzWslazc5oSf02yZ4lakvPTvcdmu44MHryt
 qp6IXcqJAP+QlSE+bIISRqLLaPUC6WIDw+7IHZklbxMrJLIrew0kqi7I1yIseW+W9X
 LYH5oYKlNVyVhpv3lTt9H9B1sXRpxiQER2UkMdgw=
Content-Type: multipart/signed;
 boundary="Apple-Mail=_1CB073C3-D6B3-48F5-BE86-A55E17C743B8";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.600.7\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <10fdb59a-1410-8fd1-aa5d-fd048c8cc6cf@funwithsoftware.org>
Date: Wed, 17 May 2023 17:59:08 -0400
Message-Id: <604876BD-9FBF-489C-B1C5-15675BEF188D@msweet.org>
References: <5c41a34f-c701-dfb6-7f73-bff335836b19@funwithsoftware.org>
 <703A0E9E-365B-431A-8982-9F6617F09D26@msweet.org>
 <10fdb59a-1410-8fd1-aa5d-fd048c8cc6cf@funwithsoftware.org>
Subject: Re: [Printing-architecture] names of paper sizes
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Mignon Pelletier <code@funwithsoftware.org>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>


--Apple-Mail=_1CB073C3-D6B3-48F5-BE86-A55E17C743B8
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Mignon,

It might help to know what version of CUPS and what OS/Linux =
distribution you are using?


> On May 17, 2023, at 3:24 PM, Mignon Pelletier =
<code@funwithsoftware.org> wrote:
>=20
> On 5/17/23 3:52 AM, Michael Sweet wrote:
>> On May 14, 2023, at 6:04 PM, Mignon Pelletier =
<code@funwithsoftware.org> wrote:
>>> 2) How can I obtain the human-readable names, such as "30330 Return =
Address", preferably without using any deprecated APIs?
>> The cupsLocalizeDestMedia function is provided for this since CUPS =
2.0.
>=20
> I had tried that, but cupLocalizeDestMedia() just returns a NULL =
pointer.  With this code:
>=20
>     unsigned flags =3D 0;
>     cups_size_t size;
>     int i;
>     int count =3D cupsGetDestMediaCount(CUPS_HTTP_DEFAULT,
>                                       dest, info,
>                                       flags);
>=20
>     for (i =3D 0; i < count; i ++) {
>         if (cupsGetDestMediaByIndex(CUPS_HTTP_DEFAULT, dest, info,
>                                     i, flags,
>                                     &size)) {
>             const char *loc =3D
>                 cupsLocalizeDestMedia (CUPS_HTTP_DEFAULT, dest, info,
>                                        flags, &size);
>             printf("  %s:\n", size.media);
>             printf("     Local: %s\n", loc ? loc : "N/A");
>         }
>     }
>=20
> I get:
>=20
>   custom_12.7x47.67mm_12.7x47.67mm:
>      Local: N/A
>   custom_0.5x2in_0.5x2in:
>      Local: N/A
>   custom_0.75x2in_0.75x2in:
>      Local: N/A
>   custom_0.75x2.5in_0.75x2.5in:
>      Local: N/A
>=20
> etc.
>=20
> Any idea why I'm getting NULL, or how I can troubleshoot that?
>=20
> --Mignon
>=20

________________________
Michael Sweet


--Apple-Mail=_1CB073C3-D6B3-48F5-BE86-A55E17C743B8
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkIbDzcZsP1Y8+PQFvmfHXsgfMkQFAmRlTiwACgkQvmfHXsgf
MkTOzA//XjzTNN7mLy/a6JPV7gcUornpakx9DUE+00/4CXOkuRc15MwfupTnYTLw
O2tJZ9T2ytYGgqP1HPVGVe1TGGMgynCEVRgZW+MPJgfg7xOEVlSyxZ8x3Cs+1lEE
eb/dG7ZxgjhskfoLQk9IOgbqjuzsa0ndG+RpKaLrhyPnML8YJKQf31I8Cqb34SK+
3Y1ybpY6sTrV+CymqDHU6xKaHzilr7xGVSx92iLksaTYaXksJ53dBrQZeyJnrwiJ
3S3RSHthrUZr2pC+49N67tgi9kEVdVu6JBNx1+yUEXkyAqApZ9db4DAtk5Tzc3zJ
4lNhpkHIZz7YbkUBAD1UEMKtNs/P/durUTG8BfNcuTAqS1hwNnle+wEqYeGqGHq+
KhK4zCRhkqZeL6nzu2zVuy1pLZRyrG1zc6InB//fLWXD6/++PqvdkkffC56TwcGX
uKQkg7XUKtEs2JWItJLwVZ5lFZ4AEPDg2sFef+nTIU4mCQHXf4fOz9pwZZ8MneA3
565QX06USmnqiI/pf1DmOrPp8w81HBgPyAiEhrsN+CmBmwW6tLoOcWg/JznBbZJ8
4ze0V5MTlAVa15EQyrAQfdAFVxt4xJB+ZsnPQSb7GsuKoDaWH3LuVBxSr+Sa7mPh
qEGr1Ckug/KjLALL5Ov6ONACXrNxphU4yjH0OIDVD+dWQgYDZN0=
=cEhm
-----END PGP SIGNATURE-----

--Apple-Mail=_1CB073C3-D6B3-48F5-BE86-A55E17C743B8--
