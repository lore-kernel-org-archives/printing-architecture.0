Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:message-id:date:from:user-agent:mime-version:to:cc
	:subject:content-type:content-transfer-encoding;
	bh=dyjODVpx/DbUe5R4Lg+J/Pl6gmReQvpTE7zPfKUhUgE=;
	b=ZN0ShW92Sjohtea9VFqjaxZhhTjhl+Mu4aAk7OMt95h8myR4coZXUHHyRujaDACERk
	CyeU01eZ33/FnMleLqSIblvE8IF96hcag8n8pef7AE0EHc/N7ae+Fc2V4Zqb1f9lWUv6
	jGPuyv6VQxnzdzS8KlT4lfJP7buMJTRJ85/xl8BfvP8DfyMuNluOC0f5R7duH9SsXq98
	65oU3VVBb5xVG2UOYWHJphki73//gHti9M4k8OUUZDJI7TBETYi7enJm4QgeNVTF6iNM
	tPhKGOC9P5wNXYOge3rZAvesGdtdYf7y/+/XMJJ5mGjMjriPzDSg4qpKbZoXXTlIliaG
	lMvA==
Message-ID: <50EDBBC6.4090408@gmail.com>
Date: Wed, 09 Jan 2013 19:49:42 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] IPP Everywhere: How to make CUPS queue so
 that applications can use these printers
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

on today's OpenPrinting conference call Ira told that first IPP 
Everywhere printers will get available on the market.

I am thinking about use of IPP Everywhere printers with Linux. There are 
two questions:

1. How to print from a Linux machine to an IPP Everywhere printer?
------------------------------------------------------------------

The intention of IPP Everywhere printers is that they get available to 
clients without any client-side configuration or driver. Now ho am I 
supposed to implement this on a Linux machine so that the available IPP 
Everywhere printers appear in the print dialogs (GTK, Qt, LibreOffice) 
of the applications and the user-settable options for the printers get 
shown in the dialog? Am I supposed to set up a CUPS queue? Do I have to 
generate a PPD file somehow (or is CUPS providing a virtual PPD file)? 
Or is it the full responsibility of the print dialog (no CUPS daemon 
needed) to browse the printer's Bonjour broadcasts, to read out the 
options from the IPP attributes and display the appropriate options? 
Probably I will need a local CUPS queue so that the application's PDF 
goes through pdftopdf and if the printer is not a PDF printer also 
through pdftoraster and rastertopwg? How do I tell to the CUPS queue to 
use these filters when it has no PPD file?


2. How to make a Linux CUPS server emulate IPP Everywhere?
----------------------------------------------------------

Another use case for IPP Everywhere is having a Linux machine running 
CUPS and with a conventional (non-IPP Everywhere) printer connected via 
network or USB and a CUPS queue with driver and PPD (HPLIP, Gutenprint, 
PostScript, etc.). Now I have a mobile device or TV set (Android, 
Windows Phone, ...) which supports printing on IPP Everywhere printers. 
How do I make CUPS emulate IPP Everywhere, so that the shared CUPS 
queues appear like IPP Everywhere printers? Or does CUPS do this already?

    Till
