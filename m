Return-Path: <imcdonald@sharplabs.com>
Message-ID: <789E617C880666438EDEE30C2A3E8D10EE1E@mailsrvnt05.enet.sharplabs.com>
From: "McDonald, Ira" <imcdonald@sharplabs.com>
Subject: RE: [Printing-architecture] Notes of today's telecon
Date: Fri, 26 May 2006 09:59:05 -0700
MIME-Version: 1.0
Content-Type: text/plain;
	charset="ISO-8859-1"
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: 'Michael Sweet' <mike@easysw.com>, Till Kamppeter <till.kamppeter@gmx.net>
Cc: Wendy Phillips <wendyp@sun.com>, Norm Jacobs <Norm.Jacobs@Sun.COM>, printing-architecture <printing-architecture@freestandards.org>

Hi,

I'm going to support Michael's point here.  The prevailing
usage in the localization industry and in most file systems
is to use language tag directories immediately _before_ the
terminal filename in a path.

And leaving aside "extra" entirely (not that we should),
10,000 printers with typically 10 languages supported
makes a directory of 100,000 PPDs with the language tag 
as a suffix in the terminal filename - awful performance
for search and installation tools.

Though an installation tool MIGHT have to search multiple
directories for a given model, it could easily check the
user's current locale and present as the default (before
ANY other searching) a PPD for the current locale.

I sympathize with Glen about standardizing "extra", but
I tend to think it's mostly hopeless - syntax yes, content
not worth the effort.

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
> Of Michael Sweet
> Sent: Friday, May 26, 2006 10:44 AM
> To: Till Kamppeter
> Cc: Wendy Phillips; Norm Jacobs; printing-architecture
> Subject: Re: [Printing-architecture] Notes of today's telecon
> 
> 
> Till Kamppeter wrote:
> > Norm Jacobs wrote:
> >>    Till also suggested the "extra" tag. I'm not clear why. Till?
> >>
> > 
> > For one and the same printer there can be more than one 
> driver but the
> > PPDs come from the same supplier. There are PPDs from 
> Foomatic for the
> > HP LaserJet 4050 for the "ljet4", the "pxlmono", and the 
> "hpijs" driver
> > for example. Gutenprint has standard (full option set) and 
> simplified
> > (reduced option set) PPDs.
> > 
> > Then we can do
> > 
> > /usr/share/ppd/foomatic/HP/HP-LaserJet_4050-ljet4-en.ppd
> > /usr/share/ppd/foomatic/HP/HP-LaserJet_4050-pxlmono-en.ppd
> > /usr/share/ppd/foomatic/HP/HP-LaserJet_4050-hpijs-en.ppd
> > /usr/share/ppd/gutenprint/HP/HP-LaserJet_4050-standard-en.ppd
> > /usr/share/ppd/gutenprint/HP/HP-LaserJet_4050-simplified-en.ppd
> 
> FWIW, I'm not keen on putting multiple languages in a single
> directory.  Most file systems don't like to deal with 60k+ files
> in a single directory, and the CUPS globalized/multiple-language
> PPD files don't need the suffix (or if they did use a suffix, you'd
> list all of the supported locales...)
> 
> -- 
> ______________________________________________________________________
> Michael Sweet, Easy Software Products           mike at easysw dot com
> Internet Printing and Document Software          http://www.easysw.com
> 
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.freestandards.org
> http://lists.freestandards.org/cgi-bin/mailman/listinfo/printi
> ng-architecture
> 
> -- 
> No virus found in this incoming message.
> Checked by AVG Free Edition.
> Version: 7.1.394 / Virus Database: 268.7.2/349 - Release 
> Date: 5/26/2006
>  
> 

-- 
No virus found in this outgoing message.
Checked by AVG Free Edition.
Version: 7.1.394 / Virus Database: 268.7.2/349 - Release Date: 5/26/2006
 

