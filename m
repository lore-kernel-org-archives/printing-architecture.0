Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-type: multipart/alternative;
	boundary="Boundary_(ID_/VAg8ULbTso7ZcC0CViflA)"
From: Michael Sweet <msweet@apple.com>
In-reply-to: <CAOTiGeV0wWsZ6nJhb2D+QjHQ0iVDof+TvVQPRMy=0QdR75K7Fw@mail.gmail.com>
Date: Mon, 09 Dec 2013 10:55:15 -0500
Message-id: <BABCF949-94BC-4BCF-8985-75FE34DCEB8E@apple.com>
References: <52A101D4.40107@gmail.com>
	<CAOTiGeV0wWsZ6nJhb2D+QjHQ0iVDof+TvVQPRMy=0QdR75K7Fw@mail.gmail.com>
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
To: Tobias Hoffmann <lprint-list@thax.hardliners.org>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Till Kamppeter <till.kamppeter@gmail.com>


--Boundary_(ID_/VAg8ULbTso7ZcC0CViflA)
Content-type: text/plain; CHARSET=US-ASCII
Content-transfer-encoding: 7BIT

Till,

What Tobias said...


On Dec 6, 2013, at 6:01 PM, Tobias Hoffmann <lprint-list@thax.hardliners.org> wrote:

> 
> Am 05.12.2013 23:44 schrieb "Till Kamppeter" <till.kamppeter@gmail.com>:
> >
> > Hi,
> >
> > I got the following bug report on Ubuntu:
> >
> > https://bugs.launchpad.net/ubuntu/+source/poppler/+bug/1243484
> >
> > a user complais that when he sends a job with the "landscape" option it
> > does not come out correctly.
> >
> > Now I want to know exactly what "landscape" and "orientation-requested"
> > should do exactly, to fix cups-filters.
> >
> > There is some discussion in the bug report and following RFC 2911 I come
> > to the conclusion that PDF files and also PostScript files which come
> > from apps as a print job have their layout and page geometry already
> > determined by the app and so a filter like pdftopdf should ignore
> > "landscape" and "orientation-requested". For PostScript files (filters
> > pstopdf and pstops) the given "PageSize", "landscape", and
> > "orientation-requested" settings should only be used as default for
> > pages without geometry definition (like the old PostScript CUPS test
> > page) and be ignored by pages which already come with complete geometry
> > info (like pages of a usual print job from an app). Filters for text and
> > image jobs (texttopdf, imagetopdf) should use "landscape" and
> > "orientation-requested" for the layout of the output.
> >
> > Am I correct?
> 
> I don't think so. 
> E.g. for N-up, fitplot, adding of borders the pdftopdf filter looks at the final destination size. This size is determined by page-size, *together* with orientation-requested. pdftopdf also makes sure that filters like pdftoXYZ only get portrait pdfs as input, so that these can rasterize from to bottom and get the correct raster pixel ordering without thinking about rotations (e.g. an inkjet still prints along the short edge, regardless whether the input is landscape or not).
> 
> Two examples with texttopdf:
> 1)  A4, portrait: output pdf has (roughly) 21x29 cm, pdftopdf keeps it, pdftoijs renders (e.g.) 1000x1400 pixel output "image" for the printer.
> 2)  A4, landscape: output pdf has 29x21 cm, pdftopdf rotates it (in the ppd-specified normal_landscape direction), pdftoijs renders 1000x1400 pixels.
> 
>   Tobias
> 

_______________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair


--Boundary_(ID_/VAg8ULbTso7ZcC0CViflA)
Content-type: text/html; CHARSET=US-ASCII
Content-transfer-encoding: 7BIT

<html><head><meta http-equiv="Content-Type" content="text/html charset=iso-8859-1"></head><body style="word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space;">Till,<div><br></div><div>What Tobias said...</div><div><br></div><div><br><div><div>On Dec 6, 2013, at 6:01 PM, Tobias Hoffmann &lt;<a href="mailto:lprint-list@thax.hardliners.org">lprint-list@thax.hardliners.org</a>&gt; wrote:</div><br class="Apple-interchange-newline"><blockquote type="cite"><p dir="ltr"><br>
Am 05.12.2013 23:44 schrieb "Till Kamppeter" &lt;<a href="mailto:till.kamppeter@gmail.com">till.kamppeter@gmail.com</a>&gt;:<br>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt; I got the following bug report on Ubuntu:<br>
&gt;<br>
&gt; <a href="https://bugs.launchpad.net/ubuntu/+source/poppler/+bug/1243484">https://bugs.launchpad.net/ubuntu/+source/poppler/+bug/1243484</a><br>
&gt;<br>
&gt; a user complais that when he sends a job with the "landscape" option it<br>
&gt; does not come out correctly.<br>
&gt;<br>
&gt; Now I want to know exactly what "landscape" and "orientation-requested"<br>
&gt; should do exactly, to fix cups-filters.<br>
&gt;<br>
&gt; There is some discussion in the bug report and following RFC 2911 I come<br>
&gt; to the conclusion that PDF files and also PostScript files which come<br>
&gt; from apps as a print job have their layout and page geometry already<br>
&gt; determined by the app and so a filter like pdftopdf should ignore<br>
&gt; "landscape" and "orientation-requested". For PostScript files (filters<br>
&gt; pstopdf and pstops) the given "PageSize", "landscape", and<br>
&gt; "orientation-requested" settings should only be used as default for<br>
&gt; pages without geometry definition (like the old PostScript CUPS test<br>
&gt; page) and be ignored by pages which already come with complete geometry<br>
&gt; info (like pages of a usual print job from an app). Filters for text and<br>
&gt; image jobs (texttopdf, imagetopdf) should use "landscape" and<br>
&gt; "orientation-requested" for the layout of the output.<br>
&gt;<br>
&gt; Am I correct?</p><p dir="ltr">I don't think so. <br>
E.g. for N-up, fitplot, adding of borders the pdftopdf filter looks at the final destination size. This size is determined by page-size, *together* with orientation-requested. pdftopdf also makes sure that filters like pdftoXYZ only get portrait pdfs as input, so that these can rasterize from to bottom and get the correct raster pixel ordering without thinking about rotations (e.g. an inkjet still prints along the short edge, regardless whether the input is landscape or not).</p><p dir="ltr">Two examples with texttopdf:<br>
1)&nbsp; A4, portrait: output pdf has (roughly) 21x29 cm, pdftopdf keeps it, pdftoijs renders (e.g.) 1000x1400 pixel output "image" for the printer.<br>
2)&nbsp; A4, landscape: output pdf has 29x21 cm, pdftopdf rotates it (in the ppd-specified normal_landscape direction), pdftoijs renders 1000x1400 pixels.</p><p dir="ltr">&nbsp; Tobias</p>
</blockquote></div><br><div>
<div style="color: rgb(0, 0, 0); letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space;">_______________________________________________________________<br>Michael Sweet, Senior Printing&nbsp;System Engineer, PWG Chair<br></div>

</div>
<br></div></body></html>

--Boundary_(ID_/VAg8ULbTso7ZcC0CViflA)--
