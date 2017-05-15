Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:cc:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding;
	bh=cQnH5rJO1s56igzps4AYk8tCEFlXJCWvc0OI/Ox4v/s=;
	b=aZO7fSB9dJA86o2p+8egHD5PY31RgE+QtnH/YKHIklK2Up/UtAVq4NJ579K1hNkzsv
	YD22r3lIGwbL4iBT3f4eDqRGxmB0qcL9qyu7tBfop9lgByU4vrwnWmwc07cxTB1V2sQT
	105DiGJH8RgprYMqecL92yLVljawmgarFJxShLGEgtfVFexs6Z0a0yu3qjZHmUgyGhNP
	g5uece5ydiugxF8nRIh93wbo7Qd55JCqYykn/N+2d2SSXGoeaDxtY/nHEzCA4d4GRY69
	cc9nrpW5ctfLvDXQLnXFXtKF3CBL/0wopApPTGdwAQFITlFzEPU6PKB0knx7XUg/2Ka5
	LLNg==
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <e48d3110-22ba-1562-7311-5942330e87f2@gmail.com>
Date: Mon, 15 May 2017 20:06:44 -0300
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Printer Setup Tools and deprecated PPD API
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
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>

Hi,

as discussed very often already, CUPS' PPD API is deprecated and should 
not get used any more.

I have no problems with this when mentoring my GSoC students working on 
the print dialog. The print dialog is an application which is supposed 
to print the documents of the calling application. So it is an 
application for selecting a printer, setting options for the job to be 
printed and send off the job.

This works perfectly well with the APIs and examples documented in the 
new CUPS programming manual

https://www.cups.org/doc/cupspm.html

Now my concern is printer setup tools (note that cups-browsed is also a 
kind of printer setup tool, but an automatic one), meaning applications 
which create, modify, and remove CUPS queues.

The API does not contain any functions for this, meaning that for queue 
manipulation operations one has to do IPP calls. Also no problem as they 
do not get deprecated in CUPS.

But how do I set the default option settings of a print queue, for 
example the default paper size, default print quality, or generally, 
after I have got a list of options, choices, and default settings of an 
existing print queue using the new CUPS API, how do I change the 
defaults, either with CUPS API functions or IPP calls?

To find out this I have looked into the code of the printer setup tools 
which come with CUPS: lpadmin and the admin part of the web interface. 
Both make use of the deprecated PPD interface and do something rather 
awkward: They download the printer's PPD, edit the "*Default..." lines 
to represent the changed default settings and do an add-modify-printer 
IPP call with the new PPD file so that the file gets uploaded into the 
CUPS queue.

When working on the development of cups-browsed and adding functionality 
to it so that the option settings of the queues it creates are cashed 
and re-applied when it creates a queue for the same printer again in 
another session, I did not find any other way than editing the PPD file 
to re-apply the option defaults.

Now I am looking through cups-browsed whether I can get rid of the 
deprecated PPD interface and see that there is no way to restore default 
option settings to a newly created print queue.

Also there is no way to create non-raw CUPS queues except queues with 
auto-created driverless PPD or queues where one supplies a PPD.

Or is the deprecation of the PPD API for now only intended for clients 
who do not more than printing, and not for printer setup tools?

I have the following questions:

1. If I want to change the default option settings of an existing print 
queue, can I do this without downloading the PPD and editing it?

2. If I want to create a filtered (not raw) queue, can I do it without 
supplying a PPD, but instead, somehow by supplying the options, 
capabilities, destination file format, ...?

3. I know that I can create local (temporary) print queues with PPD 
auto-generation for driverless IPP printers, can I also create a 
temporary queue with a PPD supplied by me or a temporary raw queue?

4. If I create a temporary CUPS queue for driverless printing using the 
URI of a remote CUPS queue, what will happen? Will the remote CUPS queue 
be considered an IPP Everywhere printer and so the local, temporary 
queue gets an auto-generated PPD or will the remote CUPS queue be 
recognized as such and so the local, temporary queue will be created as 
raw queue?

5. Can I create, by an IPP call, a permanent queue where CUPS 
auto-generates a PPD for driverless IPP printing?

6. Can I make a temporary queue permanent without sharing it?

7. If I have a temporary queue and share it, it gets permanent, what 
happens if I remove the shared bit, does it continue permanent or does 
it return to temporary?

8. What happens if I change the device URI of a temporary queue? Does 
the PPD stay the original, driverless PPD? Does the queue stay 
temporary? Or does it turn permanent?

9. Which operations in general make a temporary CUPS queue permanent? 
Which operations make a permanent queue temporary?

10. It is possible to have a class where the members are remote CUPS 
queues? Or do they have to be CUPS queues on the local machine?

Please consider also things which I am asking for but are not possible 
currently as ideas for new features for CUPS.

    Till
