Return-Path: <mike@easysw.com>
Message-ID: <45B124B2.9080300@easysw.com>
Date: Fri, 19 Jan 2007 15:06:10 -0500
From: Michael Sweet <mike@easysw.com>
MIME-Version: 1.0
References: <45B11475.4080704@gmail.com>
In-Reply-To: <45B11475.4080704@gmail.com>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] FHS extension and CUPS
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
Cc: printing-architecture@lists.freestandards.org, Dan Kohn <dan@dankohn.com>, 'Ian Murdock' <imurdock@imurdock.com>, lsb-discuss <lsb-discuss@lists.freestandards.org>

Till Kamppeter wrote:
> ...
> - Of CUPS 1.3 there is not even an alpha version, will it go final
>    before the LSB 3.2 deadline?

Probably, but the more important issue is whether CUPS 1.3 will
be adopted by the distros before the LSB 3.2 deadline...

Right now I'm tied up with other (paying) tasks, but I'm hoping
to get 1.2.8 and 1.3b1 released in 3-4 weeks.

> - Novell and Red Hat want to put out an update to fulfill the FHS
>    extensions. Is it not perhaps a too high impact for an enterprise
>    distro to replace CUPS 1.2 (x >> 0) by CUPS 1.3, especially 1.3.0?

Given the scope of this "extension", I don't think it is necessary
(or fair) to force distros to ship CUPS 1.3 for LSB 3.2 compliance.

> Or should we better recommend to the distros to simply do
> 
> ln -s /usr/share/ppd /usr/share/cups/model/usrshareppd
> ln -s /opt/share/ppd /usr/share/cups/model/optshareppd
> ln -s /usr/local/share/ppd /usr/share/cups/model/usrlocalshareppd
> 
> in their CUPS package for now? This makes CUPS searching for the PPDs in 
> the right places.

The simplest solution is often the best solution.  While we *will*
add support for configurable PPD paths to cups-driverd, using
symlinks now is the best way to go for CUPS 1.2.

-- 
______________________________________________________________________
Michael Sweet, Easy Software Products           mike at easysw dot com
Internet Printing and Document Software          http://www.easysw.com

