Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:references:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=QPIMitQQMEJUA27HlxJs06gn1be6/C6x/eWOr5xLXqc=;
 b=YjHMI0PSxiFh5vpyP9qW5zCcaqeT0sQlnBFxIZlhQXvcUOm/JuvkzNS4YjAvTj4Luw
 Sli8VWR7JxBrOdQjcASb0/85xXYzcnUtmlQCsudK4zfhPEqBhWr4lpFPwNfQcqxLr1ap
 E2iBuKEP220UzjpD94QD4lWy8j17VTyOf/9yPEEihix4ZWQ4PpJ7XUam9OFz/ky2D1PA
 UGOtGY2vHXfxKexmAYeggulpATRFduHTKb1nZU4dCbfjgba9PBxt15x6CllqYf0w0vuC
 okX6kB6zrnEQ+ySZwmkhO81K5a5QQJbUFst2ltwxMWAgxw3H7YXJHd2W0SkzuEDdMjLF
 Gedw==
From: Till Kamppeter <till.kamppeter@gmail.com>
References: <12af8541-3113-341d-6b7f-d7393203368f@gmail.com>
Message-ID: <878ddede-d75c-f422-304f-5a6ce517216a@gmail.com>
Date: Tue, 2 Mar 2021 11:58:32 +0100
MIME-Version: 1.0
In-Reply-To: <12af8541-3113-341d-6b7f-d7393203368f@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Future of Printer Setup Tools
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Open Printing <printing-architecture@lists.linux-foundation.org>, Michael Sweet <msweet@msweet.org>, Jai Luthra <luthrajaiji@gmail.com>, Zdenek Dohnal <zdohnal@redhat.com>

Hi,

thanks to all of for the fruitful discussion in the thread

    Automatic printer setup with Printer Applications

here on the mailing list.


As a conclusion I would say that we really will not need any more a tool 
which automatically sets up classic (not driverless IPP) USB (or even 
network) printers when connecting them and turning them on.

But we should not let the user get lost without having any reference to 
find and manage printers in the desktop.

We should rather transition the printer setup tools (like 
system-config-printer) to the new architecture.

A typical printer setup tool consists of two parts:

1. The main window: This part shows all already set up CUPS queues and 
you can do changes on them and list and manipulate jobs here.

2. The add-printer wizard: This part pops up if you click the button for 
adding a new print queue. It shows the printers which CUPS discovered 
with its backends and you create a queue by selecting one of the 
printers and assigning driver and queue name to it.

Now to transition to the new architecture, where printers (and scanners) 
are IPP services and not CUPS queues with assigned filter/PPD drivers 
any more, we should transition the two parts as follows:

1. The main window: Here we list all IPP services. Each IPP service 
(defined by a host and a port) is a main entry. Under an IPP service 
there can be 0 (e. g. Printer Application before creating the first 
print queue), 1 (e. g. simple single-function IPP printer), or more (e. 
g. IPP multi-function printers, Printer Application with more than one 
queue) entries for printers/scanners/faxes. Each main entry should get 
two buttons, one to open the web admin interface and one for IPP System 
Service status/configuration. The printer/scanner entries can also have 
buttons, for example to directly link to job list, options panel, ... in 
the web interface, for pause/resume, set as default, ... All info for 
this can be taken from DNS-SD (see avahi-discover output).

2. The add-printer wizard: Here we should have a guide for the user to 
find and set up classic printers. by listing discovered printers, 
listing installed Printer Applications (with polling them whether they 
support the printer), do a Snap Store search with the make/model of the 
printer and the word "printer", ... No auto-association and evaluation 
of drivers to the printer required.

(1) Can also get extended to a general DNS-SD-based network service 
lister (imaging the user can also reach the web interfaces of his router 
and his smart home devices by a click on a button). This is so-to-say 
the user-friendly version of the admin tool avahi-discover.

These tools can be stand-alone, but ideally (1) would be a module of the 
GNOME Control Center and (2) would pop up by a button at the top of (1) 
(like the current "Printers" module in GNOME Control Center).

WDYT?

    Till
