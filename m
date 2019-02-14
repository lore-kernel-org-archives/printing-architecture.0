Return-Path: <zdohnal@redhat.com>
References: <4dab880a-b033-0b58-7114-cb7af3e2a0a9@gmail.com>
	<ea890c88-84a1-02a5-72f4-0d0f86a6df62@redhat.com>
From: Zdenek Dohnal <zdohnal@redhat.com>
Message-ID: <5c3a427b-83bd-2a94-dd8e-e597ecbbe300@redhat.com>
Date: Thu, 14 Feb 2019 15:39:48 +0100
MIME-Version: 1.0
In-Reply-To: <ea890c88-84a1-02a5-72f4-0d0f86a6df62@redhat.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="F9gozwck8Ddt8lHHqnUVHEe8fuxNq0nMs"
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
To: printing-architecture@lists.linux-foundation.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--F9gozwck8Ddt8lHHqnUVHEe8fuxNq0nMs
Content-Type: multipart/mixed; boundary="d9nmBKPxJEqvip7DhNS1KpG9GUsyTHHct";
 protected-headers="v1"
From: Zdenek Dohnal <zdohnal@redhat.com>
To: printing-architecture@lists.linux-foundation.org
Message-ID: <5c3a427b-83bd-2a94-dd8e-e597ecbbe300@redhat.com>
Subject: Re: [Printing-architecture] OpenPrinting News
References: <4dab880a-b033-0b58-7114-cb7af3e2a0a9@gmail.com>
 <ea890c88-84a1-02a5-72f4-0d0f86a6df62@redhat.com>
In-Reply-To: <ea890c88-84a1-02a5-72f4-0d0f86a6df62@redhat.com>

--d9nmBKPxJEqvip7DhNS1KpG9GUsyTHHct
Content-Type: multipart/alternative;
 boundary="------------527B772CE0C91CD3E484B417"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------527B772CE0C91CD3E484B417
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 2/14/19 2:21 PM, Zdenek Dohnal wrote:
> On 2/13/19 7:14 PM, Till Kamppeter wrote:
>> Hi,
>>
>> here is the newest development of the last month.
>>
>> =C2=A0=C2=A0 Till
>>
>> ----------
>>
>>
>> Google Summer of Code 2019
>> --------------------------
>>
>> The org application of the Linux Foundation is submitted and on Feb 26=

>> we will know whether we got accepted by Google.
>>
>> Avahi
>> -----
>>
>> Also Red Hat is bumping into the fact that Avahi is unmaintained
>> upstream, see discussion as answer to our minutes from last month:
>>
>> https://lists.linuxfoundation.org/pipermail/printing-architecture/2019=
/thread.html
>>
>> https://lists.linuxfoundation.org/pipermail/printing-architecture/2019=
/003653.html
>>
>> https://lists.linuxfoundation.org/pipermail/printing-architecture/2019=
/003654.html
>>
>> https://lists.linuxfoundation.org/pipermail/printing-architecture/2019=
/003655.html
>>
>> https://lists.linuxfoundation.org/pipermail/printing-architecture/2019=
/003656.html
>>
>> https://lists.linuxfoundation.org/pipermail/printing-architecture/2019=
/003657.html
>>
>> https://lists.linuxfoundation.org/pipermail/printing-architecture/2019=
/003659.html
>>
>>
>> Michael Sweet writes:
>>
>> ----------
>> A bug was filed against CUPS last month requesting that we start
>> supporting systemd's new mDNS resolver (which apparently is replacing
>> the use of Avahi in systemd?!?):
>>
>> =C2=A0=C2=A0=C2=A0 https://github.com/apple/cups/issues/5452
>>
>> I pushed back since there does not appear to be a way to browse DNS-SD=

>> SRV records and there is no interface for registering services outside=

>> of systemd configuration files.=C2=A0 But that might be a future
>> alternative to Avahi should they extend the current interfaces to
>> support it...
>> ----------
>>
>> Zdenek Dohnal from Red Hat writes:
>>
>> ----------
>> I talked about both issues with Michal Sekletar, which is systemd and
>> avahi maintainer for RHEL and the situation is following:
>>
>> 1) systemd-resolved as successor of nss-mdns module:
>>
>> =C2=A0=C2=A0=C2=A0 As far as Michal knows, systemd-resolved is not cur=
rently meant as
>> successor of nss-mdns module + avahi since it does not support service=

