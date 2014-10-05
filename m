Return-Path: <korobkin@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=CIOays0cz20smoU0I4/ITWnDcFdxrvAljM9nXMppw3U=;
	b=0rcaT2tkeZWiFEUYnaQoruCtbJxjAamI7VYeCTyDTt/nYw8OIptUy+0LJlIoxawWrf
	pXGJdO6oZ+wrC7XUkDmwv7inBtRexs7iS1zk5PnVqED/IIaYFQN1hy56KCCaj73S4Aeo
	qRbTgHzZ6JgmstWuSPPf6bDS6n2PQUdOWybjYUjm8DhzUjfVC8P1Zzmy8QJt1sUVJ3zm
	8W90um8DrSttb8dRV+rE+QSubCx0+guglnAZYzYlmltSxTy266JNjBIGRVCXLa2nYwEd
	wVEEDE2nzCH611FzwtGo3kMr58cZEWBz4o2L0yeZmO8Ie7Gm5Xj6PP+4w1Ic54QXfInK
	eJhA==
MIME-Version: 1.0
Sender: korobkin@gmail.com
In-Reply-To: <34701921-5F04-411C-B35C-78CED619AAC3@apple.com>
References: <CA+3RNfiMXAVRKoFH8XD+YyWatt-Fc+mKMGkAQyQPJ=8_SX9T3g@mail.gmail.com>
	<5B66FA40-ED1E-461E-B00F-D5CD6C7DBC30@apple.com>
	<CA+3RNfgR9Ucx+mQezWVwi8XMCF-4EBtFV5bukKOsTfZsTBZURw@mail.gmail.com>
	<34701921-5F04-411C-B35C-78CED619AAC3@apple.com>
From: Alex Korobkin <korobkin+op@gmail.com>
Date: Sun, 5 Oct 2014 01:03:29 -0400
Message-ID: <CA+3RNfgzaD28Gcy4N=k_=jJMsQ9Ao1i8fSiRpeU3VHvXoxx4fw@mail.gmail.com>
Content-Type: multipart/alternative; boundary=20cf303dd2ca4639c50504a5e485
Subject: Re: [Printing-architecture] Number of copies in pure PDF workflow
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@apple.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

--20cf303dd2ca4639c50504a5e485
Content-Type: text/plain; charset=UTF-8

Michael,

I had tested this workflow with ipp backend, and it didn't communicate the
number of copies to the printer. What conditions must be met for ipp
backend to be able to specify the number of copies?

Should printer reply over IPP with "copies-supported"?

2014-10-04 15:48 GMT-04:00 Michael Sweet <msweet@apple.com>:

