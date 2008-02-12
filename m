DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:received:received:message-id:date:from:user-agent:mime-version:to:subject:references:in-reply-to:content-type:content-transfer-encoding;
	bh=NYiK1NhG+m1jkw0ntpiZamGYTsK//ldxueR8lHfn7rs=;
	b=fW3zk5sIoKLeVp6UVeIgvULh5/S1Cb2kpYXe+BlsVBnFrMUk6Za008r0fXVgUm9dm55eIWDpk5ad4EqiNCy8Rx/uhtyLA6o98Jfo/iSDmJhw4Lpva1PbVZbTbSSMt4OxllDkMB7HhoLrVrM3W34tCfFp7BHN+/XXCNBVNbohxgo=
Message-ID: <47B215E2.2070106@gmail.com>
Date: Tue, 12 Feb 2008 22:55:46 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <478E9AE0.7070600@gmail.com>
In-Reply-To: <478E9AE0.7070600@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] REMINDER: Google Summer of Code 2008 and
	OpenPrinting
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org, Printing-japan <printing-japan@lists.linux-foundation.org>, Markus Rex <msrex@suse.de>, Jeff Licquia <licquia@debian.org>

Hi,

on the OpenPrinting Steering Committee phone meeting on Monday we talked 
also about our participation in the Gopogle Summer of Code. We agreed on 
sending out a reminder to the list. See my initial posting with my 
project suggestions below.

Please make also your suggestions for projects and also tell whether you 
perhaps want to do the mentoring for one or another of the projects 
suggested by me.

Jeff, Markus, should OpenPrinting enter the GSoC as a mentoring 
organization by itself or should we enter with our projects as part of 
the Linux Foundation as mentoring organization?

    Till

Till Kamppeter wrote:
> Hi,
> 
> the main weakness of OpenPrinting is the lack of man power, so we should 
> make use of all means to raise man power. A very good opportunity is the 
> Google Summer of Code (http://code.google.com/soc/), but we must be well 
> prepared when they open their call for mentoring organizations. Between 
> the opening and the application deadline there is only one week and so 
> we will possibly not be able to schedule a phone meeting in that week. 
> Remember that we have missed last year's deadline by finalizing in the 
> OP Steering Committee phone meeting. As there are no announcements of 
> the opening we should already start to prepare the definitions of the 
> projects we want to offer so that when they open we have the application 
> ready.
> 
> So please anyone, make your suggestions for projects to be offered for 
> Google Summer of Code students.
> 
> My suggestions are (the order is not the order of importance):
> 
>  * libjtapi: C implementation of JTAPI to be shipped by Linux 
> distribution and Unix operating systems.
>  * PAPI integration in CUPS: Seems that no one is working on that currently
>  * Filling the holes in the PDF workflow with CUPS: It is still not 
> determined who will code the CUPS filters pdftoraster, texttopdf, pdftoijs
>  * Common Printing Dialog: Coding on the dialog designed by 
> OpenUsability, for KDE and/or GNOME
>  * OpenPrinting database: Web-based (CGI) software for efficiently 
> reviewing and triaging user-contributed printer entries and comments and 
> integrating them into OpenPrinting XML database (Foomatic database). 
> Also to join duplicates and to remove bad entries.
> 
> Last year the deadline for mentor organizations to apply was March 12, 
> please keep an eye on the Google Summer of Code web site to not miss the 
> opportunity again.
> 
> What about phone meetings to talk about this subject?
> 
>    Till
> 
> 

