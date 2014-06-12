Return-Path: <jsimon383@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=j2olPA/CL5dPW7IWsv1fMBYRZ1l934xWvvPA0FS+EuY=;
	b=VvtbynSEkjKniQvXL/JHDTSFsGIUoRyAYIdbzZaygWSE6lI0BHrdX281CcyfsaGpzS
	eFOVqobkeVzUJq7rPT3wVbSSZK0Zh+BNBZbsJJHoDlM4JJenrpXrNhQEsjzAt976hvE+
	Mbj2bYndFQ19zSKSWS2HTirazUOFqQ3FWE3/SMsKDbyLPXzTG4CYdesL/nhCWbfBhZ5G
	DSbS9LieMBCBeH7luPLATWZ/e4rn6ZP1EA2oqa2fbeb7pwDp+wjUpp3E2Iriu8Va0hkp
	rwlHeXvQ0XWfe9WcJaboUDoWuyPHM618I/7MXo/q+sF+quMrWt2ushtyyQl1WWuXJL1a
	NI6Q==
MIME-Version: 1.0
In-Reply-To: <539A19FB.80303@gmail.com>
References: <53997D3F.2060803@gmail.com>
	<CAERbVPTANK7nmPN0MBZiJQ-cAVZwL2-xQsZLhTKNtR+fiwpRGQ@mail.gmail.com>
	<539A19FB.80303@gmail.com>
Date: Thu, 12 Jun 2014 16:52:54 -0700
Message-ID: <CAERbVPTFyySZZScc_Yycs+tdg2mD4K-7vEOC8rsgdkigz5CCKA@mail.gmail.com>
From: Joseph Simon <jsimon383@gmail.com>
Content-Type: multipart/alternative; boundary=089e0149c6026bd42804fbac42ae
Subject: Re: [Printing-architecture] "no-color-management" not a good idea
 for a name of a boolean CUPS option
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Open Printing <printing-architecture@lists.linux-foundation.org>
Cc: Till Kamppeter <till.kamppeter@gmail.com>

--089e0149c6026bd42804fbac42ae
Content-Type: text/plain; charset=UTF-8

Hi everyone,

Rev. 7225 of 'cups-filters' now replaces "no-color-management" with
"cm-calibration" for the bool option. So the following commands should work
without the added '=' symbol, and will disable ICC profile management:

$ rastertopdf 1 foo bar 1 "cm-calibration" input.ras >>output.pdf
$ foomatic-rip -p foo -o cm-calibration

Joe Simon




On Thu, Jun 12, 2014 at 2:22 PM, Till Kamppeter <till.kamppeter@gmail.com>
wrote:

> OK, Joseph.
>
> Thank you to everyone to give your opinion.
>
>    Till
>
> On 06/12/2014 08:15 PM, Joseph Simon wrote:
> > Hi Till,
> >
> > I agree on the name change for the CUPs bool option.
> > The name "cm-calibration" seems to make the most sense, and I will make
> > the change in the filters.
> >
> > Joe Simon
> >
> > On Jun 12, 2014 3:12 AM, "Till Kamppeter" <till.kamppeter@gmail.com
> > <mailto:till.kamppeter@gmail.com>> wrote:
> >
> >     Hi,
> >
> >     I have encountered a problem with the "no-color-management" and
> >     cupsGetOption() not be able to recognize that the user has supplied
> "-o
> >     no-color-management" on the command line.
> >
> >     If you have an arbitrary boolean option in CUPS filters or backends,
> >     like "xxx" the variants
> >
> >        -o xxx
> >        -o xxx=1
> >        -o xxx=on
> >        -o xxx=yes
> >        -o xxx=true
> >
> >     are supposed to let it be interpreted as set and
> >
> >        -o noxxx
> >        -o xxx=0
> >        -o xxx=off
> >        -o xxx=no
> >        -o xxx=false
> >
> >     let it be interpreted as not set. To support the "-o noxxx" case
> >     cupsGetOption() seems to split a "no" in the beginning of the name
> off
> >     if there is no '='. Therefore "no-color-management=" works but
> >     "no-color-management" not. The latter is probably interpreted as
> >     "-color-management=false".
> >
> >     Mike, am I right with this?
> >
> >     So I suggest something like "calibration-mode",
> "cm-calibration-mode",
> >     "cm-calibration", or similar.
> >
> >     WDYT?
> >
> >        Till
> >
>
>

--089e0149c6026bd42804fbac42ae
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hi everyone,<br><br></div>Rev. 7225 of=
 &#39;cups-filters&#39; now replaces &quot;no-color-management&quot; with &=