> Alex,
>
> You'll have to confirm with Till, but AFAIK the pdftopdf filter doesn't
> support PJL options.
>
> Naturally the socket backend cannot provide out-of-band job ticket
> information, but the IPP backend *can*.  (that goes back to my comment
> about IPP Everywhere)
>
> > On Oct 4, 2014, at 1:36 PM, Alex Korobkin <korobkin+op@gmail.com> wrote:
> >
> > Hi Michael,
> >
> > Sorry, I should have been more clear with my question. I'm asking about
> OpenPrinting PDF workflow [1], where client sends a PDF, and CUPS uses just
> two filters for the job: pdftopdf and a socket/ipp to send the PDF directly
> to the printer. No conversion to raster is happening: client sends a PDF,
> printer receives a PDF.
> >
> > cups-filters package ships with a couple of sample PPDs [2], [3] that
> basically allow for inserting PJL commands into the job to change its most
> common options: tray, duplex, etc.
> >
> > I'm trying to find out whether making manual copies via cupsManualCopies
> is the only way to handle the number of copies. Can pdftopdf or CUPS insert
> PJL SET COPIES=X into the job? Can CUPS set the number of copies via IPP
> commands? There is also some code in pdftopdf_jcl.cc [4] that is dealing
> with a Copies directive in a PPD, but I don't quite understand what it does.
> >
> > [1]
> http://www.linuxfoundation.org/collaborate/workgroups/openprinting/pdf_as_standard_print_job_format
> > [2]
> http://bzr.linuxfoundation.org/loggerhead/openprinting/cups-filters/annotate/head:/ppd/HP-Color_LaserJet_CM3530_MFP-PDF.ppd
> > [3]
> http://bzr.linuxfoundation.org/loggerhead/openprinting/cups-filters/annotate/head:/ppd/Fuji_Xerox-DocuPrint_CM305_df-PDF.ppd
> > [4]
> http://bzr.linuxfoundation.org/loggerhead/openprinting/cups-filters/annotate/head:/filter/pdftopdf/pdftopdf_jcl.cc#L35
> >
> > 2014-10-04 11:40 GMT-04:00 Michael Sweet <msweet@apple.com>:
> > Alex,
> >
> > > On Oct 3, 2014, at 3:28 PM, Alex Korobkin <korobkin+op@gmail.com>
> wrote:
> > >
> > > Hi all,
> > >
> > > I'm looking at example PPDs for pure PDF workflow, and all of them have
> > > cupsManualCopies: true
> > >
> > > Why is that? Is it impossible to tell printer to print a number of
> copies with pure PDF workflow?
> > > Maybe pdftopdf can inject @PJL SET COPIES=X into the file?
> >
> > No, that wouldn't work since the PDF-to-raster filters don't support PJL
> and (for that matter) most PDF printers do not support PJL.
> >
> > cupsManualCopies is there because the destination doesn't support
> generating copies of its own.  If it does, then cupsManualCopies won't be
> in the PPD - in the case of IPP Everywhere printers the copy count is
> passed in the job ticket when we create the job from the IPP backend.
> >
> > _________________________________________________________
> > Michael Sweet, Senior Printing System Engineer, PWG Chair
> >
> >
> >
> >
> > --
> > -Alex
>
> _________________________________________________________
> Michael Sweet, Senior Printing System Engineer, PWG Chair
>
>


-- 
-Alex

--20cf303dd2ca4639c50504a5e485
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Michael,=C2=A0<div><br></div><div>I had tested this workfl=
ow with ipp backend, and it didn&#39;t communicate the number of copies to =
the printer. What conditions must be met for ipp backend to be able to spec=
ify the number of copies?=C2=A0</div><div><br></div><div>Should printer rep=
ly over IPP with &quot;copies-supported&quot;?=C2=A0</div></div><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">2014-10-04 15:48 GMT-04:00 =
Michael Sweet <span dir=3D"ltr">&lt;<a href=3D"mailto:msweet@apple.com" tar=
get=3D"_blank">msweet@apple.com</a>&gt;</span>:<br><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex">Alex,<br>
<br>
You&#39;ll have to confirm with Till, but AFAIK the pdftopdf filter doesn&#=
39;t support PJL options.<br>
<br>
Naturally the socket backend cannot provide out-of-band job ticket informat=
ion, but the IPP backend *can*.=C2=A0 (that goes back to my comment about I=
PP Everywhere)<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt; On Oct 4, 2014, at 1:36 PM, Alex Korobkin &lt;<a href=3D"mailto:korobk=
in%2Bop@gmail.com">korobkin+op@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi Michael,<br>
&gt;<br>
&gt; Sorry, I should have been more clear with my question. I&#39;m asking =
about OpenPrinting PDF workflow [1], where client sends a PDF, and CUPS use=
s just two filters for the job: pdftopdf and a socket/ipp to send the PDF d=
irectly to the printer. No conversion to raster is happening: client sends =
a PDF, printer receives a PDF.<br>
&gt;<br>
&gt; cups-filters package ships with a couple of sample PPDs [2], [3] that =
basically allow for inserting PJL commands into the job to change its most =
common options: tray, duplex, etc.<br>
&gt;<br>
&gt; I&#39;m trying to find out whether making manual copies via cupsManual=
Copies is the only way to handle the number of copies. Can pdftopdf or CUPS=
 insert PJL SET COPIES=3DX into the job? Can CUPS set the number of copies =
