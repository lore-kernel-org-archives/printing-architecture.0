Return-Path: <cloos@jhcloos.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jhcloos.com;
 s=ore17; t=1652711713;
 bh=LfepD7pq0lkFeFxQ2VDhbsYSQJSl4OPFmyUe0JBXjLE=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=Y5Z2rA1MH+RMBY/yxQJpBbkVNAOYZz0sjn4Qb1WtNuXFfR4jOCOBsD3pltm3jIXF7
 nB9KGjJw+F8BcJCSn0mt1uOVp7/GHtfzTGLXK9QGlxn62dyF3pcpbDFSIvjz7E0NLn
 7D3dPf7HuudXLsnAdMDC34rDOv6SxkJT9cP4kjrAL9NMGkZfnxXjAkCbHUb9QeuYnn
 hSYagUvK2jvgrWqKgAAvCSV1iLRub17YajVhRX50gRL+7/xD8swR5gvQDsrsmw628y
 ciL5OeRAd7Qih157OLEAQSK05PuITmptwq6vRQ/qctLa+DmJNoXseSnEVV+3lxXrLl
 bqBp2AHcKJ77w==
From: James Cloos <cloos@jhcloos.com>
In-Reply-To: <DDD5F2DC-E1A4-4EEB-9613-CBEF15462563@msweet.org> (Michael Sweet
 via Printing-architecture's message of "Sun, 15 May 2022 15:37:15
 -0400")
References: <7AECB015-F222-4111-A05F-B57F68F76FAD@msweet.org>
 <b3d58dc0-1405-fc42-34d7-e3964407b5da@gmail.com>
 <D352678D-C1E1-4B39-96E1-EC54026FD4FF@msweet.org>
 <2d78d025-3216-2d0f-aae6-a4e5db4e11d1@gmail.com>
 <184255CD-9208-42EC-9919-3E980378E57E@msweet.org>
 <4a81b64b-c2d8-bdce-a64c-8fe4697f0cbf@gmail.com>
 <DDD5F2DC-E1A4-4EEB-9613-CBEF15462563@msweet.org>
Date: Mon, 16 May 2022 10:35:05 -0400
Message-ID: <m3y1z1o89y.fsf@carbon.jhcloos.org>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Printing-architecture] PAPPL 1.2rc1 (Supply levels)
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet via Printing-architecture <printing-architecture@lists.linux-foundation.org>
Cc: Till Kamppeter <till.kamppeter@gmail.com>

>>>>> "MS" == Michael Sweet via Printing-architecture <printing-architecture@lists.linux-foundation.org> writes:

MS> The "testpappl" program provided with PAPPL can be used to test the SNMP stuff:

MS>     git clone https://github.com/michaelrsweet/pappl.git
MS>     cd pappl
MS>     ./configure
MS>     make
MS>     testsuite/testpappl --get-id socket://IP-ADDRESS
MS>     testsuite/testpappl --get-status socket://IP-ADDRESS
MS>     testsuite/testpappl --get-supplies socket://IP-ADDRESS

i wanted to check that out with my printers.

it worked well for socket: on one of my boxen, but on my main
workstation i got:

Compiling printer-webif.c...
printer-webif.c: In function '_papplPrinterWebCancelAllJobs':
printer-webif.c:64:42: error: 'HTTP_STATUS_FOUND' undeclared (first use in this function); did you mean 'HTTP_STATUS_GONE'?
   64 |       papplClientRespondRedirect(client, HTTP_STATUS_FOUND, path);
      |                                          ^~~~~~~~~~~~~~~~~
      |                                          HTTP_STATUS_GONE
printer-webif.c:64:42: note: each undeclared identifier is reported only once for each function it appears in
printer-webif.c: In function '_papplPrinterWebCancelJob':
printer-webif.c:169:44: error: 'HTTP_STATUS_FOUND' undeclared (first use in this function); did you mean 'HTTP_STATUS_GONE'?
  169 |         papplClientRespondRedirect(client, HTTP_STATUS_FOUND, path);
      |                                            ^~~~~~~~~~~~~~~~~
      |                                            HTTP_STATUS_GONE
printer-webif.c: In function '_papplPrinterWebDelete':
printer-webif.c:784:42: error: 'HTTP_STATUS_FOUND' undeclared (first use in this function); did you mean 'HTTP_STATUS_GONE'?
  784 |       papplClientRespondRedirect(client, HTTP_STATUS_FOUND, "/");
      |                                          ^~~~~~~~~~~~~~~~~
      |                                          HTTP_STATUS_GONE
printer-webif.c: In function '_papplPrinterWebReprintJob':
printer-webif.c:1414:50: error: 'HTTP_STATUS_FOUND' undeclared (first use in this function); did you mean 'HTTP_STATUS_GONE'?
 1414 |               papplClientRespondRedirect(client, HTTP_STATUS_FOUND, path);
      |                                                  ^~~~~~~~~~~~~~~~~
      |                                                  HTTP_STATUS_GONE
make[1]: *** [../Makedefs:75: printer-webif.o] Error 1
make: *** [Makefile:28: all] Error 1


make -k showed a number of similar issues in other files.

obviously some dependency is too old; where does HTTP_STATUS_FOUND come
from?

in any case it looks like configure fail to notice that said dep is too
old.

-JimC
-- 
James Cloos <cloos@jhcloos.com>         OpenPGP: 0x997A9F17ED7DAEA6


