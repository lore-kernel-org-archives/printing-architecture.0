Return-Path: <mohangorai@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=KErCM1hEiWVNATSaSl2Ccx2jYZlHXuoZNuMB1ghcg/U=;
	b=DRKASedDJQezwesYq6VUVGDo5FxVwCUr3NX5NmuLvlEIaAlSOf6pVQyOyq0YYZAo4Z
	5vHFmUj3+PCrbWkIWqhBwoq/zQ2SIzsZmfYHNWjyRa/Rqa7rlwQh0JHKqhCQFTyLWEbB
	8To8pwpNVucYW+AX1mBrdgE5WrTnTPJJfxEpt+A6x7xOl+XKqcMLYiUkN0XxX0UBH0N3
	KMp+uMUr8O1ICvP1/rdjytMt6iGMqSNtGwyOsiJbgl4gxBW1msNtQQjhegj+q9psRXlX
	PxUw0fZRPTm2sdAd7TU6M1HgMy6gjuSMLUXPsivKrNVlkRfJ+XwlxLI/SO3hUMiWwNc2
	hQdg==
MIME-Version: 1.0
From: Mohan Gorai <mohangorai@gmail.com>
Date: Mon, 15 Dec 2014 12:11:25 +0530
Message-ID: <CAJv9-3xV=rD6Fq_vrRca4zMMCERVPAMREOmCbnN9TrYj3hz=mg@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11c223f443967e050a3b89d1
Subject: [Printing-architecture] help with building cups-filters-1.0.60 on
	Solaris
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org

--001a11c223f443967e050a3b89d1
Content-Type: text/plain; charset=UTF-8

Hi Everyone,

I was trying to build cups-filters on Solaris. But seems to be that solaris
doesn't have the required poppler version.

<snip>
configure: error: Package requirements (poppler >= 0.18) were not met:

Requested 'poppler >= 0.18' but version of poppler is 0.14.4

Consider adjusting the PKG_CONFIG_PATH environment variable if you
installed software in a non-standard prefix.

Alternatively, you may set the environment variables POPPLER_CFLAGS
and POPPLER_LIBS to avoid the need to call pkg-config.
See the pkg-config man page for more details.

</snip>

Is there any configuration value that can be tweaked to get this built?

Thanks in advance!
~Mohan

--001a11c223f443967e050a3b89d1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Everyone,<br><br></div>I was trying to build cups-=
filters on Solaris. But seems to be that solaris doesn&#39;t have the requi=
red poppler version.<br><div><div><br></div><div>&lt;snip&gt;<br></div><div=
>configure: error: Package requirements (poppler &gt;=3D 0.18) were not met=
:<br><br>Requested &#39;poppler &gt;=3D 0.18&#39; but version of poppler is=
 0.14.4<br><br>Consider adjusting the PKG_CONFIG_PATH environment variable =
if you<br>installed software in a non-standard prefix.<br><br>Alternatively=
, you may set the environment variables POPPLER_CFLAGS<br>and POPPLER_LIBS =
to avoid the need to call pkg-config.<br>See the pkg-config man page for mo=
re details.<br><br>&lt;/snip&gt;<br><br></div><div>Is there any configurati=
on value that can be tweaked to get this built?<br><br></div><div>Thanks in=
 advance!<br></div><div><div><div class=3D"gmail_signature"><div dir=3D"ltr=
"></div><div>~Mohan<br></div><div dir=3D"ltr"><div><br></div></div></div></=
div>
</div></div></div>

--001a11c223f443967e050a3b89d1--