>> browsing as Mike found out. If it will in the future, he does not know=

>> right now (probably how avahi situation will turn up...).
>>
>> 2) Avahi upstream maintenance
>>
>> =C2=A0=C2=A0 Michal and several other people tried to convince Trent t=
o pass
>> ownership to someone else (Michal knew about two people, who would lik=
e
>> to take Avahi project at that time) about two years ago, because Trent=

>> seemed to do not have time for the project. But Trent did not want to
>> give away the upstream project. Currently Michal fixes Avahi issues
>> downstream in Fedora/RHEL.
>> ----------
>>
>> My suggestion:
>>
>> ----------
>> As Debian does not accept carrying patches distro only with upstream n=
ot
>> taking them and also as it is very awkward if all distros have to carr=
y
>> the same patch due to upstream not caring, and naturally also an
>> integral part of the OS needs solid upstream maintainership, this is a=
n
>> unbearable situation.
>>
>> It would be great if someone could convince Trent to accept a
>> co-maintainer who also can directly commit to and also issue releases =
of
>> Avahi. If Trent refuses this, I see as the only solution the forking o=
f
>> the project. This is the usual way how one handles these situations.
>>
>> The current official Avahi repo is
>>
>> https://github.com/lathiat/avahi/
>>
>> so it is under the personal domain of Trent and not a project domain a=
s
>> for example
>>
>> https://github.com/openprinting/
>>
>> where cups-filters, ippusbxd and others are.
>>
>> So I checked
>>
>> https://github.com/avahi/
>>
>> and there is something which has nothing to do with Avahi. We should a=
sk
>> the owner whether he could move his GitHub activity to another name to=

>> free avahi for us and then we put our fork of Avahi there.
>>
>> If this does not work out I suggest to host the Avahi fork on GitLab.
>>
>> Or should we fork Avahi under a new name then?
>> ----------
>>
>> According to Zdenek, Michal tried this with the co-maintainership
>> already.
>>
>> Seems that Trent is refusing any cooperation or completely ignoring
>> the project.
>>
>> My suggestion is to fork the project and use one of the locations
>> suggested by me, but who should be the upstream maintainer then.
>>
> Michal Sekletar contacted me last week about Avahi situation. IMHO he
> talked with Lennart (since he is his co-worker from the same team) abou=
t
> the situation and came up with solution they will try to implement Avah=
i
> features (because Avahi has currently uncooperative upstream and Avahi
> API is not so good for use in their opinion) into systemd itself,
> probably in systemd-resolved.

I met with Michal today. He studied more CUPS code by itself and found
other features which would be needed to implement in systemd and in his
opinion it is not doable in systemd-resolved.

If there will be any other update, I'll inform you.

