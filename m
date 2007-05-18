Return-Path: <mike@easysw.com>
Message-ID: <464E3B50.4010800@easysw.com>
Date: Fri, 18 May 2007 19:48:32 -0400
From: Michael Sweet <mike@easysw.com>
MIME-Version: 1.0
References: <2F7D63A21DB2C74EB8EB8C09AF667DB00559CB28@eitc220.eitc.epson.com>
In-Reply-To: <2F7D63A21DB2C74EB8EB8C09AF667DB00559CB28@eitc220.eitc.epson.com>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Embedded Client Thin-Thread: Initial
 Information
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Cc: printing-architecture@lists.freestandards.org

Petrie, Glen wrote:
> ...
> If CUPS or another deployed solution has a functional, scalable and industry
> accepted architecture; then, we should adopt their architecture; thus, I
> would like to have more discussion on "what are the LFOP goals and, thus,
> our activities."  For example, the activity could be "how to create an
> embedded-client solution based on their architecture".   If CUPS does not an
> industry accepted architecture; would CUPS be willing to migrate to a
> standard print architecture?

I don't think we'd have a problem adding another ("emulated") API to
CUPS, much like the planned PAPI on CUPS implementation.  However,
it is extremely unlikely that we would convert CUPS itself to another
API since a) we'd have a fair amount of code to convert (with the
corresponding opportunities for breaking things) and b) the current
API works quite well.

As for the question of whether the CUPS API would be suitable for
embedded/thin clients, I don't see why it wouldn't be, especially
if you stick with the (tiny) subset used for LSB 3.2 plus the CUPS
1.3 streaming print API.

In my experience, the bigger issue will be printer drivers and
generation of PDL data, which will need to be closely tied to the
toolkit being used (e.g. Qt or GTK+ on top of Cairo) so that the
printed files can be printer-ready bitmap/vector data, PDF, or
PostScript.  This print data will most likely need to be streamed,
which may require some further changes in those toolkits...

-- 
______________________________________________________________________
Michael Sweet, Easy Software Products           mike at easysw dot com
Internet Printing and Document Software          http://www.easysw.com

