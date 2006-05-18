Return-Path: <till.kamppeter@gmx.net>
Message-ID: <446CC825.3020005@gmx.net>
Date: Thu, 18 May 2006 21:16:53 +0200
From: Till Kamppeter <till.kamppeter@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] PAPI bug: "lpstat -v" uses /etc/printcap on
	CUPS system
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: Norm Jacobs <Norm.Jacobs@Sun.COM>, "desktop_printing@osdl.org" <desktop_printing@osdl.org>, printing-architecture <printing-architecture@freestandards.org>

I am using the PAPI with the psm-ipp backend as CUPS is the spooler on
my Mandriva box. By default CUPS writes a pseudo /etc/printcap for
backwards compatibility. Therefore I did not get aware of the problem in
the first tests.

This writing of /etc/printcap can be turned off by putting a line only
containing "Printcap" into /etc/cups/cupsd.conf and then restarting the
CUPS daemon. After that I also deleted the last /etc/printcap which CUPS
keft over and entered

lpstat -v

again and then no print queue was listed. I cannot even print any more.
the "lpr" command tells me that the printer which I have specified does
not exist.

This means that without /etc/printcap libpapi does not work at all. And
as in CUPS printer enumeration is done via IPP and not via /etc/printcap
this is a real bug in libpapi.

The psm-ipp plug-in even has a function which uses an IPP extension of
CUPS to enumerate the printers, papiPrintersList() in libpapi-ipp/printer.c.

Very strange is also the output of

strace lpstat -v > x 2>&1

when CUPS does not write /etc/printcap. I have IPP set as compile-time
default for the print service module and in the strace output one can
see that lpstat fails to open /etc/printcap and then it decides to try
opening /usr/lib/psm-_all.so which also does not exist and probably
never existed. Why does lpstat check /etc/printcap? All communication
with the printing system should be done through the PSM backends, in my
case through /usr/lib/psm-ipp.so and this is never called in this case.

   Till

