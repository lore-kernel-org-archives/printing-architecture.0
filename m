Return-Path: <blueroofmusic@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=bGIRJsv+yWRgYnPhL039T8Um+rtK/RW1hzcKBZDmMNo=;
	b=zzkX17ZMpmeSqrFpm0KMmXKAmSMySi53eAoyq9VmTAfZjhQFilV8qeYC9ptG6zg4li
	+sVFadXAbBDwYSej9TzB011qHHavwFFvfCbjYkpa8OMz7IfntMkL5gt0BGCwz8qXZXDm
	dfCwjIq3fr/R5tKQA4Im+h//6Zw8lcv1TdamX2blpMG/hIenDolsTpMdJhjeGDZu29lx
	XyzfFrZyx2ukrMB666Rh52ucPM314YlpyOspOzqUbU0RUVFjeCx2BlTxiSNtXHg5CPRR
	/nZGhF1cbagMVjhwoOgVH0CqOAQP875MDrQEvZ34aXzEIKewk+ypXwmLLB4qXPBTHALZ
	yhgw==
MIME-Version: 1.0
In-Reply-To: <B8CEB731-2C01-4D1D-9B72-EC02A9CDFE44@apple.com>
References: <m38up3ymxw.fsf@carbon.jhcloos.org> <53A9C50D.4000306@gmail.com>
	<B8CEB731-2C01-4D1D-9B72-EC02A9CDFE44@apple.com>
From: Ira McDonald <blueroofmusic@gmail.com>
Date: Tue, 24 Jun 2014 15:27:27 -0400
Message-ID: <CAN40gSsvBphwY22EKrx15k3k6B4zkLapy3+8SLVhFTNr6zzO=w@mail.gmail.com>
Content-Type: multipart/alternative; boundary=20cf303dd774622c0d04fc99f462
Subject: Re: [Printing-architecture] ippusbd license
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@apple.com>, Ira McDonald <blueroofmusic@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, James Cloos <cloos@jhcloos.com>, Till Kamppeter <till.kamppeter@gmail.com>

--20cf303dd774622c0d04fc99f462
Content-Type: text/plain; charset=UTF-8

Hi Till,

I agree with Mike about preferring GPL2 over GPL3, from comments
from some of my colleagues at printer and OS vendors.

Cheers,
- Ira


Ira McDonald (Musician / Software Architect)
Co-Chair - TCG Trusted Mobility Solutions WG
Chair - Linux Foundation Open Printing WG
Secretary - IEEE-ISTO Printer Working Group
Co-Chair - IEEE-ISTO PWG Internet Printing Protocol WG
IETF Designated Expert - IPP & Printer MIB
Blue Roof Music / High North Inc
http://sites.google.com/site/blueroofmusic
http://sites.google.com/site/highnorthinc
mailto: blueroofmusic@gmail.com
Winter  579 Park Place  Saline, MI  48176  734-944-0094
Summer  PO Box 221  Grand Marais, MI 49839  906-494-2434



On Tue, Jun 24, 2014 at 3:06 PM, Michael Sweet <msweet@apple.com> wrote:

> Till,
>
> GPL3 is fine when linking against libcups (LGPL2).  I'm not 100% sure
> about the other libraries he'll need to use.
>
> That said, I am not a fan of the GPL3 and would prefer this be released
> under GPL2.
>
>
> On Jun 24, 2014, at 2:35 PM, Till Kamppeter <till.kamppeter@gmail.com>
> wrote:
>
> > On 06/12/2014 02:45 AM, James Cloos wrote:
> >> I though I sent a note about this earlier, but it looks like i did not.
> >>
> >> When Daniel and I spoke before coding started, he said he wants to
> >> release the code under GPL3.
> >>
> >> Given cups' and cups-filters' licensing, is that acceptable to LF?
> >>
> >
> > I am free in licensing the code of the OpenPrinting projects. LF is not
> > requiring anything special.
> >
> >> Even though I am a GNU maintainer, and thus support gpl3, I was
> >> concerned about the compatibility issues, but could not dissuade him.
> >>
> >
> > GPL3 or GPL3+ is OK for me if it does not conflict with the use of any
> > of the libraries used by ippusbxd.
> >
> > I suggest to get some more opinions on the printing-architecture list.
> > Therefore I am CCing the list now.
> >
> >   Till
> >
> > _______________________________________________
> > Printing-architecture mailing list
> > Printing-architecture@lists.linux-foundation.org
> > https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>
> _________________________________________________________
> Michael Sweet, Senior Printing System Engineer, PWG Chair
>
>
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>
>

--20cf303dd774622c0d04fc99f462
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hi Till,<br><br></div>I agree with Mik=
e about preferring GPL2 over GPL3, from comments<br></div>from some of my c=
olleagues at printer and OS vendors.<br><br></div>Cheers,<br></div>- Ira<br=
>

