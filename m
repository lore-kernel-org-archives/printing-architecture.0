Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=2z6YOYenBZM/vhLpblnw7mXtaA7OJPV1sNuTHI7sZ1E=;
 b=X3TRsLmfdvwjARmR1DxOAivf7634JPWEVSQ+/M2zBR2KthU08oyhNGLbE2PjXinFn3
 cDEz3Sqr2iADqd0D9hs2W1V0gbIEpDib4RkzeqUV3O0l2fKaiCZ8D338H9PsUgt33HkU
 HmbKwFPyocLaBBtUt9p/tgWHi2To7ht/vtt0kRld0w1wGqrTZKGGefLehJl4ZzRtka65
 mPLiCwumd9SB9ppvn+Uq1bTU989w319xkb4BJpOXGK+FlzsD6wA9cXEGsnkWJtpeoimi
 1HCR1WNISh8N5/yNdrvPtp1/wDDp8P0u+KfxxcaY73t1jP9wmfKCWS10DgFNk1wT6AUr
 mAGw==
References: <12af8541-3113-341d-6b7f-d7393203368f@gmail.com>
 <1099419D-7CC7-448C-84B1-5C35D75F7A03@msweet.org>
 <b6f4687d-fe34-c3e7-d378-a07405dc936e@redhat.com>
 <4c554835-e8f7-3399-098d-11718beb020c@gmail.com>
 <10CF8536-388D-4202-AD36-D93D64574F54@msweet.org>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <f72fa2a3-55e4-d98d-f7c2-fd755ede365a@gmail.com>
Date: Thu, 25 Feb 2021 20:39:44 +0100
MIME-Version: 1.0
In-Reply-To: <10CF8536-388D-4202-AD36-D93D64574F54@msweet.org>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Automatic printer setup with Printer
	Applications
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@msweet.org>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Jai Luthra <luthrajaiji@gmail.com>

On 25/02/2021 14:43, Michael Sweet wrote:
> That is certainly one approach, and if Canonical is going to provide some general support for finding snaps that support particular hardware (not just printers) then it makes sense.
> 
> That said, the number of printer applications is not likely to be huge (LPrint, hp-printer-app, and ps-printer-app make 3, and potential future HP-LIP and Gutenprint printer applications make 5), so even if you just maintained files with the latest "app-name drivers" output you'd be able to do a good job of mapping printers to printer applications.
> 

First, there will come more Printer Application, one will be the 
Foomatic/Ghostscript/Unmaintained-Legacy one, a SANE legacy one, then 
there is probably also a Braille embosser one, and some for (2-3) for 
other maintained drivers. In addition to that some manufacturers will 
put up some for their specialty printers.

For the maintained ones there can often appear updates with new models.

So maintaining model indices of the Printer Applications externally and 
having them in packages which the distros ship is not a good idea. A 
standard way to get the model list out of a running Printer Application 
is already a good step. As we talked about earlier we can expand the 
"app-name drivers" with options so that you can get a more 
machine-readable list and device IDs.

For keeping up with not installed but available Printer Applications I 
think hardware-signature-based search in the Snap Store would be the 
best solution.

> Remember, Printer Applications are addressing a short term (~10 year?) need to support legacy printers, at which point the primary users will be "experts" that wouldn't use the default printer application/IPP Everywhere support anyways.  New printers almost universally support IPP (the outliers being for "experts").

So one should not need to invest too much time for their perfect 
integration.

Hardware-signature-based search in the Snap Store is not only for 
Printer Applications, and in other hardware categories drivers or 
otherwise hardware-related Snaps could be more common.

A GUI application/GNOME Control Center module which lists available 
Printer Application and provides buttons to their web interfaces, 
auto-add, IPP System Service, ... could be made as general user-oriented 
DNS-SD service lister, where the user also easily finds web interfaces 
for routers, access points, smart home devices, ...

Only the USB auto-setup tool is something more transitional which 
perhaps could go away in 10 years or so.

    Till
