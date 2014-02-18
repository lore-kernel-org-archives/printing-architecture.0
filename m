Return-Path: <blueroofmusic@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:cc:content-type;
	bh=g6EVoEbuFMx+JmF+FMGwhhb5wVL6WNc37bu823TzRbY=;
	b=bhdyS1t8KaKORqzoFKoAGgjH1S+WfemvJeBQzqtdbMlu6MhOPeC5dT5n+mwk8Gnk6e
	5gPSUJMhnNzTZ4NnMnTOxzSKub9JBrIT2NGJtE8Dah+q1qi7oStkAFY6ZKvzOiqnAjrb
	uAqglnLjno9K9dLxy3e5+W5y+aNU1ZiGzpz1Wy1ahVt7xdANL8kKu6KCdpcPZW/P9cN2
	q29oXnHkehubi0BCvxea7Ujfhq5mcLg1ErTQ0Bg3P6Y0in8XmUhnUzvL9m3TiLcbpu2d
	rGbtq8+tNvZHf9CSPRtVm4L/NgznmI+XLreLBMEn1wSeXrPjGJXa5hr4u62Q55anZhox
	wfiw==
MIME-Version: 1.0
From: Ira McDonald <blueroofmusic@gmail.com>
Date: Tue, 18 Feb 2014 13:52:57 -0500
Message-ID: <CAN40gSsVN9bXYQqkewazZToBXn7v4icsJQbMpw0F=S+YZ40woA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=047d7b86c40608021104f2b2c94d
Subject: [Printing-architecture] How to add IPP over USB printer support to
	Linux?
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@apple.com>, "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Ira McDonald <blueroofmusic@gmail.com>
Cc: Till Kamppeter <till.kamppeter@gmail.com>, Jeff Licquia <jeff@licquia.org>

--047d7b86c40608021104f2b2c94d
Content-Type: text/plain; charset=ISO-8859-1

Hi,

