References: <481101A3.6030700@gmail.com> <4818BB7F.50603@gmail.com>
	<b801b6f40804301312m3a97c2eie3257cd339865be@mail.gmail.com>
	<b801b6f40805010844ka80fd30o64e1df4b525e00e2@mail.gmail.com>
	<4819F6A5.3040400@gmail.com> <87myn9mvqu.fsf@geek.avasys.jp>
	<b801b6f40805012017q2ca21240ma28e2f919f7330f3@mail.gmail.com>
From: Olaf Meeuwissen <olaf.meeuwissen@avasys.jp>
Date: Fri, 02 May 2008 14:59:16 +0900
In-Reply-To: <b801b6f40805012017q2ca21240ma28e2f919f7330f3@mail.gmail.com>
	(Alex Wauck's message of "Thu\, 1 May 2008 22\:17\:46 -0500")
Message-ID: <87bq3pmekr.fsf@geek.avasys.jp>
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
To: Alex Wauck <alex.wauck@gmail.com>
Cc: printing-architecture@lists.linux-foundation.org, Till Kamppeter <till.kamppeter@gmail.com>

"Alex Wauck" <alex.wauck@gmail.com> writes:

> Clarification:
> It is an aspect ratio restriction.  If it was a simple height restriction,
> it would be easy.  Fixed aspect ratio is still a pain in the butt in Qt, and
> it has certain usability/user experience implications.  Plus, I'm not sure
> what the advantage is.  The ratio between the widths of the columns is
> useful and not a problem, but I would like to at least see a clear reason
> for making all columns the same height as the width of the second column.

Given my comments about i18n string issues, the only workable solution
I can think of when you really *have* to use a fixed aspect ratio (or
fixed dimensions for that matter) would be a widget with (on-demand)
scroll bars.

That said, scrolling horizontally is a seriously bad user experience.

Hope this helps,
> Alex
>
> On Thu, May 1, 2008 at 6:48 PM, Olaf Meeuwissen <olaf.meeuwissen@avasys.jp>
> wrote:
>
>> Till Kamppeter <till.kamppeter@gmail.com> writes:
>>
>> > Peter, what is the importance of your column height restrictions? Or is
>> > it only an aspect ratio restriction (see Alex' problems below)?
>>
>> As mentioned earlier in feedback on the CPD, absolute dimensions are
>> no good when you need to consider i18n and/or assistive technologies.
>> Given the various languages you will need to cater to, string lengths
>> will vary, considerably.  For certain scripts, small font sizes just
>> don't work.  For Japanese, for example, anything less than 12pt is
>> next to unreadable.  Even 12pt is only hardly bearable.
>>
>> > Josef, you as expert on automatic dialog creation, can you help Alex
>> > here? AFAIR there was only a restriction on the aspect ratio of the
>> > columns and not on the absolute height.
>>
>> Fixed aspect ratios may be okay, but, again, given the variation in
>> string lengths, I doubt it.  What may be two characters in Japanese
>> (corresponding to four Latin characters, space wise and using a fixed
>> width font) may very well be 20 characters in German.  That is to say,
>> when considering strings, the horizontal and vertical dimensions vary
>> independently so trying to maintain a fixed aspect ratio is at best
>> cumbersome.
>>
>> Also note, that word wrapping may not work as you are used to in CJK
>> locales.
>>
>> Hope this helps,
>>
>> > [snip]
>> --
>> Olaf Meeuwissen                   FLOSS Engineer -- AVASYS Corporation
>> FSF Associate Member #1962           sign up at http://member.fsf.org/
>>

-- 
Olaf Meeuwissen                   FLOSS Engineer -- AVASYS Corporation
FSF Associate Member #1962           sign up at http://member.fsf.org/
