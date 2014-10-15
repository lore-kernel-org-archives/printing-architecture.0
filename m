Return-Path: <korobkin@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=04y4XaRTdBGBWMAT48RvQL9ig2KPWixXacV64Eb9czI=;
	b=GJ7wQIVKQBZMZDDIwFJz3FbOkjs5I5fnLQNZ4543oHeQzq6Dh/ah7S2PLyaJ5aV5kl
	a6gRFsiKJOwG+dEx5WvAOLuS9a9+yg+BrMaILRb1//NGyZ3LwmKZt99553ZmIUKSIKIp
	3ZtK3qbjo9dTjL6EvpBIcWsMOvYTF+EpmCNuaA4Y2CusqCIkUkTcYT3z8EDQzBBiY8eu
	3l+zxEJNbEiwiLw+jp7lItRWC87OIgTc0XtECZ7f9dHpj0CGjYNpKKrZVVSjwV8Lo6nk
	Vu7S32suOS/K1bl/LY43nIkBTCp/aInIIHgj/78slqEXRGBupTXeznlgiVRChJiOa3l2
	q+Vw==
MIME-Version: 1.0
Sender: korobkin@gmail.com
In-Reply-To: <543E9F5F.8090106@thax.hardliners.org>
References: <CA+3RNfiMXAVRKoFH8XD+YyWatt-Fc+mKMGkAQyQPJ=8_SX9T3g@mail.gmail.com>
	<5B66FA40-ED1E-461E-B00F-D5CD6C7DBC30@apple.com>
	<CA+3RNfgR9Ucx+mQezWVwi8XMCF-4EBtFV5bukKOsTfZsTBZURw@mail.gmail.com>
	<34701921-5F04-411C-B35C-78CED619AAC3@apple.com>
	<5432910A.4030500@gmail.com>
	<CA+3RNfj6twoEN9y0k+dfxeQ+14jVyE_Tz9Fe5fdQSmOKcbg=_Q@mail.gmail.com>
	<54344707.4080604@gmail.com>
	<CA+3RNfj8JFdQHekjs0gQ_z8_dxPFk-qL-dGzzJtp8ACBB0KhHg@mail.gmail.com>
	<54345EF9.5010405@thax.hardliners.org> <54350A8E.1010406@gmail.com>
	<54354CDA.50401@thax.hardliners.org>
	<CA+3RNfjSMOmxf89XPW2vMf2SBXo7aJE+CREG99ACd0Kz0LQ3tQ@mail.gmail.com>
	<5435A44F.7080504@thax.hardliners.org>
	<CA+3RNfiAna118VGc=zLoRsyNTc5oGcynhMNy3UJRG7dNrHmWWw@mail.gmail.com>
	<54383C34.6020108@thax.hardliners.org> <5438486E.9050201@gmail.com>
	<CA+3RNfgZtn64UZZEX5uYRK=CyDEoS3Ly+gvkQCL20TMys6XKnA@mail.gmail.com>
	<543D9108.6050307@thax.hardliners.org>
	<543E5168.9010108@thax.hardliners.org>
	<543E72C7.3090603@gmail.com> <543E9F5F.8090106@thax.hardliners.org>
From: Alex Korobkin <korobkin+op@gmail.com>
Date: Wed, 15 Oct 2014 13:06:52 -0400
Message-ID: <CA+3RNfhYNr3sp1Hccv_F8x4pWFd+i02ZcyGfxBxAev+SVkAFMw@mail.gmail.com>
Content-Type: multipart/alternative; boundary=089e0160a45abd82aa05057929a9
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
To: Tobias Hoffmann <lprint-list@thax.hardliners.org>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Till Kamppeter <till.kamppeter@gmail.com>

--089e0160a45abd82aa05057929a9
Content-Type: text/plain; charset=UTF-8

Till, your patch works for me, at least for pure PDF workflow. I haven't
tested all cases yet, just a JCL-based PPD and a PDF printing.

Tobias, I haven't tested your patch. Is it different from Till's patch?

2014-10-15 12:22 GMT-04:00 Tobias Hoffmann <lprint-list@thax.hardliners.org>
:

> On 15/10/14 15:12, Till Kamppeter wrote:
>
>> b) patch cups, namely ppdEmitJCL() in emit.c.
>>    As cups does detect PCL as JCL here and sets "JOB NAME", "DISPLAY" or
>> "RDYMSG DISPLAY" that would be the best place to add PJL SET COPIES.
>>    But this will affect all PPDs with JCL, e.g. when pure PostScript is
>> used... and, in case the patch is not accepted upstream, cups-filters
>> has to ship it(?)
>>
>> I will not ship patches for CUPS in the cups-filters upstream package.
>> You could post an upstream bug report/feature request on CUPS
>> (http://www.cups.org/str.php) to let the ppdEmitJCL() function add "PJL
>> SET COPIES=X" with the number of copies taken from the command line
>> arguments (4th argument, see "man filter").
>>
>
> Patching upstream would unfortunately require changing the function
> signature of ppdEmitJCL() -- or adding a new ppdEmitJCL2 function. And that
> would be for a deprecated API...
>
>  We must look into whether we
>> should generally add "PJL SET COPIES=X", or only under certain
>> conditions (is another copy generation method supposed to be used?
>> Should we have some PPD keyword to turn it on or off?).
>>
>
> I don't know...?
>
>
>>  c) do not use ppdEmitJCL at all. We would loose e.g. JOB NAME, but have
>>> better control over the output...
>>>
>> Do you mean using the not very elegant method to copy the code of the
>> function into cups-filters and modify it there?
>>
>
> Simply put ... yes.
>
>
>  2. setting ppd->jcl_ps=concat("...SET COPIES...\n",
>> JCLToPDFInterpreter->value)
>>
> Attached a (untested) first patch to pdftopdf:
> param.deviceCopies will always be 1 for ppd->manual_copies, so SET COPIES
> is only inserted when *cupsManualCopies is not set and more than 1 copy is
> requested.
>
> Please review.
>
>  Also make the above-mentioned feature request for CUPS to discuss the
>> SET COPIES in the ppdEmitJCL() of CUPS.
>>
>>  See my comment above.
>
>   Tobias
>
>


-- 
-Alex

--089e0160a45abd82aa05057929a9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Till, your patch works for me, at least for pure PDF workf=
low. I haven&#39;t tested all cases yet, just a JCL-based PPD and a PDF pri=
nting.=C2=A0<div><br><div>Tobias, I haven&#39;t tested your patch. Is it di=
fferent from Till&#39;s patch?</div></div></div><div class=3D"gmail_extra">=
<br><div class=3D"gmail_quote">2014-10-15 12:22 GMT-04:00 Tobias Hoffmann <=
span dir=3D"ltr">&lt;<a href=3D"mailto:lprint-list@thax.hardliners.org" tar=
get=3D"_blank">lprint-list@thax.hardliners.org</a>&gt;</span>:<br><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex"><span class=3D"">On 15/10/14 15:12, Till Kamppeter wr=
ote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
b) patch cups, namely ppdEmitJCL() in emit.c.<br>
=C2=A0 =C2=A0As cups does detect PCL as JCL here and sets &quot;JOB NAME&qu=
ot;, &quot;DISPLAY&quot; or<br>
&quot;RDYMSG DISPLAY&quot; that would be the best place to add PJL SET COPI=
ES.<br>
=C2=A0 =C2=A0But this will affect all PPDs with JCL, e.g. when pure PostScr=
ipt is<br>
used... and, in case the patch is not accepted upstream, cups-filters<br>
has to ship it(?)<br>
<br>
I will not ship patches for CUPS in the cups-filters upstream package.<br>
You could post an upstream bug report/feature request on CUPS<br>
(<a href=3D"http://www.cups.org/str.php" target=3D"_blank">http://www.cups.=
org/str.php</a>) to let the ppdEmitJCL() function add &quot;PJL<br>
SET COPIES=3DX&quot; with the number of copies taken from the command line<=
br>
arguments (4th argument, see &quot;man filter&quot;).<br>
</blockquote>
<br></span>
Patching upstream would unfortunately require changing the function signatu=
re of ppdEmitJCL() -- or adding a new ppdEmitJCL2 function. And that would =
be for a deprecated API...<span class=3D""><br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
We must look into whether we<br>
should generally add &quot;PJL SET COPIES=3DX&quot;, or only under certain<=
br>
conditions (is another copy generation method supposed to be used?<br>
Should we have some PPD keyword to turn it on or off?).<br>
</blockquote>
<br></span>
I don&#39;t know...?<span class=3D""><br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
c) do not use ppdEmitJCL at all. We would loose e.g. JOB NAME, but have<br>
better control over the output...<br>
</blockquote>
Do you mean using the not very elegant method to copy the code of the<br>
function into cups-filters and modify it there?<br>
</blockquote>
<br></span>
Simply put ... yes.<span class=3D""><br>
<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
2. setting ppd-&gt;jcl_ps=3Dconcat(&quot;...SET COPIES...\n&quot;,<br>
JCLToPDFInterpreter-&gt;value)<br>
</blockquote></span>
Attached a (untested) first patch to pdftopdf:<br>
param.deviceCopies will always be 1 for ppd-&gt;manual_copies, so SET COPIE=
S is only inserted when *cupsManualCopies is not set and more than 1 copy i=
s requested.<br>
<br>
Please review.<span class=3D""><br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Also make the above-mentioned feature request for CUPS to discuss the<br>
SET COPIES in the ppdEmitJCL() of CUPS.<br>
<br>
</blockquote></span>
See my comment above.<span class=3D"HOEnZb"><font color=3D"#888888"><br>
<br>
=C2=A0 Tobias<br>
<br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div dir=3D"ltr">-Alex</div>
</div>

--089e0160a45abd82aa05057929a9--
