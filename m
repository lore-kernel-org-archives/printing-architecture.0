Return-Path: <skau@chromium.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=TxbejrpU3uMZDGU7aYqF8/+sthAwFixE7TqevKl0K4o=;
	b=KQp+AZwwalN/1SF3kf4KBHg3HvAgorru7XCnuOHVyv70n4kDn0rJuQmYSkBZ+fXaGT
	Szuj/X8rXah7pq9yD8zL1vv8l01wAM8Xvc/9joUCV3DddzugUijR0dgPb2jxqE/FRaI/
	QuKI6F/L6IpjaLLh1OLkQ/pQwFam6rviqXsL4=
MIME-Version: 1.0
References: <eba4eae4-3aba-42ad-5188-12c57dd3dad9@gmail.com>
	<CAHKJWbDZqkmh2OPVGaTKLc8tugvNTJkf48CONwYJ2-A+cBuziA@mail.gmail.com>
	<9A0567F2-1A3A-424C-A4DC-AE013EFF4B4D@apple.com>
In-Reply-To: <9A0567F2-1A3A-424C-A4DC-AE013EFF4B4D@apple.com>
From: Sean Kau <skau@chromium.org>
Date: Fri, 30 Nov 2018 17:52:24 -0800
Message-ID: <CAHKJWbBRFSX3DVKWvd3Y9dZSd7u=yGn1e76NWj24qy=zRLfQ-g@mail.gmail.com>
Content-Type: multipart/alternative; boundary="0000000000007e8771057bec2bfb"
Subject: Re: [Printing-architecture] IPP-over-USB and Printer Applications:
 DNS-SD-advertise localhost:PORT a security problem?
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@apple.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, David Valleau <valleau@chromium.org>, Till Kempeter <till.kamppeter@gmail.com>

--0000000000007e8771057bec2bfb
Content-Type: text/plain; charset="UTF-8"

I think that using cupsd as the gateway to all Printer Applications
(including IPPUSB) is the best approach.  However, I would like cupsd to be
the only application that can communicate with Printer Applications.  It is
also convenient if discovery continues to happen using cupsEnumDests and
the advertisement protocol shouldn't be terribly important to client
applications.

We could perform discovery over a domain socket, even continuing to use
DNS-SD if we register the Printer Applications with CUPS.  We could still
have ephemeral printers in this case, as CUPS could rediscover the printer
but would need some knowledge of which Printer Application is supposed to
handle the request.  Since we can only map one uri per domain socket, this
would be problematic.  So we would need a dynamic allocation scheme which
is potentially complicated.  However, would it be possible to host multiple
printers on the same URI distinguishing with some other attribute?
Possibly printer-uuid?  IPP System service specifies a printer-id attribute
that can identify printers at a given endpoint.  As far as I can tell, the
primary advantage to using TCP over localhost is the presence of port
numbers.

Sean

On Mon, Nov 26, 2018 at 5:47 AM Michael Sweet <msweet@apple.com> wrote:

