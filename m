Return-Path: <kurt.pfeifle@gmail.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 76285416A4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 79CD6409CF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1702239586; x=1702844386;
 darn=lists.linux-foundation.org; 
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=rT/krJ8xOHOsxAZWvRkONZdpp03CCiIHTWclnR40WCw=;
 b=XMLL1m3BhmpZ9w2ximlu+MgxAcRzmDF6nKYFxm3V5PigTg8g3PwTuyPUtipbnfH63l
 gFQjmsZPWHrYNAQ9qsc6tbmCw69arJqX7jQ/p6dwvzC3XUUfUjN7IglkDDMBXVAbKoaO
 h5f+n2IhAo7tTi2vglGr1C+/0gXvgr7AjVt8CGFkcXBnk1240VI7D6bhAJ05VWxeujOx
 voehRLDZWRCLT4YJE7TZ6TZ4+GpwEdz9jz/U+d9cEFcFuWHko/YgjZXB8OlduReZc65F
 vSVFdm3kQ2rb7bl2kr2UdWOPb+dYJhXsVWfzFgSGAHtJUgDlr6zf9uXGPifej5yMx+NC
 7ICw==
MIME-Version: 1.0
Reply-To: kurt.pfeifle@gmail.com
From: Kurt Pfeifle <kurt.pfeifle@gmail.com>
Date: Sun, 10 Dec 2023 21:19:10 +0100
Message-ID: <CAK+62wgybwAcCznC5PXuPJn-BoYuMa5E_soy6nsKeahoQ+GAWw@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000d81afa060c2d8968"
Subject: [Printing-architecture] How to request "Media Limits: ..." on
 job-sheets to print mm instead of inches?
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

--000000000000d81afa060c2d8968
Content-Type: text/plain; charset="UTF-8"

I have a print queue installed via "lpadmin ... -m everywhere". This
auto-generated a PPD with a line for the printable area saying

   *ImageableArea A4: "11.990551181102 11.990551181102 583.285039370079
829.899212598425"

When I request job-sheets to be printed the respective line on the printed
sheet reads

   Media Limits: 0.17 x 0.17 to 8.10 x 11.53 inches

What should I do to get this Info given in millimeters instead of inches?

I tried adding a line of "DefaultLanguage de" to cupsd.conf and restarted
the service. But this didn't change the printed line on the job-sheet (not
even the English *"Media Limits" *changed -- but I do not care so much
about that).

P.S.: Is this currently the right forum to ask such questions? I searched
OpenPrinting's github, but couldn't figure it out there, and I didn't want
to open an issue (yet).

Thanks, Kurt.

--000000000000d81afa060c2d8968
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have a print queue installed via &quot;lpadmin ... -m ev=
erywhere&quot;. This auto-generated a PPD with a line for the printable are=
a saying<div><br></div><div><font face=3D"monospace">=C2=A0 =C2=A0*Imageabl=
eArea A4: &quot;11.990551181102 11.990551181102 583.285039370079 829.899212=
598425&quot;</font><br></div><div><br></div><div>When I request job-sheets =
to be printed the respective=C2=A0line on the printed sheet reads</div><div=
><br></div><div><font face=3D"monospace">=C2=A0 =C2=A0Media Limits: 0.17 x =
0.17 to 8.10 x 11.53 inches</font></div><div><font face=3D"monospace"><br><=
/font></div><div><font face=3D"arial, sans-serif">What should I do to get t=
his Info given in millimeters instead of inches?</font></div><div><font fac=
e=3D"arial, sans-serif"><br></font></div><div><font face=3D"arial, sans-ser=
if">I tried adding a line of &quot;</font><font face=3D"monospace">DefaultL=
anguage de&quot;</font><font face=3D"arial, sans-serif"> to cupsd.conf and =
restarted the service. But this didn&#39;t change the printed line on the j=
ob-sheet (not even the English <i>&quot;Media Limits&quot; </i>changed -- b=
ut I do not care so much about that).</font></div><div><font face=3D"arial,=
 sans-serif"><br></font></div><div><font face=3D"arial, sans-serif">P.S.: I=
s this currently the right forum to ask such=C2=A0questions? I searched Ope=
nPrinting&#39;s=C2=A0github, but couldn&#39;t figure it out there, and I di=
dn&#39;t want to open an issue (yet).</font></div><div><font face=3D"arial,=
 sans-serif"><br></font></div><div><font face=3D"arial, sans-serif">Thanks,=
 Kurt.</font></div><div><br></div><div><br></div></div>

--000000000000d81afa060c2d8968--
