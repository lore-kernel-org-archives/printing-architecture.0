Return-Path: <korobkin@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=Yz/3apFkh49i9X12NPRVdi72E9fVst1LOkC6Mkmg70A=;
	b=ab9K7fovpS49NNzYn8i4sbvEanc27URnfdVegmB5p3Eon4GtoziGlUHO1xTf3mMdvd
	n5FyKmi8fLb6c2ONpwJZU7gLEMV0FZYX/oK47aAjHbXHRiMGNv2h3neyclfdQILEpkIN
	FQXoGWt3WZqXhfhpHrMSICsXrz+qRF0euvW0FLuR5AC1rmPLejB4tLIhYQ4jFYHHY8ah
	p00w20JYw1p/J6yRmaVkhCagEfFApg0k9Lk8nLWjwSBcYIbC3q2r9OIXyR58OHOifTg7
	4AAktPGOjTLamxjU0Btrq1iRenyrB2kSwIUsmrKrOr1tYew2ZjmbEXWBcsht/pYAnNoT
	x0VQ==
MIME-Version: 1.0
Sender: korobkin@gmail.com
In-Reply-To: <1387213857.12274.26.camel@rubik>
References: <1387213857.12274.26.camel@rubik>
From: Alex Korobkin <korobkin+op@gmail.com>
Date: Fri, 27 Dec 2013 14:55:14 -0500
Message-ID: <CA+3RNfi=pVNw=rHnGN80Td8YG-j2usCJhdZGbsaQqcy=6VspSg@mail.gmail.com>
Content-Type: multipart/alternative; boundary=e89a8fb208883ac5ed04ee897a01
Subject: Re: [Printing-architecture] Useful utility: cups-filter-check
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Tim Waugh <twaugh@redhat.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

--e89a8fb208883ac5ed04ee897a01
Content-Type: text/plain; charset=UTF-8

I'd love to have this in the cups-filters package. Great idea.


2013/12/16 Tim Waugh <twaugh@redhat.com>

> Hi,
>
> Last week I put together a small program to simply display the filter
> pipelines that would be used for each configured input format and each
> likely output format (CUPS raster, PostScript, PDF).
>
> This is useful for sanity-checking changes to CUPS filter costs, to
> check whether changes to pipelines are intentional or accidental.
>
> It's based on testmime.c and is very simple. See what you think:
>   https://gitorious.org/cups-filter-check
>
> Tim.
> */
>
>
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>
>

--e89a8fb208883ac5ed04ee897a01
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;d love to have this in the cups-filters package. Gre=
at idea.=C2=A0</div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_=
quote">2013/12/16 Tim Waugh <span dir=3D"ltr">&lt;<a href=3D"mailto:twaugh@=
redhat.com" target=3D"_blank">twaugh@redhat.com</a>&gt;</span><br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hi,<br>
<br>
Last week I put together a small program to simply display the filter<br>
pipelines that would be used for each configured input format and each<br>
likely output format (CUPS raster, PostScript, PDF).<br>
<br>
This is useful for sanity-checking changes to CUPS filter costs, to<br>
check whether changes to pipelines are intentional or accidental.<br>
<br>
It&#39;s based on testmime.c and is very simple. See what you think:<br>
=C2=A0 <a href=3D"https://gitorious.org/cups-filter-check" target=3D"_blank=
">https://gitorious.org/cups-filter-check</a><br>
<br>
Tim.<br>
*/<br>
<br>
<br>_______________________________________________<br>
Printing-architecture mailing list<br>
<a href=3D"mailto:Printing-architecture@lists.linux-foundation.org">Printin=
g-architecture@lists.linux-foundation.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/printing-arch=
itecture" target=3D"_blank">https://lists.linuxfoundation.org/mailman/listi=
nfo/printing-architecture</a><br>
<br></blockquote></div><br></div>

--e89a8fb208883ac5ed04ee897a01--
