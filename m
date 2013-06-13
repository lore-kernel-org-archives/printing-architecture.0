Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <51B9BFDD.50305@gmail.com>
Date: Thu, 13 Jun 2013 10:19:56 -0400
Message-id: <1A6394A1-9987-43BA-8A18-34EAB0952BFC@apple.com>
References: <519537F0.8020405@gmail.com> <51962BA7.4030304@redhat.com>
	<2414543F-1C84-41CA-A4C5-4FC127532B73@apple.com>
	<51967371.5080508@gmail.com>
	<D36BAB03-9A91-42E9-A994-DC0D3C6C254D@apple.com>
	<51B99AD7.1090005@gmail.com>
	<2E6F3E0A-2BC0-42E6-83E9-FFB185353242@apple.com>
	<51B9BFDD.50305@gmail.com>
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

On 2013-06-13, at 8:49 AM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
> On 06/13/2013 01:39 PM, Michael Sweet wrote:
>> 
>> The issue here is that the other end will need to support the file formats and options you are passing.  If you supply a local PPD then cupsd will convert into a format that the other end can handle.
>> 
> 
> Here one could easily restrict the support to printers with standard
> PDLs so that a handful of filters is enough. Then one sends always PDF
> and tell by IPP attributes which output format and which option
> settings. So what one needs is the right IPP attributes to tell CUPS the
> output format (instead of needing it hard-coded in a PPD).
> 
> Would be great if CUPS is capable of this, but if not, I have an idea.

Current CUPS doesn't support this, but I *do* have code that already does this in other shipping software.  One of the goals of post-1.7 is to explicitly support this kind of configuration, without PPDs (although we will likely generate PPDs for legacy applications for at least a little while yet...)

> One would need a pdftoany filter which calls first pdftopdf (if pdftopdf
> is installed, we could leave it out on mobile) and then one of
> pdftoraster+rastertopwg, pdftops, nothing, gstopxl,
> pdftoraster+rastertopcl, depending on what output format was requested
> by an option (IPP attribute). Problem is how to make the queue using
> this filter without having a PPD with hard-coded paper sizes (perhaps
> System V interface script?).

One of my interests in MuPDF is the ability to create just such a filter in code. And to make it clear, my focus is on using MuPDF to support IPP Everywhere (PWG Raster and PDF) printers - legacy printers can continue to use the old PPD-based driver approach or whatever we come up with in the future (i.e. that "Driver as an IPP Everywhere service" approach I mentioned in a previous email...)

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

