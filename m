Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 037FE821A8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D2C7382186
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org AA62882101
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1702318150;
 bh=AlrzsIkhWe7Lyft8NZrFd5aOxiH73pqahvllUXh+SJ0=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=P3qy3TTn+iYnjkuWik9rtlh8DifidUy+W+w9dkzV2nnHh91Tj00qc8VU27M6KAPg4
 A7oBaSxcPjpoEc9FHMhQ1TbZnwYq4/N5fMU+PF4lSs0uA1BTN0wrvicqWpYSR4SvSN
 jd9igIiVPZTK5bkoTgz5LDP53idAVwcUy0qA7+0w=
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.300.61.1.2\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <CA+3RNfhzN+BB_OiO12B62pGh1H4EJXsZpsFBwYK5eiH+5+Ra=w@mail.gmail.com>
Date: Mon, 11 Dec 2023 13:08:58 -0500
Content-Transfer-Encoding: quoted-printable
Message-Id: <F8540CAC-A93F-42DD-9E1A-D46746C92283@msweet.org>
References: <c7a55ce9-b1a0-49f9-869a-b3c021fc51fb@gmail.com>
 <CA+3RNfgm8TtZFAoJP5+WZuH698VsDvgBMx1XV=DciLdTiswFrQ@mail.gmail.com>
 <233C4113-5BD2-494F-A342-30C4A2607452@msweet.org>
 <CA+3RNfhzN+BB_OiO12B62pGh1H4EJXsZpsFBwYK5eiH+5+Ra=w@mail.gmail.com>
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
To: Alex Korobkin <korobkin+op@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Alex,

> On Dec 11, 2023, at 12:08=E2=80=AFPM, Alex Korobkin =
<korobkin+op@gmail.com> wrote:
>=20
> Thank you, that's exactly what I needed.=20
> I ran it against my collection of bad PDFs, and 10% of them failed =
with " Malformed xref table entry '0000000000 65536 f'."

The allowed range for generation numbers is 0-65535, so this is a bad =
PDF file. I can certainly allow a wider range of values (will require a =
small change to the internal representation) or just allow invalid =
values for object 0 but I'll want to understand the scope of the problem =
first...  Can you file a bug with a file or two that has this problem?

> I suppose that's the #1 point from your reply, so perhaps it's not too =
bad of an idea to reconstruct the xref table when possible?

No, the usual xref table issue is that the offsets are wrong, either =
from line ending changes or hand editing of the PDF file.

> It also reported "Too many object streams." for one file with 7000 =
pages, and "Unexpected 'startxref' token seen." on this file created by =
Till in 2013 to test various page sizes in a single PDF.=20

Really?  The current code allows up to 4k object streams per xref table, =
and most files only have 1 or 2 (Acrobat will make 1 for the first page =
and 2 for the remaining pages in a linearized file).

Filed this as issue #58:

	https://github.com/michaelrsweet/pdfio/issues/58

________________________
Michael Sweet

