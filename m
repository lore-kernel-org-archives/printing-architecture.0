Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <51962BA7.4030304@redhat.com>
Date: Fri, 17 May 2013 07:23:38 -0700
Message-id: <2414543F-1C84-41CA-A4C5-4FC127532B73@apple.com>
References: <519537F0.8020405@gmail.com> <51962BA7.4030304@redhat.com>
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
To: Marek Kasik <mkasik@redhat.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, Till Kamppeter <till.kamppeter@gmail.com>

Marek,

On 2013-05-17, at 6:07 AM, Marek Kasik <mkasik@redhat.com> wrote:
> ...
> 
> thank you for your suggestions. I'll think about the best solution of
> the spooling problem. I'll also look at the problem Mike talked about
> (the waking up of printers during resolving).


WRT waking up printers, it isn't generally an issue for a print dialog - there you can browse and query TXT records (if needed/desired) without waking the printer up.  Just hold off on doing a Get-Printer-Attributes request until you need it (after printer selection, on bring-up of the dialog for the default printer, etc.)

Also, CUPS 1.6 and later have CUPS APIs for efficiently browsing for and getting printer capabilities.  I don't know what your requirements are for CUPS versions, but that would save a lot of code right there...

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

