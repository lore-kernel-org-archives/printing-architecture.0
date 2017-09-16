Return-Path: <samuel.thibault@ens-lyon.org>
Date: Sat, 16 Sep 2017 17:34:58 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
Message-ID: <20170916153458.2k32iw7xecuunbrv@var.youpi.perso.aquilenet.fr>
References: <20170914174009.hs6uhfcyzauzmd6m@var.youpi.perso.aquilenet.fr>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="eb4war6sjmibq6yh"
Content-Disposition: inline
In-Reply-To: <20170914174009.hs6uhfcyzauzmd6m@var.youpi.perso.aquilenet.fr>
Subject: Re: [Printing-architecture] [PATCH] Fix graphical braille margins
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org


--eb4war6sjmibq6yh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

Samuel Thibault, on jeu. 14 sept. 2017 19:40:09 +0200, wrote:
> In Index graphical mode we need to disable the text margins, since they
> come in the way there too.

Oops, sorry, that was not actually working :/ Here is a fix.

Samuel

--eb4war6sjmibq6yh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=patch

=== modified file 'filter/braille/drivers/index/imageubrltoindexv3.in'
--- filter/braille/drivers/index/imageubrltoindexv3.in	2017-09-14 21:00:51 +0000
+++ filter/braille/drivers/index/imageubrltoindexv3.in	2017-09-16 15:24:17 +0000
@@ -35,10 +35,7 @@ OPTIONS=$5
 FILE=$6
 
 # Disable margins, they are done by imagemagick before this
-TOPMARGIN=0
-BOTTOMMARGIN=0
-INNERMARGIN=0
-OUTERMARGIN=0
+NOMARGIN=1
 
 . @CUPS_DATADIR@/braille/indexv3.sh
 printf "$INIT"

=== modified file 'filter/braille/drivers/index/imageubrltoindexv4.in'
--- filter/braille/drivers/index/imageubrltoindexv4.in	2017-09-14 21:00:51 +0000
+++ filter/braille/drivers/index/imageubrltoindexv4.in	2017-09-16 15:24:22 +0000
@@ -35,10 +35,7 @@ OPTIONS=$5
 FILE=$6
 
 # Disable margins, they are done by imagemagick before this
-TOPMARGIN=0
-BOTTOMMARGIN=0
-INNERMARGIN=0
-OUTERMARGIN=0
+NOMARGIN=1
 
 . @CUPS_SERVERBIN@/filter/indexv4.sh
 printf "$INIT"

=== modified file 'filter/braille/drivers/index/indexv3.sh.in'
--- filter/braille/drivers/index/indexv3.sh.in	2017-09-14 21:00:51 +0000
+++ filter/braille/drivers/index/indexv3.sh.in	2017-09-16 15:24:54 +0000
@@ -32,8 +32,14 @@ then
   # Firmware 10.30 and above support temporary parameters
   INIT=$'\033'D
 
-  # Configure margins
-  INIT+=TM$TOPMARGIN,BM$BOTTOMMARGIN,IM$INNERMARGIN,OM$OUTERMARGIN
+  if [ -z "$NOMARGIN" ]
+  then
+    # Configure margins
+    INIT+=TM$TOPMARGIN,BM$BOTTOMMARGIN,IM$INNERMARGIN,OM$OUTERMARGIN
+  else
+    # disable margins
+    INIT+=TM0,BM0,IM0,OM0
+  fi
 
   # Trying to disable banner page seems to pose problems
   #INIT+=,BP

=== modified file 'filter/braille/drivers/index/indexv4.sh.in'
--- filter/braille/drivers/index/indexv4.sh.in	2017-09-14 21:00:51 +0000
+++ filter/braille/drivers/index/indexv4.sh.in	2017-09-16 15:25:05 +0000
@@ -29,8 +29,15 @@ then
   # Firmware 10.30 and above support temporary parameters
   INIT=$'\033'D
 
-  # Configure margins
-  INIT+=TM$TOPMARGIN,BI$INNERMARGIN
+  if [ -z "$NOMARGIN" ]
+  then
+    # Configure margins
+    INIT+=TM$TOPMARGIN,BI$INNERMARGIN
+  else
+    # disable margins
+    INIT+=TM0,BM0,IM0,OM0
+  fi
+
 
   # Common options
   INIT+="$(setCommonOptions)"


--eb4war6sjmibq6yh--
