Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=Hg07ChKAkM16ZIIc9Qn2j/teYswICFzupDKWsVbv5i0=;
	b=Qg/l3HZiWY4T0kKgmAVPAUWQoFyhWGtHNDLfjt1Q102Z8GaBszGqXl8QJ2f+GGp0Vz
	51T6Q3tPRObhzYstnj/mqfjyoCcEfsVaFf+9B8JKWzdp0mAFLLGUb6ih626vA9X0cuQO
	18e2qzS40SQr26dkAe5wUlXeK0DFBZmqs+VMQCnxUfLMd7/jmEW1mJ726D3IaWbFd6cG
	J0NTooSYQM2pDWCm8/kRIUUNYizceKNFuP4kCNzxkdarYrCa2OhmK8iSR6hTdocVO7jp
	6lrbZlAYeRM9vqnP6T5PgKM/Bp/oUUze0tQE9lSMxt0iRCPPzSr3naA+wnDJucWo+tiZ
	sFpw==
Message-ID: <51B8FBA7.6060502@gmail.com>
Date: Thu, 13 Jun 2013 00:52:23 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <519537F0.8020405@gmail.com>
	<FDC917F9-BB2B-4117-9F4A-D817841E5AE8@apple.com>
	<5195DA7B.2040501@gmail.com>
	<2A8076E6-4CB7-4F70-A92B-AF1F9F0F3FE0@apple.com>
	<m361yfsvhh.fsf@carbon.jhcloos.org>
	<B5705E2C-0C03-4BA3-9A37-D13B1654F869@apple.com>
In-Reply-To: <B5705E2C-0C03-4BA3-9A37-D13B1654F869@apple.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
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
To: Michael Sweet <msweet@apple.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, Marek Kasik <mkasik@redhat.com>, James Cloos <cloos@jhcloos.com>

On 05/19/2013 08:08 AM, Michael Sweet wrote:
> 
> The reason I mention DBUS is that it a simple way to implement a per-user spooler that provides "temporary" print queues.  This could also be part of cupsd (it used to be for CUPS browsing), but I want to be careful not to re-introduce the problems of CUPS browsing.
> 
> The key is that auto-adding every printer you see has a huge overhead and isn't particularly useful for the user when there are more than a few printers - how many printers does one user print to in the typical case?  Browsing and adding-on-first-use is a much better solution since then you just manage those printers you use on a particular system.

What about cups-browsed offering a D-Bus service to create a temporary
print queue, queue creation being triggered when a Bonjour-discovered
network printer is selected in the print dialog and "Print" is selected.
Queues are removed if they stay for a time X without job (preferred), on
another D-Bus command, or on shutdown of cups-browsed. These queues get
visible for other users, but this is no problem if they look the same in
the other user's print dialog then. The job of the other user gets into
the same temporary queue then and correctly waits until the first user's
job finishes.

This would make all print spooling be done by CUPS and not require any
extra per-user or per-dialog spooler. Also if different users send jobs
shortly one after the other, the jobs get correctly queued and cannot
mix up.

WDYT?

   Till

