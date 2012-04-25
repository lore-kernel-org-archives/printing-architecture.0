Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=nVbSDK3sC4AVLcCnhpOLai/YdlPTOqjmaxuHCrq8QHU=;
	b=vKuAEYnxHd9ikmcpQwnUnIl8mlv5EY6tn7PfE+Q31ybg1mEjLOZKvSey/2Cw/xkmMW
	MuV92D96fj3odXyuelJ8kSTm5DvP/3Yqlo927cchth7fVST/p6AXwBaUwWp1+X6AZx8+
	1URLPgmT9SG5tTH3caaoz7e0WrCWNOsVw97+e17AQCu+34u4Xvn+WAGloqjltuezUU+2
	dxPXKNhqKLHwUPRM4UaZ+p2tEXJoDyK3RsQvRKs7xt/Aq++ovuszIPWugPq/nFwvqc0U
	DWvqmV9tDOG4AV2mPT6urUNwOTFNGSnoWJqorlIllwfKW30nBfEhv635HPJaW4kpFWxo
	v8Pg==
Message-ID: <4F97B82B.7040306@gmail.com>
Date: Wed, 25 Apr 2012 01:39:07 -0700
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <CA++JLR+st2adL_vf0+rC=OUBFXNqAbTSfrvvoZBtZ_hA_GA56Q@mail.gmail.com>
	<CA++JLRKGqqLQi_JjkA+ZghwWeN1=jdsivYCPCMB3_J0CLxpfMQ@mail.gmail.com>
In-Reply-To: <CA++JLRKGqqLQi_JjkA+ZghwWeN1=jdsivYCPCMB3_J0CLxpfMQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] printerd
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Tim Waugh <cyberelk11@gmail.com>, Open Printing <printing-architecture@lists.linux-foundation.org>, "'printing-summit@lists.linux-foundation.org'" <printing-summit@lists.linux-foundation.org>, Michael Sweet <msweet@apple.com>, Lars Uebernickel <lars@uebernic.de>

Hi,

Tim Waugh has developed a new piece of printing infrastructure. It is 
some D-Bus service owned by the desktop user which takes PDF print jobs 
from the application and dispatching it to CUPS, Google Cloud, network 
printers, ...

This could especially solve problems like per-user print destinations 
like Google Cloud Print printers.

Tim has put up some slides

http://cyberelk.net/tim/wp-content/uploads/2012/04/printerd.pdf

Could we let him present them in some session of the OpenPrinting Summit?

Here is a link with some more background info

http://cyberelk.net/tim/2012/03/08/session-printing/

and first code:

https://gitorious.org/printerd

    Till



On 04/24/2012 11:57 AM, Tim Waugh wrote:
> FWIW, I wrote up a couple of slides in case you want me to talk about it:
>    http://cyberelk.net/tim/wp-content/uploads/2012/04/printerd.pdf
>
> (Note: I won't be here on Thursday)
>
> Tim.
> */
>

