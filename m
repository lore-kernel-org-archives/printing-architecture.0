Return-Path: <blueroofmusic@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=vyELl2yGybV/uVJabWQCs8Cj0YgtcbpHSfxAvlZQitw=;
	b=Z6fL6mZeYyIQAwX3q7xhrMNYutG37yBXw+OBVZbKQx2QOdZAMizp+hZ0KoCE98+Vgo
	HClYeyJLdS3Qd76wCwfBAzk7DEK8mThPi8liVvzZUjctaYOPRWv/t3ummcZ2wfIwjlp+
	Tyw8hSeZF8EQ4iDYoH6tJ1mbLqz1UPqky+VDbK1aUFRbkumhjQPc11nWeP8voItmsCAQ
	l/KMyloio6sjEFxRW875aFtmuDIWCRMqDfHnR4pIgjzyVe/5T6rpYiwkVAfL4+3awJcZ
	HBR7i5msqBPnlHUkZ3r/me/f5xHMaRv+X2wqOSqGG4/mWYWiUaEXQPcG2u3u0pswza+i
	6NBA==
MIME-Version: 1.0
In-Reply-To: <02668022-214A-4993-B2BE-C3C25730BAFD@apple.com>
References: <02668022-214A-4993-B2BE-C3C25730BAFD@apple.com>
From: Ira McDonald <blueroofmusic@gmail.com>
Date: Wed, 15 Oct 2014 20:22:19 -0400
Message-ID: <CAN40gSvdHw0TQAdBp6yCTY25+Rkx=Nc4LVsN=XhfqCx5uRFd5Q@mail.gmail.com>
Content-Type: multipart/alternative; boundary=047d7bd74a1cff911805057f3e9f
Subject: Re: [Printing-architecture] CUPS systemd issues
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@apple.com>, Ira McDonald <blueroofmusic@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

--047d7bd74a1cff911805057f3e9f
Content-Type: text/plain; charset=UTF-8

Hi Mike,

OK - I'll start the chain of responses.

I also favor (strongly) your option 1 choice.

And I favor leaning on the Linux kernel developers to upgrade to use
security practices already in place in BSD and other POSIX-family
kernels for years now.  And Linux Foundation is probably the right
place to bring that pressure to bear.

Cheers,
- Ira (here wearing my Open Printing chair hat)




Ira McDonald (Musician / Software Architect)
Co-Chair - TCG Trusted Mobility Solutions WG
Chair - Linux Foundation Open Printing WG
Secretary - IEEE-ISTO Printer Working Group
Co-Chair - IEEE-ISTO PWG Internet Printing Protocol WG
IETF Designated Expert - IPP & Printer MIB
Blue Roof Music / High North Inc
http://sites.google.com/site/blueroofmusic
http://sites.google.com/site/highnorthinc
mailto: blueroofmusic@gmail.com
Winter  579 Park Place  Saline, MI  48176  734-944-0094
Summer  PO Box 221  Grand Marais, MI 49839  906-494-2434


On Wed, Oct 15, 2014 at 3:27 PM, Michael Sweet <msweet@apple.com> wrote:

> All,
>
> Posting here to get the widest possible audience, as systemd support in
> CUPS is relatively new (at least for upstream) and we have a few serious
> bugs reported against CUPS 2.0 on CUPS.org...
>
>
> STR #4491: CUPS mis-categorizes v1.::127.0.0.1 as not being localhost
>     http://www.cups.org/str.php?L4491
>
> Systemd is mapping IPv4 addresses to the 6to4 address space, so instead of
> getting separate v4 and v6 listeners we have two v6 listeners. This bug
> MUST be fixed in systemd - treating 6to4 addresses as equivalent to an IPv4
> address is a major security hole that we closed during the development of
> CUPS 1.2, and we will not be opening that hole just to support systemd.
> However, if we change the socket file to not list any IP socket listeners
> (option 1 below) that fix will no longer be required (at least not by CUPS
> - I still think you'll want to fix it for other IP services that have
> adopted systemd)
>
>
> STR #4497: "Port 631" binds to localhost only (systemd regression)
>     http://www.cups.org/str.php/L4497
>
> The Linux kernel has a "feature" that prevents a process from listening on
> the "any" address at the same time as a specific address for the same port.
> Thus, if systemd is listening on port 631 for connections to localhost,
> cupsd cannot also create a listener for the "any" address on port 631 when
> printer sharing is enabled.
>
> Short of the Linux kernel being updated to support what *BSD has supported
> for years, I see two ways for us to "fix" this issue:
>
> 1. Remove the localhost listeners from the org.cups.cupsd.socket file and
> just run-on-demand based on local domain socket IO. When the web interface
> is enabled we can disable the on-demand mode, just as we do when printer
> sharing is enabled or when there are pending jobs.
>
> 2. Install two socket files (org.cups.cupsd-sharing.socket and
> org.cups.cupsd-no-sharing.socket) and enable/disable the correct file based
> on the current cupsd.conf configuration. An alternative would be to rewrite
> the socket file based on the cupsd.conf configuration, however there are
> already users that object to CUPS writing to /etc...
>
> I'm leaning towards option #1.
>
> Thoughts?
>
> _________________________________________________________
> Michael Sweet, Senior Printing System Engineer, PWG Chair
>
>
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>
>

