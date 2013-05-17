Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:message-id:date:from:user-agent:mime-version:to:cc
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=zS3Uw3Nvc/+uj9e4qlPwTjk0l1zs9CeOeTuBR5YDywI=;
	b=i9ZKu5q1s5665GN+FnWXzOahbIDFOz1FyasxB3nCCkr5+/MwWAclcTFmM13y2SLkCp
	hKHhvzzpHrwmzITo72HGPvi05m03+UWIaCMqoZHgiF1y3kaM7n7n6vG2EtYCdmw6/eAs
	Q0917gK5P+1koKQ3MEyI2iw1DaFz7PFX/Y9OwTqyEMF6OjVXaC5rXmWJvCKcQ9LsxAQq
	YEv8WuA3g4eorW0VPFMjFpbWnWG9UgEDxObXzMy3TRTPrJ9iVnQeNPIheuE/VNNm6d/z
	ofbtFxhp89S7C7NzscMwg7RvliDKt+LjG2HyazCggeW/PRbO9FMQ3GqsX//iJKK4qTdg
	w4eQ==
Message-ID: <51967371.5080508@gmail.com>
Date: Fri, 17 May 2013 20:14:09 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <519537F0.8020405@gmail.com> <51962BA7.4030304@redhat.com>
	<2414543F-1C84-41CA-A4C5-4FC127532B73@apple.com>
In-Reply-To: <2414543F-1C84-41CA-A4C5-4FC127532B73@apple.com>
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
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, Marek Kasik <mkasik@redhat.com>

On 05/17/2013 04:23 PM, Michael Sweet wrote:

> WRT waking up printers, it isn't generally an issue for a print dialog - there you can browse and query TXT records (if needed/desired) without waking the printer up.  Just hold off on doing a Get-Printer-Attributes request until you need it (after printer selection, on bring-up of the dialog for the default printer, etc.)
> 
> Also, CUPS 1.6 and later have CUPS APIs for efficiently browsing for and getting printer capabilities.  I don't know what your requirements are for CUPS versions, but that would save a lot of code right there...

I can perhaps make cups-browsed only poll the printers when they appear
(and then they are recently turned on and awake anyway), by caching the
PPD when the printer disappears (this way also saving system default
changes of the options) before the queue gets removed and when the
printer appears again creating it with the cached PPD (assuming that the
capabilities of a printer do not change during its lifetime).

This way there is no flood of printer wakeups when one boots the machine
and cups-browsed starts or when one arrives with a mobile device with
running cups-browsed in the local network.

So usually only new machines cause printer wakeups.

Only the TXT record does not give enough capabilities to generate a
usable PPD for a CUPS queue.

If I create a raw CUPS queue, can I send a job to it with special IPP
attributes so that CUPS applies a filter chain? This way I could make
cups-browsed only create raw queues to avoit IPP polling and the dialog
then could poll the printer's capabilities when the User selects the
printer, create the option panel PPD-less and send the job with IPP
attributes for the options and for making CUPS applying filters to get
the output into the format needed by the printer.

   Till

