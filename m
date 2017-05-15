Return-Path: <msweet@apple.com>
DKIM-Signature: v=1; a=rsa-sha256; d=apple.com; s=mailout2048s;
	c=relaxed/simple; q=dns/txt; i=@apple.com; t=1494892526;
	h=From:Sender:Reply-To:Subject:Date:Message-id:To:Cc:MIME-version:Content-type:
	Content-transfer-encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-reply-to:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=8O7pYjQGVdjGq1rFeyR7Zjzz8ncogQYBPllU/GzMPu8=;
	b=f8c810p6+8HBqxizJyDOaBFOjGsvVDbAz/rTjoAdd1YyWOflyouxej++91YbCqgB
	98Ho4E9k2REpZPAoOagoHvybEhyiZHQD2jsaVBSglIdEbpaxokdxqWaKeDzzsnjt
	SVGQX6kO8qHbLzx4VsRVOujGaOdFH7APQLY4dkl5aH392y8TK7depqUyUlO6/VGK
	RWn0gmk2EV+k/gqYfvfFyfmG64k+26BJ/CxPpQtEK32CIRo+8FwZ8IFTDmsggurN
	NDC9QT8CoVCbrgXZFUQSfo3ZYwrq2FlMxWkHJ5+2yV3LapaeIiFYT/XsNOGcKWuG
	Q/rle+fslHoK64G9l9Y/Fw==;
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
Sender: msweet@apple.com
From: Michael Sweet <msweet@apple.com>
In-reply-to: <e48d3110-22ba-1562-7311-5942330e87f2@gmail.com>
Date: Mon, 15 May 2017 19:55:22 -0400
Message-id: <A6D24DB1-C9EE-4047-99AB-B8CD26E4C810@apple.com>
References: <e48d3110-22ba-1562-7311-5942330e87f2@gmail.com>
Subject: Re: [Printing-architecture] [cups-devel] Printer Setup Tools and
	deprecated PPD API
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "The CUPS developer list." <cups-devel@cups.org>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Till,

> On May 15, 2017, at 7:06 PM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
> 
> Hi,
> 
> as discussed very often already, CUPS' PPD API is deprecated and should not get used any more.
> 
> I have no problems with this when mentoring my GSoC students working on the print dialog. The print dialog is an application which is supposed to print the documents of the calling application. So it is an application for selecting a printer, setting options for the job to be printed and send off the job.
> 
> This works perfectly well with the APIs and examples documented in the new CUPS programming manual
> 
> https://www.cups.org/doc/cupspm.html
> 
> Now my concern is printer setup tools (note that cups-browsed is also a kind of printer setup tool, but an automatic one), meaning applications which create, modify, and remove CUPS queues.

Printer setup/management tools should continue using the CUPS-Add-Modify-Printer operation and PPD files, as that is the supported mechanism for creating long-lived or shared print queues.  Ordinary applications, however, should stay out of the printer driver and queue creation business and use the documented APIs for enumerating printers and submitting jobs.

> The API does not contain any functions for this, meaning that for queue manipulation operations one has to do IPP calls. Also no problem as they do not get deprecated in CUPS.

Correct, although at some point we hope that some of those operations will also be deprecated when they are no longer needed.

> But how do I set the default option settings of a print queue, for example the default paper size, default print quality, or generally, after I have got a list of options, choices, and default settings of an existing print queue using the new CUPS API, how do I change the defaults, either with CUPS API functions or IPP calls?

cupsSetDests can still be used to save default options, even for short-lived "local" queues.  The default media size comes from the printer/queue, so legacy PPD-based queues get the system-wide default (letter/a4) while (temporary) IPP Everywhere queues get it from the printer itself.

> To find out this I have looked into the code of the printer setup tools which come with CUPS: lpadmin and the admin part of the web interface. Both make use of the deprecated PPD interface and do something rather awkward: They download the printer's PPD, edit the "*Default..." lines to represent the changed default settings and do an add-modify-printer IPP call with the new PPD file so that the file gets uploaded into the CUPS queue.

Correct, when setting the PPD (network-wide) defaults, those tools edit the *Default lines in the PPD.

