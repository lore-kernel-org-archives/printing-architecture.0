Return-Path: <sahilarora.535@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=FvXOsQ03niCgzok/chRAtWKrsa2AwC8Az8DhU7TBspM=;
	b=TLMwNR3aev/J3rrUJ8kKqZXW5vCLQvEitfCEyD4OEGr1B5jrtOlBZW8Sh7P3uivn14
	sE4m2LjcE2a7UFqNhhA0C/1uSzkIgkvuTtCTWgz7hpAOV+cP/QS20cKrgFPWtEeXf5Gw
	8NJ/NsEGaR8lnebWniucKy7e8flRuqaoQnvgh1YHp256LgkAG9ELti125oJvbKowMss3
	8BArsdYKrMdYxLfGIrfTNcA2K7UOAR3XWs0+SbsFmrgcRgqyQ1HzHVXgIhmRRD/ltkGL
	j2pcG/qMzFotvGav70gpfAIDerOUEA0D+x1cUB2HnEX8wgSDWzJdooQrSShhO11zvZqb
	k5vw==
MIME-Version: 1.0
References: <CAN40gStjA+xyG-caQ1sZ18bQOXmMdO9XYYVBEPMgE9Kdq_uerg@mail.gmail.com>
	<CA+3yCNLowGppT6uX_cs=oxmEnq60zo_dkPtVeskcbjVPrXL-pw@mail.gmail.com>
	<8b6d71ae-57ec-2af6-0758-b328e557d1b1@gmail.com>
In-Reply-To: <8b6d71ae-57ec-2af6-0758-b328e557d1b1@gmail.com>
From: Sahil Arora <sahilarora.535@gmail.com>
Date: Sun, 2 Sep 2018 21:43:03 +0530
Message-ID: <CA+3yCN+bKTahsY5f75YK_X4oRVbM1KRjZa0skAK_t7P-DOsNzQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000c502240574e5b35e"
Subject: Re: [Printing-architecture] OP Minutes (21 August 2018)
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
Cc: Aveek Basu <aveek.basu@lexmark.com>, Open Printing <printing-architecture@lists.linux-foundation.org>

--000000000000c502240574e5b35e
Content-Type: text/plain; charset="UTF-8"

Hi Till,
On Sat, 1 Sep 2018 at 12:37 Till Kamppeter <till.kamppeter@gmail.com> wrote:

> On 26/08/18 08:41, Sahil Arora wrote:
> > Hi,
> > In accordance with the meeting notes, I read that the openprinting
> > website needs to be refreshed. I can probably help in doing that in my
> > free time. I pushed some work initially to the openprinting website, but
> > could not continue due to other commitments, including Google Summer of
> > Code. Now that it is over, I can give some time on the website.
> >
> > Regards.
>
> Sorry for the late answer.
>
> I appreciate your step a lot. What especially needs to get done is:
>
> - Set up a way to easily post news announcements on the front page
> - Tell about driverless printing, how it works, the different standards,
> how to troubleshoot, ... (No need to list all driverless-capable
> printers in the database)
> - Move obsolete stuff to some separate place or remove it (for example
> stuff about LPD, LPRng, ...)
> - Some user help/discussion platform?
>
With my experience in website designing, I have learnt that it is always a
better option to use a robust framework rather than building from scratch.
For this specific purpose, I searched a bit and found that Docusaurus
<https://docusaurus.io/> is a great tool which might help us make a
maintainable and good-looking website for our purpose. There are many
open-source projects which already use docusaurus for their websites, such
as Babel <https://babeljs.io/> and React
<https://facebook.github.io/react-native/>. I would urge you, and others to
have a look at docusaurus and if that meets the requirement, then we can
deploy a website.

One of the most important points which I think should be concentrated upon
is that the website we aim should be hostable directly via Github pages
<https://pages.github.com/>, since it is free(for open source projects) and
extremely easy to setup.

Best.

>     Till
>
-- 

Sahil Arora
Alumni | Indian Institute of Technology Mandi

Web: https://sahilarora535.github.io
LinkedIn: sahilarora535 <https://www.linkedin.com/in/sahilarora535/>
Ph: +91-8130506047 <+91%2081305%2006047>

--000000000000c502240574e5b35e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div>Hi Till,<br><div><div class=3D"gmail_quote"=
><div dir=3D"ltr">On Sat, 1 Sep 2018 at 12:37 Till Kamppeter &lt;<a href=3D=
"mailto:till.kamppeter@gmail.com">till.kamppeter@gmail.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex">On 26/08/18 08:41, Sahil Arora wrote=
:<br>
&gt; Hi,<br>
&gt; In accordance with the meeting notes, I read that the openprinting <br=
>
&gt; website needs to be refreshed. I can probably help in doing that in my=
 <br>
&gt; free time. I pushed some work initially to the openprinting website, b=
ut <br>
&gt; could not continue due to other commitments, including Google Summer o=
f <br>
&gt; Code. Now that it is over, I can give some time on the website.<br>
&gt; <br>
&gt; Regards.<br>
<br>
Sorry for the late answer.<br>
<br>
I appreciate your step a lot. What especially needs to get done is:<br>
<br>
- Set up a way to easily post news announcements on the front page<br>
- Tell about driverless printing, how it works, the different standards, <b=
r>
how to troubleshoot, ... (No need to list all driverless-capable <br>
printers in the database)<br>
- Move obsolete stuff to some separate place or remove it (for example <br>
stuff about LPD, LPRng, ...)<br>
- Some user help/discussion platform?<br></blockquote><div>With my experien=
ce in website designing, I have learnt that it is always a better option to=
 use a robust framework rather than building from scratch. For this specifi=
c purpose, I searched a bit and found that <a href=3D"https://docusaurus.io=
/">Docusaurus</a> is a great tool which might help us make a maintainable a=
nd good-looking website for our purpose. There are many open-source project=
s which already use docusaurus for their websites, such as <a href=3D"https=
://babeljs.io/">Babel</a> and <a href=3D"https://facebook.github.io/react-n=
ative/">React</a>. I would urge you, and others to have a look at docusauru=
s and if that meets the requirement, then we can deploy a website. <br></di=
v><div><br></div><div>One of the most important points which I think should=
 be concentrated upon is that the website we aim should be hostable directl=
y via <a href=3D"https://pages.github.com/">Github pages</a>, since it is f=
ree(for open source projects) and extremely easy to setup.</div><div><br></=
div><div>Best.<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
=C2=A0 =C2=A0 Till<br>
</blockquote></div></div></div>-- <br><div dir=3D"ltr" class=3D"gmail_signa=
ture" data-smartmail=3D"gmail_signature"><p dir=3D"ltr">Sahil Arora<br>
Alumni | Indian Institute of Technology Mandi</p>
<p dir=3D"ltr">Web: <a href=3D"https://sahilarora535.github.io">https://sah=
ilarora535.github.io</a><br>
LinkedIn: <a href=3D"https://www.linkedin.com/in/sahilarora535/">sahilarora=
535</a><br>
Ph: <a href=3D"tel:+91%2081305%2006047">+91-8130506047</a></p>
</div>

--000000000000c502240574e5b35e--
