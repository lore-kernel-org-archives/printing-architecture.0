Return-Path: <korobkin@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=Jo23GOJcw25M9qlS/1BlFcch0hZcAEM+kCZ7FvTYzkw=;
	b=jUIXGguzXFaBR4lMKjR3i0jQdcIgzuAI4vAwHK6VXVRE5qbzPZ6kjjCnt0iSHeXmYX
	y56x6DeT9BHaMYtdvjCRPKx+bhKQ5uki9bs8CNJ2CxUn5IY5UbaJLOfjwF4co/TjQsIi
	oNWRkqYBp4cCdwo1VqSP4IoiWVudw8WM5Q77TtyCEznSrEv/hwtXnw2nBs2vgFMFVAKk
	w7/LHFDFZtteiE6rjp1WhXCrjkm0m2flTXwihKi8WD6EWj/oK1jlB273BZ1D+86g29uq
	1FnEsLwLxDxrpIx3PrPaATx4YhHLo7TRR1bICZNHAc1YNWPBPpAeq0P6wkGHZMf/Dk/H
	bE5w==
MIME-Version: 1.0
Sender: korobkin@gmail.com
In-Reply-To: <523A2166.8080004@googlemail.com>
References: <523A2166.8080004@googlemail.com>
From: Alex Korobkin <korobkin+op@gmail.com>
Date: Thu, 19 Sep 2013 14:10:55 -0400
Message-ID: <CA+3RNfg4RxHMwo=VdzxC04HjQ8br_c6ocGED-DhZqf9PQvDW-Q@mail.gmail.com>
Content-Type: multipart/alternative; boundary=047d7b10cfc5da6f7604e6c07a22
Subject: Re: [Printing-architecture] windows, samba, cups, color and BW
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Christian <chanlists@googlemail.com>
Cc: printing-architecture@lists.linux-foundation.org

--047d7b10cfc5da6f7604e6c07a22
Content-Type: text/plain; charset=UTF-8

Hi Christian,

I have the same setup, but I didn't notice this problem before.
You see, radio buttons on the "Paper / Quality" tab simply tell Windows
apps to render print jobs in color or b&w. At the same time, "Color mode"
within the Advanced page actually inserts a PostScript command into the job
that tells Ricoh printer to print in color or in b&w mode, regardless of
the contents of the job.

I think it is a bug in Adobe Reader: it doesn't honor color/b&w radio
buttons in the printer settings at all. However, if you look under
Properties button of the Print dialog in Reader, there is a "Print in
grayscale" checkbox. You can tell your users to use that one instead of
going all the way to Advanced options.


2013/9/18 Christian <chanlists@googlemail.com>

> Dear list,
>
> I have CUPS 1.5.3 running under Debian wheezy. I use Samba, cupsaddsmb
> and the Microsoft windows postscript printer driver for windows (7)
> clients. I have a printer (RICOH Aficio MP C3502, could post PPD) which
> is a rather big network multifunction device. From linux, everything
> works fine. For windows, printing via samba, I have set up a special raw
> queue in CUPS using appropriate Filter definitions in the PPD, and from
> the logs, I can confirm that no filtering of the postscript is being
> done on the linux side. From windows clients, using e. g. MSWORD, all of
> the printer options (staple, B+W vs. color, ...) are available and work
> as far as I can tell.
>
> The only exception is printing from Adobe Reader under Windows. Most of
> the options are honored, except the "Color vs. B + W" option. Under the
> "Paper / Quality" tab in the printer options, there is a set of two
> radio buttons with little pictures next to them for Color vs. Black +
> White. Those do not work for me.
>
> I can only get it to print B + W from Adobe reader under windows if,
> rather than using those buttons, I go into "Advanced..." and then chose
> "Color Mode: Black and White" in the list of printer options. I know
> this, but it could be confusing to our users...
>
> So I'd like to understand the background better, and why only Adobe
> Reader does this, and whether this behavior can be fixed, e. g. by PPD
> hacking or other tricks...
>
> Sorry to ask here, but the "forums" link is dysfunctional. Let me know
> if I can help. Best,
>
> Christian
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>

--047d7b10cfc5da6f7604e6c07a22
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Christian,=C2=A0<div><br></div><div>I have the same set=
up, but I didn&#39;t notice this problem before.=C2=A0</div><div>You see, r=
adio buttons on the &quot;Paper / Quality&quot; tab simply tell Windows app=
s to render print jobs in color or b&amp;w. At the same time, &quot;Color m=
ode&quot; within the Advanced page actually inserts a PostScript command in=
to the job that tells Ricoh printer to print in color or in b&amp;w mode, r=
egardless of the contents of the job.<br>

</div><div><br></div><div>I think it is a bug in Adobe Reader: it doesn&#39=
;t honor color/b&amp;w radio buttons in the printer settings at all. Howeve=
r, if you look under Properties button of the Print dialog in Reader, there=
 is a &quot;Print in grayscale&quot; checkbox. You can tell your users to u=
se that one instead of going all the way to Advanced options.=C2=A0</div>

</div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">2013/9/=
18 Christian <span dir=3D"ltr">&lt;<a href=3D"mailto:chanlists@googlemail.c=
om" target=3D"_blank">chanlists@googlemail.com</a>&gt;</span><br><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex">

Dear list,<br>
<br>
I have CUPS 1.5.3 running under Debian wheezy. I use Samba, cupsaddsmb<br>
and the Microsoft windows postscript printer driver for windows (7)<br>
clients. I have a printer (RICOH Aficio MP C3502, could post PPD) which<br>
is a rather big network multifunction device. From linux, everything<br>
works fine. For windows, printing via samba, I have set up a special raw<br=
>
queue in CUPS using appropriate Filter definitions in the PPD, and from<br>
the logs, I can confirm that no filtering of the postscript is being<br>
done on the linux side. From windows clients, using e. g. MSWORD, all of<br=
>
the printer options (staple, B+W vs. color, ...) are available and work<br>
as far as I can tell.<br>
<br>
The only exception is printing from Adobe Reader under Windows. Most of<br>
the options are honored, except the &quot;Color vs. B + W&quot; option. Und=
er the<br>
&quot;Paper / Quality&quot; tab in the printer options, there is a set of t=
wo<br>
radio buttons with little pictures next to them for Color vs. Black +<br>
White. Those do not work for me.<br>
<br>
I can only get it to print B + W from Adobe reader under windows if,<br>
rather than using those buttons, I go into &quot;Advanced...&quot; and then=
 chose<br>
&quot;Color Mode: Black and White&quot; in the list of printer options. I k=
now<br>
this, but it could be confusing to our users...<br>
<br>
So I&#39;d like to understand the background better, and why only Adobe<br>
Reader does this, and whether this behavior can be fixed, e. g. by PPD<br>
hacking or other tricks...<br>
<br>
Sorry to ask here, but the &quot;forums&quot; link is dysfunctional. Let me=
 know<br>
if I can help. Best,<br>
<br>
Christian<br>
_______________________________________________<br>
Printing-architecture mailing list<br>
<a href=3D"mailto:Printing-architecture@lists.linux-foundation.org">Printin=
g-architecture@lists.linux-foundation.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/printing-arch=
itecture" target=3D"_blank">https://lists.linuxfoundation.org/mailman/listi=
nfo/printing-architecture</a><br>
</blockquote></div><br></div>

--047d7b10cfc5da6f7604e6c07a22--
