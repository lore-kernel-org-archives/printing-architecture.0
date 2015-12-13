Return-Path: <SRS0=Z9Xl=MO=ens-lyon.org=samuel.thibault@bounce.ens-lyon.org>
Date: Sun, 13 Dec 2015 19:59:43 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
Message-ID: <20151213185943.GR2765@var.home>
References: <20151212083605.GX2764@var.home> <566C0ACD.2040305@gmail.com>
	<20151213024001.GR2765@var.home>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="Bn2rw/3z4jIqBvZU"
Content-Disposition: inline
In-Reply-To: <20151213024001.GR2765@var.home>
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
To: Till Kamppeter <till.kamppeter@gmail.com>, printing-architecture@lists.linux-foundation.org


--Bn2rw/3z4jIqBvZU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

One thing I forgot to document about Index embossers firmware version,
here is a patch.

Samuel

--Bn2rw/3z4jIqBvZU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=patch

=== modified file 'README'
--- README	2015-12-12 14:57:57 +0000
+++ README	2015-12-13 18:58:29 +0000
@@ -1628,6 +1628,11 @@ lp -o "GraphicDotDistance=160" file.png
 
 to select 1.6mm dots spacing
 
+Troubleshooting: if your embosser starts every document with spurious
+"TM0,BM0,IM0,OM0" or "TM0,BI0", your embosser is most probably still using an
+old 10.20 firmware.  Please either reflash the embosser with a firmware version
+10.30 or above, or select the 10.20 firmware version in the "index" panel of the
+cups printer options.
 
 ----------------------
 Braille output options


--Bn2rw/3z4jIqBvZU--
