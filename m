Return-Path: <pizza@stuffed.shaftnet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 stuffed.shaftnet.org 11QCStP62685550
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaftnet.org;
 s=default; t=1614342536;
 bh=Ygy4wvyOZTj8hoLTQ2sbrjs6GnA3Xw6obqBpL4KzQY8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yJqQRcCgsTgwcKSQGFv63ud8vhb5EsvKktJPBPidHjJ4Z9PJdkjjUR/JNBxjEgis7
 ieN+ROWXNUH9LS+bkWoTN+siM3qixOH2YQ62Th72oy+pYA8dWbEHRYSXbM0xIE8UsY
 4oCS2HUeDPYteAA36sVzgxiwCTxz2aBPsOsQWKAc=
Date: Fri, 26 Feb 2021 07:28:55 -0500
From: Solomon Peachy <pizza@shaftnet.org>
Message-ID: <YDjphxlKK64gkm+U@shaftnet.org>
References: <12af8541-3113-341d-6b7f-d7393203368f@gmail.com>
 <949aea1f-a0f0-df47-1538-d7782f5350ab@redhat.com>
 <66430674-dc47-4a81-406b-aedefc065a37@gmail.com>
 <YDZLEKxaIVrpLm4E@shaftnet.org>
 <e9d76903-993c-7fd7-3a8d-809c176cc931@redhat.com>
 <YDe6L+I0u65ncSXP@shaftnet.org>
 <821b4df56f518b8d2cc38ce846e8cc48@suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="Qb4Xti/vzy0VwllT"
Content-Disposition: inline
In-Reply-To: <821b4df56f518b8d2cc38ce846e8cc48@suse.de>
Subject: Re: [Printing-architecture] Automatic printer setup with Printer
 Applications
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Johannes Meixner <jsmeix@suse.de>
Cc: printing-architecture@lists.linux-foundation.org


--Qb4Xti/vzy0VwllT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 26, 2021 at 11:03:34AM +0100, Johannes Meixner wrote:
> I do not agree that everything involving printing is a complete mess

While printing works better now than it ever has (thanks in part to many=20
years of hard work by folks participating here) it remains a continual=20
source of headaches, even in tier-one environments (eg Windows) where=20
there unfortunately remain economic incentives that work against the=20
end-user's interest.

> Stay away from automated printer setup
> (unless you like complete mess ;-)

This problem is a lot like "self-driving cars", where there's only=20
really value when it JustWorks(tm) without any expectation of=20
user/operator attention.

> I am looking forward to the future where proper IPP (Everywhere)=20
> printer devices provide all what is needed (including spooling and=20
> handling many clients simultaneously) so neither printer drivers (and=20
> their setup) nor spooling services (and their setup) are needed any=20
> longer. Only clients that properly talk IPP directly to IPP printer=20
> devices that properly provide IPP.

=46rom a client side, we're already there, though I fear we've recreated=20
the problem with PPDs where common end-user printing UIs can't be=20
trusted to properly export/display the various options a given printer=20
supports.

Meanwhile, as this email thread demonstrates, someone still has to write=20
the "driver" for a given printer, and to be honest IPP-Everywhere makes=20
this task _much harder_.  Fortunately, this task should only need to be=20
done once for a given model, presumably by the manufacturer, so it's=20
overall a net improvement... but only if your platform's generic IPP=20
client's UI is sufficiently featureful.  Because otherwise you'll end=20
right back at the point where custom platform-specific "drivers" are=20
necessary, making one wonder if we've actually accomplished anything=20
after all of this effort.

(A related recent trend I've seen are printers that only claim to=20
 support printing via a manufacturer-supplied smartphone app.  I don't=20
 know if they rely on IPP under the hood, but even if they do there's no=20
 guarantee it's standards-compliant IPP/Everywhere...)

 - Solomon
--=20
Solomon Peachy			      pizza at shaftnet dot org (email&xmpp)
                                      @pizza:shaftnet dot org   (matrix)
High Springs, FL                      speachy (freenode)

--Qb4Xti/vzy0VwllT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE3H5Sx9DyiyB5hnENrGLLO/XVulEFAmA46YQACgkQrGLLO/XV
ulH7xA//RAo5mc5FYV0zU15xjeIiOfE5Bw/7b3anMCd1p5Q8e4WFpgl9rVn0mG0I
ZfmIgkkmQITj5BnepP2L4V5K5RjpqExx1v4oJ0b65o5Hl496Ok229/nn0HG2eELd
DFmi/iP9I1BE4120sBBcV833t8JTgpmBu8mixzQa2eG9socS9PLK9LyflDsM2gL3
YW69ERa8w0jD2UxQY4nyvkiJM/4OtKaxK6UW5qcl3jcyGbQDPrDgYJEazY4zL+Xi
0uxUnfttxw7PieENx+YZFVrN1/ta5M/xhlFpw01WDfqCytrQPOV3HHFPKpt5gKaM
ufLFfBn/hETg54MHzsRZZ1ycYikj44s1prWUv4NccxS3NcR9Pgbqx5zVkj41eCtc
AzfY44NEfSry8ejJ8d++yNP7L6tyd7qgFBrIF46lDvN+XvVxwl6bzbQLZjzswpme
pgO5KU3NaBON5IJhvzHcqhw0arvdMVXqfn7nVBeQHVOBPv0xoCUDOhWOwh9noE5d
XrLOKDnQD9J1/kTNEBR0LzFEtKl31/ODgVcSLnmPTVa30gzYYPauv5twRPcz+7A7
GAuBMZ9Sq+GQXMxn4v9IxDBzTPMBLRFtm20vX3LQMCNndThSP/UyrKkc+ixG+xRP
0AE5J2S5P2YKhfbFwQyYC/BWD8o/r1HhMERJ5ml0V0MrmcANpXY=
=ktXV
-----END PGP SIGNATURE-----

--Qb4Xti/vzy0VwllT--
