Return-Path: <zdohnal@redhat.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1641218474;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=vq7uMHkAZhnA4LFYFCtksacW5eCZBMeoVF8djXKdz94=;
 b=S/nLFuloL3FmN0b47tstVnRH522EwH9NouCqU7jVb+Bzw2ePC8zcZnSGePBCXdqQBsjMsI
 3OfIHRYMOXyJUs+dZ0V1jlbgY7mhixcYKKEl8/4IKzPzegDiMd3aoUSvm3Y7Id9DuU/hKg
 5tlizFdFN22yfeA+jb+crpdrZunsXhY=
MIME-Version: 1.0
References: <2F7E187F-3045-4562-9959-15C2E07333FA@msweet.org>
In-Reply-To: <2F7E187F-3045-4562-9959-15C2E07333FA@msweet.org>
From: Zdenek Dohnal <zdohnal@redhat.com>
Date: Mon, 3 Jan 2022 15:00:58 +0100
Message-ID: <CAAqMZmYUCTWFWuYbiV8q1=CTQ2oGVdVrU6_XkDMZDX-c6qPVxw@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000e32e3b05d4adf3c8"
Subject: Re: [Printing-architecture] LPrint v1.1.0
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

--000000000000e32e3b05d4adf3c8
Content-Type: text/plain; charset="UTF-8"

Kudos for the new LPrint release, Mike! :)

On Thu, Dec 23, 2021 at 7:48 PM Michael Sweet via Printing-architecture <
printing-architecture@lists.linux-foundation.org> wrote:

> All,
>
> LPrint v1.1.0 adds support for EPL and 600dpi ZPL label printers, adds
> status reporting and automatic label configuration for ZPL label printers,
> adds auto-setup and test labels for printers, adds system service files for
> macOS and Linux, and fixes all known bugs in the previous release.  Changes
> include:
>
> - Switched to PAPPL (Issue #20, #35)
> - Fixed `lprint default` and `lprint delete` not working (Issue #17, Issue
> #40)
> - Fixed server crashes on `SIGINT` (Issue #18)
> - Fixed the reported date and time information when no printers were added
> (Issue #26)
> - Fixed a startup bug on macOS (Issue #34)
> - Now support auto-detection of printer drivers and auto-add USB printers
> the first time LPrint is run.
> - Added the missing macOS binary package (Issue #33)
> - Added launchd and systemd service files for running lprint as a service.
> - Added support for Zebra/Eltron EPL2 printers (Issue #38)
> - Added support for 600dpi ZPL thermal transfer printers.
> - Added support for ZPL status/ready media updates.
> - Added support for test pages.
> - Temporarily removed support for DYMO LabelWriter Wireless printer (Issue
> #23)
>
> Enjoy!
>
> Download: https://github.com/michaelrsweet/lprint/releases/tag/v1.1.0
> Snap: https://snapcraft.io/lprint
> Home Page: https://www.msweet.org/lprint
>
> ________________________
> Michael Sweet
>
>
>
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>


-- 
Zdenek Dohnal
Software Engineer
Red Hat, BRQ-TPBC

--000000000000e32e3b05d4adf3c8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Kudos for the new LPrint release, Mike! :)<br></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Dec =
23, 2021 at 7:48 PM Michael Sweet via Printing-architecture &lt;<a href=3D"=
mailto:printing-architecture@lists.linux-foundation.org">printing-architect=
ure@lists.linux-foundation.org</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex">All,<br>
<br>
LPrint v1.1.0 adds support for EPL and 600dpi ZPL label printers, adds stat=
us reporting and automatic label configuration for ZPL label printers, adds=
 auto-setup and test labels for printers, adds system service files for mac=
OS and Linux, and fixes all known bugs in the previous release.=C2=A0 Chang=
es include:<br>
<br>
- Switched to PAPPL (Issue #20, #35)<br>
- Fixed `lprint default` and `lprint delete` not working (Issue #17, Issue =
#40)<br>
- Fixed server crashes on `SIGINT` (Issue #18)<br>
- Fixed the reported date and time information when no printers were added =
(Issue #26)<br>
- Fixed a startup bug on macOS (Issue #34)<br>
- Now support auto-detection of printer drivers and auto-add USB printers t=
he first time LPrint is run.<br>
- Added the missing macOS binary package (Issue #33)<br>
- Added launchd and systemd service files for running lprint as a service.<=
br>
- Added support for Zebra/Eltron EPL2 printers (Issue #38)<br>
- Added support for 600dpi ZPL thermal transfer printers.<br>
- Added support for ZPL status/ready media updates.<br>
- Added support for test pages.<br>
- Temporarily removed support for DYMO LabelWriter Wireless printer (Issue =
#23)<br>
<br>
Enjoy!<br>
<br>
Download: <a href=3D"https://github.com/michaelrsweet/lprint/releases/tag/v=
1.1.0" rel=3D"noreferrer" target=3D"_blank">https://github.com/michaelrswee=
t/lprint/releases/tag/v1.1.0</a><br>
Snap: <a href=3D"https://snapcraft.io/lprint" rel=3D"noreferrer" target=3D"=
_blank">https://snapcraft.io/lprint</a><br>
Home Page: <a href=3D"https://www.msweet.org/lprint" rel=3D"noreferrer" tar=
get=3D"_blank">https://www.msweet.org/lprint</a><br>
<br>
________________________<br>
Michael Sweet<br>
<br>
<br>
<br>
_______________________________________________<br>
Printing-architecture mailing list<br>
<a href=3D"mailto:Printing-architecture@lists.linux-foundation.org" target=
=3D"_blank">Printing-architecture@lists.linux-foundation.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/printing-arch=
itecture" rel=3D"noreferrer" target=3D"_blank">https://lists.linuxfoundatio=
n.org/mailman/listinfo/printing-architecture</a><br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature"><div dir=3D"ltr"><div>Zdenek Dohnal</div><div>Software Engi=
neer</div><div>Red Hat, BRQ-TPBC<br></div></div></div>

--000000000000e32e3b05d4adf3c8--

