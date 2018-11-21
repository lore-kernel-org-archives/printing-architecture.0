Return-Path: <skau@chromium.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=hwoXIHTDbO6VxoPvX3fL5RsIWnDjFXq8VTm0oKm04Xw=;
	b=iF34A3i5hEYhZWpCAZ1rTN/fTgIebO/7/LfuEkcFKh2zPPFamMAB0p7NBsMprYkCfa
	iNCgkg5b/HtJZQgsPLzR8A5AFUi70l1qe6i/O95hi8YpksevybsszAf2uYlavjH/Au52
	iRGBRfvMnZw7RqNzG5pBbo/DclLzD9YZl1kQM=
MIME-Version: 1.0
References: <eba4eae4-3aba-42ad-5188-12c57dd3dad9@gmail.com>
In-Reply-To: <eba4eae4-3aba-42ad-5188-12c57dd3dad9@gmail.com>
From: Sean Kau <skau@chromium.org>
Date: Wed, 21 Nov 2018 14:41:40 -0800
Message-ID: <CAHKJWbDZqkmh2OPVGaTKLc8tugvNTJkf48CONwYJ2-A+cBuziA@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000c9c800057b34744d"
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
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, David Valleau <valleau@chromium.org>

--000000000000c9c800057b34744d
Content-Type: text/plain; charset="UTF-8"

Thanks Till.

To clarify, we don't consider advertisement on localhost to be a security
problem.  But in the spirit of reducing our attack surface we prefer to
moderate communication between processes.  Because of this, we prefer not
to communicate over the loopback interface.  Instead, we currently use Unix
Domain Sockets since we can control access to those using standard user and
group permissions.

Sean Kau

On Wed, Nov 21, 2018 at 2:26 PM Till Kamppeter <till.kamppeter@gmail.com>
wrote:

> Hi,
>
> I talked with Sean Kau and David Valleau from Chrome OS (CCed) about the
> implementation of IPP-over-USB with ippusbxd in Chrome OS. Sean told
>
> ----------
> Using DNS-SD on localhost doesn't fit our security model as we don't
> want to allow arbitrary processes to talk to each other.
> ----------
>
> This would mean that we cannot implement IPP-over-USB and Printer
> Applications as innitially thought out. They are supposed to make the
> printer available as
>
> ipp://localhost:PORT/ipp/print
>
> with PORT varying so that there can be several devices connected to the
> same machine (and CUPS running in addition). For CUPS (or the printing
> system in general) automatically discovering the devices and creating
> print queues the Printer Applications (and ippusbxd) are supposed to
> advertise themselves via DNS-SD.
>
> This would mean (local-only) advertising of localhost via DNS-SD, which
> Sean considers a security problem. Is this actually a security problem?
> If so, how should Printer Applications (and ippusbxd) actually work?
>
>     Till
>

--000000000000c9c800057b34744d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Till.<div><br></div><div>To clarify, we don&#39;t c=
onsider advertisement on localhost to be a security problem.=C2=A0 But in t=
he spirit of reducing our attack surface we prefer to moderate communicatio=
n between processes.=C2=A0 Because of this, we prefer not to communicate ov=
er the loopback interface.=C2=A0 Instead, we currently use Unix Domain Sock=
ets since we can control access to those using standard user and group perm=
issions.<div><br></div><div>Sean Kau</div></div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr">On Wed, Nov 21, 2018 at 2:26 PM Till Kamppeter &=
lt;<a href=3D"mailto:till.kamppeter@gmail.com">till.kamppeter@gmail.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi,<br>
<br>
I talked with Sean Kau and David Valleau from Chrome OS (CCed) about the <b=
r>
implementation of IPP-over-USB with ippusbxd in Chrome OS. Sean told<br>
<br>
----------<br>
Using DNS-SD on localhost doesn&#39;t fit our security model as we don&#39;=
t <br>
want to allow arbitrary processes to talk to each other.<br>
----------<br>
<br>
This would mean that we cannot implement IPP-over-USB and Printer <br>
Applications as innitially thought out. They are supposed to make the <br>
printer available as<br>
<br>
ipp://localhost:PORT/ipp/print<br>
<br>
with PORT varying so that there can be several devices connected to the <br=
>
same machine (and CUPS running in addition). For CUPS (or the printing <br>
system in general) automatically discovering the devices and creating <br>
print queues the Printer Applications (and ippusbxd) are supposed to <br>
advertise themselves via DNS-SD.<br>
<br>
This would mean (local-only) advertising of localhost via DNS-SD, which <br=
>
Sean considers a security problem. Is this actually a security problem? <br=
>
If so, how should Printer Applications (and ippusbxd) actually work?<br>
<br>
=C2=A0 =C2=A0 Till<br>
</blockquote></div>

--000000000000c9c800057b34744d--