quot;cm-calibration&quot; for the bool option. So the following commands sh=
ould work without the added &#39;=3D&#39; symbol, and will disable ICC prof=
ile management:<br>
<br></div>$ rastertopdf 1 foo bar 1 &quot;cm-calibration&quot; input.ras &g=
t;&gt;output.pdf<br></div>$ foomatic-rip -p foo -o cm-calibration<br><br></=
div>Joe Simon<br><div><div><div><br><br></div></div></div></div><div class=
=3D"gmail_extra">
<br><br><div class=3D"gmail_quote">On Thu, Jun 12, 2014 at 2:22 PM, Till Ka=
mppeter <span dir=3D"ltr">&lt;<a href=3D"mailto:till.kamppeter@gmail.com" t=
arget=3D"_blank">till.kamppeter@gmail.com</a>&gt;</span> wrote:<br><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex">
OK, Joseph.<br>
<br>
Thank you to everyone to give your opinion.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
=C2=A0 =C2=A0Till<br>
</font></span><div class=3D"im HOEnZb"><br>
On 06/12/2014 08:15 PM, Joseph Simon wrote:<br>
&gt; Hi Till,<br>
&gt;<br>
&gt; I agree on the name change for the CUPs bool option.<br>
&gt; The name &quot;cm-calibration&quot; seems to make the most sense, and =
I will make<br>
&gt; the change in the filters.<br>
&gt;<br>
&gt; Joe Simon<br>
&gt;<br>
&gt; On Jun 12, 2014 3:12 AM, &quot;Till Kamppeter&quot; &lt;<a href=3D"mai=
lto:till.kamppeter@gmail.com">till.kamppeter@gmail.com</a><br>
</div><div class=3D"HOEnZb"><div class=3D"h5">&gt; &lt;mailto:<a href=3D"ma=
ilto:till.kamppeter@gmail.com">till.kamppeter@gmail.com</a>&gt;&gt; wrote:<=
br>
&gt;<br>
&gt; =C2=A0 =C2=A0 Hi,<br>
&gt;<br>
&gt; =C2=A0 =C2=A0 I have encountered a problem with the &quot;no-color-man=
agement&quot; and<br>
&gt; =C2=A0 =C2=A0 cupsGetOption() not be able to recognize that the user h=
as supplied &quot;-o<br>
&gt; =C2=A0 =C2=A0 no-color-management&quot; on the command line.<br>
&gt;<br>
&gt; =C2=A0 =C2=A0 If you have an arbitrary boolean option in CUPS filters =
or backends,<br>
&gt; =C2=A0 =C2=A0 like &quot;xxx&quot; the variants<br>
&gt;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0-o xxx<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0-o xxx=3D1<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0-o xxx=3Don<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0-o xxx=3Dyes<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0-o xxx=3Dtrue<br>
&gt;<br>
&gt; =C2=A0 =C2=A0 are supposed to let it be interpreted as set and<br>
&gt;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0-o noxxx<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0-o xxx=3D0<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0-o xxx=3Doff<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0-o xxx=3Dno<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0-o xxx=3Dfalse<br>
&gt;<br>
&gt; =C2=A0 =C2=A0 let it be interpreted as not set. To support the &quot;-=
o noxxx&quot; case<br>
&gt; =C2=A0 =C2=A0 cupsGetOption() seems to split a &quot;no&quot; in the b=
eginning of the name off<br>
&gt; =C2=A0 =C2=A0 if there is no &#39;=3D&#39;. Therefore &quot;no-color-m=
anagement=3D&quot; works but<br>
&gt; =C2=A0 =C2=A0 &quot;no-color-management&quot; not. The latter is proba=
bly interpreted as<br>
&gt; =C2=A0 =C2=A0 &quot;-color-management=3Dfalse&quot;.<br>
&gt;<br>
&gt; =C2=A0 =C2=A0 Mike, am I right with this?<br>
&gt;<br>
&gt; =C2=A0 =C2=A0 So I suggest something like &quot;calibration-mode&quot;=
, &quot;cm-calibration-mode&quot;,<br>
&gt; =C2=A0 =C2=A0 &quot;cm-calibration&quot;, or similar.<br>
&gt;<br>
&gt; =C2=A0 =C2=A0 WDYT?<br>
&gt;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0Till<br>
&gt;<br>
<br>
</div></div></blockquote></div><br></div>

--089e0149c6026bd42804fbac42ae--