>
> But the initiative does not have any specific dates when it will be
> done, only 'in the future', so I cannot declare any specific deadlines
> when it will be done. Because of it I'm for Till's suggestion, if
> immediate solution is needed.
>
> About future work on systemd, I only told Michal what CUPS would need
> from systemd, if Avahi will be gone (I used what Mike said in
> https://github.com/apple/cups/issues/5452):
>
> - register service instance and TEXT/LOC records
>
> - browse for service
>
> - resolving .local hostnames
>
> If I missed something, please tell me and send me an email.
>
> Just sharing the latest gossip from systemd group.
>
>> CUPS
>> ----
>>
>> No new releases.
>>
>> When working on this cups-filters bug report
>>
>> https://github.com/OpenPrinting/cups-filters/issues/22
>>
>> I discovered that CUPS uses 4 different variants of the
>> get-printer-attributes IPP request at 4 places, so for one and the
>> same printer 4 different PPD files can get generated, depending on the=

>> method how one creates a print queue for the driverless IPP printer. I=

>> have reported this to CUPS as a bug and Mike has fixed it on both
>> 2.2.x and 2.3.x.
>>
>> See
>>
>> https://github.com/apple/cups/issues/5484
>>
>>
>> cups-filters
>> ------------
>>
>> Currently released is 1.22.0.
>>
>> From this release on the pdftopdf filter flattens interactive PDF
>> forms and annotations internally, using QPDF, instead of calling
>> external utilities. This especially eliminates slowing factors as
>> additional piping of the data and unneeded use of PDF interpreters.
>> Using external utilities for flattening is still possible in case of
>> problems. In addition, a crash bug in cups-browsed got fixed and
>> compatibility of the filters with Poppler 0.72 assured.
>>
>> The form-flattening with QPDF was already planned 2 years ago as GSoC
>> project, but the student did not complete his work. Jay Berkenbilt,
>> upstream maintainer of QPDF, completed the work (the code is
>> practically completely in QPDF), released a new version of QPDF with
>> this included, and told me what to call from pdftopdf during the
>> new-year break. Note that Jay is doing all that voluntarily. Also
>> Tobias Hoffmann, former GSoC student and mentor, helped on this.
>>
>> The next release will (1.22.1) will still happen before Ubuntu's
>> Feature Freeze (Feb 21) and mainly switch the get-printer-attributes
>> IPP calls to the way how CUPS does it now.
>>
>> CHANGES IN V1.22.1
>>
>> =C2=A0=C2=A0=C2=A0=C2=A0- cups-browsed, driverless: When polling the p=
rinter's
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 capabilities vi=
a get-printer-attributes IPP request for
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 driverless prin=
ting, use the attributes "all" and
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 "media-col-data=
base". Without "all" some printers do not
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 report "urf-sup=
ported" and without "media-col-database" not
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 all paper size =
and marging info gets reported (Issue #22,
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Pull request #8=
6, CUPS issue #5484).
>> =C2=A0=C2=A0=C2=A0=C2=A0- braille: Document how to rework output befor=
e
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 embossing. Thanks to Samuel Thibault fo=
r this patch (Pull
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 request #90).
>>
>> CHANGES IN V1.22.0
>>
>> =C2=A0=C2=A0=C2=A0=C2=A0- pdftopdf: Use QPDF for flattening interactiv=
e PDF forms
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (Issues #2, #23, #36, Pull request #88)=
=2E
>> =C2=A0=C2=A0=C2=A0=C2=A0- pdftopdf: Fixed bug of closing temporary fil=
e prematurely
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 when external PDF form flattening utili=
ties fail (Thanks to
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Tobias Hoffmann for finding this, see p=
ull request #88).
>> =C2=A0=C2=A0=C2=A0=C2=A0- pdftoopvp: More fixes for building with Popp=
ler 0.72
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (Pull request #83, Issue #75).
>> =C2=A0=C2=A0=C2=A0=C2=A0- pdftoraster, pdftoijs, pdftoopvp: Removed su=
pport for
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Poppler 0.18 (Pull request #83).
>> =C2=A0=C2=A0=C2=A0=C2=A0- cups-browsed: Fixed crash in applying the Br=
owseFilter
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cups-browsed.conf directives (Debian bu=
g #916765).
>>
>>
>> ippusbxd
>> --------
>>
>> No further news.
>> _______________________________________________
>> Printing-architecture mailing list
>> Printing-architecture@lists.linux-foundation.org
>> https://lists.linuxfoundation.org/mailman/listinfo/printing-architectu=
re
>
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architectur=
e

--=20
Zdenek Dohnal
Associate Software Engineer
Red Hat Czech - Brno TPB-C


--------------527B772CE0C91CD3E484B417
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <div class=3D"moz-cite-prefix">On 2/14/19 2:21 PM, Zdenek Dohnal
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:ea890c88-84a1-02a5-72f4-0d0f86a6df62@redhat.com">
      <pre class=3D"moz-quote-pre" wrap=3D"">On 2/13/19 7:14 PM, Till Kam=
ppeter wrote:
</pre>
      <blockquote type=3D"cite">
        <pre class=3D"moz-quote-pre" wrap=3D"">Hi,

here is the newest development of the last month.

=C2=A0=C2=A0 Till

----------


Google Summer of Code 2019
--------------------------

The org application of the Linux Foundation is submitted and on Feb 26
we will know whether we got accepted by Google.

Avahi
-----

Also Red Hat is bumping into the fact that Avahi is unmaintained
upstream, see discussion as answer to our minutes from last month:

<a class=3D"moz-txt-link-freetext" href=3D"https://lists.linuxfoundation.=
org/pipermail/printing-architecture/2019/thread.html">https://lists.linux=
foundation.org/pipermail/printing-architecture/2019/thread.html</a>

<a class=3D"moz-txt-link-freetext" href=3D"https://lists.linuxfoundation.=
org/pipermail/printing-architecture/2019/003653.html">https://lists.linux=
foundation.org/pipermail/printing-architecture/2019/003653.html</a>

<a class=3D"moz-txt-link-freetext" href=3D"https://lists.linuxfoundation.=
org/pipermail/printing-architecture/2019/003654.html">https://lists.linux=
foundation.org/pipermail/printing-architecture/2019/003654.html</a>

<a class=3D"moz-txt-link-freetext" href=3D"https://lists.linuxfoundation.=
org/pipermail/printing-architecture/2019/003655.html">https://lists.linux=
foundation.org/pipermail/printing-architecture/2019/003655.html</a>

<a class=3D"moz-txt-link-freetext" href=3D"https://lists.linuxfoundation.=
org/pipermail/printing-architecture/2019/003656.html">https://lists.linux=
foundation.org/pipermail/printing-architecture/2019/003656.html</a>

<a class=3D"moz-txt-link-freetext" href=3D"https://lists.linuxfoundation.=
org/pipermail/printing-architecture/2019/003657.html">https://lists.linux=
foundation.org/pipermail/printing-architecture/2019/003657.html</a>

<a class=3D"moz-txt-link-freetext" href=3D"https://lists.linuxfoundation.=
org/pipermail/printing-architecture/2019/003659.html">https://lists.linux=
foundation.org/pipermail/printing-architecture/2019/003659.html</a>


Michael Sweet writes:

----------
A bug was filed against CUPS last month requesting that we start
supporting systemd's new mDNS resolver (which apparently is replacing
the use of Avahi in systemd?!?):

=C2=A0=C2=A0=C2=A0 <a class=3D"moz-txt-link-freetext" href=3D"https://git=
hub.com/apple/cups/issues/5452">https://github.com/apple/cups/issues/5452=
</a>

I pushed back since there does not appear to be a way to browse DNS-SD
SRV records and there is no interface for registering services outside
of systemd configuration files.=C2=A0 But that might be a future
alternative to Avahi should they extend the current interfaces to
support it...
----------

Zdenek Dohnal from Red Hat writes:

----------
I talked about both issues with Michal Sekletar, which is systemd and
avahi maintainer for RHEL and the situation is following:

1) systemd-resolved as successor of nss-mdns module:

=C2=A0=C2=A0=C2=A0 As far as Michal knows, systemd-resolved is not curren=
tly meant as
successor of nss-mdns module + avahi since it does not support service
browsing as Mike found out. If it will in the future, he does not know
right now (probably how avahi situation will turn up...).

2) Avahi upstream maintenance

=C2=A0=C2=A0 Michal and several other people tried to convince Trent to p=
ass
ownership to someone else (Michal knew about two people, who would like
to take Avahi project at that time) about two years ago, because Trent
seemed to do not have time for the project. But Trent did not want to
give away the upstream project. Currently Michal fixes Avahi issues
downstream in Fedora/RHEL.
----------

My suggestion:

----------
As Debian does not accept carrying patches distro only with upstream not
taking them and also as it is very awkward if all distros have to carry
the same patch due to upstream not caring, and naturally also an
integral part of the OS needs solid upstream maintainership, this is an
unbearable situation.

It would be great if someone could convince Trent to accept a
co-maintainer who also can directly commit to and also issue releases of
Avahi. If Trent refuses this, I see as the only solution the forking of
the project. This is the usual way how one handles these situations.

The current official Avahi repo is

<a class=3D"moz-txt-link-freetext" href=3D"https://github.com/lathiat/ava=
hi/">https://github.com/lathiat/avahi/</a>

so it is under the personal domain of Trent and not a project domain as
for example

<a class=3D"moz-txt-link-freetext" href=3D"https://github.com/openprintin=
g/">https://github.com/openprinting/</a>

where cups-filters, ippusbxd and others are.

So I checked

<a class=3D"moz-txt-link-freetext" href=3D"https://github.com/avahi/">htt=
ps://github.com/avahi/</a>

and there is something which has nothing to do with Avahi. We should ask
the owner whether he could move his GitHub activity to another name to
free avahi for us and then we put our fork of Avahi there.

If this does not work out I suggest to host the Avahi fork on GitLab.

Or should we fork Avahi under a new name then?
----------

According to Zdenek, Michal tried this with the co-maintainership
already.

Seems that Trent is refusing any cooperation or completely ignoring
the project.

My suggestion is to fork the project and use one of the locations
suggested by me, but who should be the upstream maintainer then.

</pre>
      </blockquote>
      <pre class=3D"moz-quote-pre" wrap=3D"">Michal Sekletar contacted me=
 last week about Avahi situation. IMHO he
talked with Lennart (since he is his co-worker from the same team) about
the situation and came up with solution they will try to implement Avahi
features (because Avahi has currently uncooperative upstream and Avahi
API is not so good for use in their opinion) into systemd itself,
probably in systemd-resolved.</pre>
    </blockquote>
    <p>I met with Michal today. He studied more CUPS code by itself and
      found other features which would be needed to implement in systemd
      and in his opinion it is not doable in systemd-resolved.</p>
    <p>If there will be any other update, I'll inform you.<br>
    </p>
    <blockquote type=3D"cite"
      cite=3D"mid:ea890c88-84a1-02a5-72f4-0d0f86a6df62@redhat.com">
      <pre class=3D"moz-quote-pre" wrap=3D"">

But the initiative does not have any specific dates when it will be
done, only 'in the future', so I cannot declare any specific deadlines
when it will be done. Because of it I'm for Till's suggestion, if
immediate solution is needed.

About future work on systemd, I only told Michal what CUPS would need
from systemd, if Avahi will be gone (I used what Mike said in
<a class=3D"moz-txt-link-freetext" href=3D"https://github.com/apple/cups/=
issues/5452">https://github.com/apple/cups/issues/5452</a>):

- register service instance and TEXT/LOC records

- browse for service

- resolving .local hostnames

If I missed something, please tell me and send me an email.

Just sharing the latest gossip from systemd group.

</pre>
      <blockquote type=3D"cite">
        <pre class=3D"moz-quote-pre" wrap=3D"">
CUPS
----

No new releases.

When working on this cups-filters bug report

<a class=3D"moz-txt-link-freetext" href=3D"https://github.com/OpenPrintin=
g/cups-filters/issues/22">https://github.com/OpenPrinting/cups-filters/is=
sues/22</a>

I discovered that CUPS uses 4 different variants of the
get-printer-attributes IPP request at 4 places, so for one and the
same printer 4 different PPD files can get generated, depending on the
method how one creates a print queue for the driverless IPP printer. I
have reported this to CUPS as a bug and Mike has fixed it on both
2.2.x and 2.3.x.

See

<a class=3D"moz-txt-link-freetext" href=3D"https://github.com/apple/cups/=
issues/5484">https://github.com/apple/cups/issues/5484</a>


cups-filters
------------

Currently released is 1.22.0.

=46rom this release on the pdftopdf filter flattens interactive PDF
forms and annotations internally, using QPDF, instead of calling
external utilities. This especially eliminates slowing factors as
additional piping of the data and unneeded use of PDF interpreters.
Using external utilities for flattening is still possible in case of
problems. In addition, a crash bug in cups-browsed got fixed and
compatibility of the filters with Poppler 0.72 assured.

The form-flattening with QPDF was already planned 2 years ago as GSoC
project, but the student did not complete his work. Jay Berkenbilt,
upstream maintainer of QPDF, completed the work (the code is
practically completely in QPDF), released a new version of QPDF with
this included, and told me what to call from pdftopdf during the
new-year break. Note that Jay is doing all that voluntarily. Also
Tobias Hoffmann, former GSoC student and mentor, helped on this.

The next release will (1.22.1) will still happen before Ubuntu's
Feature Freeze (Feb 21) and mainly switch the get-printer-attributes
IPP calls to the way how CUPS does it now.

CHANGES IN V1.22.1

=C2=A0=C2=A0=C2=A0=C2=A0- cups-browsed, driverless: When polling the prin=
ter's
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 capabilities via g=
et-printer-attributes IPP request for
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 driverless printin=
g, use the attributes "all" and
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 "media-col-databas=
e". Without "all" some printers do not
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 report "urf-suppor=
ted" and without "media-col-database" not
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 all paper size and=
 marging info gets reported (Issue #22,
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Pull request #86, =
CUPS issue #5484).
=C2=A0=C2=A0=C2=A0=C2=A0- braille: Document how to rework output before
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 embossing. Thanks to Samuel Thibault for t=
his patch (Pull
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 request #90).

CHANGES IN V1.22.0

=C2=A0=C2=A0=C2=A0=C2=A0- pdftopdf: Use QPDF for flattening interactive P=
DF forms
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (Issues #2, #23, #36, Pull request #88).
=C2=A0=C2=A0=C2=A0=C2=A0- pdftopdf: Fixed bug of closing temporary file p=
rematurely
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 when external PDF form flattening utilitie=
s fail (Thanks to
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Tobias Hoffmann for finding this, see pull=
 request #88).
=C2=A0=C2=A0=C2=A0=C2=A0- pdftoopvp: More fixes for building with Poppler=
 0.72
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (Pull request #83, Issue #75).
=C2=A0=C2=A0=C2=A0=C2=A0- pdftoraster, pdftoijs, pdftoopvp: Removed suppo=
rt for
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Poppler 0.18 (Pull request #83).
=C2=A0=C2=A0=C2=A0=C2=A0- cups-browsed: Fixed crash in applying the Brows=
eFilter
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cups-browsed.conf directives (Debian bug #=
916765).


ippusbxd
--------

No further news.
_______________________________________________
Printing-architecture mailing list
<a class=3D"moz-txt-link-abbreviated" href=3D"mailto:Printing-architectur=
e@lists.linux-foundation.org">Printing-architecture@lists.linux-foundatio=
n.org</a>
<a class=3D"moz-txt-link-freetext" href=3D"https://lists.linuxfoundation.=
org/mailman/listinfo/printing-architecture">https://lists.linuxfoundation=
=2Eorg/mailman/listinfo/printing-architecture</a>
</pre>
      </blockquote>
      <pre class=3D"moz-quote-pre" wrap=3D"">
</pre>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
Printing-architecture mailing list
<a class=3D"moz-txt-link-abbreviated" href=3D"mailto:Printing-architectur=
e@lists.linux-foundation.org">Printing-architecture@lists.linux-foundatio=
n.org</a>
<a class=3D"moz-txt-link-freetext" href=3D"https://lists.linuxfoundation.=
org/mailman/listinfo/printing-architecture">https://lists.linuxfoundation=
=2Eorg/mailman/listinfo/printing-architecture</a>
</pre>
    </blockquote>
    <pre class=3D"moz-signature" cols=3D"72">--=20
Zdenek Dohnal
Associate Software Engineer
Red Hat Czech - Brno TPB-C
</pre>
  </body>
</html>

--------------527B772CE0C91CD3E484B417--

--d9nmBKPxJEqvip7DhNS1KpG9GUsyTHHct--

--F9gozwck8Ddt8lHHqnUVHEe8fuxNq0nMs
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEettYIDyl8EbygCWyFapqf01CJ9cFAlxlfbQACgkQFapqf01C
J9eJGAf+LUrgDOZYj7xysV4beS7qZEwAzFFnDRO36+SXFrsvXtkIxQsy6WjiBjAS
lZfwC8fmLuR7oENYGSa2YVPl+7qcvj3T866sZo3amu6HsXZKkqgjYTGA/P1gfbm4
Dh0+60+gIMuq5+a/zjTCPQXquInvvy2Zwt7PxJwfyR/cLyY3QOgBK6K8h1AWcNo0
a26cLpHi6SCiYoG/je9cG7Wh3gTc0tZcysK6XBVuaZbcVn1gQD9eBgBQzD2V6F5Y
u7CNahxqtIJsmD6ndMiatEhA18tiJgmii/fyhPHCsm3oJTGZB29hOcdPd4gq57F3
XBvcoH2Fhh4VM5Wa9TPqZ/pLpVOBFw==
=JKfV
-----END PGP SIGNATURE-----

--F9gozwck8Ddt8lHHqnUVHEe8fuxNq0nMs--