The lpoptions command edits the local (system or per-user) defaults which are stored separate from the PPD file.

> When working on the development of cups-browsed and adding functionality to it so that the option settings of the queues it creates are cashed and re-applied when it creates a queue for the same printer again in another session, I did not find any other way than editing the PPD file to re-apply the option defaults.

For PPD-based print queues, this is the way it is.  Which is one of the reasons why (re)creating queues automatically in cups-browsed does not scale.

> Now I am looking through cups-browsed whether I can get rid of the deprecated PPD interface and see that there is no way to restore default option settings to a newly created print queue.

lpoptions (what you save with cupsSetDests) can survive queue removal.  If you want to have a more permanent cache of options than what CUPS supplies then you'll need to create your own.

> Also there is no way to create non-raw CUPS queues except queues with auto-created driverless PPD or queues where one supplies a PPD.

... or specifies an installed PPD with the "ppd-name" attribute.

> Or is the deprecation of the PPD API for now only intended for clients who do not more than printing, and not for printer setup tools?

At the moment you still need to use the PPD API (or at least deal with PPDs) when creating legacy print queues. That is an implementation detail in CUPS that is present solely to support printer drivers, so management/setup tools that support creating or modifying queues with printer drivers still need to deal with PPDs.

However, since CUPS 1.4 (~8 years) we have been pushing for user applications to move away from using the PPD API and instead using the IPP (Everywhere) printer options and APIs.  These work for all types of queues (including raw queues) so that clients do not need to depend on hacks like cups-browsed.

> I have the following questions:
> 
> 1. If I want to change the default option settings of an existing print queue, can I do this without downloading the PPD and editing it?

If you want to change them network-wide, no.  If you want to do it for the system or current user, the cupsSetDests function works just fine.

> 2. If I want to create a filtered (not raw) queue, can I do it without supplying a PPD, but instead, somehow by supplying the options, capabilities, destination file format, ...?

If you have an IPP Everywhere-compatible printer, you can use the CUPS-Create-Local-Printer operation (which only works when talking to the local cupsd - not compatible with remote admin) followed by a CUPS-Add-Modify-Printer operation to set the "printer-is-shared" attribute to 'true'.

Otherwise, a permanent print queue that does filtering requires a PPD file, as an implementation detail of CUPS.

> 3. I know that I can create local (temporary) print queues with PPD auto-generation for driverless IPP printers, can I also create a temporary queue with a PPD supplied by me or a temporary raw queue?

No.

> 4. If I create a temporary CUPS queue for driverless printing using the URI of a remote CUPS queue, what will happen? Will the remote CUPS queue be considered an IPP Everywhere printer and so the local, temporary queue gets an auto-generated PPD or will the remote CUPS queue be recognized as such and so the local, temporary queue will be created as raw queue?

The CUPS-Create-Local-Printer operation only creates an IPP Everywhere queue.  So a remote CUPS server (which looks like an IPP Everywhere printer) will get its own auto-generated PPD and the client will end up sending it a PDF (or JPEG) file along with standard IPP options.

> 5. Can I create, by an IPP call, a permanent queue where CUPS auto-generates a PPD for driverless IPP printing?

No.

> 6. Can I make a temporary queue permanent without sharing it?

No.

> 7. If I have a temporary queue and share it, it gets permanent, what happens if I remove the shared bit, does it continue permanent or does it return to temporary?

It continues to be permanent.

> 8. What happens if I change the device URI of a temporary queue? Does the PPD stay the original, driverless PPD? Does the queue stay temporary? Or does it turn permanent?

The PPD stays unchanged, and the queue remains temporary.

> 9. Which operations in general make a temporary CUPS queue permanent?

CUPS-Add-Modify-Printer with "printer-is-shared" = 'true' will make a queue permanent.

> Which operations make a permanent queue temporary?

There are none - once permanent, the only way to get rid of the queue is with CUPS-Delete-Printer.

> 10. It is possible to have a class where the members are remote CUPS queues? Or do they have to be CUPS queues on the local machine?

They must be local queues.

_________________________________________________________
Michael Sweet, Senior Printing System Engineer

