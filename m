Date: Thu, 04 Oct 2007 20:55:24 +0900
From: TORATANI Yasumasa <toratani.yasumasa@canon.co.jp>
In-Reply-To: <200710021345.48553.saschasommer@freenet.de>
References: <20071002144712.FFED.TORATANI.YASUMASA@canon.co.jp>
	<200710021345.48553.saschasommer@freenet.de>
Message-Id: <20071004203111.A7F6.TORATANI.YASUMASA@canon.co.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Re: [Printing-summit] Montreal Summit
	Slides for OPVP and Canon Driver
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Sascha Sommer <saschasommer@freenet.de>
Cc: Robert L Krawitz <rlk@alum.mit.edu>, printing-architecture@lists.freestandards.org, printing-summit@lists.linux-foundation.org

On Tue, 2 Oct 2007 13:45:48 +0200
Sascha Sommer <saschasommer@freenet.de> wrote:

(snip)

> > > 4) What printers are supported?  Is everything in the Gutenprint list
> > >    of supported Canon inkjet printers (below) supported?
> >
> > The following model drivers are developed, tested and released;
> > Ver.1.31
> >  BJ F850, BJ F860, BJ F870, BJ F360, BJ S600,BJ S630, BJ S6300 (for
> > Japanese Market) Ver.2.01
> >  BJ S500 (for Japanese Market)
> > Ver.2.11
> >  BJ S300, BJ F900, BJ F9000 (for Japanese Market)
> > Ver.2.21
> >  PIXUS 550i, PIXUS 850i, PIXUS 950i (for Japanese Market)
> > Ver.2.30
> >  i250 (for Overseas Market)
> > Ver.2.40
> >  PIXUS 990i, PIXUS 860i, PIXUS 560i (for Japanese Market)
> > Ver.2.50
> >  PIXUS iP3100, PIXUS iP4100, PIXUS iP8600 (for Japanese Market)
> >  PIXMA iP1000, PIXMA iP1500 (for Overseas Market)
> > Ver.2.60
> >  PIXUS iP4200, PIXUS iP6600D, PIXUS iP7500, PIXUS MP500
> > Ver.2.70
> >  PIXUS iP3300, PIXUS iP4300, PIXUS iP90, PIXUS iP90v, PIXUS MP510, PIXUS
> > MP600
> >
> 
> But the filters for these are not opensource, are they?

CUPS filter, CUPS backend, PPD files for each model,
printer status readback module which works with the CUPS backend,
and printer status GUI are under GPL2.
Print dialog and IJ filter command are under GPL + extension
(can be linked to a binary module), but color matching libraries
are closed.

-----------------------------------------
TORATANI Yasumasa


