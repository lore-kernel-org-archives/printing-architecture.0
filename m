Return-Path: <msweet@apple.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apple.com;
	h=mime-version :
	content-type : sender : subject : from : in-reply-to : date : cc :
	message-id : references : to; s=20180706;
	bh=n4pfjNdX3qpZEA30QoYWCXO1uzbMdvt3tG5dsKKYyGI=;
	b=VCZoQukqKq1fX6e5pP3MvOMOW1gHqxQMvRn09f3z1xdsYBXUD6lQ5O1dW2w9LmQpST23
	JARmcOUrtGazx7E6wYdI5JyKx5GlOVhcsfpaWGgIlzG8wMEWoYMmPIOjAwavHE+2VpsV
	ZfvIE7QkjdJXdASgRHTvvpfztOHVUkKlCgvZZ2FQzL4ww63bZUAVuphrx3yBDHkP/AQJ
	cE9+k8EB4WHJruge2sJNeC7AD1CurxUAO4Gr1P4bgFPLgaCGoTDL9dV+s861Tdv8NeE+
	xHeMImVQatiN48veNU8kfdaC61vjG4NGYwrP72XBH+ZlfTLNCmDBhc6PEeXhYEVy057v
	xA== 
MIME-version: 1.0
Content-type: multipart/alternative;
	boundary="Boundary_(ID_C0XpJqz8fmP3JsAIS+e/Kg)"
Sender: msweet@apple.com
From: Michael Sweet <msweet@apple.com>
In-reply-to: <4dab880a-b033-0b58-7114-cb7af3e2a0a9@gmail.com>
Date: Wed, 13 Feb 2019 15:34:24 -0500
Message-id: <B921DDE3-418B-4B32-8C83-1486476D31C1@apple.com>
References: <4dab880a-b033-0b58-7114-cb7af3e2a0a9@gmail.com>
Subject: Re: [Printing-architecture] OpenPrinting News
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
Cc: Aveek Basu <aveek.basu@lexmark.com>, "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>


--Boundary_(ID_C0XpJqz8fmP3JsAIS+e/Kg)
Content-type: text/plain; CHARSET=US-ASCII
Content-transfer-encoding: 7BIT

Till,

> On Feb 13, 2019, at 1:14 PM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
> ...
> According to Zdenek, Michal tried this with the co-maintainership already.
> 
> Seems that Trent is refusing any cooperation or completely ignoring the project.
> 
> My suggestion is to fork the project and use one of the locations suggested by me, but who should be the upstream maintainer then.

Well, if you fork and put the fork under openprinting, then you can give access to the various Linux packagers of Avahi and let them merge any bug fixes, etc. there at least.  And then *if* Trent starts maintaining Avahi again and accepting pull requests you can easily get those changes back to him...

_________________________________________________________
Michael Sweet, Senior Printing System Engineer


--Boundary_(ID_C0XpJqz8fmP3JsAIS+e/Kg)
Content-type: text/html; CHARSET=US-ASCII
Content-transfer-encoding: quoted-printable

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D"">Till,<br class=3D""><div><br class=3D""><blockquote =
type=3D"cite" class=3D""><div class=3D"">On Feb 13, 2019, at 1:14 PM, =
Till Kamppeter &lt;<a href=3D"mailto:till.kamppeter@gmail.com" =
class=3D"">till.kamppeter@gmail.com</a>&gt; wrote:</div><div =
class=3D""><div class=3D"">...<br class=3D"">According to Zdenek, Michal =
tried this with the co-maintainership already.<br class=3D""><br =
class=3D"">Seems that Trent is refusing any cooperation or completely =
ignoring the project.<br class=3D""><br class=3D"">My suggestion is to =
fork the project and use one of the locations suggested by me, but who =
should be the upstream maintainer then.<br =
class=3D""></div></div></blockquote><div><br class=3D""></div>Well, if =
you fork and put the fork under openprinting, then you can give access =
to the various Linux packagers of Avahi and let them merge any bug =
fixes, etc. there at least. &nbsp;And then *if* Trent starts maintaining =
Avahi again and accepting pull requests you can easily get those changes =
back to him...</div><br class=3D""><div class=3D"">
<span class=3D"Apple-style-span" style=3D"border-collapse: separate; =
color: rgb(0, 0, 0); font-family: 'Andale Mono'; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: =
0px; text-transform: none; white-space: normal; widows: 2; word-spacing: =
0px; border-spacing: 0px; -webkit-text-decorations-in-effect: none; =
-webkit-text-stroke-width: 0px;"><div style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><span class=3D"Apple-style-span" style=3D"border-collapse: =
separate; color: rgb(0, 0, 0); font-family: 'Andale Mono'; font-style: =
normal; font-variant: normal; font-weight: normal; letter-spacing: =
normal; line-height: normal; orphans: 2; text-align: -webkit-auto; =
text-indent: 0px; text-transform: none; white-space: normal; widows: 2; =
word-spacing: 0px; border-spacing: 0px; =
-webkit-text-decorations-in-effect: none; -webkit-text-stroke-width: =
0px;"><div style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space;" =
class=3D"">_________________________________________________________<br =
class=3D"">Michael Sweet, Senior Printing =
System&nbsp;Engineer</div></span></div></span>
</div>
<br class=3D""></body></html>=

--Boundary_(ID_C0XpJqz8fmP3JsAIS+e/Kg)--
