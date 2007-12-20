DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:received:received:message-id:date:from:user-agent:mime-version:to:subject:content-type:content-transfer-encoding;
	bh=bK/XjCaTpPiNdwuRUMvqgHgwiMZs4outtWOV3OZ9PRw=;
	b=niW24FzZQfl92p6WJw3RLI2khvCGBCE/mkhAhbb/cHmd/qi2KOREYj5uiykd1+94zczr+ZvcRms6yAqpUopLZMV094POvkcK0lVPSscpfaJ5UcRbc9VD4VR/tc60bAgM8YplFfAHv2yg6hHRqPXLJTfySWFVNR2faqBQoognIBQ=
Message-ID: <476AE07E.3040206@gmail.com>
Date: Thu, 20 Dec 2007 21:37:02 +0000
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] News about auto-download of printer driver
	packages from OpenPrinting
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Printing-japan <printing-japan@lists.linux-foundation.org>, printing-architecture@lists.linux-foundation.org, "'printing-summit@lists.linux-foundation.org'" <printing-summit@lists.linux-foundation.org>

Hi,

to implement the feature requests of the printer manufacturers on the 
OpenPrinting Meeting in Tokyo in November I have added the following 
features to the OpenPrinting database/web query API:

- Download and display of the full license text: This is especially for
   proprietary drivers, as they can have very different licenses and
   printer manufacturers want to present the license to the user before
   he installs/downloads the driver. Therefore the license (in HTML) can
   now be added to a driver XML entry in the database. The OpenPrinting
   driver pages will have a link to show the license and the driver
   records returned through the web query API will also contain the
   license text, so that a printer setup tool can display the license and
   ask the user whether he is OK with it.

- More packaging flexibility: Before, every downloadable driver had to
   be put into one single package. Now one can split into several
   packages, for example the core part of the driver which also works on
   headless servers without X and an extra package with GUI frontends
   like ink level checks, ... Or several drivers having a common part, so
   each driver entry gets assigned one individual package and the package
   with the common part. A scope can be assigned to each package, like
   "general", "gui", "scanner", ... so that the printer setup tool can
   decide what needs to be installed. One simply specifies package names
   and scopes in the driver XML files.

- Possibility to host the driver packages on an external server (not
   recommended): Printer manufacturers can decide on hosting the drivers
   on their own servers but have printer setup tools downloading them
   automatically via OpenPrinting. One simply defines absolute paths to
   the drivers packages in the driver XML entry. This is not recommended,
   as having the drivers on another server one can easily get out of
   sync with the links in the driver XML files. By using wild cards in
   the driver links, at least simple version updates to not require the
   updating of the driver XML file.

- Driver dependencies: One can mark a driver that it needs another
   driver to be installed. So one can make an additional driver entry
   (driver XML file) for a proprietary plug-in for a free main driver.
   Most printers work with the free driver and so they are in the list of
   printers supported by the free driver. Some need a proprietary
   plug-in, so the plug-in is registered as another driver (with its own
   license text) and the printers which need it in its own printer list.
   As the plug-in needs the main driver, it is marked as requiring it.
   Dependencies with driver name and version can simply be put into the
   driver XML files.

- Driver locales: You can mark drivers to be especially for certain
   locales (countries, languages). So you can for example make three
   driver packaqes for (more or less) the same set of printers, one for
   Japan/China/Korea, the Americas, and Europe, to adapt the driver to
   the special needs in different regions of the world. In the driver
   XMLs you specify countries and languages for each of your drivers and
   the printer setup tool sends the user's country and language settings
   to OpenPrinting and gets back the best fitting driver choice.

- Internationalized answers to driver queries by printer setup tools:
   The printer setup tool can tell with which UI language it is running
   and if the driver XML contains translations into this language, the
   answer comes in this language.

In the beginning of the next year i will do the following:

- At first I will write a package uploading HOWTO and other
   documentation which explains the whole workflow of developing and
   packaging drivers, creating printer and driver XML files for the
   OpenPrinting database, and uploading everything to OpenPrinting. This
   will also include how to use all these new features.

- Then I will create another sample driver package set: HPLIP with its
   proprietary plug-ins. This will allow correct setup of all supported
   HP printers with any printer setup tool (not needing hp-setup). HPLIP
   will use package splitting to separate the core ("hplip") from the GUI
   ("hplip-gui"). The proprietary plug-ins will have separate driver XML
   entries which are marked as requiring HPLIP. These driver XML files
   will also contain the proprietary license text.

- Next step is adding the auto-downloading feature to
   system-config-printer (I have upstream SVN write access to it).
   system-config-printer is the printer setup tool used by Red Hat/Fedora
   and Ubuntu.

I hope to succeed with all these steps before the next LF Symposium in 
Tokyo in the beginning of March, so that I can demo full Plug'n'Print 
with an HP printer.

    Till


P. S.: What about the report from the last F2F of the OpenPrinting Japan 
workgroup?
