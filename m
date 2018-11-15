Return-Path: <korobkin@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=rL+3yMepcJehXRH4uu0BbBqmSTLSZulivPlzjBprtAs=;
	b=Yn3Si8vvDkK55aXIfq4NeGdduClx5WE3/KoxsFrs9A/7lF6OqVSceand7Gqs+pwrz1
	OijymwkBKQfkPX9D34cie7iBx15AJuc4nF3qitNXlVJhFDq2HkrVnH+30x5X9KQ4LzyR
	WJN/otbxtiXc1ouKpuqTte3r1t/trx3dzmTaek+o92KDcm23gZX6XD1ZzzpwSeg5L7eD
	oy0Q5FdoVuJ2mBRtfkZ/ZjXg/IEQmxHAGdlCpWxniybSFCyQGLluXBnkwoH+vQjQCFYA
	M6/to8WlWFjiNePnWsTbGfoGp1GDvZyXkleeyP7ANI6CKyMKalUDFpFOSYP1aWmxNueG
	WTQA==
MIME-Version: 1.0
From: Alex Korobkin <korobkin+op@gmail.com>
Date: Thu, 15 Nov 2018 10:19:23 -0500
Message-ID: <CA+3RNfhXqAg06GPPO5w2B2Fv6qMQ5BcfZ+cehUC7mq2sE09zNQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000537b9a057ab5948b"
Subject: [Printing-architecture] Default IPP queue name on printers
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

--000000000000537b9a057ab5948b
Content-Type: text/plain; charset="UTF-8"

Hi all,

Do you know what is the default or most common name of the ipp queue for
most popular manufacturers? (abs_path in https://tools.ietf.org/html/rfc3510
terminology).

I'm talking about the last part in the URI: ipp://printer-name:631/
*queue_name*  <-- this one.

Looks like it's /ipp or /printer for Ricoh, /ipp/port1 for HP, /ipp for
Xerox.
Does anyone know which one is most commonly used?
-- 
-Alex

--000000000000537b9a057ab5948b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi all,=C2=A0<div><br></div><div>Do you k=
now what is the default or most common name of the ipp queue for most popul=
ar manufacturers? (abs_path in=C2=A0<a href=3D"https://tools.ietf.org/html/=
rfc3510">https://tools.ietf.org/html/rfc3510</a> terminology).=C2=A0</div><=
div><br></div><div>I&#39;m talking about the last part in the URI: ipp://pr=
inter-name:631/<i>queue_name</i>=C2=A0 &lt;-- this one.=C2=A0</div><div><br=
></div><div><div>Looks like it&#39;s /ipp or /printer for Ricoh, /ipp/port1=
 for HP, /ipp for Xerox.=C2=A0</div><div>Does anyone know which one is most=
 commonly used?</div>-- <br><div dir=3D"ltr" class=3D"gmail_signature"><div=
 dir=3D"ltr">-Alex</div></div></div></div></div>

--000000000000537b9a057ab5948b--
