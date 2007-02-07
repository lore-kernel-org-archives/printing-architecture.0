Return-Path: <olaf.meeuwissen@avasys.jp>
From: Olaf Meeuwissen <olaf.meeuwissen@avasys.jp>
References: <789E617C880666438EDEE30C2A3E8D100105A5DA@mailsrvnt05.enet.sharplabs.com>
Date: Thu, 08 Feb 2007 08:20:40 +0900
In-Reply-To: <789E617C880666438EDEE30C2A3E8D100105A5DA@mailsrvnt05.enet.sharplabs.com>
	(Ira McDonald's message of "Wed, 7 Feb 2007 09:27:42 -0800")
Message-ID: <87iredblmf.fsf@geek.avasys.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Subject: Re: [Printing-architecture] Required prefixes for symbols in new OP
	specs
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: "McDonald, Ira" <imcdonald@sharplabs.com>
Cc: printing-architecture@lists.freestandards.org

"McDonald, Ira" <imcdonald@sharplabs.com> writes:

> Hi Olaf,
>
> What prefix (if any) are you currently using for PCM
> functions, variables, and constants?

We use "fsgpcm" following the examples that JTAPI set.  I'll be
getting back on this in your reply to Yasumasu Toratani.

> There was a strong concensus at the OP Steering Committee
> meeting this Monday that we should NOT use 'fsg' as the
> beginning of the prefix for any specs that are not yet 
> formally approved.

I don't mind changing it.  It's mostly just pulling everthing through
sed 's/fsg/op/g' as we haven't publicly released any code yet ;-)

> [snip]

-- 
Olaf Meeuwissen                          EPSON AVASYS Corporation, SE1
FSF Associate Member #1962           sign up at http://member.fsf.org/
GnuPG key: 6BE37D90/AB6B 0D1F 99E7 1BF5 EB97  976A 16C7 F27D 6BE3 7D90
Penguin's lib!       -- I hack, therefore I am --               LPIC-2

