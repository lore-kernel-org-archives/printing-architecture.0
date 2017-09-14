Return-Path: <samuel.thibault@ens-lyon.org>
Date: Thu, 14 Sep 2017 23:33:29 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
Message-ID: <20170914213329.jmx3ujph6ps5z2cr@var.youpi.perso.aquilenet.fr>
References: <20170914174009.hs6uhfcyzauzmd6m@var.youpi.perso.aquilenet.fr>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="u7rwisgtv5vt5gj6"
Content-Disposition: inline
In-Reply-To: <20170914174009.hs6uhfcyzauzmd6m@var.youpi.perso.aquilenet.fr>
Subject: [Printing-architecture] [PATCH] round graphical braille images to
	braille cell
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


--u7rwisgtv5vt5gj6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Embossers would typically need a round number of cells to emboss, so
round the graphical area to a multiple of 2x4.

Samuel

--u7rwisgtv5vt5gj6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=patch

=== modified file 'filter/braille/filters/cups-braille.sh.in'
--- filter/braille/filters/cups-braille.sh.in	2017-09-14 21:00:51 +0000
+++ filter/braille/filters/cups-braille.sh.in	2017-09-14 21:31:21 +0000
@@ -207,8 +207,8 @@ TEXTHEIGHT=$(( ($TEXTAREAHEIGHT + $LINES
 # Compute number of printable cells according to page size
 # Take into account that dots have a width.
 GRAPHICDOTDISTANCE=$(getOptionNumber GraphicDotDistance)
-GRAPHICWIDTH=$(( ($PRINTABLEWIDTH - 160) / $GRAPHICDOTDISTANCE ))
-GRAPHICHEIGHT=$(( ($PRINTABLEHEIGHT - 160) / $GRAPHICDOTDISTANCE ))
+GRAPHICWIDTH=$(( ( ($PRINTABLEWIDTH - 160) / $GRAPHICDOTDISTANCE ) / 2 * 2 ))
+GRAPHICHEIGHT=$(( ( ($PRINTABLEHEIGHT - 160) / $GRAPHICDOTDISTANCE ) / 4 * 4 ))
 
 #
 # Text translation


--u7rwisgtv5vt5gj6--
