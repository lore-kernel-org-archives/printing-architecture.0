Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <52A5C869.8000800@samsung.com>
Date: Mon, 09 Dec 2013 09:55:16 -0500
Message-id: <9F98834E-0215-4B3D-AEF8-5C50AEDF5EA6@apple.com>
References: <52A5C869.8000800@samsung.com>
Subject: Re: [Printing-architecture] Different Collate option handling
	in	pdftopdf and pstops
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Andrey Makhalkin <a.makhalkin@samsung.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Andrey,

One could argue that pdftopdf should support the cupsManualCopies keyword and generate page references to effectively do multiple copies.

However, given that PDF is NOT a streaming format (at least not for the printer, since it needs the entire document to print an arbitrary PDF file) it seems inconceivable that you would have a PDF printer that does not support (collated) copy generation.  And in fact it is a hard requirement for IPP Everywhere printers that support PDF.

How are you printing the PDF to the printer?  (output of lpstat -v would be useful)

What driver are you using?


On Dec 9, 2013, at 8:40 AM, Andrey Makhalkin <a.makhalkin@samsung.com> wrote:

> Hi,
> 
> Our testing group has found an issue with printing of multiple copies
> with collate option turned on.
> cups-filters version is 1.0.40-0ubuntu1
> 
> When PDF workflow is used, pdftopdf filter doesn't put collated copies
> of document pages in output pdf file.
> With the same PPD file and print options pstops filter produces N *
> (numpages) pages in output PS file, which seems to be a correct behavior.
> 
> There is an attribute  *cupsManualCopies in PPD file, which is set to False.
> There is no Collate option inside the PPD file.
> This  printer doesn't seem to support hardware collate, but it supports
> hardware page copies.
> 
> The expected filter behavior is to produce collated copies of the document.
> 
> When we change its value to "True", pdftopdf filter produces the
> expected number of pages (does copies manually).
> 
> Could you please explain, which filter behaves correctly?
> Is it a bug in pdftopdf filter?
> 
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture

_______________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

