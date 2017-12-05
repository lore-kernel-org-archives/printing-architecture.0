Return-Path: <korobkin@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc;
	bh=SkX/A5B2SmlkcBGJjCHCtvHoj1Xp40GPLovbvIubksk=;
	b=gNGpCxITjK6mQs9wyWfdvRHsgXJVy1wd2Icn3ytDueLqomu2T0rW0pr24fPV3MiFGN
	R7NESQOo+xGcJgiu2vr+8iyyQzt0V6ghEsyWjbkbO8jTbHD9ib9TEG69E3pZFK1PwLl4
	9W0aOviLb3JqRlH4J7lh79ZlnVzkfWFvu4Zd5KsZu1XmrL03xBDnCThMLsNJCFAtuvL7
	TIz63Ji+d2J+ts6UImoGw7HzLGbD6Bj0OL2TOjAPhP1O6ibNZeg5PvwKtGgKJWUyH20d
	HLMQuq/KPOx0eSaF7ZV22ycah5VksGGim0x29UrrsoEANnc7zPL4DtVk0AO0K53adUbH
	Hzpg==
MIME-Version: 1.0
Sender: korobkin@gmail.com
In-Reply-To: <F43A3DFD-E49A-4E5F-8892-4BAF296D7B24@apple.com>
References: <CA+3RNfhNgNFupp3AboQc8vi2FZiitRRtoK8schu4JCqTK6M8VQ@mail.gmail.com>
	<D869C264-319C-45AC-B102-986F1EF3FF4D@apple.com>
	<CA+3RNfhzLeqKCTS1QOovw=jOp94QBKKNkbLQAEzFW2KZC-hrjw@mail.gmail.com>
	<F43A3DFD-E49A-4E5F-8892-4BAF296D7B24@apple.com>
From: Alex Korobkin <korobkin+op@gmail.com>
Date: Tue, 5 Dec 2017 11:36:10 -0500
Message-ID: <CA+3RNfhZqemUfTg_OJQTNTnH1RHutEOAjKNJiG6zrkPppos9Hw@mail.gmail.com>
Content-Type: multipart/alternative; boundary="001a11401b14f3540f055f9a6fa4"
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

--001a11401b14f3540f055f9a6fa4
Content-Type: text/plain; charset="UTF-8"

I see, thank you. Do you think it's possible for a printer manufacturer to
look at the doc and implement Proxy role part in printer firmware,
expecting someone else to implement the infra/cloud printer?

I'm thinking about a distant future where printers can be configured as
cloud/infra clients, and cloud or infra services are provided by various
companies, but everything is based on some common standard and can
interoperate just fine.

On Mon, Dec 4, 2017 at 9:30 PM, Michael Sweet <msweet@apple.com> wrote:

> Alex,
>
> That is exactly the point of IPP INFRA - the local Printer (in its Proxy
> role) fetches the jobs and documents from the Infrastructure (cloud)
> Printer.  The Proxy can either be part of the Printer or another network
> device the relays the fetched jobs to the local Printer.
>
>
> > On Dec 4, 2017, at 5:21 PM, Alex Korobkin <korobkin+op@gmail.com> wrote:
> >
> > Thank you Michael.
> >
> > Is there a way for IPP/IPP Everywhere printer to pull jobs from print
> server, instead of server pushing them to the printer? For example, we tell
> the printer to periodically check this server/proxy for waiting jobs, so
> that it could download and print them.
> >
> > It seems like it would fit nicely into this IPP INFRA idea, but I don't
> see it mentioned. I got an impression that the only method is to push jobs
> to the printer (from Proxy or from a print server).
> >
> > On Wed, Sep 27, 2017 at 1:58 PM, Michael Sweet <msweet@apple.com> wrote:
> > Alex,
> >
> > It was precisely written to address cloud and split-network
> infrastructure issues.  I did some (private) prototyping back when we did
> the spec, and some of that work is present in the current ippsample project
> maintained by the PWG/Apple at:
> >
> >     https://github.com/istopwg/ippsample
> >
> > I still haven't finished adding IPP INFRA support to the ippsample
> project yet (lack of time) but ultimately we want to have a more robust
> publicly-available sample implementation available to show how to do it
> efficiently.
> >
> > (I believe there are some commercial "release printing" solutions coming
> that will use IPP INFRA as well, although nothing that has been released
> AFAIK...)
> >
> >
> > > On Sep 27, 2017, at 1:32 PM, Alex Korobkin <korobkin+op@gmail.com>
> wrote:
> > >
> > > Hi all,
> > >
> > > There is this interesting design of a cloud-like infrastructure called
> "IPP Shared Infrastructure Extensions", http://ftp.pwg.org/pub/pwg/
> candidates/cs-ippinfra10-20150619-5100.18.pdf
> > >
> > > Have you heard of anyone actually implementing that?
> > >
> > > In general, I'm curious how people handle shared printers in the world
> of public networks and no direct connection between a printer and a user's
> device. That doc looks like an answer.
> > >
> > > --
> > > -Alex
> > > _______________________________________________
> > > Printing-architecture mailing list
> > > Printing-architecture@lists.linux-foundation.org
> > > https://lists.linuxfoundation.org/mailman/listinfo/printing-
> architecture
> >
> > _________________________________________________________
> > Michael Sweet, Senior Printing System Engineer
> >
> >
> >
> >
> > --
> > -Alex
>
> _________________________________________________________
> Michael Sweet, Senior Printing System Engineer
>
>


