Return-Path: <blueroofmusic@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=sLPgQdwCX6nptq51hr/znG/xVFmwJtIiRA6Eg6qBo8M=;
	b=yxvlRTw2SVQInCg2Rj/ye8RmfopXSWhjZKfD0Lt5qVwiFKi0l26be9bLk+JJT0UvFr
	GkJBWux4oTbUTIT8tYXDEpkbIn+3nSSqWYuuTT0a9ZQT94/9DFD22IgUBhNEb7+NX497
	B59yPVVKPd8zCMktqMWH0VVPqCAU+XGC5fsRnHpcTqU3AF8AOBVCBOKZFaWDlF2h+Mg8
	ykkcLCvOPUzeC7AGfVVHmGQFYqv3Z+Z3eRSrUkMKARG9kNpTC+vlMtQmyXcDJflxSQJA
	HM5mHu/zuDhY3OalKL0veiwpHYHS4Pf8fY7MFDAq1myyiRUoF06YqDc39J7WjFhun9ro
	j3LQ==
MIME-Version: 1.0
In-Reply-To: <20160411165143.GA15308@localhost>
References: <20160322204034.GA96488@google.com>
	<20160411165143.GA15308@localhost>
From: Ira McDonald <blueroofmusic@gmail.com>
Date: Mon, 11 Apr 2016 14:04:08 -0400
Message-ID: <CAN40gSvyojgz__b6Gwy3rgCXsg37XdGYOcKb-Bjir5McF5tK8A@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11c1d342211be0053039601d
Subject: Re: [Printing-architecture] [cups-filters] using cups-browsed for
 DNS-SD/IPP discovery
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Brian Norris <computersforpeace@gmail.com>, Ira McDonald <blueroofmusic@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Till Kamppeter <till.kamppeter@gmail.com>

--001a11c1d342211be0053039601d
Content-Type: text/plain; charset=UTF-8

Hi Brian,

Yes, filing a bug is the best idea.

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


On Mon, Apr 11, 2016 at 12:51 PM, Brian Norris <computersforpeace@gmail.com>
wrote:

> Ping? Should I just file a bug for these sort of questions?
>
> On Tue, Mar 22, 2016 at 01:40:34PM -0700, Brian Norris wrote:
> > Hi,
> >
> > I'm looking at the features of cups-browsed to see if I would want to
> > use it for my purposes, and I ran across a really confusing piece of
> > logic in the source code:
> >
> >     if (!pdl || pdl[0] == '\0' ||
> >         (!strcasestr(pdl, "application/postscript") &&
> >          !strcasestr(pdl, "application/pdf") &&
> >          !strcasestr(pdl, "image/pwg-raster") &&
> >          ((!strcasestr(pdl, "application/vnd.hp-PCL") &&
> >            !strcasestr(pdl, "application/PCL") &&
> >            !strcasestr(pdl, "application/x-pcl")) ||
> >           ((strncasecmp(make_model, "HP", 2) ||
> >             strncasecmp(make_model, "Hewlett Packard", 15) ||
> >             strncasecmp(make_model, "Hewlett-Packard", 15)) &&
> >            !strcasestr(make_model, "LaserJet") &&
> >            !strcasestr(make_model, "Mopier"))) &&
> >          !strcasestr(pdl, "application/vnd.hp-PCLXL"))) {
> >       debug_printf("cups-browsed: Cannot create remote printer %s (%s)
> as its PDLs are not known, ignoring this printer.\n",
> >                    p->name, p->uri);
> >       goto fail;
> >     }
> >
> > First of all, can anyone explain exactly what the block about HP is
> > really supposed to be doing? I can't honestly figure it out.
> >
> > But at any rate, I don't see how it could be correct. Particularly, this
> > clause is always true (at most one of the comparisons will return 0), so
> > why is it there?
> >
> >            (strncasecmp(make_model, "HP", 2) ||
> >             strncasecmp(make_model, "Hewlett Packard", 15) ||
> >             strncasecmp(make_model, "Hewlett-Packard", 15))
> >
> > Seems like at a minimum, this block should be corrected to actually
> > produce the status of "is this an HP model." e.g., does the following
> > diff make sense?
> >
> > === modified file 'utils/cups-browsed.c'
> > --- utils/cups-browsed.c      2016-02-10 14:18:28 +0000
> > +++ utils/cups-browsed.c      2016-03-22 20:25:19 +0000
> > @@ -2784,8 +2784,8 @@
> >        ((!strcasestr(pdl, "application/vnd.hp-PCL") &&
> >          !strcasestr(pdl, "application/PCL") &&
> >          !strcasestr(pdl, "application/x-pcl")) ||
> > -       ((strncasecmp(make_model, "HP", 2) ||
> > -         strncasecmp(make_model, "Hewlett Packard", 15) ||
> > +       ((strncasecmp(make_model, "HP", 2) &&
> > +         strncasecmp(make_model, "Hewlett Packard", 15) &&
> >           strncasecmp(make_model, "Hewlett-Packard", 15)) &&
> >          !strcasestr(make_model, "LaserJet") &&
> >          !strcasestr(make_model, "Mopier"))) &&
> >
> > But I still don't feel like that's really what's intended, so an answer
> > to my first question would be the most helpful.
> >
> > Now, besides the correctness of this logic, is this aspect of the daemon
> > something that people regularly use? I see that it's installed on many
> > Linux distributions, but it seems like it isn't really exercised for
> > Bonjour/DNS-SD discovery unless someone modifies the default
> > cups-browsed.conf to have 'CreateIPPPrinterQueues Yes'.
> >
> > Regards,
> > Brian
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>

--001a11c1d342211be0053039601d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi Brian,<br><br></div>Yes, filing a bug is=
 the best idea.<br><br></div>Cheers,<br></div>- Ira<br><br></div><div class=
=3D"gmail_extra"><br clear=3D"all"><div><div class=3D"gmail_signature"><div=
 dir=3D"ltr">Ira McDonald (Musician / Software Architect)<br>Co-Chair - TCG=
 Trusted Mobility Solutions WG<br>Chair - Linux Foundation Open Printing WG=
<br>Secretary - IEEE-ISTO Printer Working Group<br>Co-Chair - IEEE-ISTO PWG=
 Internet Printing Protocol WG<br>IETF Designated Expert - IPP &amp; Printe=
r MIB<br>Blue Roof Music / High North Inc<br><a style=3D"color:rgb(51,51,25=
5)" href=3D"http://sites.google.com/site/blueroofmusic" target=3D"_blank">h=
ttp://sites.google.com/site/blueroofmusic</a><br><a style=3D"color:rgb(102,=
0,204)" href=3D"http://sites.google.com/site/highnorthinc" target=3D"_blank=
">http://sites.google.com/site/highnorthinc</a><br>mailto: <a href=3D"mailt=
o:blueroofmusic@gmail.com" target=3D"_blank">blueroofmusic@gmail.com</a><br=
>Winter=C2=A0 579 Park Place=C2=A0 Saline, MI=C2=A0 48176=C2=A0 734-944-009=
4<br>Summer=C2=A0 PO Box 221=C2=A0 Grand Marais, MI 49839=C2=A0 906-494-243=
4<br><br><div style=3D"display:inline"></div><div style=3D"display:inline">=
</div><div style=3D"display:inline"></div><div></div><div></div><div></div>=
<div></div></div></div></div>
<br><div class=3D"gmail_quote">On Mon, Apr 11, 2016 at 12:51 PM, Brian Norr=
is <span dir=3D"ltr">&lt;<a href=3D"mailto:computersforpeace@gmail.com" tar=
get=3D"_blank">computersforpeace@gmail.com</a>&gt;</span> wrote:<br><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex">Ping? Should I just file a bug for these sort of qu=
estions?<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
On Tue, Mar 22, 2016 at 01:40:34PM -0700, Brian Norris wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; I&#39;m looking at the features of cups-browsed to see if I would want=
 to<br>
