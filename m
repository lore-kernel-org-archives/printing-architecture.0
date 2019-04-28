Return-Path: <patankardeepak04@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=ZNL2OekwcGxZEW4HetiLSVfEo5NBi7aoHuujhf9TN6Q=;
	b=KJ/2+Nx2Us46U73xbHRSp8Jwdt0vDs/93wpV/w7tr0df52sHAnZuv3r7Fml8iqpU9c
	4M45/WwFWqhKn/KT39sC2Nr+WrYdOYwvjyECA0Cf7XZiM7kwUMEh1LJkCzuGuYJy62cl
	fvPInHfx6Gbcq8bSARtyC8gBlbYJzyKYL+brl0ufZRbRZAMG/FYInFygLOsK2QhL5XFz
	XpYV2UIPx0or1/N7HRMcbPNaqRAX3Y/f/bCLV+pZnKMepy+shwy/n2Vs666eprJDIqfj
	eV7zHw/Y1zMaHmXLxbxIuQydoHaB4GFrCuhGnGgHM6TzGxlJVdTDgPpe1BD1SUgO7rgm
	E4zw==
MIME-Version: 1.0
References: <CABmmNJNjz6O9wByycyWL2Od3URSxxwHLkmFyYqOtdr8vzG0-vA@mail.gmail.com>
	<0BDE9AA5-CB4C-4419-A125-1B9B03CDA6E4@apple.com>
In-Reply-To: <0BDE9AA5-CB4C-4419-A125-1B9B03CDA6E4@apple.com>
From: Deepak Patankar <patankardeepak04@gmail.com>
Date: Mon, 29 Apr 2019 00:48:52 +0530
Message-ID: <CABmmNJO2mP16MK3XEnb8cmdYWRHvcNwrQsDE=hEBg1iOoJ9h_g@mail.gmail.com>
Content-Type: multipart/alternative; boundary="0000000000007e36ae05879c0aef"
Subject: Re: [Printing-architecture] Get all the job attributes
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
Cc: printing-architecture@lists.linux-foundation.org

--0000000000007e36ae05879c0aef
Content-Type: text/plain; charset="UTF-8"

On Mon 15 Apr, 2019, 9:59 PM Michael Sweet <msweet@apple.com wrote:

