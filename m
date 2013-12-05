Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:content-type:content-transfer-encoding;
	bh=onztSqRQbds5j5D9DaR/i7pGah+xQPvpdV8oi6h+Xk4=;
	b=AtxzBx9h8e10shhEFA+IXpJlXit4De1eRPEqSnzhQAHxSDeBZfm5pftnnIZSWa1yoj
	aWX3KHNtpayPdwpBFbAa3wT+1hiP23sOmZJPQR9ox9I3V1HNALQuEPzeeH7rW2Q3jJmC
	kZeTGPTLa9o497z8ll5gVz0V/j81j0fwGcDT1q202rugcb+txlDvdW5pmDsAXm17X8EN
	4QYTB0ZKADzV6WlflcjZfwlDbzjAMVGImbzGNm3z2HRPQYkSL+ppbNXut+c52qQFUo//
	bqf/hqRMx9/jRPuItCmnXZgmQ7x+RrGp+/l3TzuOpqacYZcx1vXHKIBjpleHwojiZKtB
	lZyw==
Message-ID: <52A101D4.40107@gmail.com>
Date: Thu, 05 Dec 2013 23:44:36 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] What should the "landscape" and
 "orientation-requested" options exactly do?
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@apple.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>

Hi,

I got the following bug report on Ubuntu:

https://bugs.launchpad.net/ubuntu/+source/poppler/+bug/1243484

a user complais that when he sends a job with the "landscape" option it
does not come out correctly.

Now I want to know exactly what "landscape" and "orientation-requested"
should do exactly, to fix cups-filters.

There is some discussion in the bug report and following RFC 2911 I come
to the conclusion that PDF files and also PostScript files which come
from apps as a print job have their layout and page geometry already
determined by the app and so a filter like pdftopdf should ignore
"landscape" and "orientation-requested". For PostScript files (filters
pstopdf and pstops) the given "PageSize", "landscape", and
"orientation-requested" settings should only be used as default for
pages without geometry definition (like the old PostScript CUPS test
page) and be ignored by pages which already come with complete geometry
info (like pages of a usual print job from an app). Filters for text and
image jobs (texttopdf, imagetopdf) should use "landscape" and
"orientation-requested" for the layout of the output.

Am I correct?

   Till