via IPP commands? There is also some code in pdftopdf_jcl.cc [4] that is de=
aling with a Copies directive in a PPD, but I don&#39;t quite understand wh=
at it does.<br>
&gt;<br>
&gt; [1] <a href=3D"http://www.linuxfoundation.org/collaborate/workgroups/o=
penprinting/pdf_as_standard_print_job_format" target=3D"_blank">http://www.=
linuxfoundation.org/collaborate/workgroups/openprinting/pdf_as_standard_pri=
nt_job_format</a><br>
&gt; [2] <a href=3D"http://bzr.linuxfoundation.org/loggerhead/openprinting/=
cups-filters/annotate/head:/ppd/HP-Color_LaserJet_CM3530_MFP-PDF.ppd" targe=
t=3D"_blank">http://bzr.linuxfoundation.org/loggerhead/openprinting/cups-fi=
lters/annotate/head:/ppd/HP-Color_LaserJet_CM3530_MFP-PDF.ppd</a><br>
&gt; [3] <a href=3D"http://bzr.linuxfoundation.org/loggerhead/openprinting/=
cups-filters/annotate/head:/ppd/Fuji_Xerox-DocuPrint_CM305_df-PDF.ppd" targ=
et=3D"_blank">http://bzr.linuxfoundation.org/loggerhead/openprinting/cups-f=
ilters/annotate/head:/ppd/Fuji_Xerox-DocuPrint_CM305_df-PDF.ppd</a><br>
&gt; [4] <a href=3D"http://bzr.linuxfoundation.org/loggerhead/openprinting/=
cups-filters/annotate/head:/filter/pdftopdf/pdftopdf_jcl.cc#L35" target=3D"=
_blank">http://bzr.linuxfoundation.org/loggerhead/openprinting/cups-filters=
/annotate/head:/filter/pdftopdf/pdftopdf_jcl.cc#L35</a><br>
&gt;<br>
&gt; 2014-10-04 11:40 GMT-04:00 Michael Sweet &lt;<a href=3D"mailto:msweet@=
apple.com">msweet@apple.com</a>&gt;:<br>
&gt; Alex,<br>
&gt;<br>
&gt; &gt; On Oct 3, 2014, at 3:28 PM, Alex Korobkin &lt;<a href=3D"mailto:k=
orobkin%2Bop@gmail.com">korobkin+op@gmail.com</a>&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt; Hi all,<br>
&gt; &gt;<br>
&gt; &gt; I&#39;m looking at example PPDs for pure PDF workflow, and all of=
 them have<br>
&gt; &gt; cupsManualCopies: true<br>
&gt; &gt;<br>
&gt; &gt; Why is that? Is it impossible to tell printer to print a number o=
f copies with pure PDF workflow?<br>
&gt; &gt; Maybe pdftopdf can inject @PJL SET COPIES=3DX into the file?<br>
&gt;<br>
&gt; No, that wouldn&#39;t work since the PDF-to-raster filters don&#39;t s=
upport PJL and (for that matter) most PDF printers do not support PJL.<br>
&gt;<br>
&gt; cupsManualCopies is there because the destination doesn&#39;t support =
generating copies of its own.=C2=A0 If it does, then cupsManualCopies won&#=
39;t be in the PPD - in the case of IPP Everywhere printers the copy count =
is passed in the job ticket when we create the job from the IPP backend.<br=
>
&gt;<br>
&gt; _________________________________________________________<br>
&gt; Michael Sweet, Senior Printing System Engineer, PWG Chair<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; -Alex<br>
<br>
_________________________________________________________<br>
Michael Sweet, Senior Printing System Engineer, PWG Chair<br>
<br>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
<div dir=3D"ltr">-Alex</div>
</div>

--20cf303dd2ca4639c50504a5e485--
