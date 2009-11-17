Date: Tue, 17 Nov 2009 14:39:31 +0100 (CET)
From: Kai-Uwe Behrmann <ku.b@gmx.de>
In-Reply-To: <200911170123.nAH1NDRT016538@dsl092-065-009.bos1.dsl.speakeasy.net>
Message-ID: <alpine.LSU.2.00.0911171357270.4903@sirius.rasena>
References: <e395be80811270817n502ccd16wf6cc90f85364f5ae@mail.gmail.com>
	<620c0af50911141715y3c5739ffxf51480387fa0be59@mail.gmail.com>
	<77618445-60C9-4D30-99F8-B42DBCCBF24E@apple.com>
	<200911151226.49297.hvengel@astound.net>
	<5D2F46F4-82CB-44F0-8E08-466733DFABBB@mmiworks.net>
	<Pine.LNX.4.64.0911161329000.22140@sirius.rasena>
	<E9C92136-4453-4938-A130-139BFF497874@colorremedies.com>
	<Pine.LNX.4.64.0911162229300.22140@sirius.rasena>
	<4B01F77E.9090001@gmx.de>
	<200911170123.nAH1NDRT016538@dsl092-065-009.bos1.dsl.speakeasy.net>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
Subject: Re: [Printing-architecture] [Openicc]  [Gimp-print-devel]   Colour
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Robert Krawitz <rlk@alum.mit.edu>
Cc: printing-architecture@lists.linux-foundation.org, gimp-print-devel@lists.sourceforge.net, OpenICC Liste <openicc@lists.freedesktop.org>

Am 16.11.09, 20:23 -0500 schrieb Robert Krawitz:
> precision with extremely wide gamut.  I know memory and CPU isn't
> free, but I think arguing over 8 vs. 16 bits of precision is
> distinctly penny-wise and pound-foolish.

I completely agree 16-bit can be a essential quality improovement. Its 
like looking through glass or no glass. If someone has no problems while 
looking on a surfaces through glass then be it.

If you want the best output in regards of fine shades, be warned of 8-bit 
source and 8-bit print files.
Printers capable of showing very smooth transitions of shades, are able to 
expose stepping coming from 8-bit source material since years. This is 
visible in smooth sourfaces like water, blurred image regions, sky and 
other gradient alike image regions. Dithering is a poore cirumvention and 
possibly sand for your eyes. Others may be trained and see the artificial 
habit of the banding artifacts coming from the 8-bit source material.
Keep in mind that most advertising material, arts prints, arts 
paintings behind thick glass and of course monitors have easily 
conditioned many peoples eyes to be very tollerant.

That said, for office paper, news paper and smaller than post card size 
prints 8-bit might be enough. This maps to the majority of printed 
imagery, but not to all printing demands.


kind regards
Kai-Uwe Behrmann
-- 
developing for colour management 
www.behrmann.name + www.oyranos.org


