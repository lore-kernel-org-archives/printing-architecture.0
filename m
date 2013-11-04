Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=L47o9R8p9Up34EpAxjX3afhRdKgHs1BYDsB2ZRqKRRE=;
	b=UD9UZCc96EeUHegHX5V8fuUfjpd9AMDLwoN7n8kG48KazntUpeOTtSWiL9qKWuLIcX
	H343rZkKcPFnFfYsDHs913IURJ86659ldzN4HkwZLlV3v0F6VDZYDbH1nxYX4AeWZfWJ
	GiiIOQPZ9cKqI3mRWnDTjPB3upeTLmoxMnIJrDV8XE5zjHmQOZTZ7w2ovMTuUo5hvM49
	XeRxYd6WlxEO+rmRjnx/QmHnaw5akXMx2HADEHTSDvx0+XKtAsnAjwqKBHEZdsSYoNeK
	ERe8WyGkJN/Yl/KKhTNISEB6xjAtErjmE8afrdlWJEkHmQ2GwYHWFOb+gqMaH2CCwQh/
	a0Lw==
Message-ID: <52779F4C.5070909@gmail.com>
Date: Mon, 04 Nov 2013 14:21:16 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <1383567790.3894.4.camel@rubik>
In-Reply-To: <1383567790.3894.4.camel@rubik>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] cups-browsed: how to treat rejecting
	queues?
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Tim Waugh <twaugh@redhat.com>, Open Printing <printing-architecture@lists.linux-foundation.org>

Tim, one can solve the problem, cups-browsed updates queues on changes
in the Bonjour record from the server (but not sure whether on all
changes). Rejecting jobs is encoded in the printer-type TXT field, by
the 0x80000 bit. See /usr/include/cups/cups.h, CUPS_PRINTER_REJECTING
constant.

So it should be possible to implement that the cups-browsed queue
follows the accepting bit of its remote queue.

   Till

On 11/04/2013 01:23 PM, Tim Waugh wrote:
> When cups-browsed creates local queues to forward jobs to remote queues,
> I wonder how it should treat queues that are not accepting jobs? The way
> cupsd used to behave was to copy the remote printer's state to the local
> implicit queue, but cups-browsed is not structured in that way: it
> doesn't update the queues it creates.
> 
> The problem with the current behaviour is that the GTK+ print dialog
> will allow a queue rejecting jobs to be selected.
> 
> See also discussion of this for Fedora:
>   https://bugzilla.redhat.com/show_bug.cgi?id=1025263
> 
> Tim.
> */
> 

