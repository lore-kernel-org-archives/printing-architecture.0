Return-Path: <SRS0=sTJX=MW=ens-lyon.org=samuel.thibault@bounce.ens-lyon.org>
Date: Mon, 21 Dec 2015 01:12:46 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
Message-ID: <20151221001246.GC4287@var.home>
References: <20151212083605.GX2764@var.home> <566C0ACD.2040305@gmail.com>
	<20151213024001.GR2765@var.home> <566D5181.6010103@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="kfjH4zxOES6UT95V"
Content-Disposition: inline
In-Reply-To: <566D5181.6010103@gmail.com>
Subject: Re: [Printing-architecture] Contributing braille embosser support
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


--kfjH4zxOES6UT95V
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Till Kamppeter, on Sun 13 Dec 2015 09:07:45 -0200, wrote:
> Now please download the BZR of cups-filters and check whether everything is
> OK. Thanks.

A second change which will be useful is as attached: for now imagemagick
introduces some header in the produced braille-formatted images.  We
will however probably want to remove it in the future.  The attached
patch makes cups-filters cope with both the header being present or not.

Samuel

--kfjH4zxOES6UT95V
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=patch2

--- filter/braille/filters/imagetobrf.in	2015-12-12 02:11:10 +0000
+++ filter/braille/filters/imagetobrf.in	2015-12-20 12:45:08 +0000
@@ -86,9 +86,9 @@ echo "INFO: Converting image" 1>&2
 if [ -z "$FILE" ]
 then
   printf "DEBUG: Calling $RENDER_CALL from stdin\n" 1>&2
-  $RENDER_CALL | tail -n +4
+  $RENDER_CALL | sed -e '/^Width: [0-9]*$/,/^$/d' 
 else
   printf "DEBUG: Calling $RENDER_CALL on '%s'\n" "$FILE" 1>&2
-  $RENDER_CALL < "$FILE" | tail -n +4
+  $RENDER_CALL < "$FILE" | sed -e '/^Width: [0-9]*$/,/^$/d' 
 fi
 echo "INFO: Ready" >&2


--kfjH4zxOES6UT95V--
