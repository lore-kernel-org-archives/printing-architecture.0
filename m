Message-ID: <43C59319.7080003@Sun.COM>
Date: Wed, 11 Jan 2006 17:22:01 -0600
From: Norm Jacobs <Norm.Jacobs@Sun.COM>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit
Subject: [Printing-architecture] [Fwd: [Desktop_printing] Printing Summit is
	set]
List-Id: Printing architecture under linux
	<printing-architecture.freestandards.org>
List-Unsubscribe: <http://mail.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@freestandards.org?subject=unsubscribe>
List-Archive: <http://mail.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@freestandards.org>
List-Help: <mailto:printing-architecture-request@freestandards.org?subject=help>
List-Subscribe: <http://mail.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@freestandards.org?subject=subscribe>
To: printing-sc@base3.freestandards.org, printing-architecture@freestandards.org

For those of you who didn't attend the desktop printing summit planning 
telecon, I
am including the contents of a couple of email messages that pretty much 
summarize
the areas of discussion (date/location, agenda).  The short version is 
that the summit
looks like it will happen on April 10-12 in Atlanta, GA, USA.  This is 
the week after
the PWG/P2600 meeting and LWE.

I would like to get people's thoughts on making this an FSG OpenPrinting 
face to
face meeting, having a joint PWG/FSG OpenPrinting plenary at the end of the
PWG/P2600 meeting and/or having one at a PWG meeting later in the year 
(possibly
October).

I know that there was more to add to this discussion, but I'm all 
meeting'd out today.

    -Norm

-------- Original Message --------
Date: 	Wed, 11 Jan 2006 11:49:41 -0800
From: 	John Cherry <cherry@osdl.org>
Subject: 	[Desktop_printing] Printing Summit is set


Thanks to those that attended the call this morning and helped us to
settle on a time and location for the OSDL Printing Summit.

   Date: April 10-12
   Location: Atlanta, GA (Lanier facility)

April 10-12 is the week after LinuxWorld Expo, so hopefully this will
allow some that travel across the pond to make a single trans-atlantic
flight.

More logistical information will be coming out as they are nailed down,
but you should be able to mark your calendars and start making travel
arrangements where it makes sense.

Invitations with the latest logistical information will be out prior to
January 20.  The following is a list of names that have been contacted
and/or on the desktop_printing list.  Please let me know if there are
others that should be informed or invited to the summit.

Robert Krawitz
Mike Sweet
Grant Taylor
Patrick Powell
George Liu
Hitoshi Sekine
Shiyun Yie
David Suffield
Cristian Tibirna
Jody Goldberg
Kurt Pfeifle
Masatoshi Kadota
Yves van Belle
Hin-Tak Leung
Marti Maria
Kai-Uwe Behrmann
Graeme Gill
Claudia Alimpich
Norm Jacobs
Ira McDonald
Glen Petrie
Ralph Giles
Raph Levien
Olaf Meeuwissen
Ulrich Wehner
David Chamberlin
Markus Brauer
Johannes Meixner
Klaus Singvogel
Tim Waugh
Yorick Chan
Alex BANH
Roger So
Jeff Waugh
Jonathan Riddell
Bastian, Waldo
Owen Taylor
Patrice Lagrange
Dov Isaacs
Anders Lund
F.J.Cruz
John Cherry
Till Kamppeter
Derek Noonburg
Kristian Høgsberg
Brad Hards
Jonathan Blandford
Martin Kretzschmar
Jeff Muizelaar
Leonard Rosenthol
Peter Wyatt
wendyp AT sun.com
Albert Astals Cid
Cristian Tibirna
Carl Worth
John Palmieri
Takaaki Higuchi


Cheers,
John




Till Kamppeter wrote:

> Here is the originally suggested agenda with some points mentioned on
> the mailing list added:
>
> John Cherry wrote:
>
>> The starting point for the Open Printing Summit agenda is:
>>
>> 1. Making printing user friendly - it should just work
>>       * Usability
>>       * Consistent methods for printing, job handling, and printer
>>         administration
>
>
>         * "Printing as a desktop service" - non-native apps and apps
>           from ISV should use standard printing dialog from KDE/GNOME
>           (Kurt Pfeifle)
>
>> 2. Hardware support
>>       * Drivers and PPDs, preferably from printer manufacturers and free
>>         software
>>       * Plug and Print (not plug and play; plug the printer and play for
>>         hours with different drivers)
>>       * Auto-download and auto-install of drivers
>
>
>         * Certification of printers working with distros (Waldo Bastian)


Also reference previous quicky form I posted...

>> 3. OpenPrinting.org implementation
>> 4. CUPS 1.2 integration with desktops, apps, drivers, distros, etc.
>
>
>   5. Transition of job transfer format from PS to PDF (Till Kamppeter,
>      Mike Sweet)
>
>       + More portable
>       + High color depth, color management


PostScript also supports high color depth and color management,
just not as easy...

>       + Easy post-processing (N-up, booklet, scaling, page reordering,
>         ...)
>       + Transparency support


PostScript also supports transparency, it just isn't as easy...

>       + Smaller files
>       + Better interoperability with Mac OS X
>       ? Free software support: GhostScript vs. XPDF (how well
>         maintained? Is newest software version free?)
>       - Free software has to implement all new features which Adobe is
>         adding to PDF, PostScript is "finished".


PDF is also used for international standards and printing/prepress;
we could just standardize on a particular version of PDF (e.g. PDF/is)
rather than chasing the latest version of PDF.

Other points:

    - PDF is already supported by CUPS
    - Current path for PS printers is: pdftops -> pstops -> printer
    - Future path for PDF-capable printers is: pdftopdf -> printer
    - Current path for raster printers is: pdftops -> pstops -> 
pstoraster -> printerdriver -> printer
    - Future path for raster printers is: pdftoraster -> printerdriver 
-> printer
    - Add discussion of job ticket stuff, and embedding them in PDF.

I can do a presentation on this...

>   6. Modularizing built-in drivers of GhostScript (Till Kamppeter)
>
>       + Easy change of printing workflow without loosing hardware
>         support (exchange renderer version, transfer format, simplified
>         workflow for embedded ...)


It is worth noting that this can be done over time - the existing
driver will still work in the short term without changes...

>   7. Did I forget anything important which we discussed on the list?
>
>       - Please post ASAP
>       - Please mention on phone meeting


Also:

    - Writing printer drivers - CUPS DDK, IJS, etc?



