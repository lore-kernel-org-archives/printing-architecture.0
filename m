Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=V7emssC/FPDylq5b56MfW9g5ndDKMIHWt+LYTvp1yzY=;
	b=LnIIs0ve7WjR1VSZHqDnKVBVaRjvxZxJAc8fb4SNJcsgReczGfsqqh9Y0j69kkiY+G
	27CcpZcjGBeVLDeY1hcAw/Wr1J4TFTrYjPWJBORyEiwscqpkqOMgSimjHC5Nw9BjqQIc
	827zzXcJAmH/OjTf4Ga6FImWqrMucXz6yA/Do0Yr5A/3kbermETrw/YnjhnK0v1DxseX
	3yAOTSkOTYuYnkAiqdEuD3Vs9KysJ7GVIrhHTn3LosF56BLGE935pDb3HMPjgr8WABXh
	7XZOKv6SBFY6olSnPAaGAp1fuWHSmojR/+SAFnfLOz4II4dpN1gOs7Pl+mYHF4Jvq5fU
	ICGA==
Message-ID: <54E13E46.9030902@gmail.com>
Date: Sun, 15 Feb 2015 22:48:06 -0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <CAN40gSvgCb9OjvSadx6HjvvrY0vLsyEoei-kDwCV7imZ+4D1_g@mail.gmail.com>
In-Reply-To: <CAN40gSvgCb9OjvSadx6HjvvrY0vLsyEoei-kDwCV7imZ+4D1_g@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] OP Minutes (10 February 2015)
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Ira McDonald <blueroofmusic@gmail.com>, printing-architecture@lists.linux-foundation.org

Due to a problem with the BZR I had to release cups-filters 1.0.65 
shortly afterwards. This is now also the version in Ubuntu 15.04 
(Vivid). ChangeLog below (all changes are bug fixes for legacy CUPS 
broadcasting/browsing contributed by Tim Waugh from Red Hat).

Please update the minutes.

    Till

----------

NEWS - OpenPrinting CUPS Filters v1.0.65 - 2015-02-13
-----------------------------------------------------

CHANGES IN V1.0.65

         - cups-browsed: Listen for NetworkManager changes (Red Hat bug 
#975933).
         - cups-browsed: Fix for memory leak introduced in BZR rev 7059.
         - cups-browsed: Memory leak/uninit fixes.
         - cups-browsed: Cache prepared browse data to send.
         - cups-browsed: Only get local notifications once per
           BrowsePoll run.
         - cups-browsed: Fix BrowsePoll now notifications work properly.
           Need to maintain a list of printers to keep alive for the
           case of there being no notifications of changes.
         - cups-browsed: Use local browsepolling for getting initial
           printer list.
         - cups-browsed: Ignore browse packets for deleted printers.
         - cups-browsed: Cache connection to local cupsd.
         - cups-browsed: Use notifications to track local printers.
           This avoids expensive calls to cupsGetDests().
         - cups-browsed: Manage subscriptions for local browsepolling.
         - cups-browsed: Track notify-sequence-number for notifications.


On 15.02.2015 19:00, Ira McDonald wrote:
> Hi,
>
> Minutes from last week's Open Printingcall are posted at:
>
> ftp://ftp.pwg.org/pub/pwg/openprinting/minutes/OP-Minutes-20150210.htm
>
>
> Action Items:
>
> - None
>
>
> Next OP US/Europe Conference Calls:
>
> (1) March 2015 - US/Europe - OP Monthly Meeting
>      - Note - complete recruiting OPS speakers for April Joint PWG/OPS
>      - Note - send final OPS topics and speakers list to PWG for agenda
>
>      - Tuesday 10 March 2015, Daytime
>        - US
>          10am in San Francisco - US PST (Pacific Standard Time)
>          11am in Colorado - US MST (Mountain Standard Time)
>          12pm in Chicago - US CST (Central Standard Time)
>          1pm in New York - US EST (Eastern Standard Time)
>        - Europe
>          7pm in Berlin - CET (Central European Time)
>
>      * Main Number (Till Kamppeter, LF, leader)
>        International: +1-619-326-2730 <tel:%2B1-619-326-2730> (new number)
>        Access Code:   491659#
>
> (2) April 2015 - US/Europe - OP Monthly Meeting (tentative)
>      - Note - US Daylight Savings Time starts 8 March 2015
>      - Note - Europe Summer Time starts 29 March 2015
>      - Note - resolve any issues for April Joint PWG/OPS
>
>      - Tuesday 7 April 2015, Daytime
>        - US
>          10am in San Francisco - US PDT (Pacific Daylight Time)
>          11am in Colorado - US MDT (Mountain Daylight Time)
>          12pm in Chicago - US CDT (Central Daylight Time)
>          1pm in New York - US EDT (Eastern Daylight Time)
>        - Europe
>          7pm in Berlin - CEST (Central Europe Summer Time)
>
>      * Main Number (Till Kamppeter, LF, leader)
>        International: +1-619-326-2730 <tel:%2B1-619-326-2730> (new number)
>        Access Code:   491659#
>
> Cheers,
> - Ira
>
>
> Ira McDonald (Musician / Software Architect)
> Co-Chair - TCG Trusted Mobility Solutions WG
> Chair - Linux Foundation Open Printing WG
> Secretary - IEEE-ISTO Printer Working Group
> Co-Chair - IEEE-ISTO PWG Internet Printing Protocol WG
> IETF Designated Expert - IPP & Printer MIB
> Blue Roof Music / High North Inc
> http://sites.google.com/site/blueroofmusic
> http://sites.google.com/site/highnorthinc
> mailto: blueroofmusic@gmail.com <mailto:blueroofmusic@gmail.com>
> Winter  579 Park Place  Saline, MI  48176  734-944-0094
> Summer  PO Box 221  Grand Marais, MI 49839  906-494-2434
>