-- 
-Alex

--001a11401b14f3540f055f9a6fa4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I see, thank you. Do you think it&#39;s possible for a pri=
nter manufacturer to look at the doc and implement Proxy role part in print=
er firmware, expecting someone else to implement the infra/cloud printer?=
=C2=A0<div><br></div><div>I&#39;m thinking about a distant future where pri=
nters can be configured as cloud/infra clients, and cloud or infra services=
 are provided by various companies, but everything is based on some common =
standard and can interoperate just fine.=C2=A0</div></div><div class=3D"gma=
il_extra"><br><div class=3D"gmail_quote">On Mon, Dec 4, 2017 at 9:30 PM, Mi=
chael Sweet <span dir=3D"ltr">&lt;<a href=3D"mailto:msweet@apple.com" targe=
t=3D"_blank">msweet@apple.com</a>&gt;</span> wrote:<br><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex">Alex,<br>
<br>
That is exactly the point of IPP INFRA - the local Printer (in its Proxy ro=
le) fetches the jobs and documents from the Infrastructure (cloud) Printer.=
=C2=A0 The Proxy can either be part of the Printer or another network devic=
e the relays the fetched jobs to the local Printer.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
&gt; On Dec 4, 2017, at 5:21 PM, Alex Korobkin &lt;<a href=3D"mailto:korobk=
in%2Bop@gmail.com">korobkin+op@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Thank you Michael.<br>
&gt;<br>
&gt; Is there a way for IPP/IPP Everywhere printer to pull jobs from print =
server, instead of server pushing them to the printer? For example, we tell=
 the printer to periodically check this server/proxy for waiting jobs, so t=
hat it could download and print them.<br>
&gt;<br>
&gt; It seems like it would fit nicely into this IPP INFRA idea, but I don&=
#39;t see it mentioned. I got an impression that the only method is to push=
 jobs to the printer (from Proxy or from a print server).<br>
&gt;<br>
&gt; On Wed, Sep 27, 2017 at 1:58 PM, Michael Sweet &lt;<a href=3D"mailto:m=
sweet@apple.com">msweet@apple.com</a>&gt; wrote:<br>
&gt; Alex,<br>
&gt;<br>
&gt; It was precisely written to address cloud and split-network infrastruc=
ture issues.=C2=A0 I did some (private) prototyping back when we did the sp=
ec, and some of that work is present in the current ippsample project maint=
ained by the PWG/Apple at:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"https://github.com/istopwg/ippsample" re=
l=3D"noreferrer" target=3D"_blank">https://github.com/istopwg/<wbr>ippsampl=
e</a><br>
&gt;<br>
&gt; I still haven&#39;t finished adding IPP INFRA support to the ippsample=
 project yet (lack of time) but ultimately we want to have a more robust pu=
blicly-available sample implementation available to show how to do it effic=
iently.<br>
&gt;<br>
&gt; (I believe there are some commercial &quot;release printing&quot; solu=
tions coming that will use IPP INFRA as well, although nothing that has bee=
n released AFAIK...)<br>
&gt;<br>
&gt;<br>
&gt; &gt; On Sep 27, 2017, at 1:32 PM, Alex Korobkin &lt;<a href=3D"mailto:=
korobkin%2Bop@gmail.com">korobkin+op@gmail.com</a>&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt; Hi all,<br>
&gt; &gt;<br>
&gt; &gt; There is this interesting design of a cloud-like infrastructure c=
alled &quot;IPP Shared Infrastructure Extensions&quot;, <a href=3D"http://f=
tp.pwg.org/pub/pwg/candidates/cs-ippinfra10-20150619-5100.18.pdf" rel=3D"no=
referrer" target=3D"_blank">http://ftp.pwg.org/pub/pwg/<wbr>candidates/cs-i=
ppinfra10-<wbr>20150619-5100.18.pdf</a><br>
&gt; &gt;<br>
&gt; &gt; Have you heard of anyone actually implementing that?<br>
&gt; &gt;<br>
&gt; &gt; In general, I&#39;m curious how people handle shared printers in =
the world of public networks and no direct connection between a printer and=
 a user&#39;s device. That doc looks like an answer.<br>
&gt; &gt;<br>
&gt; &gt; --<br>
&gt; &gt; -Alex<br>
&gt; &gt; ______________________________<wbr>_________________<br>
&gt; &gt; Printing-architecture mailing list<br>
&gt; &gt; <a href=3D"mailto:Printing-architecture@lists.linux-foundation.or=
g">Printing-architecture@lists.<wbr>linux-foundation.org</a><br>
&gt; &gt; <a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/pri=
nting-architecture" rel=3D"noreferrer" target=3D"_blank">https://lists.linu=
xfoundation.<wbr>org/mailman/listinfo/printing-<wbr>architecture</a><br>
&gt;<br>
&gt; ______________________________<wbr>___________________________<br>
&gt; Michael Sweet, Senior Printing System Engineer<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; -Alex<br>
<br>
______________________________<wbr>___________________________<br>
Michael Sweet, Senior Printing System Engineer<br>
<br>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
<div class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=
=3D"ltr">-Alex</div></div>
</div>

--001a11401b14f3540f055f9a6fa4--
