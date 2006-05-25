Return-Path: <imcdonald@sharplabs.com>
Message-ID: <789E617C880666438EDEE30C2A3E8D10EE1D@mailsrvnt05.enet.sharplabs.com>
From: "McDonald, Ira" <imcdonald@sharplabs.com>
Subject: RE: [Printing-architecture] Notes of today's telecon
Date: Thu, 25 May 2006 07:57:38 -0700
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
To: 'Till Kamppeter' <till.kamppeter@gmx.net>, Wendy Phillips <wendyp@sun.com>
Cc: printing-architecture <printing-architecture@freestandards.org>

Hi,

I agree with Wendy that I had been proposing language tag
as the least significant directory, but looking at the two
paths I prefer Till's specification (after supplier, but 
before make-model-extra).

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
> Of Till Kamppeter
> Sent: Thursday, May 25, 2006 10:33 AM
> To: Wendy Phillips
> Cc: printing-architecture
> Subject: Re: [Printing-architecture] Notes of today's telecon
> 
> 
> Wendy Phillips wrote:
> > I recall the ppd path differently:
> > 
> > /usr/share/ppd/<supplier>/<make>/<model>/<language tag>
> > 
> 
> I remember that it was
> 
> /usr/share/ppd/<supplier>/<language 
> tag>/<make>-<model>-<extra info>.ppd
> 
> > Comment on PPD files at Linuxprinting.org
> >     As the user, if I select printer abc model 123, would I 
> get a choice
> > of suppliers? Such as, print vendor abc, gutenprint, 
> linuxprinting.org,
> > ... or is this for printer vendors exclusively?
> 
> You will get a choice of suppliers. Currently you can already choose
> various drivers for one and the same model, and these are usually from
> different suppliers. What will change in the future is that there will
> be hosted or linked machine-installable binary packages of drivers for
> automatization of installation of printers which are not 
> (yet) known to
> the actually installed distro.
> 
>    Till
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
> Version: 7.1.394 / Virus Database: 268.7.1/347 - Release 
> Date: 5/24/2006
>  
> 

-- 
No virus found in this outgoing message.
Checked by AVG Free Edition.
Version: 7.1.394 / Virus Database: 268.7.1/347 - Release Date: 5/24/2006
 

