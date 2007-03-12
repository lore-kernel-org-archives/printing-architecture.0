Return-Path: <toratani.yasumasa@canon.co.jp>
Date: Mon, 12 Mar 2007 12:28:15 +0900
From: TORATANI Yasumasa <toratani.yasumasa@canon.co.jp>
In-Reply-To: <45F353E7.6000803@gmail.com>
References: <45F34A15.60204@gmail.com> <45F353E7.6000803@gmail.com>
Message-Id: <20070312102307.5EB4.TORATANI.YASUMASA@canon.co.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [Printing-sc] Application of
	OpenPrinting as Mentoring Organization for the Google Summer
	of Code 2007
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: printing-architecture@lists.freestandards.org, Jim Zemlin <jzemlin@freestandards.org>, "Printing-Sc (E-mail)" <printing-sc@freestandards.org>, Ian Murdock <imurdock@imurdock.com>, printing-japan@lists.freestandards.org

Hi,

Some of the Japan side opvp developer know;
- OPVP interface
- "opvp" implementation as the Ghostscript driver
- Some OPVP complianced modularized driver for a few PDLs.
So, they will be able to make suggestions for OPVP specific issues.

On the other hand, there are few engineers who know the Ghostscript
inside code in detail, or other type of many Ghostscript built in drivers,
such as x11*, tiff*, png*, pswrite, pdfwrite, and many drivers for seveal
printer vendor's PDL., such as dj*, lp*, lex*, pcx*, etc.

If we ask someone to modify these drivers as modularized, I think we
need volunteers who know these driver's code in dtail.

BTW, do we need to modify all the Ghostscript built-in drivers as
modularized? If we do not have to, the priority list of the drivers that
we need to modularize might be helpful for asking someone to be
volunteers.

TORATANI.

On Sun, 11 Mar 2007 00:57:11 +0000
Till Kamppeter <till.kamppeter@gmail.com> wrote:

> I have added more to the projects page.
> 
> Would someone of the OpenPrinting Vector developers volunteer to be
> mentor for the GhostScript built-in driver modularization? Feel free to
> edit the project description.
> 
> Claudia, would you be mentor for the JTAPI implementation and also add a
> project description?
> 
>    Till
> 
> Till Kamppeter wrote:
> > I have added the first project suggestion to
> > 
> > http://www.linux-foundation.org/en/OpenPrinting/GoSC2007
> > 
> >    Till
> > 
> > 
> > McDonald, Ira wrote:
> >> Hi Till,
> >>
> >> See my additions below in the GSoC form, surrounded by
> >> square brackets (e.g., "[ Ira - ... ]").
> >>
> >> The license on JTAPI is MIT - don't know the answer for
> >> PAPI - Norm?
> >>
> >> My longstanding Google account is "blueroofmusic@gmail.com".
> >>
> > 
> > 
> 
> _______________________________________________
> Printing-sc mailing list
> Printing-sc@lists.freestandards.org
> http://lists.freestandards.org/mailman/listinfo/printing-sc

-----------------------------------------
TORATANI Yasumasa
Software Engineering Dept.23
Platform Technology Development Headquarters, CANON INC.