<br></div><div class=3D"gmail_extra"><br clear=3D"all"><div><div dir=3D"ltr=
">Ira McDonald (Musician / Software Architect)<br>Co-Chair - TCG Trusted Mo=
bility Solutions WG<br>Chair - Linux Foundation Open Printing WG<br>Secreta=
ry - IEEE-ISTO Printer Working Group<br>

Co-Chair - IEEE-ISTO PWG Internet Printing Protocol WG<br>IETF Designated E=
xpert - IPP &amp; Printer MIB<br>Blue Roof Music / High North Inc<br><a sty=
le=3D"color:rgb(51,51,255)" href=3D"http://sites.google.com/site/blueroofmu=
sic" target=3D"_blank">http://sites.google.com/site/blueroofmusic</a><br>

<a style=3D"color:rgb(102,0,204)" href=3D"http://sites.google.com/site/high=
northinc" target=3D"_blank">http://sites.google.com/site/highnorthinc</a><b=
r>mailto: <a href=3D"mailto:blueroofmusic@gmail.com" target=3D"_blank">blue=
roofmusic@gmail.com</a><br>

Winter=C2=A0 579 Park Place=C2=A0 Saline, MI=C2=A0 48176=C2=A0 734-944-0094=
<br>Summer=C2=A0 PO Box 221=C2=A0 Grand Marais, MI 49839=C2=A0 906-494-2434=
<br><br><div style=3D"display:inline"></div><div style=3D"display:inline"><=
/div><div style=3D"display:inline"></div>

<div></div><div></div><div></div><div></div></div></div>
<br><br><div class=3D"gmail_quote">On Tue, Jun 24, 2014 at 3:06 PM, Michael=
 Sweet <span dir=3D"ltr">&lt;<a href=3D"mailto:msweet@apple.com" target=3D"=
_blank">msweet@apple.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex">

Till,<br>
<br>
GPL3 is fine when linking against libcups (LGPL2). =C2=A0I&#39;m not 100% s=
ure about the other libraries he&#39;ll need to use.<br>
<br>
That said, I am not a fan of the GPL3 and would prefer this be released und=
er GPL2.<br>
<div><div class=3D"h5"><br>
<br>
On Jun 24, 2014, at 2:35 PM, Till Kamppeter &lt;<a href=3D"mailto:till.kamp=
peter@gmail.com">till.kamppeter@gmail.com</a>&gt; wrote:<br>
<br>
&gt; On 06/12/2014 02:45 AM, James Cloos wrote:<br>
&gt;&gt; I though I sent a note about this earlier, but it looks like i did=
 not.<br>
&gt;&gt;<br>
&gt;&gt; When Daniel and I spoke before coding started, he said he wants to=
<br>
&gt;&gt; release the code under GPL3.<br>
&gt;&gt;<br>
&gt;&gt; Given cups&#39; and cups-filters&#39; licensing, is that acceptabl=
e to LF?<br>
&gt;&gt;<br>
&gt;<br>
&gt; I am free in licensing the code of the OpenPrinting projects. LF is no=
t<br>
&gt; requiring anything special.<br>
&gt;<br>
&gt;&gt; Even though I am a GNU maintainer, and thus support gpl3, I was<br=
>
&gt;&gt; concerned about the compatibility issues, but could not dissuade h=
im.<br>
&gt;&gt;<br>
&gt;<br>
&gt; GPL3 or GPL3+ is OK for me if it does not conflict with the use of any=
<br>
&gt; of the libraries used by ippusbxd.<br>
&gt;<br>
&gt; I suggest to get some more opinions on the printing-architecture list.=
<br>
&gt; Therefore I am CCing the list now.<br>
&gt;<br>
&gt; =C2=A0 Till<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; Printing-architecture mailing list<br>
&gt; <a href=3D"mailto:Printing-architecture@lists.linux-foundation.org">Pr=
inting-architecture@lists.linux-foundation.org</a><br>
&gt; <a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/printing=
-architecture" target=3D"_blank">https://lists.linuxfoundation.org/mailman/=
listinfo/printing-architecture</a><br>
<br>
</div></div>_________________________________________________________<br>
Michael Sweet, Senior Printing System Engineer, PWG Chair<br>
<br>
<br>_______________________________________________<br>
Printing-architecture mailing list<br>
<a href=3D"mailto:Printing-architecture@lists.linux-foundation.org">Printin=
g-architecture@lists.linux-foundation.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/printing-arch=
itecture" target=3D"_blank">https://lists.linuxfoundation.org/mailman/listi=
nfo/printing-architecture</a><br>
<br></blockquote></div><br></div>

--20cf303dd774622c0d04fc99f462--
