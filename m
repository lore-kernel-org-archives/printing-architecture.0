Message-ID: <4934598A.30500@gmail.com>
Date: Mon, 01 Dec 2008 22:39:22 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <e395be80811270817n502ccd16wf6cc90f85364f5ae@mail.gmail.com>
	<4934592F.9020203@gmail.com>
In-Reply-To: <4934592F.9020203@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Next OP SC - Mon/Tue - 1/2 December
	2008 - please join us
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Ira McDonald <blueroofmusic@gmail.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>

I forgot the report. Here we go.

    Till

----------------------------------------------------------------------


1. OpenPrinting Database
------------------------

http://www.openprinting.org/
http://openprinting.org/driver_list.cgi
http://openprinting.org/printer_list.cgi
http://www.linux-foundation.org/en/OpenPrinting/Database/DriverPackages

- Database of all printers for which is known whether they work or do
not work under Linux. Information collected by users and printer
manufacturers. Includes information about which drivers work, which ones
are recommended, which ones deprecated, ... Users can directly
contribute comments and new printer entries.

- Database generates PPD files for many free software drivers,
especially the built-in drivers of Ghostscript.

- Database hosts ready-made PPD files from printer manufacturers, mostly
for PostScript printers, but also for PCL printers using Ghostscript
drivers.

- Database hosts also LSB-based RPM and Debian packages of drivers.
These packages can get installed on all LSB-compliant Linux
distributions. This simplifies driver installation for users (no
compiling, one package for all distros) and driver packaging for driver
developers and printer manufacturers (One LSB RPM for all distros, less
packaging and testing work and cost). The package repositories are
indexed for automatic updates with the distro's package managers (apt,
yum, ...).

- Web query API for automatic look-up of driver packages and PPDs. This
allows printer setup tools and (like system-config-printer) and driver
managers (like Jockey) to automatically find suitable drivers for an
auto-detected printer, and to download and install them automatically.

http://www.linuxfoundation.org/en/OpenPrinting/Database/Query

- Foomatic software for use of local copies of the database and
integration of all printer drivers with the printing systems. This is a
core part of the printing infrastructure in all distributions.

- I am working together with the printer manufacturers to help them
packaging the drivers and with developers of configuration tools
(system-config-printer by Tim Waugh, used by default in Fedora/Red Hat,
Ubuntu, an Mandriva; Jockey by Martin Pitt, working for the LF's Driver
Backports group),

- 1 GSoC 2008 student has worked on a web application for administration 
of user contributions and uploads and he is still working on it. He will 
work on it full time in his project semester Dec 2008 - May 2009.

- I am also taking care of keeping the system running and adapting it to 
the increasing traffic.


2. Common Printing Dialog
-------------------------

http://www.linuxfoundation.org/en/OpenPrinting/CommonPrintingDialog

- I have organized the development of a Common Printing Dialog for all
applications and desktops to make printing easier by having only one
dialog with access to all functionality without being overloaded.

- The design was done by OpenUsability people who met regularly on the
Printing Summits organized be me and on an additional meeting (2006-2008).

http://wiki.openusability.org/printing/index.php/Specification

- The implementation is mostly done by two GSoC 2008 students: Dialogs 
for KDE and GNOME and a D-Bus API to call the dialogs out of 
applications. Patches for Qt/KDE and GTK/GNOME libraries to make most 
applications using the new dialogs are planned. Big part of the 
mentoring of the students was done by me.

http://www.linuxfoundation.org/en/OpenPrinting/PPDExtensions
http://www.linuxfoundation.org/en/OpenPrinting/CommonPrintingDialog/TestDialogFromBZR

- During the implementation work period of the GSoC 2008 students I have 
designed specs for PPD extensions so that driver developers/printer 
manufacturers can make use of the dialog's functionality to present 
their driver's user-settable options.

http://www.linuxfoundation.org/en/OpenPrinting/PPDExtensions


3. PDF as standard print job format
-----------------------------------

http://www.linuxfoundation.org/en/OpenPrinting/PDF_as_Standard_Print_Job_Format

I have coordinated the replacement of PostScript by PDF as the standard
print job format and created a reference implementation in the upcoming
Ubuntu 8.10 (Intrepid) distribution. Bug reports in the Ubuntu bug 
tracking system stabilized and matured the new filters.

Several CUPS filters for handling PDF were implemented by OpenPrinting 
Japan. I have evaluated and tested them and checked their ability to be 
packageable for Linux distribution. I told the people of OP Japan what 
needed to get changed and where there are bugs and they fixed it.

Other CUPS filters where done by a Google Summer of Code student. I have 
done part of the mentoring here.

foomatic-rip was made capable to take PDF input by a student who worked 
on an internship at the Linux Foundation. He worked under my supervision.

