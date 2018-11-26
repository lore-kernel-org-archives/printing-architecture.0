Return-Path: <msweet@apple.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apple.com;
	h=mime-version :
	content-transfer-encoding : content-type : sender : subject : from :
	in-reply-to : date : cc : message-id : references : to; s=20180706;
	bh=eLP/XPQCYg0XPRP4kdkZ3nxMnLFkZO7EjKIFqTM1wK0=;
	b=HvTHb4+RdtAyCP2JNvoww4P2L0JbUw72HgCz5ZvsmYr3VYin1KnvBQjjMEe9XFzi303b
	zr0JqJ3BDGRpAg4ZV8pzaEzgSDsCeEjr5wuWGOlJo/Apo34eb3WbLOzkqP3MwtyBBtQo
	YJocXeNOZcIkXqD83GL9O7cEb4gCaKAFocf81YASRo5oylC0gUu9XFlv8hGH8Qu2Q5mJ
	rMb5K74Q1LQDckfjpLSvMiSEn2HAWZIe2EYpjRdi4cyr7OIu4YPGx8tv/b+5M6HNYgfM
	2OOo0L0gV1Hj2NkiCKhTXHOrY7ptd74rV9PFLnIxZrAcN67Y2dHG2w36XX2KLCJenRj3
	EQ== 
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
Sender: msweet@apple.com
From: Michael Sweet <msweet@apple.com>
In-reply-to: <CAHKJWbDZqkmh2OPVGaTKLc8tugvNTJkf48CONwYJ2-A+cBuziA@mail.gmail.com>
Date: Mon, 26 Nov 2018 08:47:25 -0500
Message-id: <9A0567F2-1A3A-424C-A4DC-AE013EFF4B4D@apple.com>
References: <eba4eae4-3aba-42ad-5188-12c57dd3dad9@gmail.com>
	<CAHKJWbDZqkmh2OPVGaTKLc8tugvNTJkf48CONwYJ2-A+cBuziA@mail.gmail.com>
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
To: Sean Kau <skau@chromium.org>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, David Valleau <valleau@chromium.org>, Till Kamppeter <till.kamppeter@gmail.com>

Sean,

The model used by the current release of CUPS is that applications discover printers via DNS-SD and then ask cupsd to communicate with the printer on localhost - we avoid direct network access whenever possible since other OS's (macOS in particular) use application sandboxing and "entitlements" to limit what an application can do, including creating arbitrary network connections.

To do the same thing with domain sockets, we'd need to invent yet another backend and discovery mechanism with a dynamic domain socket allocation scheme, have each application (through libcups) communicate with the printer and create a (permanent) print queue with a generated PPD, and then maintain that through the major CUPS architectural changes that are to come.

I'm not sure if any of this helps you on ChromeOS at all, but personally I think that using cupsd as the gateway to the IPPUSB printer is the better long-term approach (and we'd welcome any bug reports/pull requests if you find instances of the CUPS API talking to a printer directly without the application opening an explicit connection to it...)


> On Nov 21, 2018, at 5:41 PM, Sean Kau <skau@chromium.org> wrote:
> 
> Thanks Till.
> 
> To clarify, we don't consider advertisement on localhost to be a security problem.  But in the spirit of reducing our attack surface we prefer to moderate communication between processes.  Because of this, we prefer not to communicate over the loopback interface.  Instead, we currently use Unix Domain Sockets since we can control access to those using standard user and group permissions.
> 
> Sean Kau
> 
> On Wed, Nov 21, 2018 at 2:26 PM Till Kamppeter <till.kamppeter@gmail.com> wrote:
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
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture

_________________________________________________________
Michael Sweet, Senior Printing System Engineer

