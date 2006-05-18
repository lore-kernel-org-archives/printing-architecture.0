Return-Path: <mike@easysw.com>
Message-ID: <446BBE7C.5090500@easysw.com>
Date: Wed, 17 May 2006 20:23:24 -0400
From: Michael Sweet <mike@easysw.com>
MIME-Version: 1.0
Subject: Re: [Printing-architecture] Meeting notes for 2006-05-17 / LSB 3.2
	recommendation
References: <446BA39A.80802@Sun.COM>
In-Reply-To: <446BA39A.80802@Sun.COM>
Content-Type: text/plain; charset=UTF-8; format=flowed
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
To: Norm Jacobs <Norm.Jacobs@Sun.COM>
Cc: printing-architecture <printing-architecture@freestandards.org>

Norm Jacobs wrote:
> 
> 
> We spent the vast majority of our meeting time discussing what we would 
> like to
> recommend for LSB 3.2.  We are also planning on meeting next week at our
> normal Wednesday time.
> 
> <RECOMMENDATION>
> 
>    ESPgs 8.15.1 or later with the following drivers compiled in
>             ijs    - InkJet Server
>             cups   - CUPS raster
>             opvp   - OpenPrinting Vector
>  
>    Installation Locations
>       PPD
>          /usr/share/ppd/{supplier}/{manufacturer}-{model}.ppd
>             where whitespace and dash(-) are replaced with with 
> unserscore(_)
>             supplier is the ppd file supplier (gutenprint, hplip, cups, 
> epson,
>                                                hp, ...)

Don't bother listing CUPS here; we will only be using
/usr/share/cups/model for PPD files supplied with CUPS.

> ...
>       Driver
>          /usr/lib/printerdriver/{supplier}/...
>             where whitespace and dash(-) are replaced with with 
> unserscore(_)
>             supplier is the ppd file supplier (gutenprint, hplip, cups, 
> epson,
>                                                hp, ...)
>          /usr/lib/printerdriver/bin/{supplier-executable(s)}
>             links to executables in the {supplier} directory
 > ...

What kind of printer drivers are to be supported by this?  I don't
see what you are trying to do here?

>    Printer identification
>       use IEEE 1284 Device Id.  In particular, the MFG, MDL, and CMD values
>       are what we most want to see used (and correctly provided by printer
>       vendors).  This should be the EXACT same value for 1284 parallel,
>       USB, SNMP, and ultimately IPP query.

FWIW, device ID information is not standardized in IPP, at least not
yet.  Some vendors put the device ID string in printer-info, but that
gets truncated too easily.

 > ...
>    Possibly require/recommend foomatic for LSB 3.2

-1 from me on that one, we've seen too many problems over the years,
and you really only need Foomatic to support legacy Ghostscript
drivers...

-- 
______________________________________________________________________
Michael Sweet, Easy Software Products           mike at easysw dot com
Internet Printing and Publishing Software        http://www.easysw.com
