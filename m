Message-ID: <3FFF7CD2.8020303@gmx.net>
Date: Sat, 10 Jan 2004 04:17:22 +0000
From: Till Kamppeter <till.kamppeter@gmx.net>
MIME-Version: 1.0
References: <3F8F1CF9.2030302@mandrakesoft.com>
	<200311120000.53870.jarillon@abul.org> <3FBB9B05.7050104@gmx.net>
	<200311280958.03790.jarillon@abul.org>
In-Reply-To: <200311280958.03790.jarillon@abul.org>
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
Content-Transfer-Encoding: quoted-printable
Subject: [Printing-architecture] Proposal for Free Software Printing
 Collaboration Workshop on Libre Software Meeting 2004
List-Id: Printing architecture under linux
	<printing-architecture.freestandards.org>
List-Unsubscribe: <http://freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@freestandards.org?subject=unsubscribe>
List-Archive: <http://mail.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@freestandards.org>
List-Help: <mailto:printing-architecture-request@freestandards.org?subject=help>
List-Subscribe: <http://freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@freestandards.org?subject=subscribe>
To: printing-architecture <printing-architecture@freestandards.org>

I was invited to organize a sub-event about printing with free software=20
on the Libre Software Meeting 2004 in Bordeaux in France (2002:=20
http://lsm.abul.org/, 2003+: http://www.libresoftwaremeeting.org/). This=20
year's edition will take place at July 6-10, 2004.

The printing workshop will be a meeting of free software printing=20
developers for hacking, integrating their projects with each other,=20
discussion, planning for the future, ... All five days there will be a=20
meeting room for all participants with LAN and on one day there will be=20
a track in the public session (conference) in a lecture hall to present=20
the projects and also results of the work during the meeting. See below=20
for details.

This is also an opportunity for the members of the FSG OpenPrinting or=20
also members of the PWG to meet developers of current free software=20
printing projects as CUPS, LPRng, Foomatic, GIMP-Print, HPIJS, HPOJ,=20
KDE-Print, ... and to integrate the new standards as JTAPI, PAPI in=20
these projects.

Once, I want to ask everyone who wants to participate to tell it to me=20
and also to make suggestions of possible work to do during the workshop=20
and/or a possible presentation to give on our conference track.

Second, I want to ask you about whether you could talk with your=20
employers about sponsorship for the travel of the participants. The=20
travel is the highest cost factor as most participants come from the US.=20
Accomodation will be cheap, as we will make use of student's dormitories=20
and the universities cafeteria: 10 EUR per night, 3 EUR breakfast, 7 EUR=20
lunch.

The sponsor's logos will appear on the web site of the event and in=20
printed materials, signs on the exposition, ...

Below is a proposal about what could be done, which projects and people=20
could participate (most important people marked by an asterisk ('*').=20
Please make suggestions about people/projects/tasks which I have=20
forgotten/you wish to see on the event. The proposal is subject to=20
change, depending on actual participants, sponsors, your and the=20
participant's suggestions, tasks finished before the event, new ideas, ...

The concept is similar to a workshop proposed in 2002 (which did not
take place because the funding was withdrawn):

http://base.freestandards.org/pipermail/printing-discuss/2002-July/000176.h=
tml

Suggestions for the name of the sub event are welcome ("Free Software=20
Printing Summit"? "Free Software Printing Collaboration Workshop"? ...).

    Till


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D


Free Software Printing Collaboration Workshop



Basic Idea of the workshop
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D

With this meeting we want to get the key developers of the
printing-related projects together so that they ...

    * ... can coordinate and discuss the work on their projects,
    * ... get important things done for which one always didn't find the
      time,
    * ... integrate the projects with each other and share, re-use and
      design common code,
    * ... can meet personally (and not only via internet)
    * and so on.

We propose this workshop as a hacker's meeting: The participants are
together with PCs and laptops (connected in a LAN and to the internet)
and work on their projects.

The meeting should be held during the whole Libre Software Meeting 2004
in a "Hacker's Room". Near the end of the Libre Software Meeting there
will be a printing track in the conference where the printing-related
projects and their results of the hacking session are presented to the
visitors. In the "Hacker's Room" their will be no scheduled talks.
Perhaps everyone could introduce himself and his project shortly on the
first half day, then people can hack, discuss, or whatever helps for the
project.



Possible development steps which could be taken on the Workshop
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

These steps are subject to change, as some steps can already be done and
new ideas could appear until July when the workshop actually takes place.

These are my ideas for now, as soon as this proposal is distributed to
the participants, their ideas will be collected and added. I will send
updated proposals as soon as they are available.


Foomatic (3.1.x, 3.2)
---------------------

* Make adding printer drivers and adding data to the Foomatic database
as easy as possible, to get more printer entries from contributors and
especially printer drivers/database entries from manufacturers.

* Move Bi-Di support from ifhp (LPRng) into Foomatic, let Bi-Di features
of the printers being described in the Foomatic database (to have all
printer property info on one central place serving for all spoolers).

* Support new features of CUPS 1.2 (as Bi-Di) with Foomatic

* Draft a Foomatic file structure layout to be integrated into the
    "Linux Standard Base"

* Prepare Foomatic/linuxprinting.org to be mirrored to other servers,
for higher availability/security


GhostScript
-----------

* Continue the different flavors (AFPL, GNU, ESP) or do some merging?

* Work on colour management features


Drivers
-------

* Tune Gimp-Print to become a photo-quality driver for even more printer
models (specifically Canon printers and more dye sublimation models are
"next on the list")

* GUI concepts for advanced options (like colour curves) in GIMP-Print

* Develop some more generic printer drivers (or special Foomatic data):

    - Generic text printer (in case of PostScript input text is
      extracted)

    - Generic HPGL printer (to print on plotters)

    - Generic TIFF printer (some printers/plotters print TIFF files
      directly)

    - Generic DPOF printer (Digital Print Order Format, this is a special
      way to arrange a print job consisting of image files and a job
      ticket on a flash memory card. It is used by digital cameras to
      make it possible to select photos to be printed on the camera's
      screen and then put the memory card into an appropriate printer
      and print the photos by pressing one button. Alternatively, the
      card can be inserted into a terminal in a photo store to let the
      photos be developed by a photo lab. Such an arrangement of files on
      a flash card could also be done by a computer, based on a arbitrary
      print job sent to this "printer". This makes every printer with
      memory card slots working with free software. Or it makes it easier
      to get your computer-processed photos printed by a lab).


FSG OpenPrinting
----------------

* Implement the APIs of OpenPrinting in CUPS, LPRng, Foomatic, drivers, ...


GUI
---

* Support for printer Bi-Di features, complexer GIMP-Print options, and
color management in current printing GUIs (KDE Print, foomatic-gui)


Others
------

* Make more printer manufacturers publish free PostScript PPDs and free
drivers. Work out concepts for that.

* Find more developers for the projects, especially for the GUIs
(KDE-Print), for Foomatic, and for drivers (especially GIMP-Print
drivers for Canon and Lexmark).

* Colour management in GhostScript and/or CUPS, user interface(s) for
colour management

* Possibility to get PCL input filtered and printed on arbitrary
printers for which free drivers exist



Descriptions of most participating projects
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Foomatic
--------

Foomatic's foundation is a database which contains informatation about
printer hardware and printer software (spoolers and drivers), and how
they interoperate: which driver supports which printer how well and
which print options can be controlled with the selected printer/driver
combo?

The system integrates every free software printer driver with every
free spooler. It makes all the driver's options available to the
user. It's main part is an XML database which contains entries for all
free software printer drivers and more than 800 printers. It provides
all information about the driver's command lines with all its options.
Users can easily configure printer queues under all free printer
spoolers with an online-configurator on the linuxprinting.org web site
(or, alternatively, from a locally installed copy of the database).

Foomatic is now an inofficial standard: Mandrake, RedHat, SuSE,
Conectiva, Debian, Knoppix, and other distributions are using it.


GhostScript
-----------

In all Posix-style operating systems, as GNU/Linux, *BSD, Unix, ...
applications generate PostScript as device-independent page description
format to send the pages to be printed to the printer spooler.

If the destination printer is not a PostScript printer, the software
PostScript interpreter GhostScript is used to translate this PostScript
output into the printer's native language using a printer driver. The
current versions of GhostScript are fully compatible with the PostScript
Level 3 standard and so they are able to convert or display every
PostScript file. The drivers are either compiled into the GhostScript
executable, a plug-in to the IJS interface of GhostScript, or a filter
which converts generic raster graphics output of GhostScript into the
printer's native language. A special type of filters are the CUPS raster
drivers, a special driver concept developed for the CUPS printing system.

GhostScript development is done in various tracks. The main development
happens under the non-free but open-source AFPL license. After an AFPL
GhostScript version reaching one year of age it is released under the
GPL as GNU GhostScript. ESP GhostScript, whose development is lead by
the CUPS project, is derived from GNU GhostScript, but with several bugs
fixed and coming out of the box with all compile-in drivers.


GIMP-Print
----------

Gimp-Prints main goal is uncompromising quality. For a part of the
supported printer models, this has been achieved to such a degree,
that many users regard Gimp-Prints output as superior to the native
vendor driver's output in a Windows environment. Gimp-Print, contrary
to its legacy name, has long outgrown its origins as a plug-in to the
well-known image manipulation program. It has become a general-purpose
color image dithering software, which can be compiled to become
either a GhostScript printer driver, an IJS plug-in for GhostScript a
CUPS printer driver, a Gimp plug-in for printing, or a multi-purpose
library to be used by other programs.

It currently supports around 500 printer models, mainly color inkjets,
but also lasers and dye sublimation printers.


HPIJS
-----

This is the first free software printer driver project driven by a
printer manufacturer. HPIJS provides free software support for nearly
all of HP's inkjet printers and all PCL-5e/5c laser printers. It is
regularly updated when new printer models appear. The project works
closely together with Foomatic and Foomatic PPDs are shipped with the
HPIJS package.


IBM's Omni
----------

Having a big knowledge and code base from the printer drivers of their
OS/2 operating system, IBM has developed a highly modular,
XML-database-driven printer driver package to make these resources
available for free operating systems. The system supports more than
400 printers and it is planned that it can be dynamically expanded to
any printer for which there is an UPDF description file.


HPOJ
----

HPOJ is an HP-supported project to make HP's multi-function devices
working to their full extent under free software. Besides printing
they can already scan and make photo memory cards available to the
PC. In future releases it is planned to also support PC-controlled
faxing.


KDE Print
---------

Started as graphical administration and printing frontends for the
CUPS printer spooler KDEPrint is the most sophisticated free graphical
printing environment: It supports the spoolers CUPS, LPD, and LPRng,
sets up printers with the help of Foomatic, and even does things as
driver export for Windows clients, pre-filtering of jobs with
arbitrary commands, accounting, and more.


FSG OpenPrinting
----------------

The goal of the OpenPrinting WG is to develop and promote a set of
standards that will address the needs of desktop to enterprise-ready
printing, including management, reliability, security, scalability,
printer feature access and network accessibility (Mission statement from
OpenPrinting web page).



Project URLs
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Foomatic:    http://www.linuxprinting.org/
ESP GhstScr: http://www.cups.org/ghostscript.php
GhostScript: http://www.ghostscript.com/
libicc:      http://web.access.net.au/argyll/color.html
argyll:      http://web.access.net.au/argyll/argyllcms.html
LittleCMS:   http://www.littlecms.com/
HPIJS:       http://hpinkjet.sourceforge.net/
GIMP-Print:  http://gimp-print.sourceforge.net/
IBM's Omni:
http://www-124.ibm.com/developerworks/oss/linux/projects/omni/
foo2zjs:     http://home.mn.rr.com/richardsons/foo2zjs/
ppmtomd:     http://www.dcs.ed.ac.uk/home/jcb/ppmtomd/
HPOJ:        http://hpoj.sourceforge.net/
KDE-Print:   http://printing.kde.org/
CUPS:        http://www.cups.org/
LPRng:       http://www.lprng.com/
FSG OpenPrinting: http://www.openprinting.org/



Free software developers who could participate
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The most important people of the free software printing area are marked=20
by an asterisk ('*').


Spoolers
--------

*Michael Sweet         CUPS (leader), ESP GhostScript   U. S.
       mike@easysw.com

*Patrick Powell        LPRng (leader),                  U. S.
       papowell@astart.com


Printer/driver/spooler integration
----------------------------------

*Till Kamppeter        Foomatic (leader), Mandrake      France
       till.kamppeter@gmx.net

*Grant Taylor          Foomatic (founder)               U. S.
       gtaylor@picante.com

*Patrick Powell        Foomatic (developer),            U. S.
       papowell@astart.com

Johannes Meixner      Foomatic (developer), SuSE       Germany
       jsmeix@suse.de


GhostScript
-----------

*Michael Sweet         ESP GhostScript (leader)         U. S.
       mike@easysw.com

*Till Kamppeter        ESP GhostScript (developer)      France
       till.kamppeter@gmx.net

*Ralph Giles           GhostScript (coordinator free version) U. S.
       giles@ghostscript.com

*Raph Levien           GhostScript (developer, leader?) U. S.
       raph@acm.org, raph@levien.com


Distributions
-------------

Till Kamppeter        Mandrake                         France
       till.kamppeter@gmx.net

Johannes Meixner      SuSE                             Germany
       jsmeix@suse.de

Tim Waugh             Red Hat                          U. K.
       twaugh@redhat.com

Bernhard Rosenkr=E4nzer Ark Linux                        Germany
       bero@bero.org

Klaus Knopper         Knoppix                          Germany
       knopper@linuxtag.org


Color Management
----------------

Graeme Gill	      libicc, argyll (Color Managmnt.) Australia
       graeme@colorbus.com.au

Mart=ED Maria           Little Color Management System   ???
       marti@littlecms.com


Drivers
-------

*David Suffield        HPIJS (leader), HPOJ, HP         U. S.
       david.suffield@hp.com

Cory Meisch           HPIJS, HPOJ, HP                  U. S.
       cory.meisch@hp.com

Shiyun Yie            HPIJS, HPOJ, PostScript PPD, HP  U. S.
       shiyun.yie@hp.com

*Robert Krawitz        GIMP-Print (leader, Epson dr.)   U. S.
       rlk@alum.mit.edu

Roger Leigh           GIMP-Print (developer)           U. K.
       roger@whinlatter.uklinux.net

Andy Stewart          GIMP-Print (documentation)       U. S.
       andystewart@comcast.net

Peter Missel          GIMP-Print (Canon driver)        Germany
       peter.missel@onlinehome.de

Karsten Festag        GIMP-Print (Canon driver)        Germany
       karsten.festag@gmx.de

Mark Hamzy            Omni (leader), IBM               U. S.
       hamzy@us.ibm.com

Rick Richardson       foo2zjs                          ???
       rickr@mn.rr.com

Julian Bradfield      ppmtomd                          U. K.
       jcb+alps@inf.ed.ac.uk


Printing GUI
------------

*Michael Goffioul      KDE Print (development)          Belgium
       goffioul@imec.be, sw286000@swing.be

*Chris Lawrence        foomatic-gui                     U. S.
       cnlawren@olemiss.edu, lawrencc@debian.org


Documentation
-------------

Kurt Pfeifle          KDE Print, Samba Printing        Germany
       kpfeifle@danka.de, k1pfeifle@gmx.net


FSG OpenPrinting
----------------

*Mark Hamzy            IBM                              U. S.
       hamzy@us.ibm.com

*Claudia Alimpich      IBM                              U. S.
       alimpich@us.ibm.com

Ira McDonald          High North Inc                   U. S.
       imcdonald@sharplabs.com

Glen Petrie           Epson                            U. S.
       glen.petrie@eitc.epson.com

Till Kamppeter        Mandrake, linuxprinting.org      France
       till.kamppeter@gmx.net

Tom Hastings          Xerox                            U. S.
       hastings@cp10.es.xerox.com

Norm Jacobs           Sun                              U. S.
       Norm.Jacobs@Sun.COM




