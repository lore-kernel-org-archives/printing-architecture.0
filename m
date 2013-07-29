Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <51F13A55.9060405@gmail.com>
Date: Mon, 29 Jul 2013 10:25:13 -0400
Message-id: <6A18C146-3FB8-4E02-89B9-6C5404C45F6C@apple.com>
References: <51BA5B58.3080208@gmail.com> <51F13A55.9060405@gmail.com>
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
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, Marek Kasik <mkasik@redhat.com>

Till,

On 2013-07-25, at 10:46 AM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
> ...
> 1. The client sends only pages with sizes valid for the printer, so that
> the server does not need to check. This does not allow simply sending an
> arbitrary PDF file at CUPS. A PDF viewer has to prepare the print jobs
> appropriately.

Generally speaking, this is the approach we take in Apple OS's, with arbitrary PDF files getting scaled/centered/rotated to the default media if any rasterization occurs.

> 2. The client has to send a full list of the supported/available paper
> sizes (name, size, tray, ...) to the server along with the job, so that
> the server can use this list instead of a PPD file. In this case, what
> is the syntax of the key=value pairs which I have to send as IPP
> attributes together with the job?

I don't see the client sending any printer capability information to the server with a job; it *might* provide a list of supported sizes (media-supported) or collections (media-col-database) when configuring a local queue, but in general I think it is better for the server to grab its own copy (as needed).

For current CUPS the way you pass this configuration information is with a PPD file. Future versions of CUPS might adopt a different format, e.g. IPP attributes in a file.

> 3. The pdftoippprinter filter requests the printer's capabilities from
> the printer by itselfaccessing the printer via IPP. Should a filter do
> that should it do it somehow through the IPP backend of CUPS? Is it
> possible to do this through the IPP backend of CUPS?

No.

> WDYT? How should one proceed here?

If you are printing through cupsd, you need a PPD.  If you are implementing some other kind of spooler, have the client pass the printer URI and default media size/color mode/type/resolution info.

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

