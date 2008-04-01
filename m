Message-ID: <2F7D63A21DB2C74EB8EB8C09AF667DB0152D3560@eitc220.eitc.epson.com>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Date: Tue, 1 Apr 2008 10:01:02 -0700 
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Printing-architecture] Google Summer of Code 2008:
	JTAPI	Li	braryProject
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Lars Uebernickel <larsuebernickel@gmx.de>
Cc: printing-architecture@lists.linux-foundation.org

Lars 

<...snip...>
> This could speed up the print process quite a bit - the job ticket need
> only be parsed and interpreted once and could be used throughout the
> print processing chain. But this would only work for modules in the same
> process, right? Otherwise, the data has to be serialized in some way to
> pipe it to the next processing module.

[gwp] "Serialization" could include outputting the internal job-ticket
object to a file in a binary format (not human readable -- otherwise we just
created another job-ticket format!?!? (Some may argue that once we leave the
process we have just created a new job ticket format. A debate I don't want
to get into.)

[gwp] In either case there would have to either be a fixed size job-ticket
object (including array elements and string elements or we have a binary
job-ticket object writer/reader.  There is merit to having a fixed size
job-ticket but then it would not be extensible; thus a binary (internal)
job-ticket object writer/reader would be necessary.

[gwp] My request is not to determine the merit of using (or serializing) a
binary (internal) job-ticket object writer/reader but that during your
design you take into consideration that a real solution is the creation of a
binary (internal) job-ticket object writer/reader.

<...snip...>

gwp 
