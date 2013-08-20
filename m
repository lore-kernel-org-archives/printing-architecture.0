Return-Path: <korobkin@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:from:date:message-id:subject:to:content-type;
	bh=icxfv9qTpoi7kdAWG9gdF65VGbHtQvrjNVy2rhbwvoU=;
	b=BNuMpcPjHwA9QKjcr56iBxXqRsoZaba4sfEXqfvou39X5Ajmv4lSQas1Bf+XhYaPiL
	zxO8T+3Vpk4/2h/fvjryQNfdSCeYH/4y3iEG8Hj2X33yTdznEGDaY7kNWQxWlT7vLkV8
	2XPpL246Zm/grcROpWQnbwMHrxY8s7tjbNENpOKyk0nDD+IHpt/YQhaCFgkQ9uAgr/bA
	zvz7lBp05nXpc+2nut7D9YeKHw86xN8/1Jjin94jBophQCKiZqRVXzEhGfF4DVqoicte
	pjlbeWb5aQW3C9z8KxDHWRTmTHvr55jYTlNEx3t463vHZThBoVTWwv03OriSblAb4zQ3
	89Kg==
MIME-Version: 1.0
Sender: korobkin@gmail.com
From: Alex Korobkin <korobkin+op@gmail.com>
Date: Mon, 19 Aug 2013 20:04:52 -0400
Message-ID: <CA+3RNfg+ezs0oFeSGdGsf1-8K+3V6j5gRY8tBM=fUhX6A5V+mw@mail.gmail.com>
Content-Type: multipart/alternative; boundary=047d7bf0c6648dc60e04e455cf10
Subject: [Printing-architecture] CUPS printserver + Mac clients?
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

--047d7bf0c6648dc60e04e455cf10
Content-Type: text/plain; charset=UTF-8

Hi all,

I'm curious, what is the current paradigm for Mac clients to discover and
add printers on an enterprise network, if the printers are managed by a
central CUPS printserver. As I see it, CUPS on Mac OS X 10.7+ doesn't
support neither BrowsePoll, nor client.conf redirection.

DNS-SD records? Anything else that I might be missing?
Thanks
-Alex

--047d7bf0c6648dc60e04e455cf10
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,=C2=A0<br><div class=3D"gmail_quote"><div dir=3D"lt=
r"><div><br></div><div>I&#39;m curious, what is the current paradigm for Ma=
c clients to discover and add printers on an enterprise network, if the pri=
nters are managed by a central CUPS printserver. As I see it, CUPS on Mac O=
S X 10.7+ doesn&#39;t support neither BrowsePoll, nor client.conf redirecti=
on.=C2=A0</div>


<div><br></div><div>DNS-SD records? Anything else that I might be missing?=
=C2=A0</div><div>Thanks</div><span class=3D"HOEnZb"><font color=3D"#888888"=
><div>-Alex</div></font></span></div>
</div><br></div>

--047d7bf0c6648dc60e04e455cf10--
