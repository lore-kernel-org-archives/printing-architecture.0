Message-ID: <496E5F8A.5080402@gmail.com>
Date: Wed, 14 Jan 2009 22:56:26 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] ANNOUNCE: Foomatic 4.0.0 released!
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Printing-japan <printing-japan@lists.linux-foundation.org>

Foomatic 4.0.0 is released and now available for download [1]. Most
important new feature is that it supports the PDF printing workflow [2]
(replacing PostScript by PDF as standard print job format).

It also uses the CUPS PPD extenstions [3] for custom options (numerical,
string, and password options) so that these options can get fully
accessed in graphical user interfaces like the web administration
interface of CUPS [4] 1.4 or the GTK printing dialog.

The universal print filter foomatic-rip is now rewritten in C, so that
it can directly make use of libraries without needing Perl bindings.
This simplifies future development, like adding job ticket support.

Support for more detailed driver information, to make it easier for
users to choose the best driver, either by browsing the OpenPrinting web
site or by the local printer setup tool offering drivers from
OpenPrinting for automatic download. Also non-free drivers and PPDs are
now supported by the database.

New driver search facility. The OpenPrinting database can be queried
with a device ID read from a connected printer and also with incomplete
or not absolutely correctly typed manufacturer and model names and it
gives the best matches of possible printer models.

More flexibility in writing XML data files. printer/driver relations can
now also be defined in the printer XML files and not only in the driver
XMLs.

See more features in the README file of the foomatic-db-engine package [5].

My special thanks go to Lars Uebernickel who did most of the work on
developing Foomatic 4.0 as an intern at the Linux Foundation, mentored
by me.

Note that the OpenPrinting web site is still rebuilding and so the
updated Foomatic 4.0 PPD files will appear only in a few hours.

Have a lot of fun with the new Foomatic generation!

    Till


[1]http://www.linuxfoundation.org/en/OpenPrinting/Database/Foomatic
[2]http://www.linuxfoundation.org/en/OpenPrinting/PDF_as_Standard_Print_Job_Format
[3]http://www.cups.org/documentation.php/doc-1.4/spec-ppd.html
[4]http://www.cups.org/
[5]http://www.openprinting.org/foomatic-db-engine/README


