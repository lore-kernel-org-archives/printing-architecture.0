Return-Path: <aikishugyo@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=5UXxDYKcOgR2TuejyK5VBHO6b8mkoPgf1INfS+IMuUY=;
	b=rP0DyVD+w/EtC49Zxf00HBhQJuN7YMmJUVKGXPN8u8Sgnj18SNp+u1mJmCtM29khxB
	zti+0M71xN8nb2a7gZe/Xe/OzegJzYyBDOf1RbEqlk9AtNfv7b8UMyPue5/aT6egGTDH
	7ZJqwkGhASqAr+e0gwAnxItTjD5QJbZPDrN45xndeMfLNNks2Uhqro0hw6JOIHWdMZd+
	Wox/qIKNTRp8BhcuCu9LIr1J0UuUBnk6sH2bsBl7Np7PQFbRP7QZk3dfAhMST/Q6xSsc
	fYsmHbKP6dpinpgpNQVDm5V9tYj8J7qEynVpzlqWCeD8f2hmjrHog/qHcbg5iufWcep7
	FlgA==
MIME-Version: 1.0
In-Reply-To: <562FEA3C.9080003@gmail.com>
References: <562FEA3C.9080003@gmail.com>
From: Gernot Hassenpflug <aikishugyo@gmail.com>
Date: Wed, 28 Oct 2015 06:29:44 +0900
Message-ID: <CAN0dEZwT8xT4UpBfAntjBLe5DY8-7VRJSJXUMx1sGHoacC+TSg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Subject: Re: [Printing-architecture] Are there really XPS-only printers?
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
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>

On Wed, Oct 28, 2015 at 6:18 AM, Till Kamppeter
<till.kamppeter@gmail.com> wrote:
> Hi,
>
> I would like to know whether there are really printers which understand only
> XPS (plus some secret proprietary protocols) and no PDF, PostScript, PWG
> Raster, ...?
/../
> If there are such printers can someone give a list of models here so that I
> could perhaps get hold on one? Thanks in advance.

Hello Till,

Please see the thread I began earlier this month on the CUPS mailing
list, in it I gave the results of my research.
Virtually all Konica Minolta printers/all-in-ones have native XPS
interpreters (since about 1997?).
And I gave several examples, if you go to the specs of those, you will
see they are GDI and XPS only.
Others may indeed have other PDL support as well, but certainly many
only have XPS as an option apart from host-based printing.
Here an overview regarding Vista:
http://www.biz.konicaminolta.com/technologies/vista_compatibility/

Regards,
Gernot Hassenpflug
