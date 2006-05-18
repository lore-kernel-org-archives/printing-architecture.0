Return-Path: <till.kamppeter@gmx.net>
Message-ID: <446CD01E.7020002@gmx.net>
Date: Thu, 18 May 2006 21:50:54 +0200
From: Till Kamppeter <till.kamppeter@gmx.net>
MIME-Version: 1.0
Subject: Re: [Printing-architecture] Meeting notes for 2006-05-17 / LSB 3.2
	recommendation
References: <446BA39A.80802@Sun.COM> <446BBE7C.5090500@easysw.com>
	<446CB026.4020804@gmx.net> <446CCE7F.4070501@easysw.com>
In-Reply-To: <446CCE7F.4070501@easysw.com>
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
> Till Kamppeter wrote:
> 
>> ...
>> CUPS driver scripts and backends must go into /usr/lib/cups/filter and
>> /usr/lib/cups/backend, either physically or as a symbolic link from
>> files in /usr/lib/printerdriver/{supplier}/.
> 
> 
> That's actually not necessary.  You can (and most vendors do, on
> MacOS X) put a full path to the filter in the PPD file.
> 
>> ...
>> So If we really say LSB is the LINUX Standards Base, we can let the LSB
>> 3.2 require CUPS 1.2.x or newer, ESP GhostScript 8.15.2 or newer (to
>> serve pswrite, pdfwrite, cups, ijs, opvp), KDE Print, GTK Print, PAPI
> 
> 
> Agreed.
> 
>> If we want the LSB standard to be a standard for all Unixes (then they
>> should rename to USB perhaps) then we can only require more abstract
>> standards, especially PAPI, so that ISVs do not need to care about the
>> spooler used on the destination system. In that case also Foomatic
>> should be required by the standard, as it interfaces the same driver
>> (including CUPS raster drivers) to many different spoolers, including
>> CUPS, BSD LPD, and Solaris LP.
> 
> 
> Does Foomatic do file type detection and conversion (i.e. the whole
> CUPS filter chain)?
> 

It delegates file type conversion to a2ps (or another converter, it is
configurable). Norm, feel free to add more sophisticated file type
conversion functionality.

   Till

