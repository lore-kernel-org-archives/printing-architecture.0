Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3ED3F400D7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D3640400C7
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org A91C580438
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1701970734;
 bh=CdSZl4Xj0KB+/YjEJXIcGnAAUKSziLm0hMsQsZtnhWc=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=hJ7+J6B2urTol1IOg2H10OzY0tRv0XeGLP+R9TwgmPYbNxPfwZxUPQgikZ7MxDyj0
 shMpEbN93k5mVqakfqdDwLGcOhEIUlMoIz6tXCtKA6HOfp+/XXIZ8niIb9lya6Qjmd
 PAq/XITvK6QnpsJePU1m7OHZQ1MmCePtWqpK54Nk=
Content-Type: multipart/alternative;
 boundary="Apple-Mail=_679D12D4-B196-48F9-BAEE-7F6A45868CDC"
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.200.91.1.1\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <c7a55ce9-b1a0-49f9-869a-b3c021fc51fb@gmail.com>
Date: Thu, 7 Dec 2023 12:38:42 -0500
Message-Id: <C4E3B308-74D8-43D7-9790-859BEE0CAB62@msweet.org>
References: <c7a55ce9-b1a0-49f9-869a-b3c021fc51fb@gmail.com>
Subject: Re: [Printing-architecture] PDFio: Replaced QPDF by PDFio in
	libcupsfilters as GSoC project?
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>


--Apple-Mail=_679D12D4-B196-48F9-BAEE-7F6A45868CDC
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Till,

> On Dec 7, 2023, at 8:58=E2=80=AFAM, Till Kamppeter =
<till.kamppeter@gmail.com> wrote:
>=20
> Hi,
>=20
> Michael Sweet has closed the PDFio issue in which I ask for support of =
PDF forms and annotations, telling that inside PDFio nothing further =
needs to be done, that everything can be solved outside PDFio, by the =
calling application.
>=20
> As we want to get rid of C++ in libcupsfilters I plan to let it use =
PDFio where it is currently using QPDF.
>=20
> Mike, as you tell that PDFio is OK for handling PDF files with filled =
forms/annotations, I want to post a GSoC project idea to switch over =
libcupsfilters from using QPDF to PDFio. WDYT? Is this possible already? =
Or are there still any features missing in PDFio?

It is entirely possible.  The ipptransform program (part of the libcups =
project) shows how to do this, but it is really only necessary if you =
are doing N-up or other combinations of multiple pages from the input =
document.  If all you do is copy pages as-is then pdfioPageCopy will =
handle copying all of the annotations referenced by the Annots key in =
the page dictionary.

(ipptransform needs to be updated to copy/merge the Annots values, and I =
filed issue #71 in the libcups project to track that change...)

________________________
Michael Sweet


--Apple-Mail=_679D12D4-B196-48F9-BAEE-7F6A45868CDC
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"overflow-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: =
after-white-space;">Till,<div><br></div><div><div><blockquote =
type=3D"cite"><div>On Dec 7, 2023, at 8:58=E2=80=AFAM, Till Kamppeter =
&lt;till.kamppeter@gmail.com&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div><div>Hi,<br><br>Michael Sweet =
has closed the PDFio issue in which I ask for support of PDF forms and =
annotations, telling that inside PDFio nothing further needs to be done, =
that everything can be solved outside PDFio, by the calling =
application.<br><br>As we want to get rid of C++ in libcupsfilters I =
plan to let it use PDFio where it is currently using QPDF.<br><br>Mike, =
as you tell that PDFio is OK for handling PDF files with filled =
forms/annotations, I want to post a GSoC project idea to switch over =
libcupsfilters from using QPDF to PDFio. WDYT? Is this possible already? =
Or are there still any features missing in =
PDFio?<br></div></div></blockquote></div><br></div><div>It is entirely =
possible. &nbsp;The ipptransform program (part of the libcups project) =
shows how to do this, but it is really only necessary if you are doing =
N-up or other combinations of multiple pages from the input document. =
&nbsp;If all you do is copy pages as-is then pdfioPageCopy will handle =
copying all of the annotations referenced by the Annots key in the page =
dictionary.</div><div><br></div><div>(ipptransform needs to be updated =
to copy/merge the Annots values, and I filed issue #71 in the libcups =
project to track that change...)</div><div><br></div><div><div><div =
dir=3D"auto" style=3D"overflow-wrap: break-word; -webkit-nbsp-mode: =
space; line-break: =
after-white-space;">________________________<br>Michael =
Sweet<br></div><div><br></div></div></div></body></html>=

--Apple-Mail=_679D12D4-B196-48F9-BAEE-7F6A45868CDC--
