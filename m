From: Olaf Meeuwissen <olaf.meeuwissen@avasys.jp>
Subject: Re: [Printing-architecture] RE: [Printing-summit] RE: where is th e
	info on driver directories
References: <2F7D63A21DB2C74EB8EB8C09AF667DB0130D1CB0@eitc220.eitc.epson.com>
Date: Mon, 12 Nov 2007 09:07:19 +0900
In-Reply-To: <2F7D63A21DB2C74EB8EB8C09AF667DB0130D1CB0@eitc220.eitc.epson.com>
	(Glen Petrie's message of "Fri, 9 Nov 2007 08:24:41 -0800")
Message-ID: <873avcs4w8.fsf@penguin.avasys.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Cc: "'printing-architecture@lists.freestandards.org'" <printing-architecture@lists.freestandards.org>, "'printing-summit@lists.linux-foundation.org'" <printing-summit@lists.linux-foundation.org>

"Petrie, Glen" <glen.petrie@eitc.epson.com> writes:

> A thought I did not complete in the last email is the directory structure
> for pdpca.  With in the $bindir/pdpca directory, do we ...
>
> 1.)  Have no sub directories for the pdpca files
> 2.)  Have subdirectories based on <dev>
>
> I actually like number '1.)'.  The first reason is that I believe that <dev>
> will start having sub-dir, with more sub-dir, with more sub-dir etc..  I
> find this to be a pain-in-neck when I am trying to locate something of the
> nature of the pdpca.  It is ok for the <dev> but not typically anyone else.

Then have a tool locate it for you, as per my previous mail.

> Another advantage of '1.)' is there can never be two files with the same
> filename.  This will prevent bad naming or improper naming by various
> independent developing parties.

Just put the driver specific tool with the rest of the driver, that is
somewhere below /opt/<supplier>, and have the LSB DDK add the links to
the right place.  As it does now already for everything else.

It's up to the <supplier> to make sure there are no conflicts in their
little piece of the file system.  Personally, I'd suggest following
the conventions of the GNU people modulo --prefix=/opt/<supplier>, so
your driver specific tools will probably live in /opt/<supplier>/bin/
or /opt/<supplier>/lib/.

Hope this helps,

>> -----Original Message-----
>> [snip]
-- 
Olaf Meeuwissen             FLOSS Engineer -- EPSON AVASYS Corporation
FSF Associate Member #1962           sign up at http://member.fsf.org/
GnuPG key: 6BE37D90/AB6B 0D1F 99E7 1BF5 EB97  976A 16C7 F27D 6BE3 7D90
Penguin's lib!       -- I hack, therefore I am --               LPIC-2
