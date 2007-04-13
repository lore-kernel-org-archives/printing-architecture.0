Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed; d=gmail.com; s=beta;
	h=domainkey-signature:received:received:message-id:date:from:user-agent:mime-version:to:cc:subject:references:in-reply-to:content-type:content-transfer-encoding;
	b=aSr7OrUJQt7m6FY8YP57wnQMhSeZqGdOR2Q5T+R5KT9p2R/IO9S1n7PZuIvtNEGsHlsw2tiOCHGNgIWe8oDtmJ8fpIR+A7RJKlcJfN+B9y6qQt1HERFarfCRbjjImUz/MLqpyC0S+4Lz49fBL7ydKJDLw4vKNWSZ6U32fB74H0U=
Message-ID: <46200C01.1070701@gmail.com>
Date: Sat, 14 Apr 2007 00:02:25 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <8B8709E6C8B8784583FA9C7C013CB4513A9794@etd1.etd.ussj.ricoh.com>
In-Reply-To: <8B8709E6C8B8784583FA9C7C013CB4513A9794@etd1.etd.ussj.ricoh.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Problem related to automatic driver
	download
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: George Liu <george.liu@ussj.ricoh.com>
Cc: printing-architecture@lists.freestandards.org

George Liu wrote:
> While downloading a PPD file or a driver package from openprinting.org,
> user can see the requirement or instructions from printer/driver
> information page. 
> 
> It will introduce confusion if a downloaded PPD/driver does not work on
> user's Linux box.
> 
> Scenario 1: 
> Printer has Postscript as option. CUPS downloaded Postscript drivers
> automatically without informing user Postscript option needs to be
> installed on the printer. 
> 
> 
> Scenario 2:
> User installed CUPS 1.3 (which supports auto PPD/driver download) on Red
> Hat Enterprise Server 4. CUPS downloaded an GS-opvp driver, but GS/opvp
> is not supported on the Linux box. 
> 
> 
> Here's my suggestions on how these problems can be addressed:
> 
> 1. Make a PPD extension "*DriverInformation: ". It can state either
> "Recommended" or whatever deems fit. E.g.
> *DriverInformation: "Recommended"
> *DriverInformation: "Printer needs to have Postscript Option Installed"
> Printer setup utility or CUPS web UI need to display it to user.
>

A field for warning messages is also a nice feature. So special cases 
which cannot be auto-detected can get covered,

The case of having the PostScript option installed can perhaps even be 
auto-detected, for example on some printer models "PS" or "PS3" gets 
added to the "CMD" field of the IEEE-1284 device ID.

> 
> 2. Make another PPD extension and list all the required components. E.g.
> *DriverDependencies: foomatic-rip	3.43
> *DriverDependencies: gs       8.15    
> *DriverDependencies: LSB	3.1
> Distribution can use which command/or whatever they chose to determine
> whether the required components exist.
> 
> WDYT?

I think this is a good idea, especially as in the future it can easily 
happen that driver packages for different LSB versions can be on the server.

 From LSB 3.2 on a certain version of GhostScript is already there due 
to the LSB 3.2, same for foomatic-rip, so the dependencies need only to 
be mentioned explicitly if the driver really needs special versions. 
With all fully LSB-compliant driver packages it is enough to only put 
the LSB dependency.

    Till

