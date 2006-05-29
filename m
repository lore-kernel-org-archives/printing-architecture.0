Return-Path: <imcdonald@sharplabs.com>
Message-ID: <789E617C880666438EDEE30C2A3E8D10EE25@mailsrvnt05.enet.sharplabs.com>
From: "McDonald, Ira" <imcdonald@sharplabs.com>
Subject: RE: [Printing-architecture] Notes of today's telecon
Date: Mon, 29 May 2006 11:30:06 -0700
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

I agree with Michael.  Put language tag early in the
path - right after 'supplier' (e.g., Gutenprint) and
right before 'manufacturer' (e.g., HP) - this is the
most friendly position from the point of view of clean
localization.

Cheers,
- Ira

Ira McDonald (Musician / Software Architect)
Blue Roof Music / High North Inc
PO Box 221  Grand Marais, MI  49839
phone: +1-906-494-2434
email: imcdonald@sharplabs.com

> -----Original Message-----
> From: Michael Sweet [mailto:mike@easysw.com]
> Sent: Friday, May 26, 2006 1:52 PM
> To: Till Kamppeter
> Cc: McDonald, Ira; Wendy Phillips; Norm Jacobs; printing-architecture
> Subject: Re: [Printing-architecture] Notes of today's telecon
> 
> 
> Till Kamppeter wrote:
> > McDonald, Ira wrote:
> >> Hi,
> >>
> >> I'm going to support Michael's point here.  The prevailing
> >> usage in the localization industry and in most file systems
> >> is to use language tag directories immediately _before_ the
> >> terminal filename in a path.
> >>
> > 
> > So you suggest
> > 
> > /usr/share/ppd/foomatic/HP/en/HP-LaserJet_4050-ljet4-en.ppd
> > /usr/share/ppd/foomatic/HP/en/HP-LaserJet_4050-pxlmono-en.ppd
> > /usr/share/ppd/foomatic/HP/en/HP-LaserJet_4050-hpijs-en.ppd
> > /usr/share/ppd/gutenprint/HP/en/HP-LaserJet_4050-standard-en.ppd
> > /usr/share/ppd/gutenprint/HP/en/HP-LaserJet_4050-simplified-en.ppd
> > /usr/share/ppd/gutenprint/HP/de/HP-LaserJet_4050-simplified-de.ppd
> > 
> > Is this what you mean?
> 
> I'd actually suggest having the language first, e.g.:
> 
>      
> /usr/share/ppd/gutenprint/de/HP/HP-LaserJet_4050-simplified-de.ppd
> 
> > Having the language directory as the last level makes it 
> also easier to
> > install (and also to uninstall) selected languages.
>  > ...
> 
> Putting the language first makes this trivial; burying it a few
> levels deep makes things more difficult, which is why we (and Apple)
> make it first...
> 
> -- 
> ______________________________________________________________________
> Michael Sweet, Easy Software Products           mike at easysw dot com
> Internet Printing and Document Software          http://www.easysw.com
> 
> -- 
> No virus found in this incoming message.
> Checked by AVG Free Edition.
> Version: 7.1.394 / Virus Database: 268.7.4/351 - Release 
> Date: 5/29/2006
>  
> 

-- 
No virus found in this outgoing message.
Checked by AVG Free Edition.
Version: 7.1.394 / Virus Database: 268.7.4/351 - Release Date: 5/29/2006
 

