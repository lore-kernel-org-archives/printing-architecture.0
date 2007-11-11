From: Olaf Meeuwissen <olaf.meeuwissen@avasys.jp>
Subject: Re: [Printing-architecture] RE: [Printing-summit] RE: where is th e
	info on driver directories
References: <2F7D63A21DB2C74EB8EB8C09AF667DB0130D1CAF@eitc220.eitc.epson.com>
Date: Mon, 12 Nov 2007 08:59:55 +0900
In-Reply-To: <2F7D63A21DB2C74EB8EB8C09AF667DB0130D1CAF@eitc220.eitc.epson.com>
	(Glen Petrie's message of "Fri, 9 Nov 2007 08:10:57 -0800")
Message-ID: <877ikos58k.fsf@penguin.avasys.jp>
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

> Thanks for your suggestions.
>
> <...snip...>
>
>> Normally you would have you PATH
>> set to something reasonable you you would just run it as:
>> 
>>   pdpca --dev <dev> --qual <qual> [other options]
>> 
>
> [gwp] I considered this (and still like it) but I thought it would be
> more/too complicated for user (of any kind) to figure out or know the <dev>
> and the possible list of <qual's> since <qual's> could change with <dev>.
> [snip]
>
> Scenario:  Help Desk (HD) help user (U) on the phone.
>
> U:  My printer will not print my picture.
> HD: What printer do you have?
> U: A SuperX model 300 which is an inkjet printer.
> HD: What application are you trying to print with.
> U:  Guten
> HD: Go to the /usr/bin/print/pdpca directory.
> U: OK, got there
> HD: Locate the file pdpca_guten_superx_inkjet
> U: Ok located
> HD: execute the file........
>
> Or does the HD tell the user 
>
> HD: type in pdpca --dev guten -qual superx,inkjet 300
>
> Once someone knows the list of possible and then the specific <dev's> and
> <qual's> it is pretty easy either way but if the HD did not know that info
> he could have
>
> HD: Go to the /usr/bin/print/pdpca directory.
> HD: look for a file called pdpca_guten
> U: found a bunch of them
> HD: Is there file or files with superx in the name
> U: yes
> HD: Is there a file with inkjet in the name
> U: No
> HD: is there a file with generic in the name
> U: yes
> HD: execute the following pdpca_guten_superx_generic -s 300
> U: It says the superX Model 300 is supported
> HD: now execute pdpca_guten_superx_generic 300
>
> So, my reasoning was .....
>
> Is it easier for an end user (which is one of the target users) to navigate
> a directory list with files containing the <dev> and <qual's> or read
> instructions on what possible <dev> and <qual> to use.  Overall, would
> suspect that the navigating will be easier.

Eh, why not just add an option to /usr/bin/pdpca to list what is
there.  For your example:

  pdpca --dev guten --list

You could even have options to get a list of valid arguments for the
--dev option.  Why make the user navigate the file system if a tool
can do it for them?

> Anyway, that was my reasoning I used to create the specification.   My next
> goal was to find a directory that would be easy to locate by the HD and/or
> user.

With a single program in an established place for user programs, all
you have to do is run the command with the right option(s).  Neither
user nor HD has to know any locations in the file system.  Locations
could even change transparently without the need to retrain HD staff
provided the pdpca utility is updated accordingly.

> p.s.  dev looks like developer and device (we could pick a better word if
> the decision is to go with a scheme as you suggest).  Which did you mean?

Actually, I'd vote for --supplier.
FWIW, manufacturer, developer and supplier are three different hats.
It just so happens that there's usually only one or two heads wearing
them.

Hope this helps,
-- 
Olaf Meeuwissen             FLOSS Engineer -- EPSON AVASYS Corporation
FSF Associate Member #1962           sign up at http://member.fsf.org/
GnuPG key: 6BE37D90/AB6B 0D1F 99E7 1BF5 EB97  976A 16C7 F27D 6BE3 7D90
Penguin's lib!       -- I hack, therefore I am --               LPIC-2
