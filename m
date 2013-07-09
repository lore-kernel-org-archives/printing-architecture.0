Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:content-type:content-transfer-encoding;
	bh=FgZkxSkeHYRn1JjJhdbLUzEHj5myMfCURfhXp+oCYEk=;
	b=Ho5d8tZV9OPoizpJD8dnMR5bEqTyKc3ql3GFZihagrvELWIGJZVKGv/HbIYC/XRwjH
	1PiIlAf9bNRz2qxzwJDvkg4D9fc9Zqru17qDf0Sjs0j+Lls07uSjQCIJp3EpsqX8bJTL
	7il1yId+brYIyG6qyyUicsMll4j5Vu71NYuLvuXp+R7bqetc6GkBUVZzaXuTNqgFTBvA
	zkJ/EQL/gKmx0pKnsaLzVznvc55hkU/9OTun4USlGKg5BtrXDzIgdKq/sZXkRaued7nv
	IPo0YRHbPkuXAX8RWCqphMhrVBMvLPMWgsbrQLC7WAK5noCEzE4/Ds4F8rSwwu/GIrZ8
	5shA==
Message-ID: <51DC8343.4020104@gmail.com>
Date: Tue, 09 Jul 2013 23:40:19 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Options in /etc/cups/printers.conf
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
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>

Hi,

I have a problem with non-PPD options set in /etc/cups/printers.conf.

For filters and cups-browsed I have defined some options foor being
stored in /etc/cups/printers.conf which are not options of CUPS itself.

I set these options via

lpadmin -p <printer> -o <option>-default=<value>

getting a line

Option <option> <value>

in the entry of <printer>. What works is that these options get supplied
with every job, so I can use such options to configure filters or to get
filters into a debug mode. I am using this successfully for example with
the "usb" CUPS backend to find quirk rules for broken USB printers.

Now I also want to use this simply to mark print queues (setting an
option which is ignored by all filters). For example all queues created
by cups-browsed get the cups-browsed boolean option set by doing the IPP
equivalent of:

lpadmin -p <printer> -o cups-browsed-default

resulting in a line

Option cups-browsed true

in /etc/cups/printers.conf. This way I want that if cups-browsed not
closed cleanly (system crash) and so did not remove the queues it
created in the next session finds these queues and treats them
correctly, so that crashes do not lead to ghost queues.

Now it seems that I cannot read out this option setting (without sending
a job and checking error_log), as

lpoptions -p <printer>

does not list the option (as "cups-browsed" or "cups-browsed=true") and

val = cupsGetOption("cups-browsed", dest->num_options, dest->options)

in a C program (with dest being the record of the printer in question)
gives val = NULL as one gets when requesting the value of a non-existing
option.

In CUPS 1.5.x (Ubuntu Precise, 12.04 LTS) this still worked. both
cups-browsed was able to read out the "cups-browsed" marker option from
its queues via the C line shown above and

lpoptions -p <printer>

contains "cups-browsed=true" in its output.

I would consider this a bug in CUPS 1.6.x. Mike can you have a look? Thanks.

   Till
