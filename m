DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed; d=gmail.com; s=beta;
	h=domainkey-signature:received:received:message-id:date:from:user-agent:mime-version:to:cc:subject:references:in-reply-to:content-type:content-transfer-encoding;
	b=pfcsLFB3/CeOS/smWduK1iMESfkvJerUwDWEVUH/N+T2qYxZlS/id0L717fIe0/wrJK1F/XLl9i9w5XBAaIsrbhER+hOK8tMGUoyNsxLq7f6zlh6i/IWrjwQ0bij44qusgud3REqEs544vZMcXJrJ+bcXnUGPAX4KPDsKRysxjQ=
Message-ID: <46979D69.90009@gmail.com>
Date: Fri, 13 Jul 2007 16:42:33 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Subject: Re: [Printing-architecture] Self-certification of Printers and Print
	Drivers for POSIX/Linux
References: <e395be80707111541u3beb6037pa30682c6018f1991@mail.gmail.com>
In-Reply-To: <e395be80707111541u3beb6037pa30682c6018f1991@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Ira McDonald <blueroofmusic@gmail.com>
Cc: printing-architecture@lists.freestandards.org

My suggestions for the testing are the following:

- Distributions must be LSB compliant. This way they have a common 
environment for binary executables. LSB 3.2 will require important 
interfaces for printing functionality in applications and for printer 
driver integration.

The driver package should be made in distribution-indepent form to cover 
all Linux distros with one driver.

- Core/system components which need to be tested:

    o CUPS
    o Ghostscript
    o foomatic-rip

The printer drivers interact only with these ones. Apps send jobs to 
CUPS/the printing system.

- One good test would be to set up a print queue for the printer 
pointing into a file and to print into it. The output file must have a 
reasonable size after that. If something in the chain is missing this 
test would fail. If there is physical access to the printer, printing on 
the printer should also be tested.

- The user tool should be a distribution-independent package (or a 
package each distro has to supply) which runs the tests in an automated 
way and presents the results in both machine- and human-readable form. 
It should also provide info to the user what he will need to do to make 
his printing working.

    Till

Ira McDonald wrote:
> Hi,
> 
> The purpose of this note is to kick off discussion on this topic and to
> collect issues and details from all interested parties.
> 
> Background - there was a "lively" discussion during the Open Printing
> sessions of the recent Linux Foundation Summit about certification
> of printers and print drivers for Linux.
> 
> More than ten hardware and software vendors agreed unanimously
> that the "traditional" model followed by Microsoft and Apple (external
> formal testing and certification with a per-printer fee) is definitely NOT
> acceptable in the much smaller and more fragmented Linux market.
> 
> I took the action item from today's Open Printing Architecture WG
> teleconference to spearhead this topic and to be the principal editor
> as we move forward to specifications.
> 
> The approach we discussed was to gather comments on the
> issues and details, write up a proposed approach, write design
> requirements and specifications for test suites and test tools,
> develop the actual tools, and verify the tools by independent
> testing by several printer vendors and/or ISVs.
> 
> One of the tools should be suitable for use by an end-user (NOT
> a "just recompile everything" geek - but a real typical end-user) to
> verify that a print driver (for example) is correctly installed and that
> all of the dependencies in the complex print system software chain
> are indeed satisfied.
> 
> Cheers,
> - Ira
> 

