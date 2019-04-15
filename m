Return-Path: <msweet@apple.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apple.com;
	h=mime-version :
	content-type : sender : subject : from : in-reply-to : date : cc :
	message-id : references : to; s=20180706;
	bh=2tjWZJk5HmPwPfv6NbuOXx/d8UGT85F9MwwVxYDvkZ8=;
	b=MCnm7MN0gt5bbXTF5wypRqcUcTJULwS48ts4SfQucmK5R9R5QAhXtIQ96FEjpx7yZiOf
	Evihs1idiHehNzv1XFse/Iy/CttxNoIpKAsbx9rEd/UJ6wox/IOKcKOb4xlCLY0jA/6X
	yKQQsLeOuqsmZiwbx2aF3vWmEtK/ZK3PRWJW/WUyVE+r289kzSIHwOzOHnw1gYR/+jJy
	RvGrxiyZGj4iU8YrKtypxLBjpG2Yj4FaSjdVa/EA1ZY9qJrZCJRqiM2kaXPsamSyCHa/
	t7k5KEWqQcH0uxqZ5X6y+TqSWdqRzuTPXNjE1GFTN50Q19iFBf+Ic+HvuCXJ1jn9y+Ok
	5A== 
MIME-version: 1.0
Content-type: multipart/alternative;
	boundary="Boundary_(ID_Mzrnk4r+hwOpTG+hC40oVA)"
Sender: msweet@apple.com
From: Michael Sweet <msweet@apple.com>
In-reply-to: <CABmmNJNjz6O9wByycyWL2Od3URSxxwHLkmFyYqOtdr8vzG0-vA@mail.gmail.com>
Date: Mon, 15 Apr 2019 12:25:08 -0400
Message-id: <0BDE9AA5-CB4C-4419-A125-1B9B03CDA6E4@apple.com>
References: <CABmmNJNjz6O9wByycyWL2Od3URSxxwHLkmFyYqOtdr8vzG0-vA@mail.gmail.com>
Subject: Re: [Printing-architecture] Get all the job attributes
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Deepak Patankar <patankardeepak04@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>


--Boundary_(ID_Mzrnk4r+hwOpTG+hC40oVA)
Content-type: text/plain; CHARSET=US-ASCII
Content-transfer-encoding: 7BIT

Deepak,

> On Apr 5, 2019, at 4:31 AM, Deepak Patankar <patankardeepak04@gmail.com> wrote:
> ...
> 1. The media-col attribute is not returned in the request. How I can change the request to get media-col ?

It will only be returned if it was sent in the original print request.  Currently we do not synthesize IPP attributes when the Job is created, just when it gets sent to an IPP printer.

If you'd like us to do so, please file a bug at:

    https://github.com/apple/cups/issues <https://github.com/apple/cups/issues>

Thanks!

> 2. The paper type is given as "MediaType Envelope", How I can get the media-type from the response ? I tried: 
>            if ((attr = ippFindAttribute(response, "MediaType", 
>         IPP_TAG_KEYWORD)) != NULL && ippGetCount(attr)>0){

MediaType (like all PPD options sent as attributes) will have the IPP_TAG_NAME syntax.

>              if ((attr = ippFindAttribute(response, "media-type", 
>         IPP_TAG_KEYWORD)) != NULL && ippGetCount(attr)>0){

while "media-type" (the IPP attribute) can be IPP_TAG_NAME or IPP_TAG_KEYWORD, so here I'd usually look for IPP_TAG_ZERO and check for a NULL string value (which would indicate something that is not a name or keyword).

_________________________________________________________
Michael Sweet, Senior Printing System Engineer


--Boundary_(ID_Mzrnk4r+hwOpTG+hC40oVA)
Content-type: text/html; CHARSET=US-ASCII
Content-transfer-encoding: quoted-printable

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D"">Deepak,<br class=3D""><div><br class=3D""><blockquote =
type=3D"cite" class=3D""><div class=3D"">On Apr 5, 2019, at 4:31 AM, =
Deepak Patankar &lt;<a href=3D"mailto:patankardeepak04@gmail.com" =
class=3D"">patankardeepak04@gmail.com</a>&gt; wrote:</div><div =
class=3D""><div dir=3D"ltr" class=3D""><div class=3D""><div =
class=3D""><div class=3D"">...</div><div class=3D"">1. The media-col =
attribute is not returned in the request. How I can change the request =
to get media-col ?</div></div></div></div></div></blockquote><div><br =
class=3D""></div>It will only be returned if it was sent in the original =
print request. &nbsp;Currently we do not synthesize IPP attributes when =
the Job is created, just when it gets sent to an IPP =
printer.</div><div><br class=3D""></div><div>If you'd like us to do so, =
please file a bug at:</div><div><br class=3D""></div><div>&nbsp; &nbsp; =
<a href=3D"https://github.com/apple/cups/issues" =
class=3D"">https://github.com/apple/cups/issues</a></div><div><br =
class=3D""></div><div>Thanks!</div><div><br =
class=3D""></div><div><blockquote type=3D"cite" class=3D""><div =
class=3D""><div dir=3D"ltr" class=3D""><div class=3D""><div =
class=3D""><div class=3D"">2. The paper type is given as "MediaType =
Envelope", How I can get the media-type from the response ? I tried: <br =
class=3D""></div><div class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
&nbsp;&nbsp;&nbsp; if ((attr =3D ippFindAttribute(response, "MediaType", =
<br class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
IPP_TAG_KEYWORD)) !=3D NULL &amp;&amp; ippGetCount(attr)&gt;0){<br =
class=3D""></div></div></div></div></div></blockquote><div><br =
class=3D""></div>MediaType (like all PPD options sent as attributes) =
will have the IPP_TAG_NAME syntax.</div><div><br class=3D""><blockquote =
type=3D"cite" class=3D""><div class=3D""><div dir=3D"ltr" class=3D""><div =
class=3D""><div class=3D""><div =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
&nbsp;&nbsp;&nbsp; if ((attr =3D ippFindAttribute(response, =
"media-type", <br class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
IPP_TAG_KEYWORD)) !=3D NULL &amp;&amp; =
ippGetCount(attr)&gt;0){</div></div></div></div></div></blockquote><div><b=
r class=3D""></div>while "media-type" (the IPP attribute) can be =
IPP_TAG_NAME or IPP_TAG_KEYWORD, so here I'd usually look for =
IPP_TAG_ZERO and check for a NULL string value (which would indicate =
something that is not a name or keyword).</div><div><br =
class=3D""></div><div class=3D"">
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

--Boundary_(ID_Mzrnk4r+hwOpTG+hC40oVA)--