--047d7bd74a1cff911805057f3e9f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div><div>Hi Mike,<br><br></=
div>OK - I&#39;ll start the chain of responses.<br><br></div>I also favor (=
strongly) your option 1 choice.<br><br></div>And I favor leaning on the Lin=
ux kernel developers to upgrade to use<br></div>security practices already =
in place in BSD and other POSIX-family<br></div>kernels for years now.=C2=
=A0 And Linux Foundation is probably the right<br></div>place to bring that=
 pressure to bear.<br><br></div>Cheers,<br></div>- Ira (here wearing my Ope=
n Printing chair hat)<br><br><div><div><div><div><div><div><div><br><br></d=
iv></div></div></div></div></div></div></div><div class=3D"gmail_extra"><br=
 clear=3D"all"><div><div dir=3D"ltr">Ira McDonald (Musician / Software Arch=
itect)<br>Co-Chair - TCG Trusted Mobility Solutions WG<br>Chair - Linux Fou=
ndation Open Printing WG<br>Secretary - IEEE-ISTO Printer Working Group<br>=
Co-Chair - IEEE-ISTO PWG Internet Printing Protocol WG<br>IETF Designated E=
xpert - IPP &amp; Printer MIB<br>Blue Roof Music / High North Inc<br><a sty=
le=3D"color:rgb(51,51,255)" href=3D"http://sites.google.com/site/blueroofmu=
sic" target=3D"_blank">http://sites.google.com/site/blueroofmusic</a><br><a=
 style=3D"color:rgb(102,0,204)" href=3D"http://sites.google.com/site/highno=
rthinc" target=3D"_blank">http://sites.google.com/site/highnorthinc</a><br>=
mailto: <a href=3D"mailto:blueroofmusic@gmail.com" target=3D"_blank">bluero=
ofmusic@gmail.com</a><br>Winter=C2=A0 579 Park Place=C2=A0 Saline, MI=C2=A0=
 48176=C2=A0 734-944-0094<br>Summer=C2=A0 PO Box 221=C2=A0 Grand Marais, MI=
 49839=C2=A0 906-494-2434<br><br><div style=3D"display:inline"></div><div s=
tyle=3D"display:inline"></div><div style=3D"display:inline"></div><div></di=
v><div></div><div></div><div></div></div></div>
<br><div class=3D"gmail_quote">On Wed, Oct 15, 2014 at 3:27 PM, Michael Swe=
et <span dir=3D"ltr">&lt;<a href=3D"mailto:msweet@apple.com" target=3D"_bla=
nk">msweet@apple.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
">All,<br>
<br>
Posting here to get the widest possible audience, as systemd support in CUP=
S is relatively new (at least for upstream) and we have a few serious bugs =
reported against CUPS 2.0 on CUPS.org...<br>
<br>
<br>
STR #4491: CUPS mis-categorizes v1.::127.0.0.1 as not being localhost<br>
=C2=A0 =C2=A0 <a href=3D"http://www.cups.org/str.php?L4491" target=3D"_blan=
k">http://www.cups.org/str.php?L4491</a><br>
<br>
Systemd is mapping IPv4 addresses to the 6to4 address space, so instead of =
getting separate v4 and v6 listeners we have two v6 listeners. This bug MUS=
T be fixed in systemd - treating 6to4 addresses as equivalent to an IPv4 ad=
dress is a major security hole that we closed during the development of CUP=
S 1.2, and we will not be opening that hole just to support systemd.=C2=A0 =
However, if we change the socket file to not list any IP socket listeners (=
option 1 below) that fix will no longer be required (at least not by CUPS -=
 I still think you&#39;ll want to fix it for other IP services that have ad=
opted systemd)<br>
<br>
<br>
STR #4497: &quot;Port 631&quot; binds to localhost only (systemd regression=
)<br>
=C2=A0 =C2=A0 <a href=3D"http://www.cups.org/str.php/L4497" target=3D"_blan=
k">http://www.cups.org/str.php/L4497</a><br>
<br>
The Linux kernel has a &quot;feature&quot; that prevents a process from lis=
tening on the &quot;any&quot; address at the same time as a specific addres=
s for the same port. Thus, if systemd is listening on port 631 for connecti=
ons to localhost, cupsd cannot also create a listener for the &quot;any&quo=
t; address on port 631 when printer sharing is enabled.<br>
<br>
Short of the Linux kernel being updated to support what *BSD has supported =
for years, I see two ways for us to &quot;fix&quot; this issue:<br>
<br>
1. Remove the localhost listeners from the org.cups.cupsd.socket file and j=
ust run-on-demand based on local domain socket IO. When the web interface i=
s enabled we can disable the on-demand mode, just as we do when printer sha=
ring is enabled or when there are pending jobs.<br>
<br>
2. Install two socket files (org.cups.cupsd-sharing.socket and org.cups.cup=
sd-no-sharing.socket) and enable/disable the correct file based on the curr=
ent cupsd.conf configuration. An alternative would be to rewrite the socket=
 file based on the cupsd.conf configuration, however there are already user=
s that object to CUPS writing to /etc...<br>
<br>
I&#39;m leaning towards option #1.<br>
<br>
Thoughts?<br>
<br>
_________________________________________________________<br>
Michael Sweet, Senior Printing System Engineer, PWG Chair<br>
<br>
<br>_______________________________________________<br>
Printing-architecture mailing list<br>
<a href=3D"mailto:Printing-architecture@lists.linux-foundation.org">Printin=
g-architecture@lists.linux-foundation.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/printing-arch=
itecture" target=3D"_blank">https://lists.linuxfoundation.org/mailman/listi=
nfo/printing-architecture</a><br>
<br></blockquote></div><br></div>

--047d7bd74a1cff911805057f3e9f--
