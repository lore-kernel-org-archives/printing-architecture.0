Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-type: multipart/alternative;
	boundary="Boundary_(ID_DKpMShKMtCXrYmpOpDb8Qw)"
From: Michael Sweet <msweet@apple.com>
In-reply-to: <CA+3RNfg+ezs0oFeSGdGsf1-8K+3V6j5gRY8tBM=fUhX6A5V+mw@mail.gmail.com>
Date: Mon, 19 Aug 2013 22:31:53 -0400
Message-id: <6E05B503-89A5-40B5-B81F-C1E6FAAA1638@apple.com>
References: <CA+3RNfg+ezs0oFeSGdGsf1-8K+3V6j5gRY8tBM=fUhX6A5V+mw@mail.gmail.com>
Subject: Re: [Printing-architecture] CUPS printserver + Mac clients?
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Alex Korobkin <korobkin+op@gmail.com>
Cc: printing-architecture@lists.linux-foundation.org


--Boundary_(ID_DKpMShKMtCXrYmpOpDb8Qw)
Content-type: text/plain; CHARSET=US-ASCII
Content-transfer-encoding: 7BIT

Mac clients need DNS-SD records, either traditional DNS or mDNS (Bonjour).  You can also add printers manually via the IP printer pane in Add Printer (CTRL click to customize the toolbar...)

CUPS browsing, BrowsePoll, and client,conf stopped working in 10.7 thanks to application sandboxing, and in 10.8 we dropped support for them completely (client.conf is still supported on non-Mac platforms for the time being...)


On 2013-08-19, at 8:04 PM, Alex Korobkin <korobkin+op@gmail.com> wrote:

> Hi all, 
> 
> I'm curious, what is the current paradigm for Mac clients to discover and add printers on an enterprise network, if the printers are managed by a central CUPS printserver. As I see it, CUPS on Mac OS X 10.7+ doesn't support neither BrowsePoll, nor client.conf redirection. 
> 
> DNS-SD records? Anything else that I might be missing? 
> Thanks
> -Alex
> 
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair


--Boundary_(ID_DKpMShKMtCXrYmpOpDb8Qw)
Content-type: text/html; CHARSET=US-ASCII
Content-transfer-encoding: quoted-printable

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; ">Mac =
clients need DNS-SD records, either traditional DNS or mDNS (Bonjour). =
&nbsp;You can also add printers manually via the IP printer pane in Add =
Printer (CTRL click to customize the toolbar...)<div><br></div><div>CUPS =
browsing, BrowsePoll, and client,conf stopped working in 10.7 thanks to =
application sandboxing, and in 10.8 we dropped support for them =
completely (client.conf is still supported on non-Mac platforms for the =
time being...)</div><div><br></div><div><br><div><div>On 2013-08-19, at =
8:04 PM, Alex Korobkin &lt;<a =
href=3D"mailto:korobkin+op@gmail.com">korobkin+op@gmail.com</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div dir=3D"ltr">Hi all,&nbsp;<br><div =
class=3D"gmail_quote"><div dir=3D"ltr"><div><br></div><div>I'm curious, =
what is the current paradigm for Mac clients to discover and add =
printers on an enterprise network, if the printers are managed by a =
central CUPS printserver. As I see it, CUPS on Mac OS X 10.7+ doesn't =
support neither BrowsePoll, nor client.conf redirection.&nbsp;</div>


<div><br></div><div>DNS-SD records? Anything else that I might be =
missing?&nbsp;</div><div>Thanks</div><span class=3D"HOEnZb"><font =
color=3D"#888888">-Alex</font></span></div>
</div><br></div>
_______________________________________________<br>Printing-architecture =
mailing list<br><a =
href=3D"mailto:Printing-architecture@lists.linux-foundation.org">Printing-=
architecture@lists.linux-foundation.org</a><br>https://lists.linuxfoundati=
on.org/mailman/listinfo/printing-architecture<br></blockquote></div><br><d=
iv>
<span class=3D"Apple-style-span" style=3D"border-collapse: separate; =
color: rgb(0, 0, 0); font-family: 'Andale Mono'; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: =
0px; text-transform: none; white-space: normal; widows: 2; word-spacing: =
0px; -webkit-border-horizontal-spacing: 0px; =
-webkit-border-vertical-spacing: 0px; =
-webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: =
auto; -webkit-text-stroke-width: 0px;  "><span class=3D"Apple-style-span" =
style=3D"border-collapse: separate; color: rgb(0, 0, 0); font-family: =
'Andale Mono'; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; line-height: normal; orphans: 2; =
text-align: -webkit-auto; text-indent: 0px; text-transform: none; =
white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: =
0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: =
auto; -webkit-text-stroke-width: 0px;  "><div style=3D"word-wrap: =
break-word; -webkit-nbsp-mode: space; -webkit-line-break: =
after-white-space; =
">_________________________________________________________<br>Michael =
Sweet, Senior Printing System&nbsp;Engineer, PWG =
Chair</div></span></span>
</div>
<br></div></body></html>=

--Boundary_(ID_DKpMShKMtCXrYmpOpDb8Qw)--
