Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <50EECE29.7090803@gmail.com>
Date: Thu, 10 Jan 2013 11:49:40 -0500
Message-id: <2A930EB8-185F-400A-8E12-100CE389351D@apple.com>
References: <50EDBBC6.4090408@gmail.com>
	<CCF496C9-2B07-4A25-AC1F-72D12F118A61@apple.com>
	<50EECE29.7090803@gmail.com>
Subject: Re: [Printing-architecture] IPP Everywhere: How to make CUPS queue
 so that applications can use these printers
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
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>

Till,

On 2013-01-10, at 9:20 AM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
>> ...
>> I have this on my to-do list for CUPS, but thus far haven't had the time to write it...
>> 
> 
> For when this is planned? 1.7?

Definitely not for 1.7 - I simply don't have the time to complete it.  And at some point in the (hopefully near) future it will be unnecessary since we'll have a "native" IPP Everywhere rendering pipeline that does not depend on PPDs.

I just created a cups.org bug to track this, since I didn't previous have one:

    http://www.cups.org/str.php?L4258

> ...
> In scheduler/conf.c is a line
> 
>  cupsdSetString(&DNSSDSubTypes, "_cups,_print");
> 
> Does this not mean that
> 
>  BrowseDNSSDSubTypes _cups,_print
> 
> is already set by default, not needing to set it in cupsd.conf?


Whoops, my bad.  Yes, I guess I already made that change... :)

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

