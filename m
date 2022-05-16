Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 41D8F826FC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1652712380;
 bh=bREDdSOVJQUVS858ycmMFw8tWjZzyQ7DvtjY08tCdec=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=V/ucMR+5GWXqhtd5OFa2yW/tMlnRRHGR7Ckcsl/AJiW1i9ALYkCk1NtdjMEnw6QBN
 tnkv4CQtWJCMy4Ucq/Ia/PiVQtz6pMqh9tEVMfO+Ym+zfBjd3d2ddW3ZJlXKXxqmsL
 rXOaWdx7TzFXJFZkJ0bne54bDQYIx2lUiL+AgIc0=
Content-Type: multipart/signed;
 boundary="Apple-Mail=_26760B1C-91FA-48F6-B1FD-457BD5981D2C";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.31\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <m3y1z1o89y.fsf@carbon.jhcloos.org>
Date: Mon, 16 May 2022 10:46:18 -0400
Message-Id: <FB549E97-8B2E-45A1-9550-684DC2A499B7@msweet.org>
References: <7AECB015-F222-4111-A05F-B57F68F76FAD@msweet.org>
 <b3d58dc0-1405-fc42-34d7-e3964407b5da@gmail.com>
 <D352678D-C1E1-4B39-96E1-EC54026FD4FF@msweet.org>
 <2d78d025-3216-2d0f-aae6-a4e5db4e11d1@gmail.com>
 <184255CD-9208-42EC-9919-3E980378E57E@msweet.org>
 <4a81b64b-c2d8-bdce-a64c-8fe4697f0cbf@gmail.com>
 <DDD5F2DC-E1A4-4EEB-9613-CBEF15462563@msweet.org>
 <m3y1z1o89y.fsf@carbon.jhcloos.org>
Subject: Re: [Printing-architecture] PAPPL 1.2rc1 (Supply levels)
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: James Cloos <cloos@jhcloos.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Till Kamppeter <till.kamppeter@gmail.com>


--Apple-Mail=_26760B1C-91FA-48F6-B1FD-457BD5981D2C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

James,

What version of CUPS do you have on that system?  The change from =
HTTP_STATUS_REDIRECT_TEMPORARILY to HTTP_STATUS_FOUND happened back in =
2017 (so CUPS 2.2/2.3 timeframe), so I might need to add some =
conditional code to still support the old name since I'm using the new =
name to avoid future breakage (current CUPS has a define from the old =
name to the new one...)  The hunan readable name changed when they =
updated the HTTP RFCs, and we *do* try to keep those in sync for =
sanity's sake... :(

A Github issue would be appreciated so that I don't forget this... :)

	https://github.com/michaelrsweet/pappl/issues

Thanks!


> On May 16, 2022, at 10:35 AM, James Cloos <cloos@jhcloos.com> wrote:
> ...
> it worked well for socket: on one of my boxen, but on my main
> workstation i got:
>=20
> Compiling printer-webif.c...
> printer-webif.c: In function '_papplPrinterWebCancelAllJobs':
> printer-webif.c:64:42: error: 'HTTP_STATUS_FOUND' undeclared (first =
use in this function); did you mean 'HTTP_STATUS_GONE'?
>   64 |       papplClientRespondRedirect(client, HTTP_STATUS_FOUND, =
path);
>      |                                          ^~~~~~~~~~~~~~~~~
>      |                                          HTTP_STATUS_GONE
> printer-webif.c:64:42: note: each undeclared identifier is reported =
only once for each function it appears in
> printer-webif.c: In function '_papplPrinterWebCancelJob':
> printer-webif.c:169:44: error: 'HTTP_STATUS_FOUND' undeclared (first =
use in this function); did you mean 'HTTP_STATUS_GONE'?
>  169 |         papplClientRespondRedirect(client, HTTP_STATUS_FOUND, =
path);
>      |                                            ^~~~~~~~~~~~~~~~~
>      |                                            HTTP_STATUS_GONE
> printer-webif.c: In function '_papplPrinterWebDelete':
> printer-webif.c:784:42: error: 'HTTP_STATUS_FOUND' undeclared (first =
use in this function); did you mean 'HTTP_STATUS_GONE'?
>  784 |       papplClientRespondRedirect(client, HTTP_STATUS_FOUND, =
"/");
>      |                                          ^~~~~~~~~~~~~~~~~
>      |                                          HTTP_STATUS_GONE
> printer-webif.c: In function '_papplPrinterWebReprintJob':
> printer-webif.c:1414:50: error: 'HTTP_STATUS_FOUND' undeclared (first =
use in this function); did you mean 'HTTP_STATUS_GONE'?
> 1414 |               papplClientRespondRedirect(client, =
HTTP_STATUS_FOUND, path);
>      |                                                  =
^~~~~~~~~~~~~~~~~
>      |                                                  =
HTTP_STATUS_GONE
> make[1]: *** [../Makedefs:75: printer-webif.o] Error 1
> make: *** [Makefile:28: all] Error 1
>=20
>=20
> make -k showed a number of similar issues in other files.
>=20
> obviously some dependency is too old; where does HTTP_STATUS_FOUND =
come
> from?
>=20
> in any case it looks like configure fail to notice that said dep is =
too
> old.
>=20
> -JimC
> --
> James Cloos <cloos@jhcloos.com>         OpenPGP: 0x997A9F17ED7DAEA6
>=20
>=20

________________________
Michael Sweet




--Apple-Mail=_26760B1C-91FA-48F6-B1FD-457BD5981D2C
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkIbDzcZsP1Y8+PQFvmfHXsgfMkQFAmKCY7oACgkQvmfHXsgf
MkTX3RAAqFDvG7U6icGI3wDwlrxlGvfVzTwXi7WBgF5hZBLtUdYw6LaE1dHCiOQh
KKsbKh5T8ysFHaGTsYexSmq/OJ2o/VhjX2WsAEpMSXSE1wMVJ0ZgPmU7YqPkwUsp
PGAVu06WA6GYIRWbP5/jPgcoRyWNvwdZTMhkUU+QMrKI8zehf8lfnRJN5RXZr4/E
Oculvrb20XZDULmw1VuJVs/vDjwwHFYANo104vTSgGnjmrma1+IQ53vXXP6f8DXZ
i4TQnnCMrGGtyn50M1Ds+7uWeC0B+2H6YxRH63HKtq2EM+uyP2//+ZWAzroBqMgS
nSLUtClLzi4LgC3CfqJQum+BzeIv06v0SBZx9z5Eu8s/z0JRHB/qQYhQUZw+EW4w
a1YoAQ5zVEP70kEM6MyyfIjtwGS0MNqDwIXuZQJU5gt8Y+7ISQ6Q2RKf1/cF9k9/
cpiaklfqIlWe0lsaeBr/rq78BJ2H2Z9WVVi7s+3LR+sSiFbssbtNuusXaH6rV9HV
5HvcZ0G2ha2ce+kpzoS7IK9x1TmaSDyxVv3OJ6quFe7U3oEUhzhR61DnzA2Vjog9
PbSULS1ZBZK6Xzbd8YqP6K0LlLvlULnA71sCyZBYVzK9iJ8mLDZnh3iF+EV4OIoi
WU//JWURKwfo80Pe3WrT2ZhHKTmWNFnDaBT+PqLLz5kr3tN9DMk=
=3LSm
-----END PGP SIGNATURE-----

--Apple-Mail=_26760B1C-91FA-48F6-B1FD-457BD5981D2C--
