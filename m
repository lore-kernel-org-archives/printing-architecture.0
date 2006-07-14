Return-Path: <imcdonald@sharplabs.com>
Message-ID: <789E617C880666438EDEE30C2A3E8D10EE78@mailsrvnt05.enet.sharplabs.com>
From: "McDonald, Ira" <imcdonald@sharplabs.com>
Date: Fri, 14 Jul 2006 08:26:37 -0700
MIME-Version: 1.0
Content-Type: text/plain;
	charset="ISO-8859-1"
Subject: Re: [Printing-architecture] directory structure / file name
	conve	ntions
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: "'Fujinaka, Todd'" <todd.fujinaka@intel.com>, Till Kamppeter <till.kamppeter@gmx.net>
Cc: printing-architecture@lists.freestandards.org

Hi,

Staying conformant to FHS (required for LSB conformance)
appears to need some significant thought and modifications
to our previous FSG/OP concensus (see Wendy Phillips' note
yesterday).

For those having trouble finding the authoritative source
for the FHS spec (I did), below is the home page:

  http://www.pathname.com/fhs/

The most recent release is v2.3 (29 January 2004) - there
are links for PDF, PS, HTML, etc. versions of FHS/2.3 on
the above web page.

Does anyone know if there is work-in-progress for a newer
version of FHS?  Thirty months is a long time in computers.

I don't think the FSG/OP should recommend a hierarchy std
for printing that is broken across the 'shipped with system'
versus 'later vendor packages'.  But I suspect that's just
what Debian, SUSE, and others want, for security reasons.
Yuck!

Comments?

Cheers,
- Ira

Ira McDonald (Musician / Software Architect)
Blue Roof Music / High North Inc
PO Box 221  Grand Marais, MI  49839
phone: +1-906-494-2434
email: imcdonald@sharplabs.com

> -----Original Message-----
> From: printing-architecture-bounces@lists.freestandards.org
> [mailto:printing-architecture-bounces@lists.freestandards.org]
> On Behalf
> Of Fujinaka, Todd
> Sent: Thursday, July 13, 2006 12:44 PM
> To: Till Kamppeter
> Cc: printing-architecture@lists.freestandards.org
> Subject: Re: [Printing-architecture] directory structure / file name
> conventions
> 
> 
> >-----Original Message-----
> >From: Till Kamppeter [mailto:till.kamppeter@gmx.net]
> >Some questions:
> >
> >- Should we also have similar alternatives for 
> /usr/lib/print-drivers/?
> >Theoretically driver could be put anywhere with absolute 
> paths in PPDs,
> >but for enhanced security environments it is important to 
> have them at
> >determined places and also for the drivers themselves we must be FHS
> >compliant.
> 
> Yes. I was just focusing on the PPD files because I thought I 
> should get
> the idea out first.
> 
> >- Can we use /opt/printing instead of /opt/openprinting, as the
> >drivers/PPDs do not come from FSG OpenPrinting.
> 
> It's really supposed to be /opt/<vendor>. I think /opt/openprinting
> would be in the spirit of that, but /opt/printing would require some
> discussion with the FHS.
> 
> >- "/usr is shareable, read-only data" for me would only mean 
> that while
> >running programs this should not be written, but software 
> packages can
> >be installed here. Is there another clause in the FHS 
> telling that only
> >software of the OS distribution can be installed here?
> 
> This is just the understanding I have from Debian developers who are
> held to the FHS standard. They told me that /usr is read-only, but you
> can write to it to update things that are there already. It's
> questionable whether new packages can be written there, but 
> an OS vendor
> can probably get away with installing things in /usr on their own OS.
> 
> >- There is still one problem with integrating these directories with
> >CUPS: If a printer needs a special backend for the low-level
> >communication, like for example the "hp" CUPS backend for the HP
> >printers used with HPLIP, dropping them into something like
> >/usr/lib/print-drivers/<supplier>/ will not work, as CUPS 
> looks only in
> >/usr/lib/cups/backend and absolute paths as device URI are not
> possible.
> > How can one solve this problem.
> 
> 
> Todd
> 
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.freestandards.org
> http://lists.freestandards.org/mailman/listinfo/printing-architecture
> 

-- 
No virus found in this outgoing message.
Checked by AVG Free Edition.
Version: 7.1.394 / Virus Database: 268.10.0/388 - Release Date: 7/13/2006
 

