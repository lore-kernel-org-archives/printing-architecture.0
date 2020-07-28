Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=l5nvXWX/znXz+B1rYWTz2u0XCw9O2cZUUA8y8qdcK94=;
 b=AlJhNoZkm9NJlO0WPx4lq/U+Ot4Y5AcIVkS8kPL9w2BoSiQquHjSBIG7lMIBn+YUA8
 WJGa0LTlE0HXN3x6j3gc+UOCTlrUG3JUsc5XJ4dIAFSiwDQdf4p0Djtebd4BB9N3XEdX
 KcpMvbiFFhT7efua0nPmXc2yS6QKzjHeR4mSqY4YjoOJ/gnsnk2sZ/XRXnIl/O/1v7oJ
 Ibv7EpvpQWM8ZEy47TdxoV/tnfVaroUXsZT5gtAd/MM/x1h5aFruq+lbIGC6Yxnnk+pj
 Ulxe9yM/WHi5M+tTYNApsKd3bcx2Y8bTUb5Leux06h8Ql5snxPKwIZW1IyTZ77Z4oBE4
 aq9g==
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <6e976771-0ca9-1ded-bc7c-bfc00979e68f@gmail.com>
Date: Wed, 29 Jul 2020 00:33:11 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] GTK Print Dialog: Modern IPP printing
	environments cause problems
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Marek Kasik <mkasik@redhat.com>
Cc: Aveek Basu <basu.aveek@gmail.com>, Open Printing <printing-architecture@lists.linux-foundation.org>, Rithvik Patibandla <rithvikp98@gmail.com>, Rithvik Patibandla <rithp9@gmail.com>

Marek,

I want to make you aware of the state of the GTK print dialog and 
problems which are occuring with it in modern printing environments.

Most (probably all) of these can be solved by adding CPDB (Common Print 
Dialog Backends) support to the dialog as then the control on how the 
dialog communicates with printing systems is moved from GTK to 
OpenPrinting. We at OpenPrinting can quickly react to changes and 
implement everything needed in the appropriate CPDB backend.

Unfortunately Tanmay Anand refuses to answer to any of our requests to 
return to working on this subject. I do not know how well you worked 
together with him, how much code and which quality of code he 
contributed, whether he actualy understood all the mechanisms, ... Could 
you tell about your relationship with him in this subject?

Is there any worthwhile outcome which could be the base for someone else 
to continue and complete the work?

Are there any plans to add CPDB support independent of Tanmay?

Problems are the following:


1. If there is an IPP printer available CUPS would create a temporary 
queue as soon as you try to print on such a printer. See the output of

lpstat -l -e

for such queues. On my machine I get

till@till-x1yoga:~/Downloads$ lpstat -l -e
HP_OfficeJet_Pro_8730_08C229_ network none 
ipps://HP%20OfficeJet%20Pro%208730%20%5B08C229%5D._ipps._tcp.local/
HP_OfficeJet_Pro_8730_08C229_USB_ network none 
ipp://HP%20OfficeJet%20Pro%208730%20%5B08C229%5D%20(USB)._ipp._tcp.local/
Label_Printer network none ipps://Label%20Printer._ipps._tcp.local/
Office_Printer network none ipps://Office%20Printer._ipps._tcp.local/
snap-ps permanent ipp://localhost/printers/snap-ps 
ipp://HP%20OfficeJet%20Pro%208730%20%5B08C229%5D._ipp._tcp.local/
snap_ps_till_x1yoga network none 
ipps://snap-ps%20%40%20till-x1yoga._ipps._tcp.local/cups
till@till-x1yoga:~/Downloads$

The ones with "permanent" a standard CUPS queues which the print dialog 
happily lists. The one with "network" CUPS would only create on-demand. 
These are not listed by the print dialog and should be listed. Michael 
Sweet has made a new (already years ago) CUPS API for that, using the 
cupsEnumDests() functions.


2. The GTK print dialog seems to list IPP printers diectly from DNS-SD, 
these even show if no CUPS daemon at all is running on the system, 
suggesting that the dialog prints spooler-less to these printers, and as 
many of these do not spool by themselves one can expect the application 
to hang (if the GTK dialog has no mini spooler built in). Queue names 
seem to be constructed from the DNS-SD service name.


3. I have tried to print on such independent-of-CUPS IPP printers and 
ran into two problems:

   a. One printer comes from the sample Printer Application from the
      PAPPL project. It does not accept PDF input, only Raster formats.
      The dialog seems to happily send PDF jobs to this printer (which
      get aborted by the Printer Application). So before listing
      arbitrary DNS-SD-reported IPP printers, the TXT record of the
      printer needs to get checked and whether in its "pdls" entry PDF
      (or the job's format) is listed. Only then the printer can be
      listed.
   b. I have a physical IPP network printer which does driverless IPP
      printing. It advertises itself by DNS-SD (and so the dialog always
      lists it, also without CUPS running), understands PDF, and you get
      all needed properties of the printer if you send a get-printer-
      attributes IPP request to it. This allows me driverless printing
      with CUPS. The GTK dialog seems to be sending something else than
      a get-printer-attributes IPP request to the printer, as when I
      select the printer in the dialog, the dialog never completes
      getting the printer's properties. The "Print" stays permanently
      grayed and the status stays permanently on "Getting Printer
      Information".



GTK dialog backends on the system are the following:

ill@till-x1yoga:~/Downloads$ ls 
/usr/lib/x86_64-linux-gnu/gtk-3.0/3.0.0/printbackends/
libprintbackend-cloudprint.so  libprintbackend-file.so 
libprintbackend-test.so
libprintbackend-cups.so        libprintbackend-lpr.so
till@till-x1yoga:~/Downloads$ dpkg -S 
/usr/lib/x86_64-linux-gnu/gtk-3.0/3.0.0/printbackends/*
libgtk-3-0:amd64: 
/usr/lib/x86_64-linux-gnu/gtk-3.0/3.0.0/printbackends/libprintbackend-cloudprint.so
libgtk-3-0:amd64: 
/usr/lib/x86_64-linux-gnu/gtk-3.0/3.0.0/printbackends/libprintbackend-cups.so
libgtk-3-0:amd64: 
/usr/lib/x86_64-linux-gnu/gtk-3.0/3.0.0/printbackends/libprintbackend-file.so
libgtk-3-0:amd64: 
/usr/lib/x86_64-linux-gnu/gtk-3.0/3.0.0/printbackends/libprintbackend-lpr.so
libgtk-3-0:amd64: 
/usr/lib/x86_64-linux-gnu/gtk-3.0/3.0.0/printbackends/libprintbackend-test.so
till@till-x1yoga:~/Downloads$

Everything coming from my Ubuntu 20.04, no experiments performed, no 
student's code tried out here.


I assume that all these problems originate in the 
libprintbackend-cups.so module.


So my suggestion is to get CPDB support into the GTK dialog.

How should we proceed here? Rithvik, would you perhaps volunteer or at 
least in some form help?

    Till
