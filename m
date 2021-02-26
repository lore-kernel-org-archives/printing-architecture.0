Return-Path: <pizza@stuffed.shaftnet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 stuffed.shaftnet.org 11QEx1iu2700779
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaftnet.org;
 s=default; t=1614351542;
 bh=/79ESHVUAyW4uEydU6ZBPXiJMcwbmSywzIKSrOFprdM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZD7LxQMIVn4zUZmH9CcgLeouvnOkeQ4aLodYwf6iThXH+AYBUkaAQi5bbExF9M7Qa
 O7MBGz5LBBMEjlUYK0ijIhxB2YerTXYqsY697sut6xN1TZC/YQkYcwo5lCzmxSnqwq
 pjEIxe5NiwdujphWRNnFmM77PAye1O7ILUhiAU+g=
Date: Fri, 26 Feb 2021 09:59:01 -0500
From: Solomon Peachy <pizza@shaftnet.org>
Message-ID: <YDkMtbPx0vg24HRf@shaftnet.org>
References: <12af8541-3113-341d-6b7f-d7393203368f@gmail.com>
 <949aea1f-a0f0-df47-1538-d7782f5350ab@redhat.com>
 <66430674-dc47-4a81-406b-aedefc065a37@gmail.com>
 <YDZLEKxaIVrpLm4E@shaftnet.org>
 <bb88fef5-f33e-3ca9-14da-ca189116ce9f@gmail.com>
 <YDfCLhAuxSbro6Ug@shaftnet.org>
 <a0ebda19-80ab-48cf-9032-6d14208f3237@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="528Mh2nMUxyNdfy6"
Content-Disposition: inline
In-Reply-To: <a0ebda19-80ab-48cf-9032-6d14208f3237@gmail.com>
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
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, Jai Luthra <luthrajaiji@gmail.com>


--528Mh2nMUxyNdfy6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 25, 2021 at 11:54:51PM +0100, Till Kamppeter wrote:
> > I don't see any printer makers bothering to create=20
> > downloadable/runnable-on-end-user-systems printer applications for=20
> > their art/speciality models (and definitely not for their legacy=20
> > models) -- instead they'll sell a little "print server" that can be=20
> > bolted onto the printer to achieve that functionality.
> >=20
> > ...and that "print server" will be running legacy CUPS (and=20
> > hopefully, eventually, PAPPL) along with out-of-band scripts that=20
> > detect the attached printers at startup time and create/export=20
> > "queues" in a non-dynamic manner.
>=20
> OK, let's see.

Believe me, I'd love to be wrong.  But I don't think I am.  :)

Over the past decade, I've developed a working relationship (of some=20
sort) with nearly every dyesub printer manufacturer out there.

Nearly all of them are currently selling "print server" appliances that=20
bolt onto their printers; sometimes these are simple headless units=20
intended to be used with generic CUPS/Samba/Airprint/Hot Folder clients,=20
but they also use that same underlying software platform to provide rich=20
UIs tailored to various verticals (eg photo booths, print kiosks, photo=20
ID or ID cards).  But most of their printers are sold to folks who build=20
competing solutions at various scales.

For their volume markets, adding networking and IPP/Everywhere support=20
into the base printer will raise the printer cost and probably won't=20
actually get utilized given the need for advanced UIs, putting them at a=20
cost disadvantage versus their competition.  For their internal=20
"customer" that creates kiosk (etc) solutions, it's much the same, since=20
the external appliance will still be needed if only to provide some sort=20
of UI, and typically more than one printer will be simultaneously=20
connected. Why have three sets of network interfaces and services=20
running (and coordinate/manage) when one will do?

Anyway. In all but one case that I'm aware of [1] those appliances (and=20
even the rich-UI kiosks) are all built on top of Linux, CUPS, and (far=20
more often than not) Gutenprint and my reverse-engineering-derived code. =
=20
The shift to Linux was largely driven by the desire to use cheap ARM=20
SBCs allowng them to ditch bulky & expensive PC hardware.

That's where I came in; my relationships are with two groups within=20
these printer makers; first their in-house software teams that are=20
building these appliances; and secondly, sales teams that have large=20
prospective orders contingent on stable operation with random ARM SBCs=20
such as the Raspberry Pi, where binary x86 drivers obviously won't do.

I'm not exaggerating to say they've universally had better results=20
(faster printing, better feature coverage, and vastly superior support)=20
working with me and my reverse-engineered gutenprint(+backend) code than=20
with their corporate siblings' in-house driver/SDK teams, often to the=20
point of paying me to reverse-engineer their own hardware.

(Not bad for a mini-obsession that is arguably a sign of mental illness...)

