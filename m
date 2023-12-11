Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2D91E8208A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8A37981F41
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org A162682101
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1702311872;
 bh=OfDx26gevLMQwJb8GNmYSLoMRaQpJxt9jGtdYMggxlc=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=YlkZ3p1jTYv64C5wi8rqJfn+LmJQ5M7OdxqWPmj6wOylTzeXrRHHrfA1rhTEPP4ur
 Lp/3ZaLzS/0RRlgnSylob7bFowNbVYDe2hkYptLjSLB80Dw+zGrX/KLYk4P8iuae/6
 fQzSwdRTVgdIwUr4Lrkh5yUM2TlKb5x4FXT9X5L4=
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.200.91.1.1\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <CA+3RNfgm8TtZFAoJP5+WZuH698VsDvgBMx1XV=DciLdTiswFrQ@mail.gmail.com>
Date: Mon, 11 Dec 2023 11:24:20 -0500
Content-Transfer-Encoding: quoted-printable
Message-Id: <233C4113-5BD2-494F-A342-30C4A2607452@msweet.org>
References: <c7a55ce9-b1a0-49f9-869a-b3c021fc51fb@gmail.com>
 <CA+3RNfgm8TtZFAoJP5+WZuH698VsDvgBMx1XV=DciLdTiswFrQ@mail.gmail.com>
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

> On Dec 11, 2023, at 11:12=E2=80=AFAM, Alex Korobkin =
<korobkin+op@gmail.com> wrote:
>=20
> Hello printing folks,=20
>=20
> If you don't mind, may I chime in from the user's perspective? As you =
know, there are lots of bad PDFs out there, and even if they represent =
only 0.1% of the total number of all PDFs that people print, one million =
print jobs turns into 1000 tickets about unprintable files. QPDF is =
extremely accommodating about it: no matter how bad a PDF is, it will =
try to recover and proceed. Over the last few years I filed numerous =
requests about handling some despicable PDFs, and all of them were =
accepted.
>=20
> How is PDFio with regards to handling bad PDFs? Is there any testing =
tool with PDFio compiled in that I can run against my corpus of bad PDFs =
to see how it would treat them?

The "testpdfio" program specifically does this.  With no arguments it =
runs PDFio's unit tests, but if you pass in a filename you'll get a list =
of pages/objects:

    ./testpdfio FILENAME.pdf

    ./testpdfio --verbose FILENAME.pdf

    ./testpdfio FILENAME.pdf OBJECT-NUMBER >OBJ.dat

I also have a large corpus I test with (which includes the PDF =
Association's Stressful PDF Corpus) and the only two open issues I have =
are:

1. Currently PDFio will not reconstruct a missing/broken xref table, and
2. I have one file that uses two different encryption keys for different =
parts of the file (this looks to be an encrypted file that was later =
edited with Acrobat, with the changes written with a separate key...)

I have my concerns about enabling #1 by default, as it could open up =
security issues (denial-of-service for sure, possibly data corruption).=20=

For #2 I'll come up with a fix but this is the first time I've ever seen =
a PDF file with multiple encryption keys (the spec doesn't disallow it =
but also doesn't talk about needing to support it...) so I'm not sure =
how common they are...

________________________
Michael Sweet

