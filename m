Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=ANCEg1RPfcysH8xiLuMrxa/ZrRDuUWjX8D93jIuC9pk=;
	b=Wp6bPnsPNNMb+NZp4Aw8oF8U52qchlLpcgoUV6gol2MtZZMuhjmaDg48Mz3Udg+ZPB
	5C9uO15hsA0XpvAQuPIsFsiYhVzQMogRTp9NFVwzRal8VrpXl9UXDFmc+fjTaYJuoqEX
	rRnBw7qfQG9wYa8zRbeAXzWLUyFp6RD2FLOV3fRcwC7eMeP+XWgGwfYXXDjCx8y0Ga6g
	rchFqXhhlD1PVEgPwGoHa4wSVWGUhagdM9Mvu+4zIweYRnkWPy5AEkMlKXntFjqhRQUd
	/L1mhOA8/eAeYyMCDHRtTvOUm15BB6xlqSrVqKatasBRrGju2ppmdArdSs8Tfk2L9QBI
	Picg==
Message-ID: <5282AA4D.9010201@gmail.com>
Date: Tue, 12 Nov 2013 23:23:09 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <51BA5B58.3080208@gmail.com> <5270DD07.4080601@gmail.com>
	<B68BB93E-6180-44CE-BEDA-3A499C72D823@apple.com>
In-Reply-To: <B68BB93E-6180-44CE-BEDA-3A499C72D823@apple.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Concept for PPD-less CUPS-spooled
 printing on Bonjour-discovered network printers
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@apple.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, John Layt <john@layt.net>, Marek Kasik <mkasik@redhat.com>

On 11/01/2013 03:48 PM, Michael Sweet wrote:
> Till,
> 
> On Oct 30, 2013, at 6:18 AM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
>> ...
>> What is required from a GUI is that as soon as the user selects a
>> printer for printing (or with the default printer when just opening the
>> dialog) is that if the printer is such PPD-less queue, to poll the
>> printer via IPP (code example below) to get its capabilities, show the
>> user-settable options on the dialog's option panel (like PPD options)
>> and send the job accompanied with the option settings, including the
>> ones which the user has not changed and the ones which have only one
>> choice (and so are not changeable). The job itself should be in PDF
>> format and (if the printer supplies appropriate info) in a page size
>> supported by the printer.
> 
> Till, I am curious why you are not using the CUPS APIs from 1.6 and later for this?
> 

AFAIR The cupsEnumDests() function is not passing on all needed
information, especially not the TXT record which contains important info
like the printer's PDLs. It also lists only local and remote CUPS queues
and not my IPP network printers (is it restricted to input formats, like
PDF? Or IPP Everywhere/PWG Raster?). For only doing the original task of
cups-browsed, creating local queues pointing to remote CUPS queues to be
able to easily print on these remote printers from the current
applications cupsEnumDests() would even work.

Another question is whether cupsEnumDests() can run in parallel with
other, independent services, in my case Tim Waugh's backward
compatibility CUPS browsing/broadcasting.

> Also, I have my concerns of this approach - with cupsd not knowing anything about the printer, and with there being no way for a non-aware app to know what the printer's capabilities are, I foresee a lot of interoperability issues.

The problem of this kind of queues is really that if an application is
not aware of them, it prints (if the app sends PDF it actually prints,
as the correct filter chain is called) on them but with unsatisfying
results do to not knowing enough of the printer.

They work only to their full extent if the app is aware of them and
polls the capabilities record of the printer via IPP. And this record
cannot be polled by cups-browsed already as then entering the network
with a mobile device can wake up all printers from power saving mode,
some models even getting noisy then.

Any suggestion for a better implementation of this scenario is welcome.

   Till

