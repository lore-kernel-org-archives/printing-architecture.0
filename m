Return-Path: <jsimon383@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Kc0zymLkSRBIfDPUaJv5Phy/oX8woi5f12+V50/pqtY=;
	b=xhjdfVcKmxSP0Cp0UzGhYWjyUIqR+NufNGqcx78rtDAODhH5t80kyJ+bjStIaBWGkI
	93aDii3zGLfCIQ8cFULymX5KNV3CKBSIQysNoSUXtF5W5FE0/OrsqOgoA/BoMQcD7qgj
	mwUaAzb2Ewxb68tTLZX66dClmZZiY//aCOFwn9f5ezsW9hZ4BhRjBVUOkCMBDluBk5cG
	4HVjhGXTerD8fhD12hTETuiSA507AOeezUPtweMBHYG6KlQDfQgCcx0+/To1jdbDtI99
	BhV3z1Xx8qE7EzF/mq2H5KxQqSLaoQLt/ovKn7mrDPw4QElJ1c3yg6gYX55gOKNUWgRC
	0ArA==
MIME-Version: 1.0
In-Reply-To: <539D630D.9070500@gmail.com>
References: <53997D3F.2060803@gmail.com>
	<CAERbVPTANK7nmPN0MBZiJQ-cAVZwL2-xQsZLhTKNtR+fiwpRGQ@mail.gmail.com>
	<539A19FB.80303@gmail.com>
	<CAERbVPTFyySZZScc_Yycs+tdg2mD4K-7vEOC8rsgdkigz5CCKA@mail.gmail.com>
	<539D630D.9070500@gmail.com>
Date: Sun, 15 Jun 2014 05:56:10 -0700
Message-ID: <CAERbVPS88UTACUv-QaJO-xrgTBQBQuKbMWWsK9Z7zT3FK3TFSQ@mail.gmail.com>
From: Joseph Simon <jsimon383@gmail.com>
Content-Type: multipart/alternative; boundary=089e0149c60248e3da04fbdf6fa7
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
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>

--089e0149c60248e3da04fbdf6fa7
Content-Type: text/plain; charset=UTF-8

Hi Till,

I have made the additions and fixes in rev. 7228.

Joe
On Jun 15, 2014 2:09 AM, "Till Kamppeter" <till.kamppeter@gmail.com> wrote:

> On 06/13/2014 01:52 AM, Joseph Simon wrote:
> > Hi everyone,
> >
> > Rev. 7225 of 'cups-filters' now replaces "no-color-management" with
> > "cm-calibration" for the bool option. So the following commands should
> > work without the added '=' symbol, and will disable ICC profile
> management:
> >
> > $ rastertopdf 1 foo bar 1 "cm-calibration" input.ras >>output.pdf
> > $ foomatic-rip -p foo -o cm-calibration
> >
> > Joe Simon
>
> I have looked into foomatic-rip and it seems that the "cm-calibration"
> option only works when using foomatic-rip in direc/spooler-less mode. To
> make it also working in CUPS mode you will probably also have to check
> it in the first loop in the process_cmdline_options() function.
>
> In imagetoraster you are not only renamimg the option and the variable
> but also dropping "else cm_off = 0;" With this probably you need to
> preset the variable to zero at declaration ("int cm_calibrate = 0;").
>
> Rest seems to be OK.
>
> Please check these points, as I only reviewed your commit but did not
> actually test it.
>
> It would be also nice if you add to all filters with the
> "cm-calibration" option a line which generates debug log output telling
> whether "cm-calibration" was set or not, like
>
> fprintf(stderr, "DEBUG: Color Management: %s\n", cm_calibrate ?
> "Calibration mode/deactivated" : "Standard mode/activated");
>
>    Till
>
>
>
>

--089e0149c60248e3da04fbdf6fa7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Hi Till,</p>
<p dir=3D"ltr">I have made the additions and fixes in rev. 7228.</p>
<p dir=3D"ltr">Joe</p>
<div class=3D"gmail_quote">On Jun 15, 2014 2:09 AM, &quot;Till Kamppeter&qu=
ot; &lt;<a href=3D"mailto:till.kamppeter@gmail.com">till.kamppeter@gmail.co=
m</a>&gt; wrote:<br type=3D"attribution"><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
On 06/13/2014 01:52 AM, Joseph Simon wrote:<br>
&gt; Hi everyone,<br>
&gt;<br>
&gt; Rev. 7225 of &#39;cups-filters&#39; now replaces &quot;no-color-manage=
ment&quot; with<br>
&gt; &quot;cm-calibration&quot; for the bool option. So the following comma=
nds should<br>
&gt; work without the added &#39;=3D&#39; symbol, and will disable ICC prof=
ile management:<br>
&gt;<br>
&gt; $ rastertopdf 1 foo bar 1 &quot;cm-calibration&quot; input.ras &gt;&gt=
;output.pdf<br>
&gt; $ foomatic-rip -p foo -o cm-calibration<br>
&gt;<br>
&gt; Joe Simon<br>
<br>
I have looked into foomatic-rip and it seems that the &quot;cm-calibration&=
quot;<br>
option only works when using foomatic-rip in direc/spooler-less mode. To<br=
>
make it also working in CUPS mode you will probably also have to check<br>
it in the first loop in the process_cmdline_options() function.<br>
<br>
In imagetoraster you are not only renamimg the option and the variable<br>
but also dropping &quot;else cm_off =3D 0;&quot; With this probably you nee=
d to<br>
preset the variable to zero at declaration (&quot;int cm_calibrate =3D 0;&q=
uot;).<br>
<br>
Rest seems to be OK.<br>
<br>
Please check these points, as I only reviewed your commit but did not<br>
actually test it.<br>
<br>
It would be also nice if you add to all filters with the<br>
&quot;cm-calibration&quot; option a line which generates debug log output t=
elling<br>
whether &quot;cm-calibration&quot; was set or not, like<br>
<br>
fprintf(stderr, &quot;DEBUG: Color Management: %s\n&quot;, cm_calibrate ?<b=
r>
&quot;Calibration mode/deactivated&quot; : &quot;Standard mode/activated&qu=
ot;);<br>
<br>
=C2=A0 =C2=A0Till<br>
<br>
<br>
<br>
</blockquote></div>

--089e0149c60248e3da04fbdf6fa7--
