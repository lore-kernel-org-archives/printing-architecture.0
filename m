Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:from:subject:to
 :content-language:content-transfer-encoding;
 bh=8AQEA6kEOpXYEj1dHaE46SCdDDn3xqLFSE9tuO5EuHs=;
 b=BUFLeVKLvp8I6jHNnqUStCK1oGcOmXBptmsXSzdzgQC3Xc8Jbe5diJPcCicffuqRf7
 I3Ztw6u77nQI/Z8WXCr48zDrW9P8mHkHxcUNv4jQvdK1uJcL1h6rZMDRpla3JU+6VC9p
 YmchoboRYiSQ/JUj4FXynLlvDFCYeQszZQO7mz6uuhX+7y0RIGDnkpRJx4pRVkvAbnLk
 c5jNebFDXYtzYxQ/W/NWNs1vUt/fz1hXxH6QWilOxmheXRc4pcQd1S5/JhT2zMkgC4fL
 7SMkhrakY3bKkABssZWjic6EqAKAMVhiGh3xNOlafhVK2e3zm1KMdxf/guQOO4Yu6KJc
 MG5A==
Message-ID: <7ffdde3b-d938-1cfc-4932-cfb670c25b4b@gmail.com>
Date: Tue, 26 Apr 2022 18:56:36 +0200
MIME-Version: 1.0
From: Till Kamppeter <till.kamppeter@gmail.com>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] CUPS 3.x: Printing via D-Bus
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@msweet.org>, Open Printing <printing-architecture@lists.linux-foundation.org>

Hi,

I have looked through the CUPS 3.x planning and hit into the following 
feature:

Printing via D-Bus
------------------

In the local CUPS server it is planned to provide, in addition to the 
usual Unix domain socket, a D-Bus interface to receive requests from the 
client.

This is not a new idea but before it was not thought out to be done in 
the CUPS daemon itself but in separate utilities.

Back in 2006, on the first OpenPrinting Summit in Atlanta, Georgia we 
raised the idea of a Common Print Dialog and I started its 
implementation via the Google Summer of Code 2008, the first one ever I 
have participated in, I suggested my students to let the GUI 
applications not call the print dialog via direct library calls but by a 
D-Bus interface so that the desktop environment provides the dialog and 
so all applications appear with the same print dialog, if you use GNOME, 
all applications show the GTK dialog, also the Qt ones.

We did not succeed to complete this due to lack of man power for the coding.

Recently, I investigated how Flatpak handles applications with print 
functionality, and what they do is exactly this concept, not only for 
printing, but also for "Open", "Save as", ... dialogs. This way the 
system's dialog are used by the sandboxed application and through these 
the application has access to system resources like file systems and 
printers. I do not know whether they came to this idea by themselves or 
whether they picked up my idea of the Common Print Dialog, extending it 
to the other dialogs. They never talked with me.

Independent of all this, back in 2017, when I did not know anything 
about Flatpak (did it exist already that time?) Aveek Basu remembered me 
to the Common Print Dialog project and whether we should revive it.

But I came to the conclusion to not put a D-Bus interface between 
application and print dialog but between print dialog and print 
technology (CUPS, print-to-file, cloud print services, ...) so having 
the dialog being a frontend and talking to backends, one for each print 
technology, and let the author/maintainer/provider of each print 
technology also maintain his backend.

This I have called the Common Print Dialog Backends (CPDB) then:

https://linuxplumbersconf.org/event/11/contributions/1028/attachments/762/1433/Common-Print-Dialog-Backends.pdf

Good part of it is already implemented in GSoC 2017 and following.

This D-Bus interface does the standard print activity:

- List the available printers
- List capabilities and user-settable options for a selected printer
- Send a job to a selected printer, with option settings
- List the jobs

What my imagination is for Michael's idea of a D-Bus interface to print 
on a local CUPS server is exactly this functionality. Therefore I think 
that we SHOULD NOT develop a new D-Bus interface for CUPS and then have 
our CUPS CPDB backend on its front side receive print requests from the 
print dialog via one D-Bus protocol (CPDB), convert the request to 
another D-Bus protocol (CUPS 3.x) and pass it on to CUPS, but instead, 
we right away take the CPDB D-Bus interface protocol and implement it in 
the local CUPS server, so that we do not need a separate CPDB backend 
for CUPS any more.

Note that CPDB is not actuall;y used in the wild yet, so we can do any 
change on it to make it better suit CUPS if needed. Nothing is hammered 
in stone yet.

WDYT?

    Till
