From: Olaf Meeuwissen <olaf.meeuwissen@avasys.jp>
Subject: Re: [Printing-architecture] RE: [Printing-summit] RE: where is th e
	info on driver directories
References: <2F7D63A21DB2C74EB8EB8C09AF667DB0130D1CA1@eitc220.eitc.epson.com>
Date: Fri, 09 Nov 2007 09:27:12 +0900
In-Reply-To: <2F7D63A21DB2C74EB8EB8C09AF667DB0130D1CA1@eitc220.eitc.epson.com>
	(Glen Petrie's message of "Thu, 8 Nov 2007 15:11:04 -0800")
Message-ID: <878x586z6n.fsf@penguin.avasys.jp>
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
Cc: printing-architecture@lists.freestandards.org, printing-summit@lists.linux-foundation.org

"Petrie, Glen" <glen.petrie@eitc.epson.com> writes:

> < ... snip ... >
>
>> > /usr/lib/supplier/pdpca
>> >
> < ... snip ... > 
>
>> <ira>
>> Why do we need a directory pdpca at all?  Why can't a conforming
>> pdpca application just have a simple filename that starts pdpca?
>> And be in the SAME directory with the driver package?
>> </ira>
>
> < ... snip ... >
>
> Ok! But ... the pdpca is not a driver or such software that will be used by
> an application, spooler, print-manager or the system; who can navigate to
> any predefined directory tree/structure. The pdpca is a tool; and, as such,
> to be used by individuals to test the driver; so my motivation was to make
> it easy to find but ....

In which case $bindir would be a good place.  The exact value of that
will depend on the options passed at build-time but is typically one
of /usr/bin or /usr/local/bin.

The idea here is that you have an $bindir/pdpca application that takes
options specifying the <dev> and <qual> from your spec to construct
the actual application's name, tests for its presence and starts it
passing along all unused options.  Normally you would have you PATH
set to something reasonable you you would just run it as:

  pdpca --dev <dev> --qual <qual> [other options]

Now nobody but $bindir/pdpca has to know the exact location of the
specific drivers.  If necessary, $bindir/pdpca can even be made to
look in a number of places.

Hope this helps,
-- 
Olaf Meeuwissen             FLOSS Engineer -- EPSON AVASYS Corporation
FSF Associate Member #1962           sign up at http://member.fsf.org/
GnuPG key: 6BE37D90/AB6B 0D1F 99E7 1BF5 EB97  976A 16C7 F27D 6BE3 7D90
Penguin's lib!       -- I hack, therefore I am --               LPIC-2
