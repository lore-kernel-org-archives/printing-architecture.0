Return-Path: <toratani.yasumasa@canon.co.jp>
Date: Mon, 15 May 2006 20:19:35 +0900
From: TORATANI Yasumasa <toratani.yasumasa@canon.co.jp>
In-Reply-To: <20060515113357.A61C.TORATANI.YASUMASA@canon.co.jp>
References: <44664EAA.2030508@gmx.net>
	<20060515113357.A61C.TORATANI.YASUMASA@canon.co.jp>
Message-Id: <20060515201044.A63E.TORATANI.YASUMASA@canon.co.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Re: [Desktop_printing] Trying out sample
	implementation of japanese OpenPrinting efforts
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmx.net>
Cc: printing-architecture <printing-architecture@freestandards.org>, "desktop_printing@osdl.org" <desktop_printing@osdl.org>

On Mon, 15 May 2006 11:49:53 +0900
TORATANI Yasumasa <toratani.yasumasa@canon.co.jp> wrote:
(snip)
> > Is there anything Canon-specific in the "pstocanonopvp" CUPS GhostScript
> > wrapper filter? Or can it be used as a generic wrapper to use the
> > OpenPrinting vector interface?
> 
> This code was not written by Canon people, so, I'm not sure it's depends
> on Canon specific, I'll check it soon.

I checked it, and found that it can be generic, though, the code includes
a few bugs, so we need to improve the code for generic use, and as I mentioned
in the previous email, we have a skeleton driver "opvpnull", I think the Japan side
developer should prepare the essential cups filter code for opvp like "pstoopvp"
from "pstocanonopvp" or other vendors code.

I'll suggest it on the Japan side developers mailing list.

-----------------------------------------
TORATANI Yasumasa

