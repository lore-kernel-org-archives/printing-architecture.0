Return-Path: <korobkin@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc;
	bh=mLQQ9LIV+8/kspu8WOw63jklxnq5IJKpfNuPyCXno5k=;
	b=MqZ1VGstE6bsKqCRoyC14dYoQn7GS3GxNl0GZnzlg9djP3mZmgSpRhLL0k0DRc0wf4
	ZhV+3ymsejIGArWcAIA5dJktMe4jDOi7BpiB6dit9UN8Uv6vk7CxOmJWKaibZGZmiG6h
	da4LSRgkPF+iOmw4ItES5YbsjFLZ3O0tHcff2era8l3tY6LAwyM3C90xRcgVheMjvVrK
	uDwwNTnx23QNbpY0Zepvx4gKSADcspiIttFwysGp0XoidaPTwDHeRujx7cf5pVm81yHe
	EfJKnIxT0hpbbctdYpWltxgMPNrZQ8UTi6zZuJklVaVoRtoUBpWkbhyYKuinFdnhUtRi
	7pew==
MIME-Version: 1.0
Sender: korobkin@gmail.com
In-Reply-To: <D869C264-319C-45AC-B102-986F1EF3FF4D@apple.com>
References: <CA+3RNfhNgNFupp3AboQc8vi2FZiitRRtoK8schu4JCqTK6M8VQ@mail.gmail.com>
	<D869C264-319C-45AC-B102-986F1EF3FF4D@apple.com>
From: Alex Korobkin <korobkin+op@gmail.com>
Date: Mon, 4 Dec 2017 17:21:10 -0500
Message-ID: <CA+3RNfhzLeqKCTS1QOovw=jOp94QBKKNkbLQAEzFW2KZC-hrjw@mail.gmail.com>
Content-Type: multipart/alternative; boundary="001a114b6b6ce9b165055f8b235a"
Subject: Re: [Printing-architecture] IPP Shared Infrastructure Extensions
	(INFRA)
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

--001a114b6b6ce9b165055f8b235a
Content-Type: text/plain; charset="UTF-8"

Thank you Michael.

Is there a way for IPP/IPP Everywhere printer to pull jobs from print
server, instead of server pushing them to the printer? For example, we tell
the printer to periodically check this server/proxy for waiting jobs, so
that it could download and print them.

It seems like it would fit nicely into this IPP INFRA idea, but I don't see
it mentioned. I got an impression that the only method is to push jobs to
the printer (from Proxy or from a print server).

On Wed, Sep 27, 2017 at 1:58 PM, Michael Sweet <msweet@apple.com> wrote:

> Alex,
>
> It was precisely written to address cloud and split-network infrastructure
> issues.  I did some (private) prototyping back when we did the spec, and
> some of that work is present in the current ippsample project maintained by
> the PWG/Apple at:
>
>     https://github.com/istopwg/ippsample
>
> I still haven't finished adding IPP INFRA support to the ippsample project
> yet (lack of time) but ultimately we want to have a more robust
> publicly-available sample implementation available to show how to do it
> efficiently.
>
> (I believe there are some commercial "release printing" solutions coming
> that will use IPP INFRA as well, although nothing that has been released
> AFAIK...)
>
>
> > On Sep 27, 2017, at 1:32 PM, Alex Korobkin <korobkin+op@gmail.com>
> wrote:
> >
> > Hi all,
> >
> > There is this interesting design of a cloud-like infrastructure called
> "IPP Shared Infrastructure Extensions", http://ftp.pwg.org/pub/pwg/
> candidates/cs-ippinfra10-20150619-5100.18.pdf
> >
> > Have you heard of anyone actually implementing that?
> >
> > In general, I'm curious how people handle shared printers in the world
> of public networks and no direct connection between a printer and a user's
> device. That doc looks like an answer.
> >
> > --
> > -Alex
> > _______________________________________________
> > Printing-architecture mailing list
> > Printing-architecture@lists.linux-foundation.org
> > https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>
> _________________________________________________________
> Michael Sweet, Senior Printing System Engineer
>
>


-- 
-Alex

--001a114b6b6ce9b165055f8b235a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you Michael.=C2=A0<div><br></div><div>Is there a way=
 for IPP/IPP Everywhere printer to pull jobs from print server, instead of =
server pushing them to the printer? For example, we tell the printer to per=
iodically check this server/proxy for waiting jobs, so that it could downlo=
ad and print them.=C2=A0</div><div><br></div><div>It seems like it would fi=
t nicely into this IPP INFRA idea, but I don&#39;t see it mentioned. I got =
an impression that the only method is to push jobs to the printer (from Pro=
xy or from a print server).=C2=A0</div></div><div class=3D"gmail_extra"><br=
><div class=3D"gmail_quote">On Wed, Sep 27, 2017 at 1:58 PM, Michael Sweet =
<span dir=3D"ltr">&lt;<a href=3D"mailto:msweet@apple.com" target=3D"_blank"=
>msweet@apple.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">A=
lex,<br>
<br>
It was precisely written to address cloud and split-network infrastructure =
issues.=C2=A0 I did some (private) prototyping back when we did the spec, a=
nd some of that work is present in the current ippsample project maintained=
 by the PWG/Apple at:<br>
<br>
=C2=A0 =C2=A0 <a href=3D"https://github.com/istopwg/ippsample" rel=3D"noref=
errer" target=3D"_blank">https://github.com/istopwg/<wbr>ippsample</a><br>
<br>
I still haven&#39;t finished adding IPP INFRA support to the ippsample proj=
ect yet (lack of time) but ultimately we want to have a more robust publicl=
y-available sample implementation available to show how to do it efficientl=
y.<br>
<br>
(I believe there are some commercial &quot;release printing&quot; solutions=
 coming that will use IPP INFRA as well, although nothing that has been rel=
eased AFAIK...)<br>
<div><div class=3D"h5"><br>
<br>
&gt; On Sep 27, 2017, at 1:32 PM, Alex Korobkin &lt;<a href=3D"mailto:korob=
kin%2Bop@gmail.com">korobkin+op@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi all,<br>
&gt;<br>
&gt; There is this interesting design of a cloud-like infrastructure called=
 &quot;IPP Shared Infrastructure Extensions&quot;, <a href=3D"http://ftp.pw=
g.org/pub/pwg/candidates/cs-ippinfra10-20150619-5100.18.pdf" rel=3D"norefer=
rer" target=3D"_blank">http://ftp.pwg.org/pub/pwg/<wbr>candidates/cs-ippinf=
ra10-<wbr>20150619-5100.18.pdf</a><br>
&gt;<br>
&gt; Have you heard of anyone actually implementing that?<br>
&gt;<br>
&gt; In general, I&#39;m curious how people handle shared printers in the w=
orld of public networks and no direct connection between a printer and a us=
er&#39;s device. That doc looks like an answer.<br>
&gt;<br>
&gt; --<br>
&gt; -Alex<br>
</div></div>&gt; ______________________________<wbr>_________________<br>
&gt; Printing-architecture mailing list<br>
&gt; <a href=3D"mailto:Printing-architecture@lists.linux-foundation.org">Pr=
inting-architecture@lists.<wbr>linux-foundation.org</a><br>
&gt; <a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/printing=
-architecture" rel=3D"noreferrer" target=3D"_blank">https://lists.linuxfoun=
dation.<wbr>org/mailman/listinfo/printing-<wbr>architecture</a><br>
<br>
______________________________<wbr>___________________________<br>
Michael Sweet, Senior Printing System Engineer<br>
<br>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr">-A=
lex</div></div>
</div>

--001a114b6b6ce9b165055f8b235a--
