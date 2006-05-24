Return-Path: <till.kamppeter@gmx.net>
Message-ID: <4474E38B.5030102@gmx.net>
Date: Thu, 25 May 2006 00:51:55 +0200
From: Till Kamppeter <till.kamppeter@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Notes of today's telecon
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: printing-architecture <printing-architecture@freestandards.org>

Oi,

here are some notes of what we talked about and what we agreed on today.


Participants
------------

(I hope I did not forget someone)

Ira McDonald
Glen Petrie
Norm Jacobs
Wendy Philips
Claudia Alimpich
Ian Murdock
Till Kamppeter


Directory structure
-------------------

In principle we agreed on what we had worked out last week, but there
are following additional points:

- PPDs should be in directories with language tags, multi-language PPDs
in a special one, preferrably named "mul":

/usr/share/ppd/<supplier>/en/
/usr/share/ppd/<supplier>/fr/
/usr/share/ppd/<supplier>/mul/
...

- Actual printing systems (like CUPS) should access the files via
symbolic links, if possible one link for the whole directory, supplied
by the distro's package of the printing system. For the PPDs for example
CUPS would only need one link:

ln -s /usr/share/ppd /usr/share/cups/model/vendor-ppds

Individual links only if really needed.

Remark (we did not mention this on the call): Reference to driver in the
PPD (for example in "*cupsFilter" line) can have absolute path, so one
would not necessarily need the driver to reside in /usr/lib/cups/filter/.


linuxprinting.org as central resource
-------------------------------------

- Not all printer manufacturers are comfortable with uploading their
drivers/PPDs to a central, external place like linuxprinting.org. To
still have linuxprinting.org being a central place to which you supply
make and model info from the device ID and getting returned a working
driver, we would accept nachine-readable links from the manufacturers
suppliers, so that a printer setup tool could automatically download the
driver. We will not accept links to interactive download dialogs like
'go to www.fooprinters.com and then click "Drivers" and choose your model'.

- linuxprinting.org is moving to FSG. I will soon get a root server
there and then start the activities to move it over. Then
OpenPrinting.org and linuxprinting.org activities can get more closely
together or we even join.


LSB Face to Face next week
--------------------------

We must work out here on the list what I will present next week. What to
suggest for LSB 3.2, what for 4.0. Slides need to be created.

- For 4.0 we should try to get a complete picture of FSG OpenPrinting
standards: PAPI, JTAPI, OPVP, PCM, SM, ...

- For 3.2 the most important are the directories we have agreed on.
Should we also require existing CUPS (1.1.x, 1.2.x?) and GhostScript
(with "cups", "ijs', "opvp" devices) infrastructure? Should we already
suggest PAPI?

We agreed on starting the discussionhere on printing-architecture and
then when we have put something together to cross-post it onto
desktop_printing.

Last-minute updates I can take up to the evening of May 31, Boston time.


Next printing-architecture phone meeting
----------------------------------------

There is no meeting on May 31.

   Till

