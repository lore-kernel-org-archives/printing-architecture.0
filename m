Message-ID: <3E790446.9020809@gmx.net>
Date: Thu, 20 Mar 2003 00:59:02 +0100
From: Till Kamppeter <till.kamppeter@gmx.net>
MIME-Version: 1.0
References: <OF9DEA49C7.6D6A2E9F-ON87256CE5.0003CEAE@us.ibm.com> <3E7699B0.2050802@gmx.net> <3E77A0D9.4090006@gmx.net>
In-Reply-To: <3E77A0D9.4090006@gmx.net>
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Re: Slides upload: FTP problems
Sender: printing-architecture-admin@freestandards.org
Errors-To: printing-architecture-admin@freestandards.org
List-Help: <mailto:printing-architecture-request@freestandards.org?subject=help>
List-Post: <mailto:printing-architecture@freestandards.org>
List-Subscribe: <http://freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@freestandards.org?subject=subscribe>
List-Id: <printing-architecture.freestandards.org>
List-Unsubscribe: <http://freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@freestandards.org?subject=unsubscribe>
List-Archive: <http://freestandards.org/pipermail/printing-architecture/>
To: Claudia Alimpich <alimpich@us.ibm.com>
Cc: printing-architecture@freestandards.org

Oi,

as wide parts of the US are deeply buried under snow, here is a 
text-only version (below) to be readable also from cell phone displays 
or PDAs (so that fixed phone and/or electricity are not needed).

Here are also HTML versions:

http://www.linuxprinting.org/till/tmp/talk_pwg2003_html/talk_pwg2003.html
http://www.linuxprinting.org/till/tmp/talk_pwg2003_html/text0.html
http://www.linuxprinting.org/till/tmp/talk_pwg2003_html.tar.gz
http://www.linuxprinting.org/till/tmp/talk_pwg2003_html.zip
http://www.linuxprinting.org/till/tmp/talk_pwg2003.txt

I hope now everyone can read it.

    Till


linuxprinting.org and Foomatic

Till Kamppeter, MandrakeSoft, France
PWG/FSG OP Meeting, March 31-April 4, 2003

Summary

- What is Foomatic?
- How did Foomatic emerge?
- How does Foomatic work?
- What is planned for the future?
- What is Foomatic?

Foomatic: Universal Printing Infrastructure

- Database about how printers are supported by free software
- Most complete database: Lists all free drivers and around 1000 printers.
Contains also information of how the drivers are executed (Command line, 
options)
- Easy setup of printers under all spoolers

What is Foomatic?

- PPD file generator for all free printing systems (CUPS, PPR, PDQ, LPD, 
GNUlpr, LPRng, CPS, no spooler)
- User has access to all the driver's options when printing
- Scripts for administration/printing with the same interface for all 
spoolers
- Inofficial standard used by Mandrake, Conectiva, Red Hat, SuSE, 
Debian, KDE Print, ...

How did Foomatic emerge?

Foomatic: A Short History
- Started 1998 by Grant Taylor, author of the Printing HOWTO
- CUPS-O-Matic In early 2000, shortly after first CUPS release, later 
PDQ-O-Matic
- In August 2000 I started at MandrakeSoft to switch Mandrake 7.2 to 
CUPS as the first distro.
- To not loose printer support in Mandrake 7.2, I entered the execution 
details of all drivers.
- Since August 2001 I am project leader.

How does Foomatic work?

- XML-Database consisting of entries for
   o Printers: Contains make, model, comments, support quality, ...
   o Drivers: Contains name, type, command line prototype, list of 
supported printers, ...
   o Options: Contains name, type, possible settings, for what 
printers/drivers, what to insert into command line/print job
- From this is derived which drivers
with which options support a printer

How does Foomatic work?

- This data forms the pages of linuxprinting.org
- The same data is used to generate PPD files:
- The user chooses printer and driver
- An Adobe-compliant PPD file for the printer/driver combo is made
- The user sets up a print queue with this file and the universal 
Foomatic filter "foomatic-rip"

How does Foomatic work?

Foomatic filter
- "foomatic-rip" filter converts PostScript to the printer's native 
language.
- Filter is Perl script, reads printer capabilities from PPD file 
without libraries
- Filter receives user's settings via spooler or embedded in the job's 
PostScript
- Filter sets up GhostScript command line from info of the config file 
and the user
- Also inserts settings in job (PS, PJL)

How does Foomatic work?

- Interaction with applications/frontends
- Applications produce PostScript to print
- Options can be set on the command line: "lpr -P lj -o Resolution=1200 
file.ps"
- KDE Applications use GUI "kprinter" which gets capability info from 
Foomatic PPD or CUPS
- Other GUIs: XPP, GTKlp (CUPS), GPR (PPD)
- The PPD files are also used for PPD-aware apps (as OpenOffice.org) or 
Windows/Mac clients.

How does Foomatic work?

Same interface for administration/usage of every spooler

foomatic-configure
- Administration of print queues (add, modify, copy, ...)
- Adding queues with one command line under any spooler

foomatic-printjob
- Tool for printing and managing jobs
- Unifies functionality of "lpr", "lpq", "lprm", "lpc" also for spoolers 
without such commands

What is planned for the future?

- Printer/driver classes
   o Classes contain printers or drivers with common features (as all A3 
printers, all PCL5, ...)
   o Option/choice constraints can specify classes
   o Class XML files contain common info as printer language, comment 
text snippets, ...
- Option conflict handling (as duplex on transparencies)
- PickMany, String and Password option types

What is planned for the future?

- "pstoedit" driver entry for HP-GL/2 plotters
- Links to PPD/UPDF files in database, hosting these files on 
linuxprinting.org
Free HP and Kyocera PPDs already available.
- Automatic Foomatic data generation for UPDF files with Omni
- GUI for Foomatic tools
- Printer auto-detection
- Auto-config of OpenOffice.org, GIMP, ...

Final words

Foomatic ...
... is the most complete printer/driver compatibility database
... generates Adobe-compliant PPD files
... has a universal filter for all spoolers
... provides tools for printer administration and printing for all free 
spoolers
So Foomatic is already one of the best solutions for 
printer/driver/spooler integration, but ...

Final words

- Currently, 90 % of the work on Foomatic is done by me
- More developers needed to implement important, but still missing features
- Database must be kept up-to-date with new printer models
- Publishing of PPDs/UPDFs as free software by printer manufacturers 
needed, to add these files to linuxprinting.org

Till Kamppeter wrote:
> Till Kamppeter wrote:
> 
>>
>> I have put up the slides on linuxprinting.org for now:
>>
>> http://www.linuxprinting.org/till/tmp/talk_pwg2003.pdf
>> http://www.linuxprinting.org/till/tmp/talk_pwg2003.sxi
>>
>> The ".sxi" file is created with OpenOffice.org 1.0.1 under Mandrake 
>> Linux 9.0.
>>
> 
> To make download easier, I have added the following formats for my slides:
> 
> http://www.linuxprinting.org/till/tmp/talk_pwg2003.pdf.zip
> http://www.linuxprinting.org/till/tmp/talk_pwg2003_POOR_QUALITY.ppt
> 
> the really shortest is the PowerPoint version which I have generated 
> with OpenOffice.org, but the slides in it look ugly, the background is 
> messed and the logo is missing, but one can at least read the text and 
> the diagrams.
> 
>    Till
> 



