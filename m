Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:message-id:date:from:user-agent:mime-version:to:cc
	:subject:content-type:content-transfer-encoding;
	bh=6kG17hqqz/DTX/CRXD2gIivR0KW3eiADOobLPJmpFeg=;
	b=abXVPAKcL8MCUdhMZn5OElAzPZXyAe2wW0U1onSe2unCPuQeHhJwHXkc525u7BYNW7
	eVyjA2LfHUumclzY/EPcBx5iTOg5NPsMFz65dfaIiOnuJSt7ongQHFM/0jQAw6SkO05q
	rFJksw3CAeORAV40nI3ElcHvdkPNfqvgtEsFOuON2YNn4UsGAKLSZhqwUoX6vgKp5DNu
	9rzcWuUMCc1gJ5dCKAY12tC7XD3wTsQhFzZb+iTt0dxLhreTxUmZuEa4WUVAFV7PhBmD
	yMjbqiwrCKTHZ3LF7ljj5LAFLLxWhF8m2zJHoOrzterX+MUkDTD2nHbTkINdFC0NB9O/
	BWeg==
Message-ID: <519537F0.8020405@gmail.com>
Date: Thu, 16 May 2013 21:48:00 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Some suggestions for the DNS-SD (Bonjour)
 printer support in the dialog
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Marek Kasik <mkasik@redhat.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>

Hi,

this is a follow-up to the discussion I had with you about the direct
discovery of IPP printers via Bonjour by the new GTK print dialog and
how the dialog submits jobs to these printers.

First, as I said, the job needs to get spooled somehow, so that it does
not block the client app in case of a large job or the printer suddenly
not continuing to take data (paper out, disappearing on network, ...).
Preferably this should be done by CUPS (creating a temporary queue) so
that the user can control the job (hold, cancel, ...) by the system's
job viewer.

On the other side, not every user is allowed to create CUPS queues,
meaning that for these printers to work generally, the dialog would need
to spool by itself, meaning that the job does not appear in the job
viewer and the user has the hassle of different methods of controlling
his print jobs.

Probably the best way is really the system service cups-browsed for
discovering, setting up, and taking down Bonjour/IPP network printers
then, and not the dialog ...

But the good side of the discovery of IPP printers via the print dialog
is that one does not need PPD files. cups-browsed has to generate a PPD
file to make the print dialog list the options of the CUPS queue
genberated by cups-browsed.

Mike, WDYT? As I understand all this, local spooling is needed for every
Bonjour-discovered IPP printer as it can suddenly disappear or stop
taking data. Am I right? So if the dialog sends jobs directly to a
remote printer/print server, it can easily block. Is this correct?

Marek, another important thing: To do IPP printer discovery and polling
capabilities from IPP printers correctly, the PWG has created the "Best
Practices" document:

ftp://ftp.pwg.org/pub/pwg/ipp/wd/wd-ipp-bestp10-20130513-rev.pdf

This gives valuable hints, especially for getting the correct option set
and to handle conflicts of the option settings.

   Till
