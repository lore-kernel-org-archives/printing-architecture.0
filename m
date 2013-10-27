Return-Path: <danieru.dressler@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=wmrKW0VeqxMmI/JMsNWZW1N2/QfyThs5b9PoGUwIH9s=;
	b=kZkCjBTErqoBbSWVAEGGdc60XiTjVClXHmzHg0lcZijbA+1g0ZOMszjeCs5h+WTpef
	tMUAJ6NlvFR/m3IUMgjY3UgtgkIOHgKYbYKwf+ubkQW82W7ADcBXsQtAqOKCdl+aeOYM
	v71MPaWEGnzawf3OFTXZhBZ7p2KFMmnuwHRCk7+fjOdN6GxziJY8q09h9sgLH8tJMu5y
	+oRwkQKyY26PYYQ1QtFcjXNl6qWsvyMmUYYMWqs9Zwwt/GFwidzKcbD5/XYYtwHjIirF
	HuZpI3Y4c8ytx/Xceh3cRa0jhqespUoVXdmg2TLxKUsSIDtzEM2zPWfu4s76Cy4jOMiF
	Y0WQ==
MIME-Version: 1.0
In-Reply-To: <CAN40gSv9w8xe00moKCni=L6w+48jPjiNwNy9r3ftB8mtMfqL1g@mail.gmail.com>
References: <CAN40gSv9w8xe00moKCni=L6w+48jPjiNwNy9r3ftB8mtMfqL1g@mail.gmail.com>
Date: Sun, 27 Oct 2013 13:53:31 -0600
Message-ID: <CAGC3nLCxX_3HpTXeccETq=kHBiWYzAX+w=2DhqAEOrK2oFTNPA@mail.gmail.com>
From: Daniel Dressler <danieru.dressler@gmail.com>
Content-Type: text/plain; charset=UTF-8
Subject: Re: [Printing-architecture] OP folks - we need an WS-Discovery
 prototype for IPP Everywhere
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Ira McDonald <blueroofmusic@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Hello Ira

I would like to work on this project. Is there anyone else interested?
We could collaborate and since we are dealing with a test suite I
would appreciate someone to watch for edge cases I might miss.

One issue I am concerned with is testing our test suite. I am going to
guess that CUPS does not support WSD and I do not think Windows does
support IPPE yet either. Is there by any chance a company developing a
WSD && IPPE printer which could lend me a printer? I can sign an NDA
if needed. The final test suite would of course test both printers and
spoolers but I'd appreciate an outside thing to test against so I'm
not writing blind.

Daniel

2013/10/27 Ira McDonald <blueroofmusic@gmail.com>:
> Hi,
>
> Here's a request for Open Printing community help from IEEE-ISTO
> Printer Working Group, per our face-to-face meeting last week.
>
> Since IPP Everywhere printers *must* support both DNS-SD (Bonjour)
> and WS-Discovery for service discovery by clients, our PWG effort to
> finish up the tools for free vendor IPP Everywhere Self-Certification has
> one gap.
>
> We need a volunteer to write a tool to capture printer-specific attributes
> for WS-Discovery, for example using the gsoap toolkit or the the free (but
> Windows-only) Microsoft WSD Debug tool (which can be scripted).
>
> See details in chapters 4 and 9 of IPP Everywhere (PWG 5100.14):
>
>   ftp://ftp.pwg.org/pub/pwg/candidates/cs-ippeve10-20130128-5100.14.pdf
>
> If anyone in the Open Printing community can help, please reply to this
> mailing list or to me privately, if you wish.
>
> Cheers,
> - Ira (PWG Secretary and IPP WG Co-Chair hats on)
>
>
> Ira McDonald (Musician / Software Architect)
> Chair - Linux Foundation Open Printing WG
> Secretary - IEEE-ISTO Printer Working Group
> Co-Chair - IEEE-ISTO PWG IPP WG
> Co-Chair - TCG Trusted Mobility Solutions WG
> Chair - TCG Embedded Systems Hardcopy SG
> IETF Designated Expert - IPP & Printer MIB
> Blue Roof Music/High North Inc
> http://sites.google.com/site/blueroofmusic
> http://sites.google.com/site/highnorthinc
> mailto:blueroofmusic@gmail.com
> Winter  579 Park Place  Saline, MI  48176  734-944-0094
> Summer  PO Box 221  Grand Marais, MI 49839  906-494-2434
>
>
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>
