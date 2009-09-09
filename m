Message-ID: <4AA7C426.807@gmail.com>
Date: Wed, 09 Sep 2009 17:05:10 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Next phone meeting / Printer driver design
	and packaging training
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Printing-japan <printing-japan@lists.linux-foundation.org>, Open Printing <printing-architecture@lists.linux-foundation.org>
Cc: Mike Woster <mwoster@linux-foundation.org>

Hi,

next week, Tuesday, September 15, 8 AM in Tokyo, we will have our next 
OpenPrinting US/Europe/Japan phone meeting. See below for call-in 
numbers and starting times in other time zones.

We will talk about the results of the Google Summer of Code 2009 and 
also about a possible training session for the printer manufacturers 
about designing printer drivers for Linux and packaging them for 
automatic download.

I want to ask you kindly to participate in the meeting and, if you are 
not able to, to tell us.

As preparation for the meeting please read on here about the training 
session and also provide us with an English translation of the last 
OpenPrinting Meeting(s) in Japan.

The training is about three days about how to design and package printer 
drivers so that they work perfectly with Linux and that they can be made 
available as LSB-based distribution-independent downloadable driver 
packages and also how to create PPD files which fully support the 
features of the Common Printing Dialog. We can even include a 
presentation of the dialog by Peter Sikking.

The tutorial could be coupled to a conference like the Linux Foundation 
Japan Symposium in this fall.

The course will contain the following:


1. Driver design: What to do and what not to do

    The developers at the manufacturers usually come from the Windows
    world and have problems with the concepts of Unix and CUPS. This
    leads to a lot of mistakes in driver design, up to turning
    OpenOffice.org SUID root.

    In this section I will show how printer drivers are integrated in the
    CUPS environment (for both PDF and PostScript printing workflow) and
    show the common mistakes which I have seen in manufacturer-supplied
    printer drivers for Linux. The DOs and DONTs of driver design.


2. PPD design: PPDs to integrate with CUPS and the Common Printing
    Dialog

    I will show what is important to know about PPDs, especially for the
    CUPS environment. CUPS extensions for numerical, string, and password
    options, multi-language PPDs, ... I also demonstrate the
    possibilities which the Common Printing Dialog offers and show how
    they are controlled by the PPD file: Manufacturer-logo, printer
    picture, icons for options and choices, passwords, fax numbers,
    files, ...

    Here there could also be inserted a presentation of the Common
    Printing Dialog and its UI design by Peter Sikking.


3. The mechanism of automatic driver downloads

    This section is to show how the automatic driver download works: The
    OpenPrinting database, the package archives, web query API and
    system-config-printer and Jockey as client.

    Also a short introduction into the LSB will be given.

    Security: Package signing by manufacturers, Signing of the
    manufacturer's keys by the LF. Choice for the distributions: Global
    printer driver download key for the LF, individual manufacturer keys.

    It is a preparation for the next section about building and preparing
    the driver for the upload.


4. Building the driver and preparing it for the upload

    Installing the LSB SDK, building the driver binaries as LSB binaries,
    how to arrange the driver's components in subdirectories of /opt so
    that it does not conflict with parts of the OS or with other drivers,
    what does the packaging by the server do so that the driver gets
    integrated in the system. How to make the binary tarball for the
    upload. How to influence the presentation of the driver on the web
    site by providing printer and driver XML files.

    Knowledge in RPM or Debian packaging is not required.


5. Uploading the driver

    Signing of packages (if needed also local auto-generation of the
    packages to sign them and upload signed packages). What metadata
    needs to be entered. File formats allowed for the upload. User
    levels: Uploader, Trusted Uploader, Administrator. Approving and
    rejecting packages by the administrator, correction of rejected
    packages.


6. Maintenance

    Our bug tracking system, interact with users to get problems solved,
    updates for bug fixes, security issues, new models. Using our forums
    for support.


7. Marketing and Promotion

    [ To be presented by someone of our web developers ]

    Advertizing on pages of the OpenPrinting web site, doing
    announcements and blogs related to printing, ...


Intended audience are the engineers of the printer manufacturers (HP, 
Ricoh, Canon, Epson, Brother, Konica Minolta, Samsung, Dell, ...) who 
develop drivers for Linux and their managers.


The course can also be considered as an official opening of the 
automatic download service for manufacturer-supplied printer driver 
packages.


Best location to get as many manufacturers as possible participating 
would be Tokyo.


WDYT?


    Till


     - Monday 14 September 2009, Evening
       - US
         4pm in San Francisco - US PDT (Pacific Daylight Time)
         5pm in Colorado - US MDT (Mountain Daylight Time)
         6pm in Chicago - US CDT (Central Daylight Time)
         7pm in New York - US EDT (Eastern Daylight Time)

     - Tuesday 15 September 2009, Morning
       - Europe
         1am in Berlin - CEST (Central European Summer Time)
       - Japan
         8am in Tokyo - JST (Japan Standard Time)

     * Main Number (Till Kamppeter, LF, leader)
       International: +1-218-936-7999
       Access Code:   491659#
