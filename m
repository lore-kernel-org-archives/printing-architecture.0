Return-Path: <zdohnal@redhat.com>
References: <4dab880a-b033-0b58-7114-cb7af3e2a0a9@gmail.com>
From: Zdenek Dohnal <zdohnal@redhat.com>
Message-ID: <ea890c88-84a1-02a5-72f4-0d0f86a6df62@redhat.com>
Date: Thu, 14 Feb 2019 14:21:48 +0100
MIME-Version: 1.0
In-Reply-To: <4dab880a-b033-0b58-7114-cb7af3e2a0a9@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="NiwRIkMrxUZq0WJnnE0mSRlEhZOylAD9g"
Subject: Re: [Printing-architecture] OpenPrinting News
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
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--NiwRIkMrxUZq0WJnnE0mSRlEhZOylAD9g
Content-Type: multipart/mixed; boundary="1BKx2Ia5c4sNuO7N914jrPNkLkHjEPd4n";
 protected-headers="v1"
From: Zdenek Dohnal <zdohnal@redhat.com>
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>
Message-ID: <ea890c88-84a1-02a5-72f4-0d0f86a6df62@redhat.com>
Subject: Re: [Printing-architecture] OpenPrinting News
References: <4dab880a-b033-0b58-7114-cb7af3e2a0a9@gmail.com>
In-Reply-To: <4dab880a-b033-0b58-7114-cb7af3e2a0a9@gmail.com>

--1BKx2Ia5c4sNuO7N914jrPNkLkHjEPd4n
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

On 2/13/19 7:14 PM, Till Kamppeter wrote:
> Hi,
>
> here is the newest development of the last month.
>
> =C2=A0=C2=A0 Till
>
> ----------
>
>
> Google Summer of Code 2019
> --------------------------
>
> The org application of the Linux Foundation is submitted and on Feb 26
> we will know whether we got accepted by Google.
>
> Avahi
> -----
>
> Also Red Hat is bumping into the fact that Avahi is unmaintained
> upstream, see discussion as answer to our minutes from last month:
>
> https://lists.linuxfoundation.org/pipermail/printing-architecture/2019/=
thread.html
>
> https://lists.linuxfoundation.org/pipermail/printing-architecture/2019/=
003653.html
>
> https://lists.linuxfoundation.org/pipermail/printing-architecture/2019/=
003654.html
>
> https://lists.linuxfoundation.org/pipermail/printing-architecture/2019/=
003655.html
>
> https://lists.linuxfoundation.org/pipermail/printing-architecture/2019/=
003656.html
>
> https://lists.linuxfoundation.org/pipermail/printing-architecture/2019/=
003657.html
>
> https://lists.linuxfoundation.org/pipermail/printing-architecture/2019/=
003659.html
>
>
> Michael Sweet writes:
>
> ----------
> A bug was filed against CUPS last month requesting that we start
> supporting systemd's new mDNS resolver (which apparently is replacing
> the use of Avahi in systemd?!?):
>
> =C2=A0=C2=A0=C2=A0 https://github.com/apple/cups/issues/5452
>
> I pushed back since there does not appear to be a way to browse DNS-SD
> SRV records and there is no interface for registering services outside
> of systemd configuration files.=C2=A0 But that might be a future
> alternative to Avahi should they extend the current interfaces to
> support it...
> ----------
>
> Zdenek Dohnal from Red Hat writes:
>
> ----------
> I talked about both issues with Michal Sekletar, which is systemd and
> avahi maintainer for RHEL and the situation is following:
>
> 1) systemd-resolved as successor of nss-mdns module:
>
> =C2=A0=C2=A0=C2=A0 As far as Michal knows, systemd-resolved is not curr=
ently meant as
> successor of nss-mdns module + avahi since it does not support service
> browsing as Mike found out. If it will in the future, he does not know
> right now (probably how avahi situation will turn up...).
>
> 2) Avahi upstream maintenance
>
> =C2=A0=C2=A0 Michal and several other people tried to convince Trent to=
 pass
> ownership to someone else (Michal knew about two people, who would like=

> to take Avahi project at that time) about two years ago, because Trent
> seemed to do not have time for the project. But Trent did not want to
> give away the upstream project. Currently Michal fixes Avahi issues
> downstream in Fedora/RHEL.
> ----------
>
> My suggestion:
>
> ----------
> As Debian does not accept carrying patches distro only with upstream no=
t
> taking them and also as it is very awkward if all distros have to carry=

> the same patch due to upstream not caring, and naturally also an
> integral part of the OS needs solid upstream maintainership, this is an=

> unbearable situation.
>
> It would be great if someone could convince Trent to accept a
> co-maintainer who also can directly commit to and also issue releases o=
f
> Avahi. If Trent refuses this, I see as the only solution the forking of=

> the project. This is the usual way how one handles these situations.
>
> The current official Avahi repo is
>
> https://github.com/lathiat/avahi/
>
> so it is under the personal domain of Trent and not a project domain as=

> for example
>
> https://github.com/openprinting/
>
> where cups-filters, ippusbxd and others are.
>
> So I checked
>
> https://github.com/avahi/
>
> and there is something which has nothing to do with Avahi. We should as=
k
> the owner whether he could move his GitHub activity to another name to
> free avahi for us and then we put our fork of Avahi there.
>
> If this does not work out I suggest to host the Avahi fork on GitLab.
>
> Or should we fork Avahi under a new name then?
> ----------
>
> According to Zdenek, Michal tried this with the co-maintainership
> already.
>
> Seems that Trent is refusing any cooperation or completely ignoring
> the project.
>
> My suggestion is to fork the project and use one of the locations
> suggested by me, but who should be the upstream maintainer then.
>
Michal Sekletar contacted me last week about Avahi situation. IMHO he
talked with Lennart (since he is his co-worker from the same team) about
the situation and came up with solution they will try to implement Avahi
features (because Avahi has currently uncooperative upstream and Avahi
API is not so good for use in their opinion) into systemd itself,
probably in systemd-resolved.

