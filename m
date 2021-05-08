Return-Path: <pizza@stuffed.shaftnet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 stuffed.shaftnet.org 148NqI7o771133
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaftnet.org;
 s=default; t=1620517939;
 bh=OJP30AthJFKqwYlRuMU9ahL3fe0UILJZsuODSNvmqnA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Uw8v7eT6vsuJsEgE66TT9MgbM83+e2htGrUnUP2f+ZMmy77gB9u05xlG6Msl7h/Qs
 DFUaaAFY+1e4j1wWch7qjZ358Qu8/YeBgZTwR8TXweoDku23a97amrOrSQjD6QdGWS
 Fq2XLZYRVlAQSOMPprGm1FZm+9yFvWliZyIlTU5A=
Date: Sat, 8 May 2021 19:52:18 -0400
From: Solomon Peachy <pizza@shaftnet.org>
Message-ID: <YJckMlum0aC3moQO@shaftnet.org>
References: <8c101e3b-2f80-666c-db86-05b7dd170a7c@gmail.com>
 <FC123AED-25FA-4E37-9957-29565F89DC1D@msweet.org>
 <e8060298-8b2b-94d9-3eaf-1386cbc9543c@gmail.com>
 <29E8A83D-5BBB-49AA-83A6-4B3EB765828A@msweet.org>
 <9db67beb-7ca2-249c-88e4-ead29d19ce63@gmail.com>
 <FC95906E-6085-4121-AEA8-9E53613872AD@msweet.org>
 <fdd1654d-8dd6-9eb8-e41d-dcf786c559d1@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="P/4Zw/jmgq+QoxLh"
Content-Disposition: inline
In-Reply-To: <fdd1654d-8dd6-9eb8-e41d-dcf786c559d1@gmail.com>
Subject: Re: [Printing-architecture] Make use of extended color spaces on
 IPP printers
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Jay Berkenbilt <ejb@ql.org>, Vikrant Malik <vikrant@iitk.ac.in>


--P/4Zw/jmgq+QoxLh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, May 08, 2021 at 12:11:51AM +0200, Till Kamppeter wrote:
> WDYT, would it also make sense to also switch to Adobe RGB (if available =
on
> the printer) if the user sets print-quality=3Dhigh?

The colorspace is a property of the submitted printjob. As transforms=20
into different colorspaces are inherently lossy, it must only be done
if/when absolutely necessary.

At the end of the day, there are only really three basic scenarios:

 1) Printjob is submitted in the printer's native/preferred colorspace,
    eg due to a fully color-managed workflow.
 2) Colorspace-aware printer that will parse embedded ICC profiles and
    transform data into the printer's native colorspace.
 3) Non-colorspace-aware printer

This leads to a handful of requirements:

 1) It must be possible to tell the printer that the job is already in=20
    its native/preferred colorspace.  (It's called various things in=20
    UIs, such as "disable color correction" or "host-managed color")
 2) The job *must* support embedding an arbitrary ICC profile
 3) If there is no embedded ICC profile and the "host managed color"=20
    option is not set, just assume everything is sRGB

Notes:

 * "Printer" and "Printer Application" are interchangeable here
 * "Printer native colorspace" is arbitrary, and defined by an ICC profile.

With respect to (2), It seems the PWG raster format only defines a=20
handful of colorspaces via ColorSpaceEnum; eg DeviceRGB, sRGB, and=20
AdobeRGB.  This is a weakness vs JPEG or PDF (which allows arbitrary=20
profiles.  Can we rely on that ColorSpace field being set correctly?

(In practice, IPP client UIs seem to be _very_ lacking when it comes to=20
 exposing supported options...)

 - Solomon
--=20
Solomon Peachy			      pizza at shaftnet dot org (email&xmpp)
                                      @pizza:shaftnet dot org   (matrix)
High Springs, FL                      speachy (freenode)

--P/4Zw/jmgq+QoxLh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE3H5Sx9DyiyB5hnENrGLLO/XVulEFAmCXJC8ACgkQrGLLO/XV
ulGfdxAAs0YQnWX39X9PdMoIUXbL9P2CdJg53bNaqFNc0KzxQOvOLVkTF4FjzBJC
z9DRp8v9J/5qpqu2mETWwNWekBuDYvq8DpQPv1z3QES1hODfUP7zuaIZRhOKpMxu
Zc1mnyUdiI0bboAZJbgAw3yks02NyB4AvPFnZfR2ujUE4NbY9WsinHP7fEBa8Moe
nk8creEO+2bjjrZBCv7p3ZKiNfX8RGZyooJ2xbYmymo8WhOSyLOG+FsLerdgw/2o
6RF66yikFeBmAg4EChm6uQlybQmwbyCjHObB9asp9aMansuyIHTNKsJIcQbFXeKa
xvUJEImp26mGTxwtYoAckCVa7BjMqDrdHkwpO+3yrSxOcuhkV8MObj1YhFAKvLQd
WuhQgEap/5ZSkxEVXP2ixYYX5dwlWxc6Nn/HVWQZEzU/L2Dsr2uAqQIspv+ZJbV/
RzGCTTHSLcxfn0YTsP6G6OSIl+J20YTUF8sOiKTYCND155eAVlxqrZU1TjACYm5X
EdfSZPZH2oM+HIRVngp9r0GdcSqc0NBmc5SSit4SSUkt9Onmzf885mrBGD/0IrsE
4nv0XVb0HHR2cpgAfeFqJUotUVgEAGB6wHH96PZux3b1lDs7ljfo2nxn/+9834He
KMFhZr3upjej/8Gtxl1RExv8X/IUOyWIcBoWy48fcRnVi42hVW8=
=vf81
-----END PGP SIGNATURE-----

--P/4Zw/jmgq+QoxLh--
