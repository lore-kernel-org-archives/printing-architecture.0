Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8E8406115C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3617260E31
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org BAC81803AC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1702311177;
 bh=yoQCR1odmklPGyHt1fRqZvRozftPTyG8yKlIZ6y0H5w=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=GbH3wTZA7ybJOw0qDUhM6Wr9Zs2ef4B/jyV8CljPkjek5An/OkRkuEU43H03Qlj6J
 nKh8icxenHECX9uf6uIBrON27lBwgdvncN5iaDlHVukWqn7kFkaJm2kQJo6PMwQ86n
 G3k4tyTjRNIJKu4SCqsYPWJu0gVl83d7/LhFQEBw=
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.200.91.1.1\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <832fed55-c020-48e8-9815-c00198875e90@redhat.com>
Date: Mon, 11 Dec 2023 11:12:45 -0500
Content-Transfer-Encoding: quoted-printable
Message-Id: <BBF2A8EF-9A59-492E-8431-1DD760BF0848@msweet.org>
References: <trinity-aa4ecf8b-1604-4eb3-b482-ee17d53c54a8-1701190767678@3c-app-gmx-bap02>
 <540a6eb1-4964-4281-a333-cf18f44ecac2@gmail.com>
 <trinity-dc79b1f8-46da-4df4-b10d-8ba39c8c1512-1701249802882@3c-app-gmx-bap15>
 <SYBP282MB261780509FF7F2F97B2A31D78785A@SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM>
 <trinity-3c8ea779-9126-4afa-872b-a88075ac08bf-1702280122490@3c-app-gmx-bap41>
 <832fed55-c020-48e8-9815-c00198875e90@redhat.com>
Subject: Re: [Printing-architecture] high delay while printing
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Zdenek Dohnal <zdohnal@redhat.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Zdenek,

> On Dec 11, 2023, at 3:53=E2=80=AFAM, Zdenek Dohnal =
<zdohnal@redhat.com> wrote:
> ...
> So but even without possible bugs, it is a matter of choice - PDF =
printing is faster than raster, but sometimes you get issues. Raster is =
slower, but worked for me till now when PDF failed.
>=20
> In the past I have tried to pass 'document-format' to the print to =
enforce the output format I would like to have, but it is not among =
job-settable-attributes.
>=20
> @Mike, do you think supporting switching final format would =
possible/useful?

OK, so AirPrint (which is the spec that drove this; the same is true for =
IPP Everywhere) uses attributes (document-format-supported, =
pdf-*-supported) and job-state-reasons keywords ('document-format-error' =
and 'document-format-unprintable') to drive whether PDF is used for a =
job.

The preference is always PDF, because regardless of any speed concerns =
it is the most capable of producing optimal output for a printer =
(dynamic resolution features, color management, font hinting, etc.)  =
This functionality has been in place since the original AirPrint release =
in 2010, and we should not second guess the printer or the protocol.

*If* the PDF file is too large (pdf-k-octets-supported tells you this), =
uses unsupported PDF features (pdf-features-supported tells you what =
versions of PDF the printer supports), or the printer reports a problem =
with the PDF file (via the job-state-reasons keywords), then the Client =
(re)submits the job as raster (URF/Apple Raster for AirPrint, PWG Raster =
for IPP Everywhere/Mopria/Wi-Fi Direct).  The file size issue is easy to =
check and CUPS already does this.  The supported PDF versions are less =
of an issue today since PDF isn't going through as much churn today as =
10-15 years ago.  But if a printer isn't able to print a particular PDF =
file you get the "document-format-unprintable" keyword and can =
automatically re-submit as raster.

On the question of speed, Apple/PWG Raster is almost always deflated =
(gzip'd) on the way to the printer, and the formats were designed to =
allow printers to quickly process and print the data.  I did a white =
paper on this in 2011:

    =
https://ftp.pwg.org/pub/pwg/ipp/whitepaper/RasterAnalysis-20110922.pdf

CUPS Raster v2 is PWG Raster.  Apple Raster uses the same compression =
codec (just smaller file/page headers) so the analysis is the same. =46rom=
 the conclusions:

The best combination seems to be CUPS Raster Version 2 with LZ77 which =
has low CPU and memory requirements with excellent overall performance. =
For extremely limited clients and servers CUPS Raster Version 2 provides =
extremely low CPU and memory requirements with good overall performance.

For the sample documents rendered at 300 PPI, CUPS Raster Version 2 can =
easily provide 18 pages per minute over Wi-Fi in color and and about 2 =
pages per minute over DSL. Adding LZ77 basically doubles the potential =
print speed to 32 pages per minute over Wi-Fi and 4 pages per minute =
over DSL.

(Wi-Fi in this case would have probably been 300Mbit/sec 802.11n...)

WRT print speed, Apple/PWG Raster *might* be printed more slowly on high =
end printers due to the extra processing they do in general, but those =
printers also will support PDF and *that* will print more quickly.  The =
challenge is the low-to-mid end printers with PDF support because they =
can print PDF documents with text very quickly but throw in images or =
gradients and then raster is faster.  There is really no easy way to =
know, unfortunately...

________________________
Michael Sweet

