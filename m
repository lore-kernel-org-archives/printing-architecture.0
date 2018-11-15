Return-Path: <msweet@apple.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apple.com;
	h=mime-version :
	content-type : sender : subject : from : in-reply-to : date : cc :
	message-id : references : to; s=20180706;
	bh=/OeYSASl7TFeMdOEbLeHgMB4BouUgzo8lWtkyLMI25c=;
	b=SS4dwzUfH8HADYErHH3jqxpoOyTLpqsoEEt4OUX8TmLJI7v354qof3ChD2E6e1Lj63aS
	p3lOwA8xRUMTDevZfTXe5TW5EkI3FbnbLKw69e2uu0dUnzciKlDosx06cDkMly+yjm5D
	VlAwGJL90xVB3YWfsOD4e7CfZGtvtkYUKWVGKJMisB6Vnfl+df8vNJd2F3pzuKFIp9zq
	oHxz6a2T0GLd95FLCbMOevof1rJRREOdzj9rNP3AW3TSN4KQ61CAMnSW854GTLbrKKq6
	/RAvJvDHlgM33VvnPhdxl9Tx1e8V0SkoR5spytI2sPhpf54qnbDCsDYGXKxMz4Y/C0mm
	VQ== 
MIME-version: 1.0
Content-type: multipart/alternative;
	boundary="Boundary_(ID_NW+w6gI8Omz+YyvGPX1umw)"
Sender: msweet@apple.com
From: Michael Sweet <msweet@apple.com>
In-reply-to: <CA+3RNfhXqAg06GPPO5w2B2Fv6qMQ5BcfZ+cehUC7mq2sE09zNQ@mail.gmail.com>
Date: Thu, 15 Nov 2018 11:15:34 -0500
Message-id: <9D6F0C94-67BF-47D4-915F-71B194F0B769@apple.com>
References: <CA+3RNfhXqAg06GPPO5w2B2Fv6qMQ5BcfZ+cehUC7mq2sE09zNQ@mail.gmail.com>
Subject: Re: [Printing-architecture] Default IPP queue name on printers
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>


--Boundary_(ID_NW+w6gI8Omz+YyvGPX1umw)
Content-type: text/plain; CHARSET=US-ASCII
Content-transfer-encoding: 7BIT

Alex,

For any AirPrint-compatible printer sold in the last 5 years, the abs_path should be /ipp/print.

Prior to that the path varied widely - in some cases you can do a Get-Printer-Attributes POST to / to get the correct URI.  DNS-SD TXT records also have the "rp" key to provide the path (without the leading /).


> On Nov 15, 2018, at 10:19 AM, Alex Korobkin <korobkin+op@gmail.com> wrote:
> 
> Hi all, 
> 
> Do you know what is the default or most common name of the ipp queue for most popular manufacturers? (abs_path in https://tools.ietf.org/html/rfc3510 <https://tools.ietf.org/html/rfc3510> terminology). 
> 
> I'm talking about the last part in the URI: ipp://printer-name:631/queue_name  <-- this one. 
> 
> Looks like it's /ipp or /printer for Ricoh, /ipp/port1 for HP, /ipp for Xerox. 
> Does anyone know which one is most commonly used?
> -- 
> -Alex
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture

_________________________________________________________
Michael Sweet, Senior Printing System Engineer


--Boundary_(ID_NW+w6gI8Omz+YyvGPX1umw)
Content-type: text/html; CHARSET=US-ASCII
Content-transfer-encoding: quoted-printable

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D"">Alex,<div class=3D""><br class=3D""></div><div class=3D"">For =
any AirPrint-compatible printer sold in the last 5 years, the abs_path =
should be /ipp/print.</div><div class=3D""><br class=3D""></div><div =
class=3D"">Prior to that the path varied widely - in some cases you can =
do a Get-Printer-Attributes POST to / to get the correct URI. =
&nbsp;DNS-SD TXT records also have the "rp" key to provide the path =
(without the leading /).</div><div class=3D""><br class=3D""><div =
class=3D""><div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Nov 15, 2018, at 10:19 AM, Alex Korobkin &lt;<a =
href=3D"mailto:korobkin+op@gmail.com" =
class=3D"">korobkin+op@gmail.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D""><div dir=3D"ltr" class=3D"">Hi all,&nbsp;<div class=3D""><br =
class=3D""></div><div class=3D"">Do you know what is the default or most =
common name of the ipp queue for most popular manufacturers? (abs_path =
in&nbsp;<a href=3D"https://tools.ietf.org/html/rfc3510" =
class=3D"">https://tools.ietf.org/html/rfc3510</a> =
terminology).&nbsp;</div><div class=3D""><br class=3D""></div><div =
class=3D"">I'm talking about the last part in the URI: <a =
href=3D"ipp://printer-name:631/" class=3D"">ipp://printer-name:631/</a><i =
class=3D"">queue_name</i>&nbsp; &lt;-- this one.&nbsp;</div><div =
class=3D""><br class=3D""></div><div class=3D""><div class=3D"">Looks =
like it's /ipp or /printer for Ricoh, /ipp/port1 for HP, /ipp for =
Xerox.&nbsp;</div><div class=3D"">Does anyone know which one is most =
commonly used?</div>-- <br class=3D""><div dir=3D"ltr" =
class=3D"gmail_signature"><div dir=3D"ltr" =
class=3D"">-Alex</div></div></div></div></div>
_______________________________________________<br =
class=3D"">Printing-architecture mailing list<br class=3D""><a =
href=3D"mailto:Printing-architecture@lists.linux-foundation.org" =
class=3D"">Printing-architecture@lists.linux-foundation.org</a><br =
class=3D"">https://lists.linuxfoundation.org/mailman/listinfo/printing-arc=
hitecture<br class=3D""></div></blockquote></div><br class=3D""><div =
class=3D"">
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
<br class=3D""></div></div></body></html>=

--Boundary_(ID_NW+w6gI8Omz+YyvGPX1umw)--
