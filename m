From: Olaf Meeuwissen <olaf.meeuwissen@avasys.jp>
Subject: Re: [Printing-architecture] RE: [Printing-summit] RE: where is th e
	info on driver directories
References: <2F7D63A21DB2C74EB8EB8C09AF667DB0130D1CD0@eitc220.eitc.epson.com>
Date: Tue, 13 Nov 2007 09:11:10 +0900
In-Reply-To: <2F7D63A21DB2C74EB8EB8C09AF667DB0130D1CD0@eitc220.eitc.epson.com>
	(Glen Petrie's message of "Mon, 12 Nov 2007 08:15:04 -0800")
Message-ID: <873avbc8dd.fsf@penguin.avasys.jp>
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

I've got only very little time ...

"Petrie, Glen" <glen.petrie@eitc.epson.com> writes:

> < ... snip ... >
>
>> Eh, why not just add an option to /usr/bin/pdpca to list what is
>> there.  For your example:
>> 
>>   pdpca --dev guten --list
>> 
>> You could even have options to get a list of valid arguments for the
>> --dev option.  Why make the user navigate the file system if a tool
>> can do it for them?
>
> [gwp] ok, there is a single 'controlling' pdpca application which can invoke
> a developer specific version of a pdpca and the 'controlling' pdpca is
> location in 'foo' with a actual path added to the system $PATH variable.  

The "controlling" pdpca lives in /usr/bin/pdpca (on FHS/LSB compliant
systems).  Systems that do not even have /usr/bin in their default
PATH are perverse.

> Then the 'controlling' pdpca would have options as
>
> pdpca --list 			: list the possible developers
> pdpca --devel foo --list	: list the options for the developers
>
> to actually execute, use
>
> pdpca [-t,-h,-i,-s] --devel foo [option]
>
> this would now locate and execute the requested/actual pdpca 
>
> Now the user/HD does not need to know where the actual pdpca app's are but
> the 'controlling' pdpca will.  But again, as you suggest, the system $PATH
> variable is updated to include the developer path to their pdpca.

That's not what I suggested and would unnecessarily pollute the user's
environment.  The LSB DDK can take care of symlinking the "actual"
pdpca apps to /usr/bin/, which is in the user's PATH.

> I can [not]
> remember if you suggested using a new system $PDPCA variable which would
> have the path for the actual pdpca software or just use the system $PATH
> variable (which is getting pretty long considering printing is not the only
> thing needing path info).

I did not suggest using a PDPCA environment variable.

> The alternative to using system variables for each developer is to use the
> directory structure I have been proposing along with the 'controlling' pdpca
> (the 'controlling' pdpca does a $PATH entry).

As Till also mentioned, we already have an agreed upon directory
structure.  Those "actual" pdpca apps should live in
/opt/<supplier>/bin and can follow the naming convention you
suggested.

>   This way printing things are
> collected under one directory and there may not be a need for linking
> (things are in known locations which I see a good approach for the goal of
> making printing easier on Linux including all aspects for retrieving
> capabilities, drivers, etc). 

As a matter of fact, I'm also not much in favour of symlinking all
those "actual" pdpca apps below /usr/bin.  The "controlling" pdpca can
quite easily search for "actual" pdpca apps in all /opt/<supplier>/bin
directories and build lists dynamically.  Even with say a hundred
suppliers with a hunderd test apps each, that would not be a big
overhead.  The "controlling" pdpca does not have to be a speed daemon
when it comes to finding the right info/app.

Besides, it could create a cache if speed becomes an issue.

> < ... snip ... >
>
>> FWIW, manufacturer, developer and supplier are three different hats.
>> It just so happens that there's usually only one or two heads wearing
>> them.
>
> [gwp] Actually I would like to see use establish the definition for the
> three entities in context of printing drivers and printers.  To get the
> discussion rolling I suggest the following as starting points.
>
> Manufacturer: 
> -- The Company, Project, Entity or Person who Company's, Project's, Entity's
> or Person's name is affixed to a hardware unit. 

Must be my English, but this doesn't quite parse for me.  If you mean:

  The Company, Project, Entity or Person whose name is affixed to a
  hardware unit.

then that's something I can agree with.

> ----- This means that an OEM company is not the "Manufacturer".  Although an
> OEM company produced the actual hardware; the OEM company name is not
> affixed to the product.
>
>
> Developer:
> -- The Company, Project, Entity or Person who Company's, Project's, Entity's
> or Person's name is affixed to a software application.

Same parse error here.

> ----- This means that an OEM software company is not the "Developer".
> Although the OEM company produced the actual software; the OEM company name
> is not affixed to the product.
>
>
> Supplier:
> -- The Company, Project, Entity or Person who distributes the hardware or
> software but may or may not be the Company, Project, Entity or Person who
> Company's, Project's, Entity's or Person's name that is affixed to the
> hardware or software.

And again.
Actually, I think it's enough for a supplier to distribute the
software and have their name affixed to it.  I don't see the point of
the hardware distribution part.

> ----- RedHat can be a supplier of Epson Printer Drivers but they are the
> Developer or the Manufacturer.  However, when someone refers to "the Epson's
> Printer Driver" which may be produced by an OEM or subcontractor for Epson
> but Epson affixes their name to the driver; then, Epson is still the
> Manufacturer and Developer along with be the possible Supplier.
>
> So for the pdpca application it is not Supplier, but the Developer that is
> being specified. 
>
> If the actually printer is being specified, then it we would refer to the
> Manufacturer.
>
> Glen

Hope this helps,
-- 
Olaf Meeuwissen             FLOSS Engineer -- EPSON AVASYS Corporation
FSF Associate Member #1962           sign up at http://member.fsf.org/
GnuPG key: 6BE37D90/AB6B 0D1F 99E7 1BF5 EB97  976A 16C7 F27D 6BE3 7D90
Penguin's lib!       -- I hack, therefore I am --               LPIC-2
