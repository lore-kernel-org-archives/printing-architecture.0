Return-Path: <korobkin@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:from:date:message-id:subject:to:content-type;
	bh=nJ5zAHyTEI6QbdolqwvufxO5C/aMqsN3LaayVzqBz/o=;
	b=NPVYzXz1NGEpu4POJGP9KORN+O6pnBBcdbhvfOSDX7hISoZ8LK8gW0Jw8ZOKMIRCkD
	mLN+odbISvA1Q3Zl2qUKMeRPMUOZeImMHBOMT454qaYg6H/MjlbAxcKPFgntK8MPwa1N
	29SxueGCe6ApxEtlOTBCwmiMvCBKxDbbeFya7popDzHQy/GATsb4PfsDkyQJ8Vmse64Z
	j+BQQFZQ1WI6orhIFS9TX7KmtnuNTmLc93mBv46Eq+7LCpq5kESyAkhtNr/vru/NtuTq
	Sb4+UYDMeTd2bMbVW6nzb/gIUyPqyqG7Ofc4yanbsSq8BJp5uexrIM6vI4UWnnuNjYzq
	TpNw==
MIME-Version: 1.0
Sender: korobkin@gmail.com
From: Alex Korobkin <korobkin+op@gmail.com>
Date: Thu, 20 Feb 2014 14:28:57 -0500
Message-ID: <CA+3RNfjX0BX2Zb76PkKFGouUenRCoiHGqiaLM8h3Ah9iCghNeA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=20cf3011e0e3711c8d04f2db8528
Subject: [Printing-architecture] Printing with Java to CUPS TLS-encrypted
	printserver?
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

--20cf3011e0e3711c8d04f2db8528
Content-Type: text/plain; charset=UTF-8

Hi all,

Does anyone know how to print from a Java application to a print-server
that has "Encryption Required" set? Upon connection, printserver asks
client to upgrade to TLS-encrypted connection, and neither cups4j, nor jspi
seem to support it.

Is there any other Java library that supports TLS-encrypted printing?

-- 
-Alex

--20cf3011e0e3711c8d04f2db8528
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,=C2=A0<div><br></div><div>Does anyone know how to p=
rint from a Java application to a print-server that has &quot;Encryption Re=
quired&quot; set? Upon connection, printserver asks client to upgrade to TL=
S-encrypted connection, and neither cups4j, nor jspi seem to support it.=C2=
=A0</div>

<div><br></div><div>Is there any other Java library that supports TLS-encry=
pted printing?<br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr">-Ale=
x</div>
</div>

</div>

--20cf3011e0e3711c8d04f2db8528--
