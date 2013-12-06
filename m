Return-Path: <lprint-list@thax.hardliners.org>
MIME-Version: 1.0
In-Reply-To: <52A101D4.40107@gmail.com>
References: <52A101D4.40107@gmail.com>
Date: Sat, 7 Dec 2013 00:01:48 +0100
Message-ID: <CAOTiGeV0wWsZ6nJhb2D+QjHQ0iVDof+TvVQPRMy=0QdR75K7Fw@mail.gmail.com>
From: Tobias Hoffmann <lprint-list@thax.hardliners.org>
Content-Type: multipart/alternative; boundary=001a11c2d7ba8cdd4f04ece5a1d8
Subject: Re: [Printing-architecture] What should the "landscape" and
 "orientation-requested" options exactly do?
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

--001a11c2d7ba8cdd4f04ece5a1d8
Content-Type: text/plain; charset=ISO-8859-1

Am 05.12.2013 23:44 schrieb "Till Kamppeter" <till.kamppeter@gmail.com>:
>
> Hi,
>
> I got the following bug report on Ubuntu:
>
> https://bugs.launchpad.net/ubuntu/+source/poppler/+bug/1243484
>
> a user complais that when he sends a job with the "landscape" option it
> does not come out correctly.
>
> Now I want to know exactly what "landscape" and "orientation-requested"
> should do exactly, to fix cups-filters.
>
> There is some discussion in the bug report and following RFC 2911 I come
> to the conclusion that PDF files and also PostScript files which come
> from apps as a print job have their layout and page geometry already
> determined by the app and so a filter like pdftopdf should ignore
> "landscape" and "orientation-requested". For PostScript files (filters
> pstopdf and pstops) the given "PageSize", "landscape", and
> "orientation-requested" settings should only be used as default for
> pages without geometry definition (like the old PostScript CUPS test
> page) and be ignored by pages which already come with complete geometry
> info (like pages of a usual print job from an app). Filters for text and
> image jobs (texttopdf, imagetopdf) should use "landscape" and
> "orientation-requested" for the layout of the output.
>
> Am I correct?

I don't think so.
E.g. for N-up, fitplot, adding of borders the pdftopdf filter looks at the
final destination size. This size is determined by page-size, *together*
with orientation-requested. pdftopdf also makes sure that filters like
pdftoXYZ only get portrait pdfs as input, so that these can rasterize from
to bottom and get the correct raster pixel ordering without thinking about
rotations (e.g. an inkjet still prints along the short edge, regardless
whether the input is landscape or not).

Two examples with texttopdf:
1)  A4, portrait: output pdf has (roughly) 21x29 cm, pdftopdf keeps it,
pdftoijs renders (e.g.) 1000x1400 pixel output "image" for the printer.
2)  A4, landscape: output pdf has 29x21 cm, pdftopdf rotates it (in the
ppd-specified normal_landscape direction), pdftoijs renders 1000x1400
pixels.

  Tobias

--001a11c2d7ba8cdd4f04ece5a1d8
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"><br>
Am 05.12.2013 23:44 schrieb &quot;Till Kamppeter&quot; &lt;<a href=3D"mailt=
o:till.kamppeter@gmail.com">till.kamppeter@gmail.com</a>&gt;:<br>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt; I got the following bug report on Ubuntu:<br>
&gt;<br>
&gt; <a href=3D"https://bugs.launchpad.net/ubuntu/+source/poppler/+bug/1243=
484">https://bugs.launchpad.net/ubuntu/+source/poppler/+bug/1243484</a><br>
&gt;<br>
&gt; a user complais that when he sends a job with the &quot;landscape&quot=
; option it<br>
&gt; does not come out correctly.<br>
&gt;<br>
&gt; Now I want to know exactly what &quot;landscape&quot; and &quot;orient=
ation-requested&quot;<br>
&gt; should do exactly, to fix cups-filters.<br>
&gt;<br>
&gt; There is some discussion in the bug report and following RFC 2911 I co=
me<br>
&gt; to the conclusion that PDF files and also PostScript files which come<=
br>
&gt; from apps as a print job have their layout and page geometry already<b=
r>
&gt; determined by the app and so a filter like pdftopdf should ignore<br>
&gt; &quot;landscape&quot; and &quot;orientation-requested&quot;. For PostS=
cript files (filters<br>
&gt; pstopdf and pstops) the given &quot;PageSize&quot;, &quot;landscape&qu=
ot;, and<br>
&gt; &quot;orientation-requested&quot; settings should only be used as defa=
ult for<br>
&gt; pages without geometry definition (like the old PostScript CUPS test<b=
r>
&gt; page) and be ignored by pages which already come with complete geometr=
y<br>
&gt; info (like pages of a usual print job from an app). Filters for text a=
nd<br>
&gt; image jobs (texttopdf, imagetopdf) should use &quot;landscape&quot; an=
d<br>
&gt; &quot;orientation-requested&quot; for the layout of the output.<br>
&gt;<br>
&gt; Am I correct?</p>
<p dir=3D"ltr">I don&#39;t think so. <br>
E.g. for N-up, fitplot, adding of borders the pdftopdf filter looks at the =
final destination size. This size is determined by page-size, *together* wi=
th orientation-requested. pdftopdf also makes sure that filters like pdftoX=
YZ only get portrait pdfs as input, so that these can rasterize from to bot=
tom and get the correct raster pixel ordering without thinking about rotati=
ons (e.g. an inkjet still prints along the short edge, regardless whether t=
he input is landscape or not).</p>

<p dir=3D"ltr">Two examples with texttopdf:<br>
1)=A0 A4, portrait: output pdf has (roughly) 21x29 cm, pdftopdf keeps it, p=
dftoijs renders (e.g.) 1000x1400 pixel output &quot;image&quot; for the pri=
nter.<br>
2)=A0 A4, landscape: output pdf has 29x21 cm, pdftopdf rotates it (in the p=
pd-specified normal_landscape direction), pdftoijs renders 1000x1400 pixels=
.</p>
<p dir=3D"ltr">=A0 Tobias</p>

--001a11c2d7ba8cdd4f04ece5a1d8--
