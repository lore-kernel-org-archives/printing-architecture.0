Return-Path: <hughsient@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-transfer-encoding;
	bh=c5RqwYJr0cxXSGO9tmsAZfazvRvUxDYCbs4vC59nEoM=;
	b=DC/vgZA75gtF0fBNDxc4I/P9U64wQx0Gx4bagB1qvT2mGVQPNhhFN0cHSmhiVqzI/l
	n6aO/0MR8MlgeJh+XM0IqPXptb6Jvh/dvyIM1dzPWPVdgmcDnVYL9wRSK6uDO25mFetk
	J8oWHZs5AAXssfesMILrEtgbaTil5R5SdEN3WCFiC4N86d+oCtuH1CD94jyIHLxMaRjw
	uxr0ZpmEVOBX3vLxiF2FTbAclwCWRnJYA3Dq5VwmVZskojgIByGdpM8Wdr5wmuqFPuI8
	TIIxAK/rP4pePsLcqQ3HbZLrBrrrSIqds/eoT4IedV3bjGybc8VfhL56+WSUYFh8Pscc
	PD3g==
MIME-Version: 1.0
In-Reply-To: <9D8EBC58-B0EF-451A-A3E9-3869725B82E3@mmiworks.net>
References: <56F6A4D2.8080801@posteo.de>
	<B8C7B89F-7C26-44DC-8756-40462551859F@mmiworks.net>
	<CAD2FfiHY4Z040wCiWYbA+WhV1tQDUcjSwzEhogpkoXrX_=9yRg@mail.gmail.com>
	<9D8EBC58-B0EF-451A-A3E9-3869725B82E3@mmiworks.net>
Date: Tue, 29 Mar 2016 13:19:57 +0100
Message-ID: <CAD2FfiE6XGBAv6ZvBQk-N-waOJQLLO-YY5oKUSEvxmjO2t1GLA@mail.gmail.com>
From: Richard Hughes <hughsient@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Printing-architecture] Status and future of the Common
 Printing Dialog (CPD)
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: peter sikking <peter@mmiworks.net>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>

On 29 March 2016 at 12:36, peter sikking <peter@mmiworks.net> wrote:
> it became really clear at the beginning of the project, and got
> conformed again and again that that maximum the desktop
> environments would do for an infrastructure project (large
> amount of abstract and complicated work that has to deal with
> =E2=80=98everything for everyone=E2=80=99) like printing was to take deli=
very
> of our design work and reference implementation.

Do you have any references for this? I've been familiar with GTK and
GNOME for a long time and I didn't see anything like this.

> I have already commented on the willingness to work on this
> project. you have to think of assigning multiple people-years
> of your very best interaction designers (not the average ones,
> not the pixel-pushing designers) to do this.

Right, but that's putting the cart before the horse. Who was the
customer? An easier-to-use print dialog might help a vendor designing
printers sell more hardware, or it might help a software support
company like Red Hat sell more subscriptions. If you simply say that
something could be improved (and I agree, print dialogs can be
improved) and then designing something that's foreign to desktop,
toolkits and applications it's going to be a tough sell. Spending
several hundred thousands of dollars on design and implementation
before identifying the revenue stream seems, well, naive.

In the meantime, the GNOME designers designed something different[1]
which suited the design style for GNOME, e.g. using GtkSwitch to make
it easy to use on touchscreens. I think it's completely fine to have
different dialogs on KDE and GNOME, and even on applications for the
same desktop as long as they have been designed to be easy to use for
the specific use cases the application cares about.

Richard

[1] https://wiki.gnome.org/Design/OS/Printing