But the initiative does not have any specific dates when it will be
done, only 'in the future', so I cannot declare any specific deadlines
when it will be done. Because of it I'm for Till's suggestion, if
immediate solution is needed.

About future work on systemd, I only told Michal what CUPS would need
from systemd, if Avahi will be gone (I used what Mike said in
https://github.com/apple/cups/issues/5452):

- register service instance and TEXT/LOC records

- browse for service

- resolving .local hostnames

If I missed something, please tell me and send me an email.

Just sharing the latest gossip from systemd group.

>
> CUPS
> ----
>
> No new releases.
>
> When working on this cups-filters bug report
>
> https://github.com/OpenPrinting/cups-filters/issues/22
>
> I discovered that CUPS uses 4 different variants of the
> get-printer-attributes IPP request at 4 places, so for one and the
> same printer 4 different PPD files can get generated, depending on the
> method how one creates a print queue for the driverless IPP printer. I
> have reported this to CUPS as a bug and Mike has fixed it on both
> 2.2.x and 2.3.x.
>
> See
>
> https://github.com/apple/cups/issues/5484
>
>
> cups-filters
> ------------
>
> Currently released is 1.22.0.
>
> From this release on the pdftopdf filter flattens interactive PDF
> forms and annotations internally, using QPDF, instead of calling
> external utilities. This especially eliminates slowing factors as
> additional piping of the data and unneeded use of PDF interpreters.
> Using external utilities for flattening is still possible in case of
> problems. In addition, a crash bug in cups-browsed got fixed and
> compatibility of the filters with Poppler 0.72 assured.
>
> The form-flattening with QPDF was already planned 2 years ago as GSoC
> project, but the student did not complete his work. Jay Berkenbilt,
> upstream maintainer of QPDF, completed the work (the code is
> practically completely in QPDF), released a new version of QPDF with
> this included, and told me what to call from pdftopdf during the
> new-year break. Note that Jay is doing all that voluntarily. Also
> Tobias Hoffmann, former GSoC student and mentor, helped on this.
>
> The next release will (1.22.1) will still happen before Ubuntu's
> Feature Freeze (Feb 21) and mainly switch the get-printer-attributes
> IPP calls to the way how CUPS does it now.
>
> CHANGES IN V1.22.1
>
> =C2=A0=C2=A0=C2=A0=C2=A0- cups-browsed, driverless: When polling the pr=
inter's
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 capabilities via=
 get-printer-attributes IPP request for
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 driverless print=
ing, use the attributes "all" and
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 "media-col-datab=
ase". Without "all" some printers do not
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 report "urf-supp=
orted" and without "media-col-database" not
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 all paper size a=
nd marging info gets reported (Issue #22,
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Pull request #86=
, CUPS issue #5484).
> =C2=A0=C2=A0=C2=A0=C2=A0- braille: Document how to rework output before=

> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 embossing. Thanks to Samuel Thibault for=
 this patch (Pull
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 request #90).
>
> CHANGES IN V1.22.0
>
> =C2=A0=C2=A0=C2=A0=C2=A0- pdftopdf: Use QPDF for flattening interactive=
 PDF forms
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (Issues #2, #23, #36, Pull request #88).=

> =C2=A0=C2=A0=C2=A0=C2=A0- pdftopdf: Fixed bug of closing temporary file=
 prematurely
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 when external PDF form flattening utilit=
ies fail (Thanks to
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Tobias Hoffmann for finding this, see pu=
ll request #88).
> =C2=A0=C2=A0=C2=A0=C2=A0- pdftoopvp: More fixes for building with Poppl=
er 0.72
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (Pull request #83, Issue #75).
> =C2=A0=C2=A0=C2=A0=C2=A0- pdftoraster, pdftoijs, pdftoopvp: Removed sup=
port for
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Poppler 0.18 (Pull request #83).
> =C2=A0=C2=A0=C2=A0=C2=A0- cups-browsed: Fixed crash in applying the Bro=
wseFilter
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cups-browsed.conf directives (Debian bug=
 #916765).
>
>
> ippusbxd
> --------
>
> No further news.
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architectur=
e

--=20
Zdenek Dohnal
Associate Software Engineer
Red Hat Czech - Brno TPB-C



--1BKx2Ia5c4sNuO7N914jrPNkLkHjEPd4n--

--NiwRIkMrxUZq0WJnnE0mSRlEhZOylAD9g
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEettYIDyl8EbygCWyFapqf01CJ9cFAlxla2wACgkQFapqf01C
J9chUgf/eNvjf8NDxDUWtNofQb3g0eiUeijhioyBqv3kqVvrQs4V1SfRpjyJGDnw
+Ukfmw9nhiiqLvBGj+TBbTfIhu0KcuAZfDjNFa3FJ/9IusD0uwB6zW3asfczkg25
lKm15b0KuAfodHIvS/NJHOm/fu8Tg5/j5Zi0jc1UtD04NBROqQ3ErD3GgyuBBis2
ub8DLM08mRXZj7+TgqV7Tj6E6DXUL+iAoBYyMFjx58pzjrHegD9zMfcCPPpaoUIb
nnHn0gbMsIt8sTOnZgW/Agt/MSNWKzq47qH3NaBetljpE26V1xIT9v1dQ7OC2cOo
/xXqJI5hqs51kzqkzhBcklKynlJOGw==
=qkVM
-----END PGP SIGNATURE-----

--NiwRIkMrxUZq0WJnnE0mSRlEhZOylAD9g--
