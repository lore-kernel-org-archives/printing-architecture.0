Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed; d=gmail.com; s=beta;
	h=domainkey-signature:received:received:message-id:date:from:user-agent:mime-version:to:cc:subject:references:in-reply-to:content-type:content-transfer-encoding;
	b=Qg384sC+BwmsVphKclTLxOeOuKj4AUIqjJHMzBBJZACHUDB1QwD6X/XYrKOkNFmpV+DK6R/ujyUXEx/vb81Dz1RPDqpkIMMjX8kjfiJ4Sp2zohi8LLyukiP9VYezqD7P3JmPkjVjFWzDykY/fXsw/Q19fcqzSRci24O8/bkAITo=
Message-ID: <45F5B492.9080808@gmail.com>
Date: Mon, 12 Mar 2007 20:14:10 +0000
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <45F34A15.60204@gmail.com> <45F353E7.6000803@gmail.com>
	<20070312102307.5EB4.TORATANI.YASUMASA@canon.co.jp>
In-Reply-To: <20070312102307.5EB4.TORATANI.YASUMASA@canon.co.jp>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [Printing-sc] Application of
 OpenPrinting as Mentoring Organization for the Google Summer of Code 2007
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: TORATANI Yasumasa <toratani.yasumasa@canon.co.jp>, Ralph Giles <ralph.giles@artifex.com>, Raph Levien <raph.levien@gmail.com>
Cc: "Printing-Sc (E-mail)" <printing-sc@freestandards.org>, Jim Zemlin <jzemlin@freestandards.org>, printing-japan@lists.freestandards.org, Ralph Giles <giles@ghostscript.com>, printing-architecture@lists.freestandards.org, Ian Murdock <imurdock@imurdock.com>

TORATANI Yasumasa wrote:
> Hi,
> 
> Some of the Japan side opvp developer know;
> - OPVP interface
> - "opvp" implementation as the Ghostscript driver
> - Some OPVP complianced modularized driver for a few PDLs.
> So, they will be able to make suggestions for OPVP specific issues.
> 
> On the other hand, there are few engineers who know the Ghostscript
> inside code in detail, or other type of many Ghostscript built in drivers,
> such as x11*, tiff*, png*, pswrite, pdfwrite, and many drivers for seveal
> printer vendor's PDL., such as dj*, lp*, lex*, pcx*, etc.
> 
> If we ask someone to modify these drivers as modularized, I think we
> need volunteers who know these driver's code in dtail.
> 
> BTW, do we need to modify all the Ghostscript built-in drivers as
> modularized? If we do not have to, the priority list of the drivers that
> we need to modularize might be helpful for asking someone to be
> volunteers.
> 

One thing I thought about was making an interface between OPVP and the
internal API of GhostScript so that it can be compiled with any
GhostScript built-in driver, to convert them all with one effort. I
though t that you could probably mentor such a thing as you have written
the opvp device for GhostScript.

Perhaps we need someone of GhostScript as co-mentor for that. Raph,
Ralph, would you volunteer for that? If so, please tell today, as we
have to submit the application of the Google Summer of Code today (and
supply a Google user names as it is required for the application).

Another thing would be to write new, more flexible and modern drivers
for common languages like PCL-5e, PCL-5c, PCL-XL. This would be a new
project idea to post on our project ideas Wiki.

   Till

