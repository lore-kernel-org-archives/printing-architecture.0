DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:received:received:message-id:date:from:user-agent:mime-version:to:subject:content-type:content-transfer-encoding;
	bh=DBfL2XU0U4UkIWpM8WLUI6TWlV25ZsnK+f26NWExsIA=;
	b=HPjKBU/b+FnTDNtusDWoKW8Q+wRWhAomywxmZPy0vTD/d5Hf28FP9K4QgDM5jfCiOZhWYxXMoSEJfTM7hPgpf3DbOhy/tbrKZ+MyiYHlHxAti8iRHbCkgidOMYiPFIujZHYkd+C7xdkM7rXKiIWsNw5QPtEf1lXHUEXiFZ7plk8=
Message-ID: <478E9AE0.7070600@gmail.com>
Date: Thu, 17 Jan 2008 00:01:36 +0000
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Google Summer of Code 2008 and OpenPrinting
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org, Printing-japan <printing-japan@lists.linux-foundation.org>, Markus Rex <msrex@suse.de>

Hi,

the main weakness of OpenPrinting is the lack of man power, so we should 
make use of all means to raise man power. A very good opportunity is the 
Google Summer of Code (http://code.google.com/soc/), but we must be well 
prepared when they open their call for mentoring organizations. Between 
the opening and the application deadline there is only one week and so 
we will possibly not be able to schedule a phone meeting in that week. 
Remember that we have missed last year's deadline by finalizing in the 
OP Steering Committee phone meeting. As there are no announcements of 
the opening we should already start to prepare the definitions of the 
projects we want to offer so that when they open we have the application 
ready.

So please anyone, make your suggestions for projects to be offered for 
Google Summer of Code students.

My suggestions are (the order is not the order of importance):

  * libjtapi: C implementation of JTAPI to be shipped by Linux 
distribution and Unix operating systems.
  * PAPI integration in CUPS: Seems that no one is working on that currently
  * Filling the holes in the PDF workflow with CUPS: It is still not 
determined who will code the CUPS filters pdftoraster, texttopdf, pdftoijs
  * Common Printing Dialog: Coding on the dialog designed by 
OpenUsability, for KDE and/or GNOME
  * OpenPrinting database: Web-based (CGI) software for efficiently 
reviewing and triaging user-contributed printer entries and comments and 
integrating them into OpenPrinting XML database (Foomatic database). 
Also to join duplicates and to remove bad entries.

Last year the deadline for mentor organizations to apply was March 12, 
please keep an eye on the Google Summer of Code web site to not miss the 
opportunity again.

What about phone meetings to talk about this subject?

    Till

