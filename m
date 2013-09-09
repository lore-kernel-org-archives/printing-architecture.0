Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <5228F4E5.8030203@gmail.com>
Date: Mon, 09 Sep 2013 10:40:20 -0400
Message-id: <298AA5C8-4EA4-455C-B5DB-F665EEDF9B1C@apple.com>
References: <5228F4E5.8030203@gmail.com>
Subject: Re: [Printing-architecture] Fix for STR #4187 incomplete,
	missing part attached
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Didier Raboud <odyx@debian.org>

Till,

This is already fixed for <rdar://problem/14484313>, which was created in response to the bug below back in July.  The 1.6.4 and 1.7.0 releases that are queued up both contain the fix.

(and FWIW, "n" needs to be ssize_t, not int...)


On Sep 5, 2013, at 5:17 PM, Till Kamppeter <till.kamppeter@gmail.com> wrote:

> Hi,
> 
> it seems that if a CUPS client (like the print dialog of LibreOffice)
> stays connected to CUPS for a long time, the connection can get dropped
> and the client does not reconnect.
> 
> This is handled by the following Ubuntu bug report:
> 
> https://bugs.launchpad.net/ubuntu/+source/libreoffice/+bug/1020048
> 
> and also upstream by the following report in the former STR system:
> 
> http://www.cups.org/str.php?L4187
> 
> The STR was considered fixed by applying a patch, but the reporter of
> the Ubuntu bug has found out that another patch is needed to complete
> the fix. See comment #37 in the Ubuntu report:
> 
> https://bugs.launchpad.net/ubuntu/+source/libreoffice/+bug/1020048/comments/37
> 
> The current CUPS 1.7.0rc1 has this "else" part but there is still
> missing that "if" has also to close the connection when the result of
> the recv() function is zero, meaning EOF, which happens when the server
> terminates the connection.-
> 
> The attached patch adds this missing part.
> 
> In comment #44 of the Ubuntu report it is confirmed that this missing
> piece applied fixes the problem completely:
> 
> https://bugs.launchpad.net/ubuntu/+source/libreoffice/+bug/1020048/comments/44
> 
> Can you apply this patch to the final CUPS 1.7.0? Thanks.
> 
>   Till
> 
> <handle-server-terminating-connection.patch>

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

