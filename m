Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <51B9B91A.6010609@gmail.com>
Date: Thu, 13 Jun 2013 10:08:55 -0400
Message-id: <436F8D1D-1A27-4430-A58C-87814D7C896D@apple.com>
References: <519537F0.8020405@gmail.com>
	<FDC917F9-BB2B-4117-9F4A-D817841E5AE8@apple.com>
	<51B99888.2040406@gmail.com>
	<1371123741.31435.2.camel@rubik> <51B9B91A.6010609@gmail.com>
Subject: Re: [Printing-architecture] Some suggestions for the DNS-SD
 (Bonjour) printer support in the dialog
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, Marek Kasik <mkasik@redhat.com>

Till,

On 2013-06-13, at 8:20 AM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
> On 06/13/2013 01:42 PM, Tim Waugh wrote:
>> On Thu, 2013-06-13 at 12:01 +0200, Till Kamppeter wrote:
>>> This would mean to resemble large parts of CUPS (spooling, filtering,
>>> but not networking) for a per-user/per-app printing system
>> 
>> My idea (printservice) for this was:
>> 1. Avoid spooling altogether, just send job direct to network queue
>> (this is often another spooler in any case)
> 
> Should be the case for laser printers with built-in network connection,
> I don't know how it is with inkjets. Or does IPP Everywhere also require
> spooling space inside the printer?

IPP Everywhere doesn't require that a printer supports spooling.  In fact, the basic support level is a non-spooling raster-only printer.

And since most IPP Everywhere printers will likely fall into the "raster-only" bucket for the foreseeable future, we do need some sort of a client spooling/conversion capability, in addition to basic job management.

>> 2. Avoid most filtering by requiring jobs to be application/pdf and
>> requiring that allowable network queues support application/pdf.
>> 
> 
> As IPP Everywhere has only PWG Raster as required format (the others are
> optional), we need at least a pdftoraster filter, but this one filter is
> already much better than having device-specific drivers and data fo
> 1000s of printers.

Agreed.

Also, even when printing to a PDF filter you may need to do some client-side prep for things like number-up.

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

