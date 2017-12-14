Return-Path: <pascal@obry.net>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=obry-net.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ZqhfRFbie5mbyR2Iv3lQ+UBAPMmCeFIAzyoW4qfSXPQ=;
	b=JNkhcGqWrErRj3cI+9hOxG7IAtN8ngH/KySRrFi3984a2j1MCNrPFZKYACMGy3dzWK
	n+06/pEmRiMJyqqBqnFALGxPb4Ip/aLMYeXWazylIfk8XwpLFy+g2mJhih000qge9yt8
	GMsbDsp6iUuIK1TVZsgqSJ9uvIvoV5JFZQxymSy/vjyb6e1sBqR3QQ6QjVaBTdOdg6O0
	N+sCt0WDR5b+Efqz+WlVh6IQnwn5UmtlXTPyHwieaUn2G2g6xbUnlm4ahx1MW1k643qe
	/C6XCSYB8qH0mcIYZncF/VvJCBJJxGeTa37JQ3ctVnubM49DXX9OCQOHfVzO4hLpAzsb
	u82Q==
MIME-Version: 1.0
In-Reply-To: <1513204278.2462.45.camel@obry.net>
References: <1404294158.28244.1.camel@pascal.home.net>
	<1513184881.2462.20.camel@obry.net>
	<E8206D91-E58D-426A-A666-2186AD8C3047@apple.com>
	<1513189960.2462.29.camel@obry.net>
	<7C9470F2-1453-469F-B71E-3B7499A44CED@apple.com>
	<1513192373.2462.33.camel@obry.net>
	<4C3DF113-A35B-4D88-8A3C-0E5A699BB41C@apple.com>
	<1513204278.2462.45.camel@obry.net>
From: Pascal Obry <pascal@obry.net>
Date: Thu, 14 Dec 2017 11:57:52 +0100
Message-ID: <CA+9ZNicGERJ38dBhN7abEXaC30wPRbkNuzWF8Oo09VEpjh5pqQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary="089e082f769c6f079705604ac143"
Subject: Re: [Printing-architecture] CUPS and PPD
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

--089e082f769c6f079705604ac143
Content-Type: text/plain; charset="UTF-8"

Hello Michael,

Sorry to bother you again with this. But now I'm not sure we are talking
about the same thing. The get cupsLocalizeDestValue() is to handle the
translation in different language I suppose, but what I want is to get the
"text" field for a *MediaType line.

With the PPD API one could do:

    ppd_option_t *opt = ppdFindOption(ppd, "MediaType");

    if (opt)
      {
        ppd_choice_t *choice = opt->choices;

        for (int k=0; k<opt->num_choices; k++)
          {
            printf ("PPD: media type %s | %s\n", choice->choice,
choice->text);
            choice++;
          }

And the choice->choice above is "Luster" in "Luster/Premium Luster Photo
Paper" (see PPD def just below) and choice->text is the second part (human
readable string) after the / so "Premium Luster Photo Paper".

   *MediaType Luster/Premium Luster Photo Paper:
"<</MediaType(Luster)>>setpagedevice"

And what I'm looking for is a way to get the human readable part without
resorting on the PPD API. I've tried many things, but fails to get this
value.

Is that possible without the PPD API?

Thanks,

-- 
  Pascal Obry /  Magny Les Hameaux (78)

  The best way to travel is by means of imagination

  http://photos.obry.net
  http://www.obry.net

  gpg --keyserver keys.gnupg.net --recv-key F949BD3B

--089e082f769c6f079705604ac143
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hello Michael,<br><br></div>Sorry to bother you =
again with this. But now I&#39;m not sure we are talking about the same thi=
ng. The get cupsLocalizeDestValue() is to handle the translation in differe=
nt language I suppose, but what I want is to get the &quot;text&quot; field=
 for a *MediaType line.<br><br></div>With the PPD API one could do:<br><div=
><div><br></div><div>=C2=A0=C2=A0=C2=A0 ppd_option_t *opt =3D ppdFindOption=
(ppd, &quot;MediaType&quot;);<br><br>=C2=A0=C2=A0=C2=A0 if (opt)<br>=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 {<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pp=
d_choice_t *choice =3D opt-&gt;choices;<br><br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 for (int k=3D0; k&lt;opt-&gt;num_choices; k++)<br>=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 {<br>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 printf (&quot;PPD: media type %s=
 | %s\n&quot;, choice-&gt;choice, choice-&gt;text);<br>=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 choice++;<br>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }<br></div><div><br></div><div>A=
nd the choice-&gt;choice above is  &quot;Luster&quot; in &quot;Luster/Premi=
um Luster Photo Paper&quot; (see PPD def just below) and choice-&gt;text is=
 the second part (human readable string) after the / so &quot;Premium Luste=
r Photo Paper&quot;.</div><div><br></div><div>=C2=A0=C2=A0 *MediaType Luste=
r/Premium Luster Photo Paper:=C2=A0=C2=A0=C2=A0 &quot;&lt;&lt;/MediaType(Lu=
ster)&gt;&gt;setpagedevice&quot;<br></div><div><br></div><div>And what I&#3=
9;m looking for is a way to get the human readable part without resorting o=
n the PPD API. I&#39;ve tried many things, but fails to get this value.</di=
v><div><br></div><div>Is that possible without the PPD API?<br></div><div><=
br></div>Thanks,</div><div><br><div><div class=3D"gmail_extra">-- <br><div =
class=3D"gmail_signature">=C2=A0 Pascal Obry / =C2=A0Magny Les Hameaux (78)=
<br><br>=C2=A0 The best way to travel is by means of imagination<br><br>=C2=
=A0 <a href=3D"http://photos.obry.net" target=3D"_blank">http://photos.obry=
.net</a><br>=C2=A0 <a href=3D"http://www.obry.net" target=3D"_blank">http:/=
/www.obry.net</a><br><br>=C2=A0 gpg --keyserver <a href=3D"http://keys.gnup=
g.net" target=3D"_blank">keys.gnupg.net</a> --recv-key F949BD3B</div>
</div></div></div></div>

--089e082f769c6f079705604ac143--