This is why I believe that these printer manufacturers aren't ever going=20
to create any sort of "downloadable printer application" targeting=20
end-users.  Their answer will be (as it already is) "buy our little=20
appliance instead". [2]

Now there's definitely a path from the current CUPS+Gutenprint=20
implementation of those appliances to a "printer application" model, but=20
what will drive that is PAPPL's superior Airprint and future (IPP &|=20
printer-specific) features that are impractical (if not impossible) with=20
the legacy CUPS paradigm.

Given the historical record, it's all but guaranteed that any such=20
printer application won't be written (or even be initiated) in-house,=20
instead falling to someone like myself, or others that participate on=20
this mailing list. Only once this new application is generally stable=20
and provides feature parity with their existing "legacy" solution will=20
they even consider switching.  (And it's hard to fault them for that..)

BTW, I don't mean to come across as a bitter naysayer, nor is my intent=20
to belittle or denigrate the increcible amount of work you've put into=20
this space. As I said earlier, the F/OSS printing experience is the best=20
it's ever been, and more than anyone else, we have you and Michael Sweet=20
to thank for that.

I like to think I've done my part on that front too; building on your=20
work (and Gutenprint!) I've managed to completely break the=20
exclusively-proprietary grip on the kiosk/booth verticals and to a=20
lesser extent, the Medical/Scientific realm.  The major remaining niche=20
on my [s]hit list is the "ID card" space, which encompasses truly=20
disgusting levels of vendor lock-in.

So yeah, I'm very much in this to empower the end-user.  :)

But most of my work in this space is self-funded, and as such I haven't=20
had the time/bandwidth to put in what's needed to push the=20
infrastructure side of things (eg Gutenprint) forward into this new=20
world.  I think as an experiment, I'm going to attempt to do an end-run=20
around Gutenprint and try to write a "native" PAPPL-based application=20
for one of the dyesub printers I have here, and see how that goes...

AAAAnyway.  I've somehow managed to spent two hours writing this, making=20
me late signing in to $dayjob.  D'oh..

Cheers,

 - Solomon

[1] Even that singular non-Linux case is now using my reverse-engineered=20
    backend code, albeit compiled for Windows, and is deployed to at=20
    least 11K locations.

[2] And that's before one considers the implication of product life=20
    cycles that routinely exceed a decade; using an external appliance=20
    for rapidly-evolving network connectivity makes for much better=20
    futureproofing.  I've seen multiple generations of appliance/kiosks=20
    come and go while the base printers remain unchanged.
--=20
Solomon Peachy			      pizza at shaftnet dot org (email&xmpp)
                                      @pizza:shaftnet dot org   (matrix)
High Springs, FL                      speachy (freenode)

--528Mh2nMUxyNdfy6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE3H5Sx9DyiyB5hnENrGLLO/XVulEFAmA5DLIACgkQrGLLO/XV
ulGtWQ/+NzJWn3MisRboytYE8ZuskdVW+VykP6eIr8jIs1C/UAXWVQroavFrOmed
cx1h1sq7CIaB2pgG1MLhxbRp53AFf0Tvb/cCfVFCzNRFU21swxkTHH8DS/eK0Og6
3Gt5GZMEXFb30z6y6mCP7M0t92kQ6CydzP5nesntpxg5g2p8Lsg6IjalRzBirTI5
WtEcHAGDoc6SyVrK7CFu7BE+yhSTYaqyk6auB2fLNkVtMIA6J8ML9dLQYXssbFqp
1OfAiMxuR5+3Id2xL4WrzUjRrcQC8eC0Z3GIbvM7RVSwiWpb1n/vePaWjeYQ8VAq
D6dBCfIpQ7WH35diA4gq3/D5jtezsANywodm1bLZTLVoCD3RAAp16UbOzkVL7jQf
WqxXDuS2VNJUjMikgrVRLCT0OsaNc9qTCOFpzpSp0z01FmnZj0HaMkNrVapqagrL
3g8Wvns8VCtwmjJ07ABlAw2xOMm7LQdUQFWgnDDfYbKi1YKR3rJJe4qTb1fz/plj
nPaedpxoHr48ho6vtW+WYgywv4zl9kf1axYrFFQIwq02ZRqSvBJz86LtqvIsFeiC
uppBZz8CA0hPwjHVAuY+h0kyDClEP474reTGbsaIgtNoiqlH3bFRX3e5ECGcxf33
/KaKl5lomg+7thWOGVBeQ3Q7K/6Y5X7jjYKHz5lGMzGJcl9T0z4=
=cu5J
-----END PGP SIGNATURE-----

--528Mh2nMUxyNdfy6--
