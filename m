Return-Path: <till.kamppeter@gmail.com>
Message-ID: <44BFDD7A.6000303@gmail.com>
Date: Thu, 20 Jul 2006 21:46:02 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <44BFD8AA.8060502@sun.com>
In-Reply-To: <44BFD8AA.8060502@sun.com>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] resend notes from last week
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: Wendy Phillips <wendy.phillips@sun.com>
Cc: printing-architecture <printing-architecture@freestandards.org>

Wendy Phillips wrote:
> Apparently, this didn't go out to the alias; could be that I fumbled
> it on the keyboard. So here tis again ...
> 
> I have purposely not included the follow-on discussions about fhs standard;
> this is a summary of the meeting as it occurred.
> 
> -Wendy
> 
> 1. Installation path for ppd files
> 
>          /usr/share/ppd/<supplier>/<manufacturer>/
> 
> 2. PPD file naming convention
> 
>          <MFGString>-<MDLString>-<driver>-<language>.ppd
> 
> 3. Installation path for print drivers
> 
>          /usr/lib/printdrivers/<supplier>
> 
>          The contents of this directory are entirely determine
>          by the supplier. The path to a driver is found by using
>          an absolute path in the ppd file.
> 

Paths in /usr to accomodate 3rd-party software do not comply the FHS
standard. Therefore alternative paths were suggested in other threads.
But note that CUPS violates FHS, too, as CUPS requires drivers in
/usr/lib/cups/filter.

> 4. It was agreed that install scripts be written in Bourne Shell
> without any extensions.
> 

OK.

Is there a compliance test program to check whether one has no bashisms
in the scripts?

> 5.  We decided to eliminate /usr/lib/printdrivers/bin
> 

OK, with absolute paths in the PPDs this is not needed.

   Till

