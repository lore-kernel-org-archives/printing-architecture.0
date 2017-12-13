Return-Path: <msweet@apple.com>
DKIM-Signature: v=1; a=rsa-sha256; d=apple.com; s=mailout2048s;
	c=relaxed/simple; q=dns/txt; i=@apple.com; t=1513190293;
	h=From:Sender:Reply-To:Subject:Date:Message-id:To:Cc:MIME-version:Content-type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-reply-to:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=9qkXlNELeVJoTNxkwDLh+Mx6GqW9giCerA1L7wktoE0=;
	b=k8aW/90H6fqJ2L/etwXPvkFeD4blbj8Z7adzAZgGyCB3lJNyp988gVoUSgQ5xMae
	yZHZ+7SkTO2XlJ+G6AzqDXupdbqPS5TREcvmCGwssezY0Sl5FG2btr8uVUjNnUhL
	4sZh43Y80XelJLQFAp3LFzOZIO98nRrp+B/XLy249MbtUdrBxA5vVH2QXxqDKMzW
	Yw3snNr3bYbTHcaUvGrd30JnslHD/TmIvId3cO6XOnyyPIrUySoENZXZuGOU/IjC
	61J+jVTb+2zCtqNriA84E5QFPzcUFVDj7YHuHVbP42FUYbuK6rgm0m8xe99WWmLt
	rRt44vz+XjeMli9L3fMiJg==;
MIME-version: 1.0
Content-type: multipart/alternative;
	boundary="Boundary_(ID_yeTx2hjpM8soSxCa0S/C3Q)"
Sender: msweet@apple.com
From: Michael Sweet <msweet@apple.com>
In-reply-to: <1513189960.2462.29.camel@obry.net>
Date: Wed, 13 Dec 2017 13:38:09 -0500
Message-id: <7C9470F2-1453-469F-B71E-3B7499A44CED@apple.com>
References: <1404294158.28244.1.camel@pascal.home.net>
	<1513184881.2462.20.camel@obry.net>
	<E8206D91-E58D-426A-A666-2186AD8C3047@apple.com>
	<1513189960.2462.29.camel@obry.net>
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


--Boundary_(ID_yeTx2hjpM8soSxCa0S/C3Q)
Content-type: text/plain; CHARSET=US-ASCII
Content-transfer-encoding: 7BIT

cupsLocalizeDestOption will give you the localized string, if the printer supplies one.

(but prior to CUPS 2.3 you need to connect to the device/printer to get the localized string for vendor-specific names...)


> On Dec 13, 2017, at 1:32 PM, Pascal Obry <pascal@obry.net> wrote:
> 
> Hello Michael,
> 
> Thanks for the quick response!
> 
>> You can also
>> look for the supported "media-type" values with the
>> cupsDestFindSupported function, in order to specify it separately.
> 
> That's why I was looking for :)
> 
> Still a little issue. With the following code:
> 
>        ipp_attribute_t *attr = cupsFindDestSupported(hcon, dest, info, "media-type");
> 
>        if (attr)
>        {
>          for (int k=0; k<ippGetCount(attr); k++)
>          {
>            printf ("   %s\n", ippGetString(attr, k, NULL));
> 
> I can list the supported paper, but as code:
> 
>   stationery
>   epson-inkjet-paper--5
>   epson-matte-heavy-archival--5
>   fineart-paper-smooth--5
>   epson-photo-glossy--5
>   epson-premium-glossy-luster--5
>   epson-proof-satin--5
>   transparency
>   kodak-premium--5
>   ilford-omnijet--5
>   fuji-premium-photo--5
>   tetenal-photo-quality-glossy-matte--5
>   custom-1002--5
> 
> The last one is in fact "Canson Infinity Baryta". How can I retrieve
> this human readable name?
> 
> Thanks,
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


--Boundary_(ID_yeTx2hjpM8soSxCa0S/C3Q)
Content-type: text/html; CHARSET=US-ASCII
Content-transfer-encoding: quoted-printable

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D"">cupsLocalizeDestOption will give you the localized string, if =
the printer supplies one.<div class=3D""><br class=3D""></div><div =
class=3D"">(but prior to CUPS 2.3 you need to connect to the =
device/printer to get the localized string for vendor-specific =
names...)</div><div class=3D""><br class=3D""><div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D"">On Dec =
13, 2017, at 1:32 PM, Pascal Obry &lt;<a href=3D"mailto:pascal@obry.net" =
class=3D"">pascal@obry.net</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div class=3D"">Hello =
Michael,<br class=3D""><br class=3D"">Thanks for the quick response!<br =
class=3D""><br class=3D""><blockquote type=3D"cite" class=3D"">You can =
also<br class=3D"">look for the supported "media-type" values with =
the<br class=3D"">cupsDestFindSupported function, in order to specify it =
separately.<br class=3D""></blockquote><br class=3D"">That's why I was =
looking for :)<br class=3D""><br class=3D"">Still a little issue. With =
the following code:<br class=3D""><br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ipp_attribute_t *attr =3D =
cupsFindDestSupported(hcon, dest, info, "media-type");<br class=3D""><br =
class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (attr)<br =
class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for (int k=3D0; =
k&lt;ippGetCount(attr); k++)<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;printf =
(" &nbsp;&nbsp;%s\n", ippGetString(attr, k, NULL));<br class=3D""><br =
class=3D"">I can list the supported paper, but as code:<br class=3D""><br =
class=3D""> &nbsp;&nbsp;stationery<br class=3D""> =
&nbsp;&nbsp;epson-inkjet-paper--5<br class=3D""> =
&nbsp;&nbsp;epson-matte-heavy-archival--5<br class=3D""> =
&nbsp;&nbsp;fineart-paper-smooth--5<br class=3D""> =
&nbsp;&nbsp;epson-photo-glossy--5<br class=3D""> =
&nbsp;&nbsp;epson-premium-glossy-luster--5<br class=3D""> =
&nbsp;&nbsp;epson-proof-satin--5<br class=3D""> =
&nbsp;&nbsp;transparency<br class=3D""> &nbsp;&nbsp;kodak-premium--5<br =
class=3D""> &nbsp;&nbsp;ilford-omnijet--5<br class=3D""> =
&nbsp;&nbsp;fuji-premium-photo--5<br class=3D""> =
&nbsp;&nbsp;tetenal-photo-quality-glossy-matte--5<br class=3D""> =
&nbsp;&nbsp;custom-1002--5<br class=3D""><br class=3D"">The last one is =
in fact "Canson Infinity Baryta". How can I retrieve<br class=3D"">this =
human readable name?<br class=3D""><br class=3D"">Thanks,<br =
class=3D""><br class=3D"">-- <br class=3D""> &nbsp;Pascal Obry / =
&nbsp;Magny Les Hameaux (78)<br class=3D""><br class=3D""> &nbsp;The =
best way to travel is by means of imagination<br class=3D""><br =
class=3D""> &nbsp;<a href=3D"http://www.obry.net" =
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

--Boundary_(ID_yeTx2hjpM8soSxCa0S/C3Q)--