&gt; use it for my purposes, and I ran across a really confusing piece of<b=
r>
&gt; logic in the source code:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0if (!pdl || pdl[0] =3D=3D &#39;\0&#39; ||<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(!strcasestr(pdl, &quot;application/p=
ostscript&quot;) &amp;&amp;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 !strcasestr(pdl, &quot;application/p=
df&quot;) &amp;&amp;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 !strcasestr(pdl, &quot;image/pwg-ras=
ter&quot;) &amp;&amp;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((!strcasestr(pdl, &quot;application=
/vnd.hp-PCL&quot;) &amp;&amp;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 !strcasestr(pdl, &quot;applic=
ation/PCL&quot;) &amp;&amp;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 !strcasestr(pdl, &quot;applic=
ation/x-pcl&quot;)) ||<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((strncasecmp(make_model, &quo=
t;HP&quot;, 2) ||<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0strncasecmp(make_model,=
 &quot;Hewlett Packard&quot;, 15) ||<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0strncasecmp(make_model,=
 &quot;Hewlett-Packard&quot;, 15)) &amp;&amp;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 !strcasestr(make_model, &quot=
;LaserJet&quot;) &amp;&amp;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 !strcasestr(make_model, &quot=
;Mopier&quot;))) &amp;&amp;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 !strcasestr(pdl, &quot;application/v=
nd.hp-PCLXL&quot;))) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0debug_printf(&quot;cups-browsed: Cannot crea=
te remote printer %s (%s) as its PDLs are not known, ignoring this printer.=
\n&quot;,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 p=
-&gt;name, p-&gt;uri);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0goto fail;<br>
&gt;=C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt; First of all, can anyone explain exactly what the block about HP is<br=
>
&gt; really supposed to be doing? I can&#39;t honestly figure it out.<br>
&gt;<br>
&gt; But at any rate, I don&#39;t see how it could be correct. Particularly=
, this<br>
&gt; clause is always true (at most one of the comparisons will return 0), =
so<br>
&gt; why is it there?<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (strncasecmp(make_model, &quo=
t;HP&quot;, 2) ||<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0strncasecmp(make_model,=
 &quot;Hewlett Packard&quot;, 15) ||<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0strncasecmp(make_model,=
 &quot;Hewlett-Packard&quot;, 15))<br>
&gt;<br>
&gt; Seems like at a minimum, this block should be corrected to actually<br=
>
&gt; produce the status of &quot;is this an HP model.&quot; e.g., does the =
following<br>
&gt; diff make sense?<br>
&gt;<br>
&gt; =3D=3D=3D modified file &#39;utils/cups-browsed.c&#39;<br>
&gt; --- utils/cups-browsed.c=C2=A0 =C2=A0 =C2=A0 2016-02-10 14:18:28 +0000=
<br>
&gt; +++ utils/cups-browsed.c=C2=A0 =C2=A0 =C2=A0 2016-03-22 20:25:19 +0000=
<br>
&gt; @@ -2784,8 +2784,8 @@<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 ((!strcasestr(pdl, &quot;application/vnd.hp=
-PCL&quot;) &amp;&amp;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 !strcasestr(pdl, &quot;application/P=
CL&quot;) &amp;&amp;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 !strcasestr(pdl, &quot;application/x=
-pcl&quot;)) ||<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0((strncasecmp(make_model, &quot;HP&quot;, =
2) ||<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0strncasecmp(make_model, &quot;Hewle=
tt Packard&quot;, 15) ||<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0((strncasecmp(make_model, &quot;HP&quot;, =
2) &amp;&amp;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0strncasecmp(make_model, &quot;Hewle=
tt Packard&quot;, 15) &amp;&amp;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0strncasecmp(make_model, &quot;=
Hewlett-Packard&quot;, 15)) &amp;&amp;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 !strcasestr(make_model, &quot;LaserJ=
et&quot;) &amp;&amp;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 !strcasestr(make_model, &quot;Mopier=
&quot;))) &amp;&amp;<br>
&gt;<br>
&gt; But I still don&#39;t feel like that&#39;s really what&#39;s intended,=
 so an answer<br>
&gt; to my first question would be the most helpful.<br>
&gt;<br>
&gt; Now, besides the correctness of this logic, is this aspect of the daem=
on<br>
&gt; something that people regularly use? I see that it&#39;s installed on =
many<br>
&gt; Linux distributions, but it seems like it isn&#39;t really exercised f=
or<br>
&gt; Bonjour/DNS-SD discovery unless someone modifies the default<br>
&gt; cups-browsed.conf to have &#39;CreateIPPPrinterQueues Yes&#39;.<br>
&gt;<br>
&gt; Regards,<br>
&gt; Brian<br>
_______________________________________________<br>
Printing-architecture mailing list<br>
<a href=3D"mailto:Printing-architecture@lists.linux-foundation.org">Printin=
g-architecture@lists.linux-foundation.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/printing-arch=
itecture" rel=3D"noreferrer" target=3D"_blank">https://lists.linuxfoundatio=
n.org/mailman/listinfo/printing-architecture</a><br>
</div></div></blockquote></div><br></div>

--001a11c1d342211be0053039601d--