> Sean,
>
> The model used by the current release of CUPS is that applications
> discover printers via DNS-SD and then ask cupsd to communicate with the
> printer on localhost - we avoid direct network access whenever possible
> since other OS's (macOS in particular) use application sandboxing and
> "entitlements" to limit what an application can do, including creating
> arbitrary network connections.
>
> To do the same thing with domain sockets, we'd need to invent yet another
> backend and discovery mechanism with a dynamic domain socket allocation
> scheme, have each application (through libcups) communicate with the
> printer and create a (permanent) print queue with a generated PPD, and then
> maintain that through the major CUPS architectural changes that are to come.
>
> I'm not sure if any of this helps you on ChromeOS at all, but personally I
> think that using cupsd as the gateway to the IPPUSB printer is the better
> long-term approach (and we'd welcome any bug reports/pull requests if you
> find instances of the CUPS API talking to a printer directly without the
> application opening an explicit connection to it...)
>
>
> > On Nov 21, 2018, at 5:41 PM, Sean Kau <skau@chromium.org> wrote:
> >
> > Thanks Till.
> >
> > To clarify, we don't consider advertisement on localhost to be a
> security problem.  But in the spirit of reducing our attack surface we
> prefer to moderate communication between processes.  Because of this, we
> prefer not to communicate over the loopback interface.  Instead, we
> currently use Unix Domain Sockets since we can control access to those
> using standard user and group permissions.
> >
> > Sean Kau
> >
> > On Wed, Nov 21, 2018 at 2:26 PM Till Kamppeter <till.kamppeter@gmail.com>
> wrote:
> > Hi,
> >
> > I talked with Sean Kau and David Valleau from Chrome OS (CCed) about the
> > implementation of IPP-over-USB with ippusbxd in Chrome OS. Sean told
> >
> > ----------
> > Using DNS-SD on localhost doesn't fit our security model as we don't
> > want to allow arbitrary processes to talk to each other.
> > ----------
> >
> > This would mean that we cannot implement IPP-over-USB and Printer
> > Applications as innitially thought out. They are supposed to make the
> > printer available as
> >
> > ipp://localhost:PORT/ipp/print
> >
> > with PORT varying so that there can be several devices connected to the
> > same machine (and CUPS running in addition). For CUPS (or the printing
> > system in general) automatically discovering the devices and creating
> > print queues the Printer Applications (and ippusbxd) are supposed to
> > advertise themselves via DNS-SD.
> >
> > This would mean (local-only) advertising of localhost via DNS-SD, which
> > Sean considers a security problem. Is this actually a security problem?
> > If so, how should Printer Applications (and ippusbxd) actually work?
> >
> >     Till
> > _______________________________________________
> > Printing-architecture mailing list
> > Printing-architecture@lists.linux-foundation.org
> > https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>
> _________________________________________________________
> Michael Sweet, Senior Printing System Engineer
>
>

-- 
Sean Kau

--0000000000007e8771057bec2bfb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I think that using cupsd as the gateway to all Printer App=
lications (including IPPUSB) is the best approach.=C2=A0 However, I would l=
ike cupsd to be the only application that can communicate with Printer Appl=
ications.=C2=A0 It is also convenient if discovery continues to happen usin=
g cupsEnumDests and the advertisement protocol shouldn&#39;t be terribly im=
portant to client applications.<div><br></div><div>We could perform discove=
ry over a domain socket, even continuing to use DNS-SD if we register the P=
rinter Applications with CUPS.=C2=A0 We could still have ephemeral printers=
 in this case, as CUPS could rediscover the printer but would need some kno=
wledge of which Printer Application is supposed to handle the request.=C2=
=A0 Since we can only map one uri per domain socket, this would be problema=
tic.=C2=A0 So we would need a dynamic allocation scheme which is potentiall=
y complicated.=C2=A0 However, would it be possible to host multiple printer=
s on the same URI distinguishing with some other attribute?=C2=A0 Possibly =
printer-uuid?=C2=A0 IPP System service specifies a printer-id attribute tha=
t can identify printers at a given endpoint.=C2=A0 As far as I can tell, th=
e primary advantage to using TCP over localhost is the presence of port num=
bers.</div><div><br></div><div>Sean</div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr">On Mon, Nov 26, 2018 at 5:47 AM Michael Sweet &lt;<a hr=
ef=3D"mailto:msweet@apple.com">msweet@apple.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex">Sean,<br>
<br>
The model used by the current release of CUPS is that applications discover=
 printers via DNS-SD and then ask cupsd to communicate with the printer on =
localhost - we avoid direct network access whenever possible since other OS=
&#39;s (macOS in particular) use application sandboxing and &quot;entitleme=
nts&quot; to limit what an application can do, including creating arbitrary=
 network connections.<br>