I have also reported several bugs and feature requests to Ghostscript, 
CUPS, OpenOffice, ... to make the PDF workflow work and to move it 
forward. I have also fixed several bugs in Ghostscript and the filters 
by myself.


4. Printing Summits and other meetings
--------------------------------------

http://www.linuxfoundation.org/en/OpenPrinting/MeetingInfo

Organization of yearly Printing Summits (on the Linux Foundation
Collaboration Summit from 2009 on) where all important people having to 
do with printing under Linux will meet: Printer manufacturers, Linux 
distribution developers, desktop, application, driver, core printing 
system developers. Here the future development is planned and important 
decisions are made.

Organization of additional meetings if needed, for example meetings with 
the Japanese OpenPrinting workgroup and printer manufacturers in Tokyo 
(Nov 2007, July 2008).


5. Coordination/Integration of printing-related free software projects
----------------------------------------------------------------------

General: Reporting bugs to CUPS, Ghostscript, and driver projects, also
fixing smaller bugs. Participation in development discussion.
Cooordination between the projects. Bug and incompatibility workarounds
via Foomatic.

Ghostscript: Merge of ESP Ghostscript with GPL Ghostscript so that
distros can use the newest GPL Ghostscript with all drivers (beginning 
of 2007).

In 2008 several bug fixes, like Duplex, Resolution, and InputSlot for 
PCL-XL drivers (pxlmono/pxlcolor), discussion with GS developers about 
further development, driver integration, PDF capabilities, ...

CUPS: Bug reports feature requests, development discussion, also some
bug fixes.

HPLIP: Testing on real printers (supplied by HP through USD 10000 PO 
July 2007-June 2008, new USD 10000 PO 2008/2009 in place), bug fixes, 
development discussion.


6. Development and creation of printing APIs for Linux/Unix
-----------------------------------------------------------

http://www.linuxfoundation.org/en/OpenPrinting/PAPI
http://www.linuxfoundation.org/en/OpenPrinting/JTAPI
http://www.linuxfoundation.org/en/OpenPrinting/APAC

Printing API (PAPI), Job Ticket API (JTAPI), Printer Driver API (PDAPI, 
OpenPrinting Vector), ...

1 Google Summer of Code 2008 student has done the CUPS implementation of 
PAPI.


7. Organization of the GSoC 2008 participation of the Linux Foundation
----------------------------------------------------------------------

http://www.linuxfoundation.org/en/OpenPrinting
http://code.google.com/soc/
http://code.google.com/soc/2008/linux/about.html
http://www.linuxfoundation.org/en/Google_Summer_of_Code

Application for the Linux Foundation as mentoring organization, setup of 
project ideas, evaluation of student applications and assigning them to 
projects and mentors, reminding mentors and students to deadlines, 
mentoring work on the Common Printing Dialog, the OpenPrinting Database 
Admin web app, the PDF filters, ...


8. OpenPrinting Steering Committee
----------------------------------

Monthly phone meetings to plan the actions of OpenPrinting, report about 
what got done, organize meetings, ...


9. Printing Requirements in the LSB
-----------------------------------

I have made important printing-related requirements going into the LSB, 
which is very important to make distribution-independent printer driver 
packages possible.

http://www.linuxfoundation.org/en/Specifications
http://refspecs.linux-foundation.org/LSB_3.2.0/LSB-Printing/LSB-Printing/book1.html


Future plans
------------

In addition to the continuation on the topics mentioned above, we plan 
to do the follwing:

1. Printer (hardware) testing and self-verification program with branding

We need to create a procedure for that, so that hardware vendors can 
tell potential customers that there devices work with Linux

2. Integrating color management as standard part into the printing 
workflow. In Mac OS X this is already standard. In Linux this is really 
missing. The PDF printing workflow is already the first step towards it.

3. Having more eyes on desktops and applications, about which printing 
dialogs they use the quality of their PostScript or PDF output, whether 
they switched already to PDF, ...., rgreesions,...

4. Organize the next OpenPrinting Summit as part of the Linux Foundation 
Collaboration Summit in April (?) 2009.




Till Kamppeter wrote:
> Ira, thanks for posting another reminder.
> 
> Agenda:
> 
> - Year end and marketing report: Anything missing? To be changed?
>   See the report below. It will be used by the LF marketing to be put
>   into the web site and also presented to the printer manufacturers \
>   which are LF members to inform them what is going on.
> 
> - News:
>    o Foomatic 4.0 shortly before release
>    o Subhankar Sett will soon continue to work on a web app for admin of
>      the OP Server
>    o Funding needed for Lars Uebernickel to do Common Printing Dialog
> 
> - Any news from Japan? From somewhere else? I saw Norm reporting a bug
>   on CUPS. He seems to be back!
> 
> Hope to hear you all in one and a half hours.
> 
>    Till
> 
