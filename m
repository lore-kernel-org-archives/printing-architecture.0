Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <51B99AD7.1090005@gmail.com>
Date: Thu, 13 Jun 2013 07:39:03 -0400
Message-id: <2E6F3E0A-2BC0-42E6-83E9-FFB185353242@apple.com>
References: <519537F0.8020405@gmail.com> <51962BA7.4030304@redhat.com>
	<2414543F-1C84-41CA-A4C5-4FC127532B73@apple.com>
	<51967371.5080508@gmail.com>
	<D36BAB03-9A91-42E9-A994-DC0D3C6C254D@apple.com>
	<51B99AD7.1090005@gmail.com>
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
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, Marek Kasik <mkasik@redhat.com>

Till,

On 2013-06-13, at 6:11 AM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
> During the discussion I asked this:
> 
> On 05/18/2013 08:29 AM, Michael Sweet wrote:
>>> If I create a raw CUPS queue, can I send a job to it with special IPP
>>> attributes so that CUPS applies a filter chain? This way I could make
>>> cups-browsed only create raw queues to avoit IPP polling and the dialog
>>> then could poll the printer's capabilities when the User selects the
>>> printer, create the option panel PPD-less and send the job with IPP
>>> attributes for the options and for making CUPS applying filters to get
>>> the output into the format needed by the printer.
>>> 
> 
> Is this possible with CUPS?


The issue here is that the other end will need to support the file formats and options you are passing.  If you supply a local PPD then cupsd will convert into a format that the other end can handle.

I have some thoughts about how we can support transient queues in cupsd, e.g. send a print request to the local cupsd with the printer-uri of the remote IPP printer, which then causes the creation of a temporary queue and subsequent query of the remote printer's capabilities, etc.  This might be exposed as a persistent "transient" printer ("ipp://localhost/printers/_transient"?) with the client supplying the output-device and output-device-uri in the print request (output-device is already part of IPP, output-device-uri would be an extension) which would automatically "add" the corresponding output device.

I might also bring back "discovered" queues in cupsd, just implemented differently so that we don't wake the printer up until somebody asks for the specific attributes or PPD for a given queue.  That would have the nice side-benefit of existing cupsGetDests clients getting the Bonjour queues as well as offering integrated IPP Everywhere support.

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

