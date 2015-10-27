Return-Path: <aikishugyo@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=tRm4DemfD6Va7gRiTXtJZWofJGgmOo0GhJmuCqM8X+s=;
	b=l+sxw6C5Pn9PYzwL5EehCdW1t0qgX1xwWN1s1fJoQVqJOKOCBSBH2wnX2p4Qyw4B48
	KN3fUx5XONJdyUmNrqLVkONgZdkEjIG3CoTZI3pEf3iNYeKtZTN38rioTVd7+LNerY6j
	Tcb9SfJt228Eo+Gb+pnissAGBDxo3pMr5Z8uzSJ/2bODzU3XDxlDVVARrHD+sh9SOJW+
	/fcjYMCWMhO5JYc4KNxWyc/St2tKpZDdNBDE8lNSinGAdk+L6Hn3j9ljg1A5I+/EfhdH
	3IJviO33wWzeOl53u0ha9If2mm/ht7Fr7ekqLO3Yy+zInuphp6VXCedTQUrRn+NtcGX9
	qNyA==
MIME-Version: 1.0
In-Reply-To: <CAN0dEZwT8xT4UpBfAntjBLe5DY8-7VRJSJXUMx1sGHoacC+TSg@mail.gmail.com>
References: <562FEA3C.9080003@gmail.com>
	<CAN0dEZwT8xT4UpBfAntjBLe5DY8-7VRJSJXUMx1sGHoacC+TSg@mail.gmail.com>
From: Gernot Hassenpflug <aikishugyo@gmail.com>
Date: Wed, 28 Oct 2015 06:45:36 +0900
Message-ID: <CAN0dEZw0JivTSyHH05g30U_RyCCA_6MwvHJeRrAYU16AR_wrVg@mail.gmail.com>
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

On Wed, Oct 28, 2015 at 6:29 AM, Gernot Hassenpflug
<aikishugyo@gmail.com> wrote:
> On Wed, Oct 28, 2015 at 6:18 AM, Till Kamppeter
> <till.kamppeter@gmail.com> wrote:
>> Hi,
>>
>> I would like to know whether there are really printers which understand only
>> XPS (plus some secret proprietary protocols) and no PDF, PostScript, PWG
>> Raster, ...?
> /../
>> If there are such printers can someone give a list of models here so that I
>> could perhaps get hold on one? Thanks in advance.
>
> Hello Till,
>
> Please see the thread I began earlier this month on the CUPS mailing
> list, in it I gave the results of my research.
> Virtually all Konica Minolta printers/all-in-ones have native XPS
> interpreters (since about 1997?).

Sorry, that should be 2007.

> And I gave several examples, if you go to the specs of those, you will
> see they are GDI and XPS only.
> Others may indeed have other PDL support as well, but certainly many
> only have XPS as an option apart from host-based printing.
> Here an overview regarding Vista:
> http://www.biz.konicaminolta.com/technologies/vista_compatibility/

Another press release, with the initial models the XPS interpreter was
released on:
http://www.konicaminolta.ba/bs/poslovna-rjesenja/o-nama/press-centar/arhiva-saopstenja-2007/press-single/article/konica-minolta-announces-support-for-microsoft-windows-vista-xps-printing-and-wsd-protocols-11.html

http://kmbs.konicaminolta.us/kmbs/about/news-events/news-releases/News/konica%20minolta%20next%20generation%20bizhub%20mfps%20demonstrate%20support%20for%20windows%20vista%20xps%20printing%20and%20wsd%20protocols

In the CUPS ML thread I had found a similar announcement, but a different link.

Regards,
Gernot Hassenpflug
