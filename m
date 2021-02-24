Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=MrNon0lGnglxIN8VWpSVLYl0iyX5lVGFnN+bc4dxU2Y=;
 b=U8kVWLDKeTkSf5CBZRmglU5DWRXpXcxVBrg/IGdBUNKbH4DEggV7t0zn5b8cfZgFUC
 AtRzPw/3mm4Cw2GZFzX29/2C8inOa4TgZu8t6weolFFCVPcniu0qNB18T6pVOe7B086L
 DEcTPL9EXdPRY5tKUneNoo5kI5B/1EHVXz4uVDXJTDuQHhEKOaOgHNlnlqi6niVnS/ei
 W9ILeABDlnY6vvOh/AMlNIBo8EP5nC8M2UZne3gZ9BCRC9iLxbKO716r7m5lCRheTJSq
 nOjfmM0fHhufJVrRULOkanZ6eZaHDQflCIbM2Dc4Ovv5avtkl4y8vXnXreMssbOwzCYz
 IpZA==
References: <12af8541-3113-341d-6b7f-d7393203368f@gmail.com>
 <1099419D-7CC7-448C-84B1-5C35D75F7A03@msweet.org>
 <3e467a3bd51a7bc8083e6f06532db4ad@suse.de>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <dec22729-8bb4-d897-2c29-878a6728f562@gmail.com>
Date: Wed, 24 Feb 2021 19:47:01 +0100
MIME-Version: 1.0
In-Reply-To: <3e467a3bd51a7bc8083e6f06532db4ad@suse.de>
Content-Type: text/plain; charset=utf-8; format=flowed
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
To: Johannes Meixner <jsmeix@suse.de>, printing-architecture@lists.linux-foundation.org, Michael Sweet <msweet@msweet.org>, Jai Luthra <luthrajaiji@gmail.com>, Zdenek Dohnal <zdohnal@redhat.com>

On 24/02/2021 15:46, Johannes Meixner wrote:
> 
> I like to add that in enterprise environments
> automated printer setup is almost never needed.
>

Yes, that is true.

All about automatic print queue creation with Printer Applications is 
for end-user-oriented desktop distros.

> So nowadays any further efforts for automated printer setup
> could be mostly a waste of time - time that could be better
> spend elsewhere (even if that is just more time for beer ;-)
> 
> The more I think about it the more I like the idea
> to deprectate all printer setup tools and related stuff
> except what CUPS itself provides.
> 
> For the exceptional cases only documentation should be sufficient
> like "when you have 'ACME SpecialPrinter XL' do this and that".
> 

Yes, I am also in favor of deprecating the classic printer setup tool.

Instead, we need the following:

1. A local/network service manager (could be an item of GNOME Control 
Center): Take avahi-discover. It lists a lot of services, local (Avahi 
0.8.x+) and network services, sorted by network interface, then by 
service type. The tool I have in mind should list them in a 
user-friendly way, so that one sees for example a Printer Application, 
shows some property info like printing/scanning/faxout, button to open 
web interface, button to open IPP System Service status/config panel, 
list of printers (and scanners) with properties like size class (A4, A3, 
larger, smaller, ...), color/gray, duplex, ... Also useful entries for 
services which are no Printer Applications (for example your router, no 
need to know its IP, you have a button for its web interface now). All 
info needed by this tool comes from DNS-SD (Avahi on Linux).

2. A "driver finder": A tool which helps you to find the correct Printer 
Application if you have Acme LaserStar 1000+ and this is not a 
driverless printer. It more or less guides the user through the scheme 
of Michael's posting in this thread.

    Till
