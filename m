Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type; bh=SmPTbpNnIxkxKRgkIe7n8qXZJFF0AXAO9Erqy7Tw68I=;
	b=nTNa36AKPpsp9d/aa46QX+5d18KxiHXqpOcS5KZgA25oJDlxUwAfXnksZbmCIRg2jj
	BK7jI8upUW9fNeVIRJRrTJnydEK+kPXG8CO4PtSKysm8ShL4U7v0ft+XKfwENoGYUSH0
	zoLE0isJw/gJ2UmI3KE0j7bylf1IyACEwD3TArOTdVOQ04t2aF5ihD2rq8+2n+pwXCXZ
	2ici8zJnpMRQMi4JYD7IIBThpfGCyNAP8sRav8YCqauBY6bQzGjRLafwn/yQH57Dhehc
	KxGrHwxoOf2NyBnKX1rgBUGfHtp8A6ZcweSzWzBce5uW7Z2NRZvjXB8J2VX8cLGzeWuZ
	xiAw==
Message-ID: <5228F4E5.8030203@gmail.com>
Date: Thu, 05 Sep 2013 23:17:25 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="------------040200090504070305000501"
Subject: [Printing-architecture] Fix for STR #4187 incomplete,
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
To: Michael Sweet <msweet@apple.com>, Open Printing <printing-architecture@lists.linux-foundation.org>, Didier Raboud <odyx@debian.org>

This is a multi-part message in MIME format.
--------------040200090504070305000501
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

it seems that if a CUPS client (like the print dialog of LibreOffice)
stays connected to CUPS for a long time, the connection can get dropped
and the client does not reconnect.

This is handled by the following Ubuntu bug report:

https://bugs.launchpad.net/ubuntu/+source/libreoffice/+bug/1020048

and also upstream by the following report in the former STR system:

http://www.cups.org/str.php?L4187

The STR was considered fixed by applying a patch, but the reporter of
the Ubuntu bug has found out that another patch is needed to complete
the fix. See comment #37 in the Ubuntu report:

https://bugs.launchpad.net/ubuntu/+source/libreoffice/+bug/1020048/comments/37

The current CUPS 1.7.0rc1 has this "else" part but there is still
missing that "if" has also to close the connection when the result of
the recv() function is zero, meaning EOF, which happens when the server
terminates the connection.-

The attached patch adds this missing part.

In comment #44 of the Ubuntu report it is confirmed that this missing
piece applied fixes the problem completely:

https://bugs.launchpad.net/ubuntu/+source/libreoffice/+bug/1020048/comments/44

Can you apply this patch to the final CUPS 1.7.0? Thanks.

   Till


--------------040200090504070305000501
Content-Type: text/x-patch;
 name="handle-server-terminating-connection.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="handle-server-terminating-connection.patch"

--- a/cups/request.c
+++ b/cups/request.c
@@ -1018,13 +1018,14 @@
       */
 
       char ch;				/* Connection check byte */
+      int n;
 
 #ifdef WIN32
-      if (recv(cg->http->fd, &ch, 1, MSG_PEEK) < 0 &&
-          WSAGetLastError() != WSAEWOULDBLOCK)
+      if ((n = recv(cg->http->fd, &ch, 1, MSG_PEEK) == 0) ||
+          (n < 0 && WSAGetLastError() != WSAEWOULDBLOCK))
 #else
-      if (recv(cg->http->fd, &ch, 1, MSG_PEEK | MSG_DONTWAIT) < 0 &&
-          errno != EWOULDBLOCK)
+      if ((n = recv(cg->http->fd, &ch, 1, MSG_PEEK | MSG_DONTWAIT) == 0) ||
+	  (n < 0 && errno != EWOULDBLOCK))
 #endif /* WIN32 */
       {
        /*

--------------040200090504070305000501--
