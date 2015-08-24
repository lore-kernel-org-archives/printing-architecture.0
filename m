Return-Path: <korobkin@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:from:date:message-id:subject:to:content-type;
	bh=F0YD29Ra1CIXqIL/+OaJQHcYJPmDX70BvW6ffyk0DMs=;
	b=BWS4uNy7Mg6Efsk2iDKYuvzWjDXmi5QquYuWUI3mtJG2SpY/P3jodw1xusEkr5yIlX
	IXe47sTyFyjFMD+efmOydQY/fnOyJPgBiPctYi4FLkjCxV7bDS62ug8l/uEHSdxTmrY0
	41icvcP0ey7cnnBg8bKMj2zZ3XqG9Unk3hQqA7BlRPccDkWk/BbE72aXMZbH7HjNq1Di
	L5cuz/lE+h5fTFHh1mvdpybW87rxsa+xx2iUDNr8RY3K1joNbZ8kLXYvzdF/Ukz2tCku
	vonHypxonxt92+R4QwM/WzJ/FgmbsmD/3oVIxVpcWBjkhx+/cIyoT+O95dxbmRfps9m/
	e7lw==
MIME-Version: 1.0
Sender: korobkin@gmail.com
From: Alex Korobkin <korobkin+op@gmail.com>
Date: Mon, 24 Aug 2015 10:56:49 -0400
Message-ID: <CA+3RNfipMp+TTLyfTGiSUGS1UAsFUPw8dOJbA7yOKTGbpn7YgQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11c21e82eb2c31051e0fd418
Subject: [Printing-architecture] PDF workflow, cupsaddsmb,
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
To: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

--001a11c21e82eb2c31051e0fd418
Content-Type: text/plain; charset=UTF-8

Hi all,

Is there any adoption of PDF workflow in the Windows world?
I used to have a setup like this:
PostScript-based printers on CUPS are exported to Windows clients with
cupsaddsmb, and happy Windows clients just point and print easily.

How that I'm trying to switch my PPDs to PDF-based ones (written with PJL
commands), this setup no longer works.

Is there a solution better than uploading a manufacturer-provided driver
for each printer? Ideally, something as automatic as current
cupsui6/cupsps6.dll is, one that could take a PJL-based driver and build a
UI around it to show to a Windows client?

-- 
-Alex

--001a11c21e82eb2c31051e0fd418
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,=C2=A0<div><br></div><div>Is there any adoption of =
PDF workflow in the Windows world?=C2=A0</div><div>I used to have a setup l=
ike this:=C2=A0</div><div>PostScript-based printers on CUPS are exported to=
 Windows clients with cupsaddsmb, and happy Windows clients just point and =
print easily.=C2=A0</div><div><br></div><div>How that I&#39;m trying to swi=
tch my PPDs to PDF-based ones (written with PJL commands), this setup no lo=
nger works.=C2=A0</div><div><br></div><div>Is there a solution better than =
uploading a manufacturer-provided driver for each printer? Ideally, somethi=
ng as automatic as current cupsui6/cupsps6.dll is, one that could take a PJ=
L-based driver and build a UI around it to show to a Windows client?</div><=
div><div><br></div>-- <br><div class=3D"gmail_signature"><div dir=3D"ltr">-=
Alex</div></div>
</div></div>

--001a11c21e82eb2c31051e0fd418--
