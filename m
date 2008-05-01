References: <481101A3.6030700@gmail.com> <4818BB7F.50603@gmail.com>
	<b801b6f40804301312m3a97c2eie3257cd339865be@mail.gmail.com>
	<b801b6f40805010844ka80fd30o64e1df4b525e00e2@mail.gmail.com>
	<4819F6A5.3040400@gmail.com>
From: Olaf Meeuwissen <olaf.meeuwissen@avasys.jp>
Date: Fri, 02 May 2008 08:48:25 +0900
In-Reply-To: <4819F6A5.3040400@gmail.com> (Till Kamppeter's message of "Thu\,
	01 May 2008 18\:58\:13 +0200")
Message-ID: <87myn9mvqu.fsf@geek.avasys.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Subject: Re: [Printing-architecture] Coding the Common Printing Dialog and
	its interface
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: printing-architecture@lists.linux-foundation.org

Till Kamppeter <till.kamppeter@gmail.com> writes:

> Peter, what is the importance of your column height restrictions? Or is 
> it only an aspect ratio restriction (see Alex' problems below)?

As mentioned earlier in feedback on the CPD, absolute dimensions are
no good when you need to consider i18n and/or assistive technologies.
Given the various languages you will need to cater to, string lengths
will vary, considerably.  For certain scripts, small font sizes just
don't work.  For Japanese, for example, anything less than 12pt is
next to unreadable.  Even 12pt is only hardly bearable.

> Josef, you as expert on automatic dialog creation, can you help Alex 
> here? AFAIR there was only a restriction on the aspect ratio of the 
> columns and not on the absolute height.

Fixed aspect ratios may be okay, but, again, given the variation in
string lengths, I doubt it.  What may be two characters in Japanese
(corresponding to four Latin characters, space wise and using a fixed
width font) may very well be 20 characters in German.  That is to say,
when considering strings, the horizontal and vertical dimensions vary
independently so trying to maintain a fixed aspect ratio is at best
cumbersome.

Also note, that word wrapping may not work as you are used to in CJK
locales.

Hope this helps,

> [snip]
-- 
Olaf Meeuwissen                   FLOSS Engineer -- AVASYS Corporation
FSF Associate Member #1962           sign up at http://member.fsf.org/
