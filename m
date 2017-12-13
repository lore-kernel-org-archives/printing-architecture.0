Return-Path: <msweet@apple.com>
DKIM-Signature: v=1; a=rsa-sha256; d=apple.com; s=mailout2048s;
	c=relaxed/simple; q=dns/txt; i=@apple.com; t=1513195065;
	h=From:Sender:Reply-To:Subject:Date:Message-id:To:Cc:MIME-version:Content-type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-reply-to:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=AHS3bFhqW7hpvEjqevjmIRyoefrbIIw2NzD9bgbDscg=;
	b=k00eMyH/2dCrnhOaS09ZZc8vC2ox62wPMwkyxlFRs6j52u5QAv9lDUvjj5slwlI/
	KJOvQZxd1d5ZbhPs0fYJqs44l3JZRgvYjHPfsRo3aJjpFtFYPTcdVQ878BY7SBM2
	rX4ocWSto4Hckt/sRatT0k3j5iL/FcP9ay67lvdz9XZJlHuRp9s21inPdPGuDK8z
	Gib5C0flqgsfraUKNCxrRRDapMIEhpMcUdvW8RBWPboGnKIsCI/YdIj9ywcZJeXu
	OVN58U/6KiIM/3dURJGVaLnI49Swn9zQL+dJ+BFMZP2y6ytCAFI5/xJY+QL5Q2pN
	b65h0SCX6HPIsK13quYIdw==;
MIME-version: 1.0
Content-type: multipart/alternative;
	boundary="Boundary_(ID_1WT/EarGTexkyHRhnWFPTQ)"
Sender: msweet@apple.com
From: Michael Sweet <msweet@apple.com>
In-reply-to: <1513192373.2462.33.camel@obry.net>
Date: Wed, 13 Dec 2017 14:57:42 -0500
Message-id: <4C3DF113-A35B-4D88-8A3C-0E5A699BB41C@apple.com>
References: <1404294158.28244.1.camel@pascal.home.net>
	<1513184881.2462.20.camel@obry.net>
	<E8206D91-E58D-426A-A666-2186AD8C3047@apple.com>
	<1513189960.2462.29.camel@obry.net>
	<7C9470F2-1453-469F-B71E-3B7499A44CED@apple.com>
	<1513192373.2462.33.camel@obry.net>
Subject: Re: [Printing-architecture] CUPS and PPD
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Pascal Obry <pascal@obry.net>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>


--Boundary_(ID_1WT/EarGTexkyHRhnWFPTQ)
Content-type: text/plain; CHARSET=US-ASCII
Content-transfer-encoding: 7BIT

Pascal,

First, make sure you've gotten a copy of the attributes from the device with cupsCopyDestInfo.

Second, make sure your printer actually reports the media types separately; the following command will show:

    ipptool -tv PRINTER-URI get-printer-attributes.test | grep media-type-supported

(the CUPS media APIs help insulate you from dealing with these things BTW...)


> On Dec 13, 2017, at 2:12 PM, Pascal Obry <pascal@obry.net> wrote:
> 
> Hi Michael,
> 
>> cupsLocalizeDestOption will give you the localized string, if the
>> printer supplies one.
> 
> Ok.
> 
>> (but prior to CUPS 2.3 you need to connect to the device/printer to
>> get the localized string for vendor-specific names...)
> 
> I see, but now using: 
> 
>      http_t *hcon = cupsConnectDest(dest, CUPS_DEST_FLAGS_DEVICE, 2000, &cancel, resource, sizeof(resource), NULL, (void *)NULL);
> 
> Makes attr null in the following code:
> 
>      ipp_attribute_t *attr = cupsFindDestSupported(hcon, dest, info, "media-type");
> 
> 
> With CUPS_DEST_FLAGS_NONE I can list media.
> 
> I'm on CUPS 2.2.6.
> 
> Any idea?
> 
> -- 
>  Pascal Obry /  Magny Les Hameaux (78)
> 
>  The best way to travel is by means of imagination
> 
>  http://www.obry.net
> 
>  gpg --keyserver keys.gnupg.net --recv-key F949BD3B

_________________________________________________________
Michael Sweet, Senior Printing System Engineer


--Boundary_(ID_1WT/EarGTexkyHRhnWFPTQ)
Content-type: text/html; CHARSET=US-ASCII
Content-transfer-encoding: quoted-printable

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D"">Pascal,<div class=3D""><br class=3D""></div><div =
class=3D"">First, make sure you've gotten a copy of the attributes from =
the device with cupsCopyDestInfo.</div><div class=3D""><br =
class=3D""></div><div class=3D"">Second, make sure your printer actually =
reports the media types separately; the following command will =
show:</div><div class=3D""><br class=3D""></div><div class=3D"">&nbsp; =
&nbsp; ipptool -tv PRINTER-URI get-printer-attributes.test | grep =
media-type-supported</div><div class=3D""><br class=3D""></div><div =
class=3D"">(the CUPS media APIs help insulate you from dealing with =
these things BTW...)</div><div class=3D""><br class=3D""><div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D"">On Dec =
13, 2017, at 2:12 PM, Pascal Obry &lt;<a href=3D"mailto:pascal@obry.net" =
class=3D"">pascal@obry.net</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div class=3D"">Hi =
Michael,<br class=3D""><br class=3D""><blockquote type=3D"cite" =
class=3D"">cupsLocalizeDestOption will give you the localized string, if =
the<br class=3D"">printer supplies one.<br class=3D""></blockquote><br =
class=3D"">Ok.<br class=3D""><br class=3D""><blockquote type=3D"cite" =
class=3D"">(but prior to CUPS 2.3 you need to connect to the =
device/printer to<br class=3D"">get the localized string for =
vendor-specific names...)<br class=3D""></blockquote><br class=3D"">I =
see, but now using: <br class=3D""><br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;http_t *hcon =3D cupsConnectDest(dest, =
CUPS_DEST_FLAGS_DEVICE, 2000, &amp;cancel, resource, sizeof(resource), =
NULL, (void *)NULL);<br class=3D""><br class=3D"">Makes attr null in the =
following code:<br class=3D""><br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ipp_attribute_t *attr =3D =
cupsFindDestSupported(hcon, dest, info, "media-type");<br class=3D""><br =
class=3D""><br class=3D"">With CUPS_DEST_FLAGS_NONE I can list media.<br =
class=3D""><br class=3D"">I'm on CUPS 2.2.6.<br class=3D""><br =
class=3D"">Any idea?<br class=3D""><br class=3D"">-- <br class=3D""> =
&nbsp;Pascal Obry / &nbsp;Magny Les Hameaux (78)<br class=3D""><br =
class=3D""> &nbsp;The best way to travel is by means of imagination<br =
class=3D""><br class=3D""> &nbsp;<a href=3D"http://www.obry.net" =
class=3D"">http://www.obry.net</a><br class=3D""><br class=3D""> =
&nbsp;gpg --keyserver <a href=3D"http://keys.gnupg.net" =
class=3D"">keys.gnupg.net</a> --recv-key F949BD3B<br =
class=3D""></div></div></blockquote></div><br class=3D""><div class=3D"">
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
<br class=3D""></div></body></html>=

--Boundary_(ID_1WT/EarGTexkyHRhnWFPTQ)--
