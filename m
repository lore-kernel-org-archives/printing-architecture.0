Return-Path: <bhor.pranjal@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=to:cc:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding;
	bh=wEomNrbEJeEMDWMKtioZ42uYC+Ipf1vOsQZUg5tKQ94=;
	b=depZcAkN3N8flUcI8ZBPMnCjVyKjnuXB9DZIyQFfEXRSDnZJIrrb5S7IpvOzIxJGYz
	iI6BD/+rVJS/zsXElwqxs1VEcXd2X7Uwggo+vD0xeDSrh4fvAd+SmT9QhWaATkLizvWE
	92HSypuV5MQudUx545RIlu9S6WSkKG7UjhxRwkHDDIluDdtSOkjwKfOwD8W7weqY5ro4
	zhFTq47BE4aUxK9LVsCM3DR+7Y1LQjl9HqiAYPlxI7rEvEuGPvjQujjI8qyWpOTKLUdx
	1vpxYWIq/cOKMF5GwkfnpTQakulenmO1zouTvGyQIV8mpPYuJvDotHcFzp+b9AJDk2FA
	OV3w==
From: Pranjal <bhor.pranjal@gmail.com>
Message-ID: <57279FA4.4090202@gmail.com>
Date: Tue, 3 May 2016 00:12:44 +0530
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] README: spelling and grammatical error
	corrections
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
Cc: printing-architecture@lists.linux-foundation.org

Some changes have been made in the README file which removes some 
spelling and grammatical mistakes.

=== modified file 'README'
--- README    2016-03-31 18:02:45 +0000
+++ README    2016-05-02 18:36:21 +0000
@@ -336,8 +336,8 @@
      utils/cups-browsed.service and utils/cups-browsed-upstart.conf.

      In the examples we start cups-browsed after starting
-    avahi-daemon. This is not required. if cups-browsed starts first,
-    the Bonjour/DNS-SD browsing kicks in as soon as avahi-daemon comes
+    avahi-daemon. This is not required. If cups-browsed starts first,
+    then Bonjour/DNS-SD browsing kicks in as soon as avahi-daemon comes
      up. cups-browsed is also robust against any shutdown and restart
      of avahi-daemon.

@@ -389,7 +389,7 @@
      duplicates and change the URI of the disappeared queue to the URI
      of the first duplicate, mark the queue as to-be-created with
      timeout now-1 sec (to update the URI of the CUPS queue) and mark
-    the duplicate ddisappeared with timeout now-1 sec. In terms of
+    the duplicate disappeared with timeout now-1 sec. In terms of
      high availability we replace the old load balancing of the
      implicit class by a failover solution. Alternatively (not
      implemented), if queue with same name but from other server
@@ -639,7 +639,7 @@
  Because PDF cannot specify device options in a PDF file, you have to 
define
  all the device options as JCLs.

-When a printer does not support PS nor PDF, you can use Ghostscript (GS).
+When a printer does not support PS or PDF, you can use Ghostscript (GS).
  In this case, you can specify device options like a PS printer.
  If you want to use the same printer and same PPD file for both PDF and PS
  printing, when you print a PS file, you can specify that GS handles it,
@@ -1014,7 +1014,7 @@
  - Generic-PDF_Printer-PDF.ppd
  - HP-Color_LaserJet_CM3530_MFP-PDF.ppd

-When a printer does not support PS nor PDF, you can use Ghostscript (GS).
+When a printer does not support PS or PDF, you can use Ghostscript (GS).
  In this case, you can specify device options like a PS printer.
  If you want to use the same printer and same PPD file for both PDF and PS
  printing, when you print a PS file, you can specify that GS handles it,
@@ -1310,7 +1310,7 @@

  7.1 Temporally files location

-"pdftoijs" creates temporally files if needed. Temporary files are created
+"pdftoijs" creates temporary files if needed. Temporary files are created
  in the location specified by TMPDIR environment variable. Default location
  is "/tmp".


