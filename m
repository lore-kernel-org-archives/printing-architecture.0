Return-Path: <mike@easysw.com>
Message-ID: <43ED0A9E.50404@easysw.com>
Date: Fri, 10 Feb 2006 16:50:22 -0500
From: Michael Sweet <mike@easysw.com>
MIME-Version: 1.0
Subject: Re: [Printing-architecture] Request for comment to PCM draft
References: <8A33346A3922BD4EB48A18128BAB16AB474F55@SWA6204.apo.epson.net>
In-Reply-To: <8A33346A3922BD4EB48A18128BAB16AB474F55@SWA6204.apo.epson.net>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: Ide Kentaro <Ide.Kentaro@exc.epson.co.jp>
Cc: printing-architecture@freestandards.org

Ide Kentaro wrote:
> Hi, folks,
> 
> I posted link of PCM draft document to OpenPrinting web site.
> <http://www.openprinting.org/moin.cgi/OpenPrinting/PrintChannelManager>
> 
> I would like you to comment these documents with two viewpoints.
> 
> 	1. Architecture
> 		If you predict that a problem occurs to your system with this architecture,
> 		point out the problem, please.

1. Architecture Diagram

    It isn't clear how this will work with CUPS; the architecture
    diagram references an "Open Printing System", but the diagram
    does *not* match up with how CUPS interfaces with and discovers
    devices.

    Basically, I'd focus on the PCM design/architecture itself, and
    then show possible interfaces with other apps like CUPS, SANE,
    and so forth.  All of the PCM stuff should be in the middle,
    possible apps/users at the top, and devices at the bottom.

2. Device Discovery

    The spec and API only focus on accessing a particular device.
    There is no way to discover or enumerate devices, which is
    most definitely going to be needed.

3. Asynchronous I/O, Non-Blocking IO, and/or Timeouts

    The read and write APIs need to support non-blocking I/O or at
    least basic timeouts so that an application can communicate
    without getting hung/deadlocked.

    It would also be useful to get a file descriptor or some
    other mechanism so that you can poll() or select() for
    ok-to-read/write conditions.

    Without this, you are forced to use threading which is
    problematic.

> 	2. License
> 		My questions are "Which license is better for us?" and
> 		"As for we should we select the license that was unified
> 		with all the Open Printing documents? ".
> 
> 		We chose BSD like license to PCM specification, today.
> 		But some other documents chose another license as FDL.
> 		One of the license of a BSD derivation may be easy to accept,
> 		in the case that the application in business with one,
> 		although it is natural to use FDL and the licenses of
> 		other GNU derivations, if I think with the position
> 		that says FSG.
> 		So, comment your idea about license of these documents, please.

As far as licensing goes, BSD or LGPL is suitable for the code, but
simple copyright (with FSG as the copyright holder) should be used
for the spec since you don't want to have others modify the spec
once it has been accepted.

That is, specifications/standards documents are normally controlled
by the organization that produced them...

-- 
______________________________________________________________________
Michael Sweet, Easy Software Products           mike at easysw dot com
Internet Printing and Document Software          http://www.easysw.com
