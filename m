Return-Path: <mike@easysw.com>
Message-ID: <44691BAC.5040205@easysw.com>
Date: Mon, 15 May 2006 20:24:12 -0400
From: Michael Sweet <mike@easysw.com>
MIME-Version: 1.0
References: <54FC073FD525F643838BA51F30EDAD5E029A9887@cacexc07.americas.cpqcorp.net>
	<44690EA5.1040106@gmx.net>
In-Reply-To: <44690EA5.1040106@gmx.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Re: [Desktop_printing] Deprecate IJS?
 GhostScript with only "opvp" as output device?
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmx.net>
Cc: "Oleinik, John H" <john.oleinik@hp.com>, printing-architecture <printing-architecture@freestandards.org>, desktop_printing@osdl.org

Till Kamppeter wrote:
> I also did not want to simply take it away, but simply hear opinions. We
> must at first observe how well the new opvp is going and perhaps see in
> real live were it needs to be improved. One thing which opvp most
> probably does not have yet is KRGB, which is important for economic
> handling of black and colored ink or toner.
> 
> Vector drivers are most interesting for laser printers who do not do
> PostScript but do another high-level language (PCL for example, but also
> the ESC/Page of the Epson EPL non-"L" and AcuLaser printers).
> 
> For inkjet printers and fax machines raster drivers based on IJS or CUPS
> raster are just fime. Raster devices are probably not accelerated by
> using opvp. Here the only benefit is reducing the number of different
> interfaces.
> 
> So for now it is perhaps best to keep the three interfaces and observe
> there developemt and drop only GhostScript built-in. Perhaps it should
> also be avoided to make a raster driver CUPS-raster-only but better let
> it have both the CUPS raster and opvp or IJS interface as BSD and
> Solaris do not use CUPS as default spooler.

Keep in mind that nothing prevents you from using CUPS raster with
Sun's LP spooler or any other non-CUPS print spooler - you just need
to provide a wrapper script (simpler than Foomatic) that runs the
corresponding CUPS filters.  That is, in fact, the way the
predecessor to CUPS worked on HP-UX, IRIX, and Solaris...

-- 
______________________________________________________________________
Michael Sweet, Easy Software Products           mike at easysw dot com
Internet Printing and Publishing Software        http://www.easysw.com