<br>
To do the same thing with domain sockets, we&#39;d need to invent yet anoth=
er backend and discovery mechanism with a dynamic domain socket allocation =
scheme, have each application (through libcups) communicate with the printe=
r and create a (permanent) print queue with a generated PPD, and then maint=
ain that through the major CUPS architectural changes that are to come.<br>
<br>
I&#39;m not sure if any of this helps you on ChromeOS at all, but personall=
y I think that using cupsd as the gateway to the IPPUSB printer is the bett=
er long-term approach (and we&#39;d welcome any bug reports/pull requests i=
f you find instances of the CUPS API talking to a printer directly without =
the application opening an explicit connection to it...)<br>
<br>
<br>
&gt; On Nov 21, 2018, at 5:41 PM, Sean Kau &lt;<a href=3D"mailto:skau@chrom=
ium.org" target=3D"_blank">skau@chromium.org</a>&gt; wrote:<br>
&gt; <br>
&gt; Thanks Till.<br>
&gt; <br>
&gt; To clarify, we don&#39;t consider advertisement on localhost to be a s=
ecurity problem.=C2=A0 But in the spirit of reducing our attack surface we =
prefer to moderate communication between processes.=C2=A0 Because of this, =
we prefer not to communicate over the loopback interface.=C2=A0 Instead, we=
 currently use Unix Domain Sockets since we can control access to those usi=
ng standard user and group permissions.<br>
&gt; <br>
&gt; Sean Kau<br>
&gt; <br>
&gt; On Wed, Nov 21, 2018 at 2:26 PM Till Kamppeter &lt;<a href=3D"mailto:t=
ill.kamppeter@gmail.com" target=3D"_blank">till.kamppeter@gmail.com</a>&gt;=
 wrote:<br>
&gt; Hi,<br>
&gt; <br>
&gt; I talked with Sean Kau and David Valleau from Chrome OS (CCed) about t=
he <br>
&gt; implementation of IPP-over-USB with ippusbxd in Chrome OS. Sean told<b=
r>
&gt; <br>
&gt; ----------<br>
&gt; Using DNS-SD on localhost doesn&#39;t fit our security model as we don=
&#39;t <br>
&gt; want to allow arbitrary processes to talk to each other.<br>
&gt; ----------<br>
&gt; <br>
&gt; This would mean that we cannot implement IPP-over-USB and Printer <br>
&gt; Applications as innitially thought out. They are supposed to make the =
<br>
&gt; printer available as<br>
&gt; <br>
&gt; ipp://localhost:PORT/ipp/print<br>
&gt; <br>
&gt; with PORT varying so that there can be several devices connected to th=
e <br>
&gt; same machine (and CUPS running in addition). For CUPS (or the printing=
 <br>
&gt; system in general) automatically discovering the devices and creating =
<br>
&gt; print queues the Printer Applications (and ippusbxd) are supposed to <=
br>
&gt; advertise themselves via DNS-SD.<br>
&gt; <br>
&gt; This would mean (local-only) advertising of localhost via DNS-SD, whic=
h <br>
&gt; Sean considers a security problem. Is this actually a security problem=
? <br>
&gt; If so, how should Printer Applications (and ippusbxd) actually work?<b=
r>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Till<br>
&gt; _______________________________________________<br>
&gt; Printing-architecture mailing list<br>
&gt; <a href=3D"mailto:Printing-architecture@lists.linux-foundation.org" ta=
rget=3D"_blank">Printing-architecture@lists.linux-foundation.org</a><br>
&gt; <a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/printing=
-architecture" rel=3D"noreferrer" target=3D"_blank">https://lists.linuxfoun=
dation.org/mailman/listinfo/printing-architecture</a><br>
<br>
_________________________________________________________<br>
Michael Sweet, Senior Printing System Engineer<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"l=
tr">Sean Kau</div></div>

--0000000000007e8771057bec2bfb--
