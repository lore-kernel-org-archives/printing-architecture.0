Return-Path: <imcdonald@sharplabs.com>
Message-ID: <CFEE79A465B35C4385389BA5866BEDF00C7ED9@mailsrvnt02.enet.sharplabs.com>
From: "McDonald, Ira" <imcdonald@sharplabs.com>
Subject: RE: [Printing-architecture] Request for comment to PCM draft
Date: Mon, 13 Feb 2006 09:06:20 -0800
MIME-Version: 1.0
Content-Type: text/plain;
	charset="utf-8"
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: 'Michael Sweet' <mike@easysw.com>, "McDonald, Ira" <imcdonald@sharplabs.com>
Cc: printing-architecture@freestandards.org

Hi Michael,

Sorry for giving offense by my note.

The strict downscoping of PCM to transport/session manager
has been documented in FSG/OP Architecture minutes and notes
since mid-2005.

I didn't personally make up the architecture.  

Oh well...

Regards,
- Ira

Ira McDonald (Musician / Software Architect)
Blue Roof Music / High North Inc
PO Box 221  Grand Marais, MI  49839
phone: +1-906-494-2434
email: imcdonald@sharplabs.com

> -----Original Message-----
> From: Michael Sweet [mailto:mike@easysw.com]
> Sent: Saturday, February 11, 2006 7:08 PM
> To: McDonald, Ira
> Cc: Ide Kentaro; printing-architecture@freestandards.org
> Subject: Re: [Printing-architecture] Request for comment to PCM draft
> 
> 
> McDonald, Ira wrote:
> > Hi,
> > 
> > Per current work (and minutes) of the FSG/OP Architecture WG,
> > both Status Monitoring and Device Discovery are first-class
> > _independent_ modules of the FSG "Open Printing System".
> > 
> > PCM should be _strictly_ concerned with establishing connections 
> > and/or paths to already _known_ services and devices and passing 
> > data.
> > 
> > Neither PCM nor Status Monitoring should ever attempt to do 
> > their own device discovery.
> 
> OK, so it is basically worthless then?
> 
> The level of implementation in the current spec implies something
> that is much more than what you are describing.  The *operating
> system* already provides the kind of interface you are describing.
> 
>  From what I understand of the current spec, PCM is concerned with
> multiplexing access to devices so that they can be used by
> multiple services.  In order for that to work, applications that
> use PCM MUST be able to enumerate/discover devices that are
> managed by it.  Whether this happens in PCM or not is not
> particularly important, but it has to happen someplace, and the
> PCM spec MUST reference the mechanism that is used...
> 
> > The purpose of the FSG "Open Printing System" architecture is NOT
> > simply to serve the convenience (and current implementation design) 
> > of CUPS (or any other printing software).
> 
> Quite frankly, I don't care.  But if you want what you are defining
> to work with existing software, it MUST coexist with and "serve the
> convenience of" CUPS and other existing printing software.
> 
> > Neither is the purpose simply to serve desktop printing needs.
> > 
> > The purpose is to define a single common printing architecture 
> > that spans from very low-bandwidth devices (e.g., PDAs and 
> > cellphones) to professional production printing devices and
> > can be implemented on any Linux, UNIX, or other operating
> > system.
> 
> Good luck with reimplementing IPP and PSI, Ira...
> 
> -- 
> ______________________________________________________________________
> Michael Sweet, Easy Software Products           mike at easysw dot com
> Internet Printing and Publishing Software        http://www.easysw.com
> 
