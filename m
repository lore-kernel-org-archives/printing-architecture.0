Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <5270DD07.4080601@gmail.com>
Date: Fri, 01 Nov 2013 10:48:05 -0400
Message-id: <B68BB93E-6180-44CE-BEDA-3A499C72D823@apple.com>
References: <51BA5B58.3080208@gmail.com> <5270DD07.4080601@gmail.com>
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
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, John Layt <john@layt.net>, Marek Kasik <mkasik@redhat.com>

Till,

On Oct 30, 2013, at 6:18 AM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
> ...
> What is required from a GUI is that as soon as the user selects a
> printer for printing (or with the default printer when just opening the
> dialog) is that if the printer is such PPD-less queue, to poll the
> printer via IPP (code example below) to get its capabilities, show the
> user-settable options on the dialog's option panel (like PPD options)
> and send the job accompanied with the option settings, including the
> ones which the user has not changed and the ones which have only one
> choice (and so are not changeable). The job itself should be in PDF
> format and (if the printer supplies appropriate info) in a page size
> supported by the printer.

Till, I am curious why you are not using the CUPS APIs from 1.6 and later for this?

Also, I have my concerns of this approach - with cupsd not knowing anything about the printer, and with there being no way for a non-aware app to know what the printer's capabilities are, I foresee a lot of interoperability issues.

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