After a discussion at today's Open Printing call, Till and Ira suggest that
we
should discuss what steps are necessary to add IPP over USB printer
support to Linux (see Mike's original reply below).

Please send your thoughts and design suggestions in this thread.

Cheers,
- Ira

On Tue, Feb 18, 2014 at 12:45 PM, Michael Sweet <msweet@apple.com> wrote:

> Ira,
>
> Currently there is no support for IPP USB under Linux.
>
> Conceptually it will be possible to support through a separate "proxy"
> daemon that arbitrates access over the USB interfaces provided by the
> printers via a local loopback port - this is what we do on OS X, but there
> remains some architecture work on Linux to wire it up and hide the
> corresponding printers in the standard USB backend.
>
>
> On Feb 18, 2014, at 12:17 PM, Ira McDonald <blueroofmusic@gmail.com>
> wrote:
>
> Hi Mike and Jeff,
>
> There is a recent USB-IF spec for IPP over USB:
>
> http://www.usb.org/developers/devclass_docs/IPP.zip
>
> Does this work in current Linux and CUPS?  Does it need
> (I presume) updates to the default USB driver?
>
> Cheers,
> - Ira
>
> Ira McDonald (Musician / Software Architect)
> Co-Chair - TCG Trusted Mobility Solutions WG
> Chair - Linux Foundation Open Printing WG
> Secretary - IEEE-ISTO Printer Working Group
> Co-Chair - IEEE-ISTO PWG Internet Printing Protocol WG
> IETF Designated Expert - IPP & Printer MIB
> Blue Roof Music / High North Inc
> http://sites.google.com/site/blueroofmusic
> http://sites.google.com/site/highnorthinc
> mailto: blueroofmusic@gmail.com
> Winter  579 Park Place  Saline, MI  48176  734-944-0094
> Summer  PO Box 221  Grand Marais, MI 49839  906-494-2434
>
>
>  _________________________________________________________
> Michael Sweet, Senior Printing System Engineer, PWG Chair
>
>

--047d7b86c40608021104f2b2c94d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,<br><br></div><div>After a discussion at today&#39=
;s Open Printing call, Till and Ira suggest that we<br>should discuss what =
steps are necessary to add IPP over USB printer <br>support to Linux (see M=
ike&#39;s original reply below).<br>

<br></div><div>Please send your thoughts and design suggestions in this thr=
ead.<br></div><div><br></div><div>Cheers,<br></div><div>- Ira<br><br></div>=
<div class=3D"gmail_extra"><div class=3D"gmail_quote">On Tue, Feb 18, 2014 =
at 12:45 PM, Michael Sweet <span dir=3D"ltr">&lt;<a href=3D"mailto:msweet@a=
pple.com" target=3D"_blank">msweet@apple.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div style=3D"word-wrap:break-word">Ira,<div=
><br></div><div>Currently there is no support for IPP USB under Linux.</div=
>
<div>
<br></div><div>Conceptually it will be possible to support through a separa=
te &quot;proxy&quot; daemon that arbitrates access over the USB interfaces =
provided by the printers via a local loopback port - this is what we do on =
OS X, but there remains some architecture work on Linux to wire it up and h=
ide the corresponding printers in the standard USB backend.</div>

<div><br></div><div><div><div class=3D"h5"><br><div><div>On Feb 18, 2014, a=
t 12:17 PM, Ira McDonald &lt;<a href=3D"mailto:blueroofmusic@gmail.com" tar=
get=3D"_blank">blueroofmusic@gmail.com</a>&gt; wrote:</div><blockquote type=
=3D"cite">

<div dir=3D"ltr"><div>Hi Mike and Jeff,<br><br></div><div>There is a recent=
 USB-IF spec for IPP over USB:<br><br><a href=3D"http://www.usb.org/develop=
ers/devclass_docs/IPP.zip" target=3D"_blank">http://www.usb.org/developers/=
devclass_docs/IPP.zip</a><br>



<br></div><div>Does this work in current Linux and CUPS?=A0 Does it need<br=
></div><div>(I presume) updates to the default USB driver?<br><br></div><di=
v>Cheers,<br></div><div>- Ira<br><br></div><div><div><div dir=3D"ltr">

Ira McDonald (Musician / Software Architect)<br>Co-Chair - TCG Trusted Mobi=
lity Solutions WG<br>Chair - Linux Foundation Open Printing WG<br>Secretary=
 - IEEE-ISTO Printer Working Group<br>Co-Chair - IEEE-ISTO PWG Internet Pri=
nting Protocol WG<br>



IETF Designated Expert - IPP &amp; Printer MIB<br>Blue Roof Music / High No=
rth Inc<br><a style=3D"color:rgb(51,51,255)" href=3D"http://sites.google.co=
m/site/blueroofmusic" target=3D"_blank">http://sites.google.com/site/bluero=
ofmusic</a><br>



<a style=3D"color:rgb(102,0,204)" href=3D"http://sites.google.com/site/high=
northinc" target=3D"_blank">http://sites.google.com/site/highnorthinc</a><b=
r>mailto: <a href=3D"mailto:blueroofmusic@gmail.com" target=3D"_blank">blue=
roofmusic@gmail.com</a><br>



Winter=A0 579 Park Place=A0 Saline, MI=A0 48176=A0 <a href=3D"tel:734-944-0=
094" value=3D"+17349440094" target=3D"_blank">734-944-0094</a><br>Summer=A0=
 PO Box 221=A0 Grand Marais, MI 49839=A0 <a href=3D"tel:906-494-2434" value=
=3D"+19064942434" target=3D"_blank">906-494-2434</a><br>

<br><div style=3D"display:inline"></div><div style=3D"display:inline"></div=
><div style=3D"display:inline"></div>

<div></div><div></div><div></div><div></div></div></div>
</div></div>
</blockquote></div><br></div></div><div>
<span style=3D"text-indent:0px;letter-spacing:normal;font-variant:normal;te=
xt-align:-webkit-auto;font-style:normal;font-weight:normal;line-height:norm=
al;border-collapse:separate;text-transform:none;white-space:normal;font-fam=
ily:&#39;Andale Mono&#39;;word-spacing:0px"><span style=3D"text-indent:0px;=
letter-spacing:normal;font-variant:normal;text-align:-webkit-auto;font-styl=
e:normal;font-weight:normal;line-height:normal;border-collapse:separate;tex=
t-transform:none;white-space:normal;font-family:&#39;Andale Mono&#39;;word-=
spacing:0px"><div style=3D"word-wrap:break-word">

_________________________________________________________<br>Michael Sweet,=
 Senior Printing System=A0Engineer, PWG Chair</div></span></span>
</div>
<br></div></div></blockquote></div><br></div></div>

--047d7b86c40608021104f2b2c94d--
