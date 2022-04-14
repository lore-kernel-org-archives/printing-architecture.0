Return-Path: <markosjal@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:reply-to:from:date:message-id
 :subject:to; bh=77AoSx5I63JLx4/Ys7bJSspL0icqyypeDxteI/RDmHU=;
 b=h9Sr0pYUEkgpqbEh6le219rx+iUobQw/zFehI29bxSQrsbA4UsmrCy3KHJc0YOBP7U
 ATVwQ14lS12Uu7aNFmwKNooTx9bog8WdOTfiitB5BVlTcR+3PAFpY0vpMDydtblwsjfd
 5QlVD112EQXbWA8dZYuj+ke+b62IRn3uD3yO+Xdn8+cb6VZA3p4b+1N9pkfLfTYqkmFz
 BWZqTUUPSHeZzX+O4P5JNEerQN48m0Ihvanh8VzekkMGmNxp/CCDULBZHrzqzrN9XOK4
 k9drDCrrhNW/YxGqaT46UPrejRolNAQ8xW/dAa77kfrZfUdhIZaOcf5/+LJOmmzI7x10
 3DSw==
MIME-Version: 1.0
References: <bdb5727d-1aee-de03-4ba3-5f4cdb1d9ec3@tnonline.net>
 <CAK-1bsoup4aNhk3U6NtDg0xVbcBWMVFP2+q-tAOaphb_V2K2iw@mail.gmail.com>
In-Reply-To: <CAK-1bsoup4aNhk3U6NtDg0xVbcBWMVFP2+q-tAOaphb_V2K2iw@mail.gmail.com>
Reply-To: markosjal@gmail.com
From: Mark Dm <markosjal@gmail.com>
Date: Wed, 13 Apr 2022 22:24:05 -0700
Message-ID: <CAK-1bsrJSsK_U_eOAHjSD6k7y5cMnOnr3_gX3rXARPhLzWENdQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary="0000000000005ef6a205dc968122"
Subject: [Printing-architecture] Fwd: What windows driver to use with a CUPS
 IPP server?
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

--0000000000005ef6a205dc968122
Content-Type: text/plain; charset="UTF-8"

---------- Forwarded message ---------
From: Mark Dm <markosjal@gmail.com>
Date: Wed, Apr 13, 2022 at 10:22 PM
Subject: Re: [Printing-architecture] What windows driver to use with a CUPS
IPP server?
To: Forza <forza@tnonline.net>


I think My WIndows 10 had a Generic "IPP Everywhere" driver installed

On Wed, Apr 13, 2022 at 1:32 PM Forza <forza@tnonline.net> wrote:

> Hello,
>
>
> I have a Ubuntu Server 21.10 with CUPS 2.3.3o installed. I've set up to
> the printers with either socket://printer:9100 or ipp://printer and
> enabled sharing on each queue. This exposes each CUPS queue as an IPP
> printer to all clients.
>
> Now my problem is to determine what driver should be used in Windows.
>
> A little background:
>
> We have several Windows clients ranging from WinXP to Win10 that are
> printing on about a hundred HP printers (LaserJet and PageWide).
> Currently these machines print through a Windows Printer server, but it
> is getting more and more difficult to properly support older clients
> with the HP universal printer drivers. Also from security perspective we
> need to isolate older clients on separate quite restrictive networks and
> generally not enable SMB/Samba access.
>
> There is a built-in Windows driver called "MS Publisher Imagesetter"
> that works pretty well, but it lacks most options such as selecting
> colour/greyscale or duplex output, as well as exposing proper printer
> margins and scaling to the applications.
>
> The CUPS server is not on the same broadcast domain as the clients and
> DNS-SD and similar can not be used. This means that Windows clients
> cannot automatically detect and setup WSD or IPP queues from CUPS.
>
> Someone on IRC said I should use the native HP drivers, but this seems
> wrong to me;
> * First there are no updated drivers for older clients
> * Isn't the idea of CUPS as a printer spooler to separate the client
> from the printer so that we can use classes etc to direct output without
> the clients knowing?
>
> I'd be grateful for any suggestions and insights.
>
>
> Forza
>
>
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>

--0000000000005ef6a205dc968122
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">---------- Forwarded message ---------<br>From: <strong cla=
ss=3D"gmail_sendername" dir=3D"auto">Mark Dm</strong> <span dir=3D"auto">&l=
t;<a href=3D"mailto:markosjal@gmail.com">markosjal@gmail.com</a>&gt;</span>=
<br>Date: Wed, Apr 13, 2022 at 10:22 PM<br>Subject: Re: [Printing-architect=
ure] What windows driver to use with a CUPS IPP server?<br>To: Forza &lt;<a=
 href=3D"mailto:forza@tnonline.net">forza@tnonline.net</a>&gt;<br></div><br=
><br><div dir=3D"ltr">I think My WIndows 10 had a Generic &quot;IPP Everywh=
ere&quot; driver installed=C2=A0</div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Wed, Apr 13, 2022 at 1:32 PM Forza &lt;<=
a href=3D"mailto:forza@tnonline.net" target=3D"_blank">forza@tnonline.net</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;border-left-c=
olor:rgb(204,204,204);padding-left:1ex">Hello,<br>
<br>
<br>
I have a Ubuntu Server 21.10 with CUPS 2.3.3o installed. I&#39;ve set up to=
 <br>
the printers with either socket://printer:9100 or ipp://printer and <br>
enabled sharing on each queue. This exposes each CUPS queue as an IPP <br>
printer to all clients.<br>
<br>
Now my problem is to determine what driver should be used in Windows.<br>
<br>
A little background:<br>
<br>
We have several Windows clients ranging from WinXP to Win10 that are <br>
printing on about a hundred HP printers (LaserJet and PageWide). <br>
Currently these machines print through a Windows Printer server, but it <br=
>
is getting more and more difficult to properly support older clients <br>
with the HP universal printer drivers. Also from security perspective we <b=
r>
need to isolate older clients on separate quite restrictive networks and <b=
r>
generally not enable SMB/Samba access.<br>
<br>
There is a built-in Windows driver called &quot;MS Publisher Imagesetter&qu=
ot; <br>
that works pretty well, but it lacks most options such as selecting <br>
colour/greyscale or duplex output, as well as exposing proper printer <br>
margins and scaling to the applications.<br>
<br>
The CUPS server is not on the same broadcast domain as the clients and <br>
DNS-SD and similar can not be used. This means that Windows clients <br>
cannot automatically detect and setup WSD or IPP queues from CUPS.<br>
<br>
Someone on IRC said I should use the native HP drivers, but this seems <br>
wrong to me;<br>
* First there are no updated drivers for older clients<br>
* Isn&#39;t the idea of CUPS as a printer spooler to separate the client <b=
r>
from the printer so that we can use classes etc to direct output without <b=
r>
the clients knowing?<br>
<br>
I&#39;d be grateful for any suggestions and insights.<br>
<br>
<br>
Forza<br>
<br>
<br>
_______________________________________________<br>
Printing-architecture mailing list<br>
<a href=3D"mailto:Printing-architecture@lists.linux-foundation.org" target=
=3D"_blank">Printing-architecture@lists.linux-foundation.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/printing-arch=
itecture" rel=3D"noreferrer" target=3D"_blank">https://lists.linuxfoundatio=
n.org/mailman/listinfo/printing-architecture</a><br>
</blockquote></div>
</div></div>

--0000000000005ef6a205dc968122--
