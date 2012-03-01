Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=kl5mdFaGfuYwCqOEcCjd7msN7m+GzM53UTnUeNLZSRw=;
	b=nk5mH0e6/2TtzEzxFRlv8ZEZuYhqhd48hch3OvgyVenqfX2YOM7NCz1enE36cFCkb8
	W5TVhU7Fg984eem2yjlzcUs9zsl9OqfZfj9mSY0Z5RbDEoQVKBXswMQhhO/q5F4/kCgv
	dYKCpSiIXeiEEXkMX4mY7Wm1fi3z3tDGoHU4w=
Message-ID: <4F4F6D64.7030100@gmail.com>
Date: Thu, 01 Mar 2012 13:36:52 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <1330600735.18587.3.camel@rubik>
In-Reply-To: <1330600735.18587.3.camel@rubik>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] pdftopdf
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Koji Otani <sho@bbr.jp>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>

Tim, I did not know that. At least it links against libpoppler.

Otani-san, is there still code-duplication of XPDF or Poppler in the 
pdftopdf filter? Can this be avoided?

Tim, which version of pdftopdf are you looking at?

    Till

On 03/01/2012 12:18 PM, Tim Waugh wrote:
> Hi,
>
> Looking at the source code to pdftopdf, it seems like it is *another*
> fork of xpdf.
>
> Is there a reason it can't use the poppler library to do what it needs
> to do?
>
> Has it been security audited, or at least have the recent xpdf
> vulnerabilities from the last few years been verified not to be present
> in pdftopdf?
>
> Thanks,
> Tim.
> */
>

