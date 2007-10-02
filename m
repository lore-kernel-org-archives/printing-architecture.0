Date: Tue, 02 Oct 2007 16:38:41 +0900
From: TORATANI Yasumasa <toratani.yasumasa@canon.co.jp>
In-Reply-To: <200709301423.l8UENJYj029347@dsl092-065-009.bos1.dsl.speakeasy.net>
References: <20070930212955.E349.TORATANI.YASUMASA@canon.co.jp>
	<200709301423.l8UENJYj029347@dsl092-065-009.bos1.dsl.speakeasy.net>
Message-Id: <20071002144712.FFED.TORATANI.YASUMASA@canon.co.jp>
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
To: Robert L Krawitz <rlk@alum.mit.edu>
Cc: printing-architecture@lists.freestandards.org, printing-summit@lists.linux-foundation.org

Hi,

Sorry not to respond soon.
I'm having a pile of jobs on my desk after coming back from the summit.

On Sun, 30 Sep 2007 10:23:19 -0400
Robert L Krawitz <rlk@alum.mit.edu> wrote:

> Interesting presentation.  Some questions:
> 
> 1) Is the "Finisher Control" the only part of the package that's
>    closed source?  What is its role?  What functionality is lost if
>    it's removed?

Yes, and its role is controlling the MFP's finisher.
If this modules is not installed, or removed after the driver installation,
the finisher contol feature is disabled, but other features including
printing work.

> 2) Is the entire package otherwise all GPL compatible (GPL2 or GPL2+)?
As the slide shows, CUPS filter, OPVP compliant LIPS IV driver (shared lib.
which works with GS), PPD files for each models, and GUI are under GPL2.

> 3) Any update on the plans for the US?
Being study for the US market.

> 4) What printers are supported?  Is everything in the Gutenprint list
>    of supported Canon inkjet printers (below) supported?
The following model drivers are developed, tested and released;
Ver.1.31
 BJ F850, BJ F860, BJ F870, BJ F360, BJ S600,BJ S630, BJ S6300 (for Japanese Market)
Ver.2.01
 BJ S500 (for Japanese Market)
Ver.2.11
 BJ S300, BJ F900, BJ F9000 (for Japanese Market)
Ver.2.21
 PIXUS 550i, PIXUS 850i, PIXUS 950i (for Japanese Market)
Ver.2.30
 i250 (for Overseas Market) 
Ver.2.40
 PIXUS 990i, PIXUS 860i, PIXUS 560i (for Japanese Market)
Ver.2.50
 PIXUS iP3100, PIXUS iP4100, PIXUS iP8600 (for Japanese Market)
 PIXMA iP1000, PIXMA iP1500 (for Overseas Market)
Ver.2.60
 PIXUS iP4200, PIXUS iP6600D, PIXUS iP7500, PIXUS MP500
Ver.2.70
 PIXUS iP3300, PIXUS iP4300, PIXUS iP90, PIXUS iP90v, PIXUS MP510, PIXUS MP600

> 5) Is cngpij the only supported way to print to Canon inkjet printers
>    using this package, or do conventional means (lp, xpp, print
>    dialogs within applications) also work?

Our inkjet printer driver works with CUPS, and prepares PPD files for
each printer. So, if application obtains the printing options from the
PPD file registered under CUPS, the options work on the application.

> 6) Does the status monitor work with remote printers?
If "remote printer" means the remote CUPS server and IJ printer, yes.

> 7) I have mixed feelings in general about vendor-specific UI's.  On
>    the one hand, it's going to result in different UI's (and possibly
>    different workflows) for different printer families, but on the
>    other hand it really shows up the problems with current PPD-based
>    systems that limit flexibility (in other words, I'm repeating what
>    I said 18 months ago).
>    What functionality does cngpij provide that isn't available via
>    CUPS?  Is it printer maintenance, or are there other things?

Maintenance, and solve the printing option conflict automatically when
some option conflict occurs. The dialog are prepared for both old and
new Linux distributions. But, obviously, the best solution is a common
printing dialog shared by all applications, and we need it.

> 8) I don't think printer validation should be purely a vendor
>    function; I think that there's value to having some level of
>    commonality across printer families.  At the same time, I'm
>    (painfully) aware of just how labor-intensive testing a lot of
>    different printers really is :-(

We think that the driver test shoud be done by its developer, since
the developer knows well its driver features. For instance, you can
test whether your driver works as you design, and we can test whether
our driver works as we design.

TORATANI

> Canon BJ-30
> Canon BJC-50
> Canon BJC-55
> Canon BJC-80
> Canon BJC-85
> Canon BJC-210
> Canon BJC-240
> Canon BJC-250
> Canon BJC-1000
> Canon BJC-2000
> Canon BJC-2010
> Canon BJC-2100
> Canon BJC-2110
> Canon BJC-3000
> Canon BJC-4000
> Canon BJC-4300
> Canon BJC-4400
> Canon BJC-6000
> Canon BJC-6100
> Canon BJC-6200
> Canon BJC-6500
> Canon BJC-7000
> Canon BJC-7100
> Canon BJC-8200
> Canon S100
> Canon S200
> Canon S300
> Canon S400
> Canon S450
> Canon S500
> Canon S600
> Canon S630
> Canon S800
> Canon S4500
> Canon PIXMA iP2000
> Canon PIXMA iP3000
> Canon PIXMA iP3100
> Canon PIXMA iP4000
> Canon PIXMA iP4100
> Canon PIXMA iP4200
> Canon PIXMA iP4300
> Canon PIXMA iP5000
> Canon PIXMA iP5200
> Canon PIXMA iP6700
> Canon PIXMA iX5000
> Canon PIXMA MP150
> Canon PIXMA MP170
> Canon PIXMA MP180
> Canon PIXMA MP500
> Canon PIXMA MP700
> Canon PIXMA MP710
> Canon PIXMA MP730
> Canon PIXMA MP740
> Canon PIXMA MP750
> Canon PIXMA MP760
> Canon PIXMA MP770
> Canon PIXMA MP780
> Canon PIXMA MP790
> Canon PIXMA MP830
> Canon PIXUS iP3100
> Canon PIXUS iP4100
> Canon i560
> Canon i850
> Canon i860
> Canon i865
> 
> -- 
> Robert Krawitz                                     <rlk@alum.mit.edu>
> 
> Tall Clubs International  --  http://www.tall.org/ or 1-888-IM-TALL-2
> Member of the League for Programming Freedom -- mail lpf@uunet.uu.net
> Project lead for Gutenprint   --    http://gimp-print.sourceforge.net
> 
> "Linux doesn't dictate how I work, I dictate how Linux works."
> --Eric Crampton

-----------------------------------------
TORATANI Yasumasa


