Return-Path: <till.kamppeter@gmx.net>
Message-ID: <446CB026.4020804@gmx.net>
Date: Thu, 18 May 2006 19:34:30 +0200
From: Till Kamppeter <till.kamppeter@gmx.net>
MIME-Version: 1.0
Subject: Re: [Printing-architecture] Meeting notes for 2006-05-17 / LSB 3.2
	recommendation
References: <446BA39A.80802@Sun.COM> <446BBE7C.5090500@easysw.com>
In-Reply-To: <446BBE7C.5090500@easysw.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: Michael Sweet <mike@easysw.com>
Cc: Norm Jacobs <Norm.Jacobs@Sun.COM>, printing-architecture <printing-architecture@freestandards.org>

Michael Sweet wrote:
> Norm Jacobs wrote:
> 
>>    Installation Locations
>>       PPD
>>          /usr/share/ppd/{supplier}/{manufacturer}-{model}.ppd
>>             where whitespace and dash(-) are replaced with with
>> unserscore(_)
>>             supplier is the ppd file supplier (gutenprint, hplip,
>> cups, epson,
>>                                                hp, ...)
> 
> 
> Don't bother listing CUPS here; we will only be using
> /usr/share/cups/model for PPD files supplied with CUPS.
>

On systems with CUPS installed we will set a symbolic link:

ln -s /usr/share/ppd /usr/share/cups/model/vendor-ppd

>> ...
>>       Driver
>>          /usr/lib/printerdriver/{supplier}/...
>>             where whitespace and dash(-) are replaced with with
>> unserscore(_)
>>             supplier is the ppd file supplier (gutenprint, hplip,
>> cups, epson,
>>                                                hp, ...)
>>          /usr/lib/printerdriver/bin/{supplier-executable(s)}
>>             links to executables in the {supplier} directory
> 
>> ...
> 
> What kind of printer drivers are to be supported by this?  I don't
> see what you are trying to do here?
>

IJS drivers like hpijs for example, filters like pnm2ppa, OpenPrinting
vector driver libraries or executables. Extra files of printer drivers,
like ICC profiles for example. This way we especially avoid cluttering
/usr/bin with executables which are not supposed to be started from the
command line. The user "lp" will then have /usr/lib/printerdriver/bin/
in his $PATH (and GhostScript wrappers can also add
/usr/lib/printerdriver/bin/ to the $PATH before running GhostScript.

This is also done with BSD and Solaris in mind where CUPS is not the
default printing system.

CUPS driver scripts and backends must go into /usr/lib/cups/filter and
/usr/lib/cups/backend, either physically or as a symbolic link from
files in /usr/lib/printerdriver/{supplier}/.

>>    Printer identification
>>       use IEEE 1284 Device Id.  In particular, the MFG, MDL, and CMD
>> values
>>       are what we most want to see used (and correctly provided by
>> printer
>>       vendors).  This should be the EXACT same value for 1284 parallel,
>>       USB, SNMP, and ultimately IPP query.
> 
> 
> FWIW, device ID information is not standardized in IPP, at least not
> yet.  Some vendors put the device ID string in printer-info, but that
> gets truncated too easily.
> 
>> ...
> 
>>    Possibly require/recommend foomatic for LSB 3.2
> 
> 
> -1 from me on that one, we've seen too many problems over the years,
> and you really only need Foomatic to support legacy Ghostscript
> drivers...
> 

For a Linux with CUPS one really does not need Foomatic for new drivers.
Raster drivers can be done based on CUPS raster and so they do not need
any wrapper scripts, only a driver executable and a PPD file. Vector
drivers have to be done with OpenPrinting vector (GhostScript built-in
is deprecated). They need a GhostScript wrapper. But a wrapper for only
interfacing a GhostScript/opvp driver with CUPS, a simpler script than
foomatic-rip would serve.

So If we really say LSB is the LINUX Standards Base, we can let the LSB
3.2 require CUPS 1.2.x or newer, ESP GhostScript 8.15.2 or newer (to
serve pswrite, pdfwrite, cups, ijs, opvp), KDE Print, GTK Print, PAPI

If we want the LSB standard to be a standard for all Unixes (then they
should rename to USB perhaps) then we can only require more abstract
standards, especially PAPI, so that ISVs do not need to care about the
spooler used on the destination system. In that case also Foomatic
should be required by the standard, as it interfaces the same driver
(including CUPS raster drivers) to many different spoolers, including
CUPS, BSD LPD, and Solaris LP.

By the way, I have finished making an initial Mandriva RPM. More in a
separate posting.

   Till

