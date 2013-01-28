Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <5105433A.10808@gmail.com>
Date: Sun, 27 Jan 2013 21:10:46 -0500
Message-id: <839698D5-BD71-4662-8ADA-8157542EEB89@apple.com>
References: <50EDBBC6.4090408@gmail.com>
	<CCF496C9-2B07-4A25-AC1F-72D12F118A61@apple.com>
	<50EECE29.7090803@gmail.com>
	<2A930EB8-185F-400A-8E12-100CE389351D@apple.com>
	<5105433A.10808@gmail.com>
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

On 2013-01-27, at 10:09 AM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
> ...
> There is another thing missing in CUPS to make it emulating an IPP Everywhere printer: AFAIK CUPS does not accept PWG Raster as input format. There are no pwgto... filters, especially not pwgtopdf.


While there currently are no PWG Raster to xyx filters, it is unlikely that they would be used since clients will almost certainly prefer sending PDF or JPEG (less work).

(but feel free to file a bug on cups.org and I'll add it to the list of things to do - PWG Raster to xyz will be super-easy)

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

