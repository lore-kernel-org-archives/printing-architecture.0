Return-Path: <korobkin@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=xyoifbWTAKDk6FMDumxWng9HlLvN4/e4U1UCV7TIS2o=;
	b=a/Y12B2zX78fV+r57jCQVa7D2Y68wO0/qu2wZcQ4khkf74c3XMZUQjgSXTGIp3Zvvx
	+Av1PVClgBVX1sYDoxLGc6wmtpIs768oA/su6PgbTogToxEFUBBpowJOcCO0DU6OW0j6
	KqzYa+vN1PIYiOH3D6J70d2RjUO3tGS6YAk9Od7D8/kk75B6lknyxKvg917cxPoMUAlZ
	OzpkLekKcLd2r4SVvx+8tYvoub2r4NwF940NTzMeBZvsrtJz1CG2rIaASLZJk6H8MSA+
	OTnYJbSCCq6l9fMyQix81P2FbVf8sb37NtNgJMT9eim2JgF4DqaFMzOlxY/NFDthdXn4
	vpeA==
MIME-Version: 1.0
Sender: korobkin@gmail.com
In-Reply-To: <246B4DE0-8F4A-426F-B8F7-BA4C8EC1D1B1@apple.com>
References: <CA+3RNfipMp+TTLyfTGiSUGS1UAsFUPw8dOJbA7yOKTGbpn7YgQ@mail.gmail.com>
	<CAN40gSsYjD_jZGDvY+ZjV5gwcE1FqSxRgmkzaghVnbw_ydczKg@mail.gmail.com>
	<FB5CC2D9-0026-4C01-B4E3-1AEEF3474674@apple.com>
	<55DB5430.7000906@gmail.com>
	<CA+3RNfiGkWAYNjOSboBPmeRk=6eaZ=Hv=N+g4PGp4qXLqF_FwQ@mail.gmail.com>
	<246B4DE0-8F4A-426F-B8F7-BA4C8EC1D1B1@apple.com>
From: Alex Korobkin <korobkin+op@gmail.com>
Date: Tue, 25 Aug 2015 14:44:29 -0400
Message-ID: <CA+3RNfhdwB34KNAhXKk6eGCTkFnSXCo0QybnEif_MmRL8PD8uw@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1137c390f79e14051e2720d0
Subject: Re: [Printing-architecture] PDF workflow, cupsaddsmb,
	and Windows clients
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
Cc: Smith Kennedy <smith.kennedy@hp.com>, "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Till Kamppeter <till.kamppeter@gmail.com>

--001a1137c390f79e14051e2720d0
Content-Type: text/plain; charset=UTF-8

On Mon, Aug 24, 2015 at 2:47 PM, Michael Sweet <msweet@apple.com> wrote:

> Alex,
>
> > On Aug 24, 2015, at 2:11 PM, Alex Korobkin <korobkin+op@gmail.com>
> wrote:
> > ...
> > I don't see how we could integrate that with printer options, though.
> Let's say I want a user to be able to select a stapling option. One cannot
> inject PJL commands into an XPS job I suppose?
>
> That's why you put the options in a job ticket that is transmitted in
> parallel with the document data...
>
>
Right, this is the case when you connect to the printer via IPP. However,
when one adds a printer via IPP in Windows, it cannot select a driver
automatically (or I couldn't figure out that step). That's why I'd prefer
to connect to it via Samba, but with Samba the job options do not work.



> _________________________________
>
________________________
> Michael Sweet, Senior Printing System Engineer, PWG Chair
>
>


-- 
-Alex

--001a1137c390f79e14051e2720d0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Mon, Aug 24, 2015 at 2:47 PM, Michael Sweet <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:msweet@apple.com" target=3D"_blank">msweet@apple.com</a>&gt=
;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex">Alex,<br>
<br>
&gt; On Aug 24, 2015, at 2:11 PM, Alex Korobkin &lt;<a href=3D"mailto:korob=
kin%2Bop@gmail.com">korobkin+op@gmail.com</a>&gt; wrote:<br>
&gt; ...<br>
<span class=3D"">&gt; I don&#39;t see how we could integrate that with prin=
ter options, though. Let&#39;s say I want a user to be able to select a sta=
pling option. One cannot inject PJL commands into an XPS job I suppose?<br>
<br>
</span>That&#39;s why you put the options in a job ticket that is transmitt=
ed in parallel with the document data...<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br></div></div></blockquote><div><=
br></div><div>Right, this is the case when you connect to the printer via I=
PP. However, when one adds a printer via IPP in Windows, it cannot select a=
 driver automatically (or I couldn&#39;t figure out that step). That&#39;s =
why I&#39;d prefer to connect to it via Samba, but with Samba the job optio=
ns do not work.=C2=A0</div><div><br></div><div>=C2=A0</div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">
_________________________________<span style=3D"color:rgb(34,34,34)">=C2=A0=
</span></div></div></blockquote><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=
=3D"HOEnZb"><div class=3D"h5">________________________<br>
Michael Sweet, Senior Printing System Engineer, PWG Chair<br>
<br>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
<div class=3D"gmail_signature"><div dir=3D"ltr">-Alex</div></div>
</div></div>

--001a1137c390f79e14051e2720d0--