> Deepak,
>
> On Apr 5, 2019, at 4:31 AM, Deepak Patankar <patankardeepak04@gmail.com>
> wrote:
> ...
> 1. The media-col attribute is not returned in the request. How I can
> change the request to get media-col ?
>
>
> It will only be returned if it was sent in the original print request.
> Currently we do not synthesize IPP attributes when the Job is created, just
> when it gets sent to an IPP printer.
>
> If you'd like us to do so, please file a bug at:
>
>     https://github.com/apple/cups/issues
>
> Thanks!
>
> 2. The paper type is given as "MediaType Envelope", How I can get the
> media-type from the response ? I tried:
>            if ((attr = ippFindAttribute(response, "MediaType",
>         IPP_TAG_KEYWORD)) != NULL && ippGetCount(attr)>0){
>
>
> MediaType (like all PPD options sent as attributes) will have the
> IPP_TAG_NAME syntax.
>
>              if ((attr = ippFindAttribute(response, "media-type",
>         IPP_TAG_KEYWORD)) != NULL && ippGetCount(attr)>0){
>
>
> while "media-type" (the IPP attribute) can be IPP_TAG_NAME or
> IPP_TAG_KEYWORD, so here I'd usually look for IPP_TAG_ZERO and check for a
> NULL string value (which would indicate something that is not a name or
> keyword).
>

Sir Thanks for the reply. My problem is solved. But, I also want to see
> what "orientation" and "multiple-document-handling" was selected by the
> user for the job. The data is not present in the response message. How can
> I get this information about the job?
>
> Thanks
> Deepak
> _________________________________________________________
> Michael Sweet, Senior Printing System Engineer
>
>

--0000000000007e36ae05879c0aef
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">=
On Mon 15 Apr, 2019, 9:59 PM Michael Sweet &lt;<a href=3D"mailto:msweet@app=
le.com">msweet@apple.com</a> wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
><div style=3D"word-wrap:break-word;line-break:after-white-space">Deepak,<b=
r><div><br><blockquote type=3D"cite"><div>On Apr 5, 2019, at 4:31 AM, Deepa=
k Patankar &lt;<a href=3D"mailto:patankardeepak04@gmail.com" target=3D"_bla=
nk" rel=3D"noreferrer">patankardeepak04@gmail.com</a>&gt; wrote:</div><div>=
<div dir=3D"ltr"><div><div><div>...</div><div>1. The media-col attribute is=
 not returned in the request. How I can change the request to get media-col=
 ?</div></div></div></div></div></blockquote><div><br></div>It will only be=
 returned if it was sent in the original print request.=C2=A0 Currently we =
do not synthesize IPP attributes when the Job is created, just when it gets=
 sent to an IPP printer.</div><div><br></div><div>If you&#39;d like us to d=
o so, please file a bug at:</div><div><br></div><div>=C2=A0 =C2=A0 <a href=
=3D"https://github.com/apple/cups/issues" target=3D"_blank" rel=3D"noreferr=
er">https://github.com/apple/cups/issues</a></div><div><br></div><div>Thank=
s!</div><div><br></div><div><blockquote type=3D"cite"><div><div dir=3D"ltr"=
><div><div><div>2. The paper type is given as &quot;MediaType Envelope&quot=
;, How I can get the media-type from the response ? I tried: <br></div><div=
>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 if ((attr =3D ippF=
indAttribute(response, &quot;MediaType&quot;, <br>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 IPP_TAG_KEYWORD)) !=3D NULL &amp;&amp; ippGetCount(attr)=
&gt;0){<br></div></div></div></div></div></blockquote><div><br></div>MediaT=
ype (like all PPD options sent as attributes) will have the IPP_TAG_NAME sy=
ntax.</div><div><br><blockquote type=3D"cite"><div><div dir=3D"ltr"><div><d=
iv><div>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=
 if ((attr =3D ippFindAttribute(response, &quot;media-type&quot;, <br>=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 IPP_TAG_KEYWORD)) !=3D NULL &amp;&a=
mp; ippGetCount(attr)&gt;0){</div></div></div></div></div></blockquote><div=
><br></div>while &quot;media-type&quot; (the IPP attribute) can be IPP_TAG_=
NAME or IPP_TAG_KEYWORD, so here I&#39;d usually look for IPP_TAG_ZERO and =
check for a NULL string value (which would indicate something that is not a=
 name or keyword).</div></div></blockquote></div></div><div dir=3D"auto"><b=
r></div><div dir=3D"auto"><div class=3D"gmail_quote"><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex"><div style=3D"word-wrap:break-word;line-break:after-white-space"><=
div><div style=3D"font-family:sans-serif;font-size:12.8px" dir=3D"auto">Sir=
 Thanks for the reply. My problem is solved. But, I also want to see what &=
quot;orientation&quot; and &quot;multiple-document-handling&quot; was selec=
ted by the user for the job. The data is not present in the response messag=
e. How can I get this information about the job?</div><div style=3D"font-fa=
mily:sans-serif;font-size:12.8px" dir=3D"auto"><br></div><div style=3D"font=
-family:sans-serif;font-size:12.8px" dir=3D"auto">Thanks</div><div style=3D=
"color:rgb(136,136,136);font-family:sans-serif;font-size:12.8px" dir=3D"aut=
o"><div>Deepak</div></div></div><div>
<span class=3D"m_2227197053044357853Apple-style-span" style=3D"border-colla=
pse:separate;color:rgb(0,0,0);font-family:&#39;Andale Mono&#39;;font-style:=
normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-he=
ight:normal;text-align:-webkit-auto;text-indent:0px;text-transform:none;whi=
te-space:normal;word-spacing:0px;border-spacing:0px"><div style=3D"word-wra=
p:break-word"><span class=3D"m_2227197053044357853Apple-style-span" style=
=3D"border-collapse:separate;color:rgb(0,0,0);font-family:&#39;Andale Mono&=
#39;;font-style:normal;font-variant:normal;font-weight:normal;letter-spacin=
g:normal;line-height:normal;text-align:-webkit-auto;text-indent:0px;text-tr=
ansform:none;white-space:normal;word-spacing:0px;border-spacing:0px"><div s=
tyle=3D"word-wrap:break-word">_____________________________________________=
____________<br>Michael Sweet, Senior Printing System=C2=A0Engineer</div></=
span></div></span>
</div>
<br></div></blockquote></div></div></div>

--0000000000007e36ae05879c0aef--
