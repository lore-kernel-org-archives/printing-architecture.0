Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-type: multipart/alternative;
	boundary="Boundary_(ID_Kelmt/4IPa794oi450uDmw)"
From: Michael Sweet <msweet@apple.com>
Date: Wed, 17 Jul 2013 12:02:48 -0400
Message-id: <D87733EE-8A2E-4F85-9978-715E38D8A22F@apple.com>
Subject: [Printing-architecture] RFC: Patch for (libusb-based) USB backend
	for quirks files
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Gutenprint Mailing List <gimp-print-devel@lists.sourceforge.net>, "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>


--Boundary_(ID_Kelmt/4IPa794oi450uDmw)
Content-type: text/plain; CHARSET=US-ASCII
Content-transfer-encoding: 7BIT

All,

Attached are patches for 1.7rc1 and 1.6.3 that add support for USB quirks files to the libusb-based USB backend.  The purpose of these patches is to allow third-party drivers (Gutenprint, others) that provide their own backends to blacklist the USB printers they support, or for those drivers to identify the specific quirks those printers need to work with the standard USB backend.

If there are no objections these will be part of the 1.6.4 update (last in that series) and part of the 1.7.0 release.


_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair


--Boundary_(ID_Kelmt/4IPa794oi450uDmw)
Content-type: multipart/mixed; boundary="Boundary_(ID_Y2Z6s7jSVU1j71lDtS768Q)"


--Boundary_(ID_Y2Z6s7jSVU1j71lDtS768Q)
Content-type: text/html; CHARSET=US-ASCII
Content-transfer-encoding: 7BIT

<html><head><meta http-equiv="Content-Type" content="text/html charset=us-ascii"></head><body style="word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space; ">All,<div><br></div><div>Attached are patches for 1.7rc1 and 1.6.3 that add support for USB quirks files to the libusb-based USB backend. &nbsp;The purpose of these patches is to allow third-party drivers (Gutenprint, others) that provide their own backends to blacklist the USB printers they support, or for those drivers to identify the specific quirks those printers need to work with the standard USB backend.</div><div><br></div><div>If there are no objections these will be part of the 1.6.4 update (last in that series) and part of the 1.7.0 release.</div><div><br></div><div></div></body></html>

--Boundary_(ID_Y2Z6s7jSVU1j71lDtS768Q)
Content-type: application/octet-stream; x-unix-mode=0664;
 name=rdar14442769-1.6.patch
Content-transfer-encoding: 7bit
Content-disposition: attachment; filename=rdar14442769-1.6.patch

Index: Makedefs.in
===================================================================
--- Makedefs.in	(revision 11152)
+++ Makedefs.in	(working copy)
@@ -3,7 +3,7 @@
 #
 #   Common makefile definitions for CUPS.
 #
-#   Copyright 2007-2012 by Apple Inc.
+#   Copyright 2007-2013 by Apple Inc.
 #   Copyright 1997-2007 by Easy Software Products, all rights reserved.
 #
 #   These coded instructions, statements, and computer programs are the
@@ -216,6 +216,7 @@
 SERVERROOT	= 	$(BUILDROOT)@CUPS_SERVERROOT@
 SMFMANIFESTDIR	= 	@SMFMANIFESTDIR@
 STATEDIR	=	$(BUILDROOT)@CUPS_STATEDIR@
+USBQUIRKS	=	@USBQUIRKS@
 XINETD		=	@XINETD@
 
 MAN1EXT		=	@MAN1EXT@
Index: backend/Makefile
===================================================================
--- backend/Makefile	(revision 11152)
+++ backend/Makefile	(working copy)
@@ -3,7 +3,7 @@
 #
 #   Backend makefile for CUPS.
 #
-#   Copyright 2007-2012 by Apple Inc.
+#   Copyright 2007-2013 by Apple Inc.
 #   Copyright 1997-2007 by Easy Software Products, all rights reserved.
 #
 #   These coded instructions, statements, and computer programs are the
@@ -109,6 +109,11 @@
 #
 
 install-data:
+	if test "x$(USBQUIRKS)" != x; then \
+		echo Installing USB quirks in $(USBQUIRKS); \
+		$(INSTALL_DIR) -m 755 $(USBQUIRKS); \
+		$(INSTALL_DATA) org.cups.usb-quirks $(USBQUIRKS); \
+	fi
 
 
 #
Index: backend/org.cups.usb-quirks
===================================================================
--- backend/org.cups.usb-quirks	(revision 0)
+++ backend/org.cups.usb-quirks	(working copy)
@@ -0,0 +1,212 @@
+# USB backend 'quirks' file.
+#
+# This file lists known issues with various vendors or printers.  Each
+# line contains either a comment (starting with #) or the USB vendor ID,
+# product ID (omit for all vendor products), and a list of known issues:
+#
+#   blacklist     The printer is not functional with the USB backend.
+#   no-reattach   Do no re-attach usblp kernel module after printing.
+#   soft-reset    Do a soft reset after printing for cleanup.
+#   unidir        Only supported unidirectional I/O
+#   usb-init      Needs vendor USB initialization string.
+#   vendor-class  Uses vendor-specific class or subclass.
+#   whitelist     The printer is functional with the USB backend.
+
+# HP DeskJet 895C
+0x03f0 0x0004 unidir
+
+# HP DeskJet 880C
+0x03f0 0x0104 unidir
+
+# HP DeskJet 815C
+0x03f0 0x0204 unidir
+
+# HP DeskJet 810C/812C
+0x03f0 0x0304 unidir
+
+# HP DeskJet 830C
+0x03f0 0x0404 unidir
+
+# HP DeskJet 885C
+0x03f0 0x0504 unidir
+
+# HP DeskJet 840C
+0x03f0 0x0604 unidir
+
+# HP DeskJet 816C
+0x03f0 0x0804 unidir
+
+# HP Deskjet 959C
+0x03f0 0x1104 unidir
+
+# NEC Picty900 (HP OEM)
+0x0409 0xefbe unidir
+
+# NEC Picty760 (HP OEM)
+0x0409 0xbef4 unidir
+
+# NEC Picty920 (HP OEM)
+0x0409 0xf0be unidir
+
+# NEC Picty800 (HP OEM)
+0x0409 0xf1be unidir
+
+# Lexmark International, Inc. (e250d), https://bugs.launchpad.net/bugs/1084164
+0x043d 0x00f3 no-reattach
+
+# Kyocera Mita FS 820, by zut <kernel@zut.de>
+0x0482 0x0010 unidir
+
+# Canon, Inc. PIXMA iP6000D Printer, https://bugs.launchpad.net/bugs/1160638
+0x04a9 0x1095 unidir
+
+# Canon, Inc. PIXMA iP4200 Printer, http://www.cups.org/str.php?L4155
+0x04a9 0x10a2 unidir
+
+# Canon, Inc. PIXMA iP4300 Printer, https://bugs.launchpad.net/bugs/1032385
+0x04a9 0x10b6 unidir
+
+# Canon, Inc. MP210 https://bugzilla.redhat.com/show_bug.cgi?id=847923#c53
+0x04a9 0x1721 unidir
+
+# Canon, Inc. MP500 Printer, https://bugs.launchpad.net/bugs/1032456
+0x04a9 0x170c unidir
+
+# Canon, Inc. MP510 Printer, https://bugs.launchpad.net/bugs/1050009
+0x04a9 0x1717 unidir
+
+# Canon, Inc. MP550 Printer, http://www.cups.org/str.php?L4155
+0x04a9 0x173d unidir
+
+# Canon, Inc. MP560 Printer, http://www.cups.org/str.php?L4155
+0x04a9 0x173e unidir
+
+# Canon, Inc. MF4150 Printer, https://bugs.launchpad.net/bugs/1160638
+0x04a9 0x26a3 no-reattach
+
+# Brother Industries, Ltd HL-1430 Laser Printer, https://bugs.launchpad.net/bugs/1038695
+0x04f9 0x001a no-reattach
+
+# Brother Industries, Ltd HL-1440 Laser Printer, https://bugs.launchpad.net/bugs/1000253
+0x04f9 0x000d no-reattach unidir
+
+# Brother Industries, Ltd HL-1450 Laser Printer, https://bugs.launchpad.net/bugs/1000253
+0x04f9 0x000e no-reattach unidir
+
+# Oki Data Corp. Okipage 14ex Printer, https://bugs.launchpad.net/bugs/872483
+0x06bc 0x000b no-reattach
+
+# Oki Data Corp. B410d, https://bugs.launchpad.net/bugs/872483
+0x06bc 0x01c7 no-reattach
+
+# Seiko Epson Corp. Stylus Color 740 / Photo 750, http://bugs.debian.org/697970
+0x04b8 0x0001 no-reattach unidir
+
+# Seiko Epson Corp. Stylus Color 670, https://bugs.launchpad.net/bugs/872483
+0x04b8 0x0005 no-reattach
+
+# Seiko Epson Receipt Printer M129C
+0x04b8 0x0202 vendor-class
+
+# Prolific Technology, Inc. PL2305 Parallel Port (USB -> Parallel adapter), https://bugs.launchpad.net/bugs/987485
+0x067b 0x2305 no-reattach soft-reset unidir
+
+# Xerox Phaser 3124 https://bugzilla.redhat.com/show_bug.cgi?id=867392
+0x0924 0x3ce9 no-reattach
+
+# Xerox WorkCentre 3210 https://bugs.launchpad.net/bugs/1102470
+0x0924 0x4293 no-reattach
+
+# QinHeng Electronics CH340S (USB -> Parallel adapter), https://bugs.launchpad.net/bugs/1000253
+0x1a86 0x7584 no-reattach
+
+# All Samsung devices, https://bugs.launchpad.net/bugs/1032456
+0x04e8 soft-reset
+
+# All Zebra devices, https://bugs.launchpad.net/bugs/1001028
+0x0a5f unidir
+
+# Canon CP-10
+0x04a9 0x304a blacklist
+
+# Canon CP-100
+0x04a9 0x3063 blacklist
+
+# Canon CP-200
+0x04a9 0x307c blacklist
+
+# Canon CP-300
+0x04a9 0x307d blacklist
+
+# Canon CP-220
+0x04a9 0x30bd blacklist
+
+# Canon CP-330
+0x04a9 0x30be blacklist
+
+# Canon SELPHY CP400
+0x04a9 0x30f6 blacklist
+
+# Canon SELPHY CP600
+0x04a9 0x310b blacklist
+
+# Canon SELPHY CP710
+0x04a9 0x3127 blacklist
+
+# Canon SELPHY CP510
+0x04a9 0x3128 blacklist
+
+# Canon SELPHY ES1
+0x04a9 0x3141 blacklist
+
+# Canon SELPHY CP730
+0x04a9 0x3142 blacklist
+
+# Canon SELPHY CP720
+0x04a9 0x3143 blacklist
+
+# Canon SELPHY CP750
+0x04a9 0x3170 blacklist
+
+# Canon SELPHY CP740
+0x04a9 0x3171 blacklist
+
+# Canon SELPHY ES2
+0x04a9 0x3185 blacklist
+
+# Canon SELPHY ES20
+0x04a9 0x3186 blacklist
+
+# Canon SELPHY CP770
+0x04a9 0x31aa blacklist
+
+# Canon SELPHY CP760
+0x04a9 0x31ab blacklist
+
+# Canon SELPHY ES30
+0x04a9 0x31b0 blacklist
+
+# Canon SELPHY CP780
+0x04a9 0x31dd blacklist
+
+# Canon SELPHY ES40
+0x04a9 0x31ee blacklist
+
+# Canon SELPHY CP800
+0x04a9 0x3214 blacklist
+
+# Canon SELPHY CP900
+0x04a9 0x3255 blacklist
+
+# Canon SELPHY CP810
+0x04a9 0x3256 blacklist
+
+# Canon SELPHY CP500
+0x04a9 0x30f5 blacklist
+
+# Canon SELPHY ES3
+0x04a9 0x31af blacklist
+
+# Canon SELPHY CP780
+0x04a9 0x31dd blacklist
+
Index: backend/usb-libusb.c
===================================================================
--- backend/usb-libusb.c	(revision 11152)
+++ backend/usb-libusb.c	(working copy)
@@ -1,5 +1,5 @@
 /*
- * "$Id: usb-libusb.c 10979 2013-05-13 17:39:19Z msweet $"
+ * "$Id: usb-libusb.c 11155 2013-07-17 15:51:43Z msweet $"
  *
  *   LIBUSB interface code for CUPS.
  *
@@ -16,18 +16,20 @@
  *   list_devices()	  - List the available printers.
  *   print_device()	  - Print a file to a USB device.
  *   close_device()	  - Close the connection to the USB printer.
+ *   compare_quirks()	  - Compare two quirks entries.
  *   find_device()	  - Find or enumerate USB printers.
+ *   find_quirks()	  - Find the quirks for the given printer, if any.
  *   get_device_id()	  - Get the IEEE-1284 device ID for the printer.
  *   list_cb()		  - List USB printers for discovery.
+ *   load_quirks()	  - Load all quirks files in the /usr/share/cups/usb
+ *			    directory.
  *   make_device_uri()	  - Create a device URI for a USB printer.
  *   open_device()	  - Open a connection to the USB printer.
  *   print_cb() 	  - Find a USB printer for printing.
- *   printer_class_soft_reset()' - Do the soft reset request specific to
- *                          printers
- *   quirks()	 	  - Get the known quirks of a given printer model
  *   read_thread()	  - Thread to read the backchannel data on.
  *   sidechannel_thread() - Handle side-channel requests.
  *   soft_reset()	  - Send a soft reset to the device.
+ *   soft_reset_printer() - Do the soft reset request specific to printers
  */
 
 /*
@@ -36,6 +38,7 @@
 
 #include <libusb.h>
 #include <cups/cups-private.h>
+#include <cups/dir.h>
 #include <pthread.h>
 #include <sys/select.h>
 #include <sys/types.h>
@@ -70,15 +73,15 @@
 			read_endp,	/* Read endpoint */
 			protocol,	/* Protocol: 1 = Uni-di, 2 = Bi-di. */
 			usblp_attached,	/* "usblp" kernel module attached? */
-			reset_after_job; /* Set to 1 by print_device() */
-  unsigned int		quirks;		/* Quirks flags */
+			reset_after_job;/* Set to 1 by print_device() */
+  unsigned		quirks;		/* Quirks flags */
   struct libusb_device_handle *handle;	/* Open handle to device */
 } usb_printer_t;
 
 typedef int (*usb_cb_t)(usb_printer_t *, const char *, const char *,
                         const void *);
 
-typedef struct usb_globals_s
+typedef struct usb_globals_s		/* Global USB printer information */
 {
   usb_printer_t		*printer;	/* Printer */
 
@@ -105,143 +108,41 @@
 } usb_globals_t;
 
 /*
- * Quirks: various printer quirks are handled by this table & its flags.
+ * Quirks: various printer quirks are handled by this structure and its flags.
  *
- * This is copied from the usblp kernel module. So we can easily copy and paste
- * new quirks from the module.
+ * The quirks table used to be compiled into the backend but is now loaded from
+ * one or more files in the /usr/share/cups/usb directory.
  */
 
-struct quirk_printer_struct {
-	int vendorId;
-	int productId;
-	unsigned int quirks;
-};
-
-#define USBLP_QUIRK_BIDIR	0x1	/* reports bidir but requires
-					   unidirectional mode (no INs/reads) */
-#define USBLP_QUIRK_USB_INIT	0x2	/* needs vendor USB init string */
-#define USBLP_QUIRK_BAD_CLASS	0x4	/* descriptor uses vendor-specific
+#define USB_QUIRK_BLACKLIST	0x0001	/* Does not conform to the spec */
+#define USB_QUIRK_NO_REATTACH	0x0002	/* After printing we cannot re-attach
+					   the usblp kernel module */
+#define USB_QUIRK_SOFT_RESET	0x0004	/* After printing do a soft reset
+					   for clean-up */
+#define USB_QUIRK_UNIDIR	0x0008	/* Requires unidirectional mode */
+#define USB_QUIRK_USB_INIT	0x0010	/* Needs vendor USB init string */
+#define USB_QUIRK_VENDOR_CLASS	0x0020	/* Descriptor uses vendor-specific
 					   Class or SubClass */
-#define USBLP_QUIRK_BLACKLIST	0x8	/* these printers do not conform to the USB print spec */
-#define USBLP_QUIRK_RESET	0x4000	/* After printing do a reset
-					   for clean-up */
-#define USBLP_QUIRK_NO_REATTACH	0x8000	/* After printing we cannot re-attach
-					   the usblp kernel module */
+#define USB_QUIRK_WHITELIST	0x0000	/* no quirks */
 
-static const struct quirk_printer_struct quirk_printers[] = {
-	{ 0x03f0, 0x0004, USBLP_QUIRK_BIDIR }, /* HP DeskJet 895C */
-	{ 0x03f0, 0x0104, USBLP_QUIRK_BIDIR }, /* HP DeskJet 880C */
-	{ 0x03f0, 0x0204, USBLP_QUIRK_BIDIR }, /* HP DeskJet 815C */
-	{ 0x03f0, 0x0304, USBLP_QUIRK_BIDIR }, /* HP DeskJet 810C/812C */
-	{ 0x03f0, 0x0404, USBLP_QUIRK_BIDIR }, /* HP DeskJet 830C */
-	{ 0x03f0, 0x0504, USBLP_QUIRK_BIDIR }, /* HP DeskJet 885C */
-	{ 0x03f0, 0x0604, USBLP_QUIRK_BIDIR }, /* HP DeskJet 840C */
-	{ 0x03f0, 0x0804, USBLP_QUIRK_BIDIR }, /* HP DeskJet 816C */
-	{ 0x03f0, 0x1104, USBLP_QUIRK_BIDIR }, /* HP Deskjet 959C */
-	{ 0x0409, 0xefbe, USBLP_QUIRK_BIDIR }, /* NEC Picty900 (HP OEM) */
-	{ 0x0409, 0xbef4, USBLP_QUIRK_BIDIR }, /* NEC Picty760 (HP OEM) */
-	{ 0x0409, 0xf0be, USBLP_QUIRK_BIDIR }, /* NEC Picty920 (HP OEM) */
-	{ 0x0409, 0xf1be, USBLP_QUIRK_BIDIR }, /* NEC Picty800 (HP OEM) */
-	{ 0x043d, 0x00f3, USBLP_QUIRK_NO_REATTACH }, /* Lexmark International,
-		       Inc. (e250d), https://bugs.launchpad.net/bugs/1084164 */
-	{ 0x0482, 0x0010, USBLP_QUIRK_BIDIR }, /* Kyocera Mita FS 820,
-						  by zut <kernel@zut.de> */
-	{ 0x04a9, 0x1095, USBLP_QUIRK_BIDIR }, /* Canon, Inc. PIXMA iP6000D
-			    Printer, https://bugs.launchpad.net/bugs/1160638 */
-	{ 0x04a9, 0x10a2, USBLP_QUIRK_BIDIR }, /* Canon, Inc. PIXMA iP4200
-			    Printer, http://www.cups.org/str.php?L4155 */
-	{ 0x04a9, 0x10b6, USBLP_QUIRK_BIDIR }, /* Canon, Inc. PIXMA iP4300
-			    Printer, https://bugs.launchpad.net/bugs/1032385 */
-	{ 0x04a9, 0x1721, USBLP_QUIRK_BIDIR }, /* Canon, Inc. MP210
-		      https://bugzilla.redhat.com/show_bug.cgi?id=847923#c53 */
-	{ 0x04a9, 0x170c, USBLP_QUIRK_BIDIR }, /* Canon, Inc. MP500
-			    Printer, https://bugs.launchpad.net/bugs/1032456 */
-	{ 0x04a9, 0x1717, USBLP_QUIRK_BIDIR }, /* Canon, Inc. MP510
-			    Printer, https://bugs.launchpad.net/bugs/1050009 */
-	{ 0x04a9, 0x173d, USBLP_QUIRK_BIDIR }, /* Canon, Inc. MP550
-			    Printer, http://www.cups.org/str.php?L4155 */
-	{ 0x04a9, 0x173e, USBLP_QUIRK_BIDIR }, /* Canon, Inc. MP560
-			    Printer, http://www.cups.org/str.php?L4155 */
-	{ 0x04a9, 0x26a3, USBLP_QUIRK_NO_REATTACH }, /* Canon, Inc. MF4150
-		            Printer, https://bugs.launchpad.net/bugs/1160638 */
-	{ 0x04f9, 0x001a, USBLP_QUIRK_NO_REATTACH }, /* Brother Industries, Ltd
-						  HL-1430 Laser Printer,
-				     https://bugs.launchpad.net/bugs/1038695 */
-	{ 0x04f9, 0x000d, USBLP_QUIRK_BIDIR |
-			  USBLP_QUIRK_NO_REATTACH }, /* Brother Industries, Ltd
-						  HL-1440 Laser Printer,
-				     https://bugs.launchpad.net/bugs/1000253 */
-	{ 0x04f9, 0x000e, USBLP_QUIRK_BIDIR |
-			  USBLP_QUIRK_NO_REATTACH }, /* Brother Industries, Ltd
-						  HL-1450 Laser Printer,
-				     https://bugs.launchpad.net/bugs/1000253 */
-	{ 0x06bc, 0x000b, USBLP_QUIRK_NO_REATTACH }, /* Oki Data Corp.
-						  Okipage 14ex Printer,
-				     https://bugs.launchpad.net/bugs/872483 */
-	{ 0x06bc, 0x01c7, USBLP_QUIRK_NO_REATTACH }, /* Oki Data Corp. B410d,
-				     https://bugs.launchpad.net/bugs/872483 */
-	{ 0x04b8, 0x0001, USBLP_QUIRK_BIDIR |
-			  USBLP_QUIRK_NO_REATTACH }, /* Seiko Epson Corp. Stylus Color 740 / Photo 750,
-				     http://bugs.debian.org/697970 */
-	{ 0x04b8, 0x0005, USBLP_QUIRK_NO_REATTACH }, /* Seiko Epson Corp. Stylus Color 670,
-				     https://bugs.launchpad.net/bugs/872483 */
-	{ 0x04b8, 0x0202, USBLP_QUIRK_BAD_CLASS }, /* Seiko Epson Receipt
-						      Printer M129C */
-	{ 0x067b, 0x2305, USBLP_QUIRK_BIDIR |
-			  USBLP_QUIRK_NO_REATTACH |
-	                  USBLP_QUIRK_RESET },
-	/* Prolific Technology, Inc. PL2305 Parallel Port
-	   (USB -> Parallel adapter), https://bugs.launchpad.net/bugs/987485 */
-	{ 0x0924, 0x3ce9, USBLP_QUIRK_NO_REATTACH }, /* Xerox Phaser 3124
-			  https://bugzilla.redhat.com/show_bug.cgi?id=867392 */
-	{ 0x0924, 0x4293, USBLP_QUIRK_NO_REATTACH }, /* Xerox WorkCentre 3210
-				     https://bugs.launchpad.net/bugs/1102470 */
-	{ 0x1a86, 0x7584, USBLP_QUIRK_NO_REATTACH }, /* QinHeng Electronics
-   CH340S (USB -> Parallel adapter), https://bugs.launchpad.net/bugs/1000253 */
-	{ 0x04e8, 0x0000, USBLP_QUIRK_RESET }, /* All Samsung devices,
-				     https://bugs.launchpad.net/bugs/1032456 */
-	{ 0x0a5f, 0x0000, USBLP_QUIRK_BIDIR }, /* All Zebra devices,
-				     https://bugs.launchpad.net/bugs/1001028 */
-	/* Canon */
-	{ 0x04a9, 0x304a, USBLP_QUIRK_BLACKLIST }, /* Canon CP-10 */
-	{ 0x04a9, 0x3063, USBLP_QUIRK_BLACKLIST }, /* Canon CP-100 */
-	{ 0x04a9, 0x307c, USBLP_QUIRK_BLACKLIST }, /* Canon CP-200 */
-	{ 0x04a9, 0x307d, USBLP_QUIRK_BLACKLIST }, /* Canon CP-300 */
-	{ 0x04a9, 0x30bd, USBLP_QUIRK_BLACKLIST }, /* Canon CP-220 */
-	{ 0x04a9, 0x30be, USBLP_QUIRK_BLACKLIST }, /* Canon CP-330 */
-	{ 0x04a9, 0x30f6, USBLP_QUIRK_BLACKLIST }, /* Canon SELPHY CP400 */
-	{ 0x04a9, 0x310b, USBLP_QUIRK_BLACKLIST }, /* Canon SELPHY CP600 */
-	{ 0x04a9, 0x3127, USBLP_QUIRK_BLACKLIST }, /* Canon SELPHY CP710 */
-	{ 0x04a9, 0x3128, USBLP_QUIRK_BLACKLIST }, /* Canon SELPHY CP510 */
-	{ 0x04a9, 0x3141, USBLP_QUIRK_BLACKLIST }, /* Canon SELPHY ES1 */
-	{ 0x04a9, 0x3142, USBLP_QUIRK_BLACKLIST }, /* Canon SELPHY CP730 */
-	{ 0x04a9, 0x3143, USBLP_QUIRK_BLACKLIST }, /* Canon SELPHY CP720 */
-	{ 0x04a9, 0x3170, USBLP_QUIRK_BLACKLIST }, /* Canon SELPHY CP750 */
-	{ 0x04a9, 0x3171, USBLP_QUIRK_BLACKLIST }, /* Canon SELPHY CP740 */
-	{ 0x04a9, 0x3185, USBLP_QUIRK_BLACKLIST }, /* Canon SELPHY ES2 */
-	{ 0x04a9, 0x3186, USBLP_QUIRK_BLACKLIST }, /* Canon SELPHY ES20 */
-	{ 0x04a9, 0x31aa, USBLP_QUIRK_BLACKLIST }, /* Canon SELPHY CP770 */
-	{ 0x04a9, 0x31ab, USBLP_QUIRK_BLACKLIST }, /* Canon SELPHY CP760 */
-	{ 0x04a9, 0x31b0, USBLP_QUIRK_BLACKLIST }, /* Canon SELPHY ES30 */
-	{ 0x04a9, 0x31dd, USBLP_QUIRK_BLACKLIST }, /* Canon SELPHY CP780 */
-	{ 0x04a9, 0x31ee, USBLP_QUIRK_BLACKLIST }, /* Canon SELPHY ES40 */
-	{ 0x04a9, 0x3214, USBLP_QUIRK_BLACKLIST }, /* Canon SELPHY CP800 */
-	{ 0x04a9, 0x3255, USBLP_QUIRK_BLACKLIST }, /* Canon SELPHY CP900 */
-	{ 0x04a9, 0x3256, USBLP_QUIRK_BLACKLIST }, /* Canon SELPHY CP810 */
-	{ 0x04a9, 0x30F5, USBLP_QUIRK_BLACKLIST }, /* Canon SELPHY CP500 */
-	{ 0x04a9, 0x31AF, USBLP_QUIRK_BLACKLIST }, /* Canon SELPHY ES3 */
-	{ 0x04a9, 0x31DD, USBLP_QUIRK_BLACKLIST }, /* Canon SELPHY CP780 */
-	 /* MISSING PIDs: CP520, CP530, CP790 */
-	{ 0, 0 }
-};
 
+typedef struct usb_quirk_s		/* USB "quirk" information */
+{
+  int		vendor_id,		/* Affected vendor ID */
+		product_id;		/* Affected product ID or 0 for all */
+  unsigned	quirks;			/* Quirks bitfield */
+} usb_quirk_t;
 
+
+
+
 /*
  * Globals...
  */
 
+cups_array_t		*all_quirks;	/* Array of printer quirks */
 usb_globals_t		g = { 0 };	/* Globals */
-libusb_device           **list;         /* List of connected USB devices */
+libusb_device		**all_list;	/* List of connected USB devices */
 
 
 /*
@@ -249,22 +150,24 @@
  */
 
 static int		close_device(usb_printer_t *printer);
+static int		compare_quirks(usb_quirk_t *a, usb_quirk_t *b);
 static usb_printer_t	*find_device(usb_cb_t cb, const void *data);
+static unsigned		find_quirks(int vendor_id, int product_id);
 static int		get_device_id(usb_printer_t *printer, char *buffer,
 			              size_t bufsize);
 static int		list_cb(usb_printer_t *printer, const char *device_uri,
 			        const char *device_id, const void *data);
+static void		load_quirks(void);
 static char		*make_device_uri(usb_printer_t *printer,
 			                 const char *device_id,
 					 char *uri, size_t uri_size);
 static int		open_device(usb_printer_t *printer, int verbose);
 static int		print_cb(usb_printer_t *printer, const char *device_uri,
 			         const char *device_id, const void *data);
-static int		printer_class_soft_reset(usb_printer_t *printer);
-static unsigned int	quirks(int vendor, int product);
 static void		*read_thread(void *reference);
 static void		*sidechannel_thread(void *reference);
 static void		soft_reset(void);
+static int		soft_reset_printer(usb_printer_t *printer);
 
 
 /*
@@ -274,6 +177,8 @@
 void
 list_devices(void)
 {
+  load_quirks();
+
   fputs("DEBUG: list_devices\n", stderr);
   find_device(list_cb, NULL);
 }
@@ -316,6 +221,8 @@
   const char	*val;			/* Option value */
 
 
+  load_quirks();
+
  /*
   * See if the side-channel descriptor is valid...
   */
@@ -341,9 +248,9 @@
 
  /*
   * Some devices need a reset after finishing a job, these devices are
-  * marked with the USBLP_QUIRK_RESET quirk.
+  * marked with the USB_QUIRK_SOFT_RESET quirk.
   */
-  g.printer->reset_after_job = (g.printer->quirks & USBLP_QUIRK_RESET ? 1 : 0);
+  g.printer->reset_after_job = (g.printer->quirks & USB_QUIRK_SOFT_RESET ? 1 : 0);
 
  /*
   * If we are printing data from a print driver on stdin, ignore SIGTERM
@@ -760,7 +667,7 @@
   * Clean up ....
   */
 
-  libusb_free_device_list(list, 1);
+  libusb_free_device_list(all_list, 1);
   libusb_exit(NULL);
 
   return (status);
@@ -880,6 +787,23 @@
 
 
 /*
+ * 'compare_quirks()' - Compare two quirks entries.
+ */
+
+static int				/* O - Result of comparison */
+compare_quirks(usb_quirk_t *a,		/* I - First quirk entry */
+               usb_quirk_t *b)		/* I - Second quirk entry */
+{
+  int result;				/* Result of comparison */
+
+  if ((result = b->vendor_id - a->vendor_id) == 0)
+    result = b->product_id - a->product_id;
+
+  return (result);
+}
+
+
+/*
  * 'find_device()' - Find or enumerate USB printers.
  */
 
@@ -923,7 +847,7 @@
   if (err)
   {
     fprintf(stderr, "DEBUG: Unable to initialize USB access via libusb, "
-                    "libusb error %i\n", err);
+                    "libusb error %i\n", (int)err);
     return (NULL);
   }
 
@@ -951,13 +875,13 @@
           !devdesc.idProduct)
 	continue;
 
-      printer.quirks = quirks(devdesc.idVendor, devdesc.idProduct);
+      printer.quirks = find_quirks(devdesc.idVendor, devdesc.idProduct);
 
      /*
       * Ignore blacklisted printers...
       */
 
-      if (printer.quirks & USBLP_QUIRK_BLACKLIST)
+      if (printer.quirks & USB_QUIRK_BLACKLIST)
         continue;
 
       for (conf = 0; conf < devdesc.bNumConfigurations; conf ++)
@@ -986,13 +910,13 @@
 
 	    if (((altptr->bInterfaceClass != LIBUSB_CLASS_PRINTER ||
 		  altptr->bInterfaceSubClass != 1) &&
-		 ((printer.quirks & USBLP_QUIRK_BAD_CLASS) == 0)) ||
+		 ((printer.quirks & USB_QUIRK_VENDOR_CLASS) == 0)) ||
 		(altptr->bInterfaceProtocol != 1 &&	/* Unidirectional */
 		 altptr->bInterfaceProtocol != 2) ||	/* Bidirectional */
 		altptr->bInterfaceProtocol < protocol)
 	      continue;
 
-	    if (printer.quirks & USBLP_QUIRK_BAD_CLASS)
+	    if (printer.quirks & USB_QUIRK_VENDOR_CLASS)
 	      fprintf(stderr, "DEBUG: Printer does not report class 7 and/or "
 		      "subclass 1 but works as a printer anyway\n");
 
@@ -1049,7 +973,7 @@
 	      {
 		fprintf(stderr, "DEBUG: Device protocol: %d\n",
 			printer.protocol);
-		if (printer.quirks & USBLP_QUIRK_BIDIR)
+		if (printer.quirks & USB_QUIRK_UNIDIR)
 		{
 		  printer.read_endp = -1;
 		  fprintf(stderr, "DEBUG: Printer reports bi-di support "
@@ -1069,7 +993,7 @@
 					   altsetting[printer.altset].
 					   endpoint[printer.write_endp].
 					   bEndpointAddress;
-		if (printer.quirks & USBLP_QUIRK_NO_REATTACH)
+		if (printer.quirks & USB_QUIRK_NO_REATTACH)
 		{
 		  printer.usblp_attached = 0;
 		  fprintf(stderr, "DEBUG: Printer does not like usblp "
@@ -1105,6 +1029,35 @@
 
 
 /*
+ * 'find_quirks()' - Find the quirks for the given printer, if any.
+ *
+ * First looks for an exact match, then looks for the vendor ID wildcard match.
+ */
+
+static unsigned				/* O - Quirks flags */
+find_quirks(int vendor_id,		/* I - Vendor ID */
+            int product_id)		/* I - Product ID */
+{
+  usb_quirk_t	key,			/* Search key */
+		*match;			/* Matching quirk entry */
+
+
+  key.vendor_id  = vendor_id;
+  key.product_id = product_id;
+
+  if ((match = cupsArrayFind(all_quirks, &key)) != NULL)
+    return (match->quirks);
+
+  key.product_id = 0;
+
+  if ((match = cupsArrayFind(all_quirks, &key)) != NULL)
+    return (match->quirks);
+
+  return (USB_QUIRK_WHITELIST);
+}
+
+
+/*
  * 'get_device_id()' - Get the IEEE-1284 device ID for the printer.
  */
 
@@ -1210,6 +1163,104 @@
 
 
 /*
+ * 'load_quirks()' - Load all quirks files in the /usr/share/cups/usb directory.
+ */
+
+static void
+load_quirks(void)
+{
+  const char	*datadir;		/* CUPS_DATADIR environment variable */
+  char		filename[1024],		/* Filename */
+		line[1024];		/* Line from file */
+  cups_dir_t	*dir;			/* Directory */
+  cups_dentry_t	*dent;			/* Directory entry */
+  cups_file_t	*fp;			/* Quirks file */
+  usb_quirk_t	*quirk;			/* New quirk */
+
+
+  all_quirks = cupsArrayNew((cups_array_func_t)compare_quirks, NULL);
+
+  if ((datadir = getenv("CUPS_DATADIR")) == NULL)
+    datadir = CUPS_DATADIR;
+
+  snprintf(filename, sizeof(filename), "%s/usb", datadir);
+  if ((dir = cupsDirOpen(filename)) == NULL)
+  {
+    perror(filename);
+    return;
+  }
+
+  fprintf(stderr, "DEBUG: Loading USB quirks from \"%s\".\n", filename);
+
+  while ((dent = cupsDirRead(dir)) != NULL)
+  {
+    if (!S_ISREG(dent->fileinfo.st_mode))
+      continue;
+
+    snprintf(filename, sizeof(filename), "%s/usb/%s", datadir, dent->filename);
+    if ((fp = cupsFileOpen(filename, "r")) == NULL)
+    {
+      perror(filename);
+      continue;
+    }
+
+    while (cupsFileGets(fp, line, sizeof(line)))
+    {
+     /*
+      * Skip blank and comment lines...
+      */
+
+      if (line[0] == '#' || !line[0])
+        continue;
+
+     /*
+      * Add a quirk...
+      */
+
+      if ((quirk = calloc(1, sizeof(usb_quirk_t))) == NULL)
+      {
+        perror("DEBUG: Unable to allocate memory for quirk");
+        break;
+      }
+
+      if (sscanf(line, "%x%x", &quirk->vendor_id, &quirk->product_id) < 1)
+      {
+        fprintf(stderr, "DEBUG: Bad line: %s\n", line);
+        free(quirk);
+        continue;
+      }
+
+      if (strstr(line, " blacklist"))
+        quirk->quirks |= USB_QUIRK_BLACKLIST;
+
+      if (strstr(line, " no-reattach"))
+        quirk->quirks |= USB_QUIRK_NO_REATTACH;
+
+      if (strstr(line, " soft-reset"))
+        quirk->quirks |= USB_QUIRK_SOFT_RESET;
+
+      if (strstr(line, " unidir"))
+        quirk->quirks |= USB_QUIRK_UNIDIR;
+
+      if (strstr(line, " usb-init"))
+        quirk->quirks |= USB_QUIRK_USB_INIT;
+
+      if (strstr(line, " vendor-class"))
+        quirk->quirks |= USB_QUIRK_VENDOR_CLASS;
+
+      cupsArrayAdd(all_quirks, quirk);
+    }
+
+    cupsFileClose(fp);
+  }
+
+  fprintf(stderr, "DEBUG: Loaded %d quirks.\n", cupsArrayCount(all_quirks));
+
+  cupsDirClose(dir);
+}
+
+
+/*
  * 'make_device_uri()' - Create a device URI for a USB printer.
  */
 
@@ -1636,65 +1687,6 @@
 
 
 /*
- * 'printer_class_soft_reset()' - Do the soft reset request specific to printers
- *
- * This soft reset is specific to the printer device class and is much less
- * invasive than the general USB reset libusb_reset_device(). Especially it
- * does never happen that the USB addressing and configuration changes. What
- * is actually done is that all buffers get flushed and the bulk IN and OUT
- * pipes get reset to their default states. This clears all stall conditions.
- * See http://cholla.mmto.org/computers/linux/usb/usbprint11.pdf
- */
-
-static int				/* O - 0 on success, < 0 on error */
-printer_class_soft_reset(usb_printer_t *printer) /* I - Printer */
-{
-  struct libusb_config_descriptor *confptr = NULL;
-                                        /* Pointer to current configuration */
-  int interface,
-      errcode;
-
-  if (libusb_get_config_descriptor(printer->device, printer->conf, &confptr)
-      < 0)
-    interface = printer->iface;
-  else
-    interface = confptr->interface[printer->iface].
-      altsetting[printer->altset].bInterfaceNumber;
-  libusb_free_config_descriptor(confptr);
-  if ((errcode = libusb_control_transfer(printer->handle,
-					 LIBUSB_REQUEST_TYPE_CLASS |
-					 LIBUSB_ENDPOINT_OUT |
-					 LIBUSB_RECIPIENT_OTHER,
-					 2, 0, interface, NULL, 0, 5000)) < 0)
-    errcode = libusb_control_transfer(printer->handle,
-				      LIBUSB_REQUEST_TYPE_CLASS |
-				      LIBUSB_ENDPOINT_OUT |
-				      LIBUSB_RECIPIENT_INTERFACE,
-				      2, 0, interface, NULL, 0, 5000);
-  return errcode;
-}
-
-
-/*
- * 'quirks()' - Get the known quirks of a given printer model
- */
-
-static unsigned int quirks(int vendor, int product)
-{
-  int i;
-
-  for (i = 0; quirk_printers[i].vendorId; i++)
-  {
-    if (vendor == quirk_printers[i].vendorId &&
-	(quirk_printers[i].productId == 0x0000 ||
-	 product == quirk_printers[i].productId))
-      return quirk_printers[i].quirks;
-  }
-  return 0;
-}
-
-
-/*
  * 'read_thread()' - Thread to read the backchannel data on.
  */
 
@@ -1917,13 +1909,15 @@
  * 'soft_reset()' - Send a soft reset to the device.
  */
 
-static void soft_reset(void)
+static void
+soft_reset(void)
 {
   fd_set	  input_set;		/* Input set for select() */
   struct timeval  tv;			/* Time value */
   char		  buffer[2048];		/* Buffer */
   struct timespec cond_timeout;		/* pthread condition timeout */
 
+
  /*
   * Send an abort once a second until the I/O lock is released by the main
   * thread...
@@ -1968,7 +1962,7 @@
   * Send the reset...
   */
 
-  printer_class_soft_reset(g.printer);
+  soft_reset_printer(g.printer);
 
  /*
   * Release the I/O lock...
@@ -1982,6 +1976,51 @@
 
 
 /*
- * End of "$Id: usb-libusb.c 10979 2013-05-13 17:39:19Z msweet $".
+ * 'soft_reset_printer()' - Do the soft reset request specific to printers
+ *
+ * This soft reset is specific to the printer device class and is much less
+ * invasive than the general USB reset libusb_reset_device(). Especially it
+ * does never happen that the USB addressing and configuration changes. What
+ * is actually done is that all buffers get flushed and the bulk IN and OUT
+ * pipes get reset to their default states. This clears all stall conditions.
+ * See http://cholla.mmto.org/computers/linux/usb/usbprint11.pdf
  */
 
+static int				/* O - 0 on success, < 0 on error */
+soft_reset_printer(
+    usb_printer_t *printer)		/* I - Printer */
+{
+  struct libusb_config_descriptor *confptr = NULL;
+                                        /* Pointer to current configuration */
+  int interface,			/* Interface to reset */
+      errcode;				/* Error code */
+
+
+  if (libusb_get_config_descriptor(printer->device, printer->conf,
+                                   &confptr) < 0)
+    interface = printer->iface;
+  else
+    interface = confptr->interface[printer->iface].
+                         altsetting[printer->altset].bInterfaceNumber;
+
+  libusb_free_config_descriptor(confptr);
+
+  if ((errcode = libusb_control_transfer(printer->handle,
+					 LIBUSB_REQUEST_TYPE_CLASS |
+					 LIBUSB_ENDPOINT_OUT |
+					 LIBUSB_RECIPIENT_OTHER,
+					 2, 0, interface, NULL, 0, 5000)) < 0)
+    errcode = libusb_control_transfer(printer->handle,
+				      LIBUSB_REQUEST_TYPE_CLASS |
+				      LIBUSB_ENDPOINT_OUT |
+				      LIBUSB_RECIPIENT_INTERFACE,
+				      2, 0, interface, NULL, 0, 5000);
+
+  return (errcode);
+}
+
+
+/*
+ * End of "$Id: usb-libusb.c 11155 2013-07-17 15:51:43Z msweet $".
+ */
+
Index: config-scripts/cups-common.m4
===================================================================
--- config-scripts/cups-common.m4	(revision 11152)
+++ config-scripts/cups-common.m4	(working copy)
@@ -225,7 +225,9 @@
 AC_ARG_ENABLE(libusb, [  --enable-libusb         use libusb for USB printing])
 
 LIBUSB=""
+USBQUIRKS=""
 AC_SUBST(LIBUSB)
+AC_SUBST(USBQUIRKS)
 
 if test "x$PKGCONFIG" != x; then
 	if test x$enable_libusb = xyes -o $uname != Darwin; then
@@ -235,6 +237,7 @@
 			AC_DEFINE(HAVE_LIBUSB)
 			CFLAGS="$CFLAGS `$PKGCONFIG --cflags libusb-1.0`"
 			LIBUSB="`$PKGCONFIG --libs libusb-1.0`"
+			USBQUIRKS="\$(DATADIR)/usb"
 		else
 			AC_MSG_RESULT(no)
 		fi
Index: packaging/cups.spec.in
===================================================================
--- packaging/cups.spec.in	(revision 11152)
+++ packaging/cups.spec.in	(working copy)
@@ -221,6 +221,9 @@
 /usr/share/cups/ppdc/*
 %dir /usr/share/cups/templates
 /usr/share/cups/templates/*
+%dir /usr/share/cups/usb
+/usr/share/cups/usb/*
+
 %dir /usr/share/doc/cups
 /usr/share/doc/cups/*.*
 %dir /usr/share/doc/cups/help

--Boundary_(ID_Y2Z6s7jSVU1j71lDtS768Q)
Content-type: text/html; CHARSET=US-ASCII
Content-transfer-encoding: 7BIT

<html><body style="word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space; "><head><meta http-equiv="Content-Type" content="text/html charset=us-ascii"></head><div></div></body></html>

--Boundary_(ID_Y2Z6s7jSVU1j71lDtS768Q)
Content-type: application/octet-stream; x-mac-type=54455854; x-unix-mode=0664;
 name=rdar14442769.patch
Content-transfer-encoding: 7bit
Content-disposition: attachment; filename=rdar14442769.patch

Index: Makedefs.in
===================================================================
--- Makedefs.in	(revision 11153)
+++ Makedefs.in	(working copy)
@@ -3,7 +3,7 @@
 #
 #   Common makefile definitions for CUPS.
 #
-#   Copyright 2007-2012 by Apple Inc.
+#   Copyright 2007-2013 by Apple Inc.
 #   Copyright 1997-2007 by Easy Software Products, all rights reserved.
 #
 #   These coded instructions, statements, and computer programs are the
@@ -218,6 +218,7 @@
 SERVERROOT	= 	$(BUILDROOT)@CUPS_SERVERROOT@
 SMFMANIFESTDIR	= 	@SMFMANIFESTDIR@
 STATEDIR	=	$(BUILDROOT)@CUPS_STATEDIR@
+USBQUIRKS	=	@USBQUIRKS@
 XINETD		=	@XINETD@

 MAN1EXT		=	@MAN1EXT@
Index: packaging/cups.spec.in
===================================================================
--- packaging/cups.spec.in	(revision 11153)
+++ packaging/cups.spec.in	(working copy)
@@ -5,7 +5,7 @@
 #
 #   Original version by Jason McMullan <jmcc@ontv.com>.
 #
-#   Copyright 2007-2012 by Apple Inc.
+#   Copyright 2007-2013 by Apple Inc.
 #   Copyright 1999-2007 by Easy Software Products, all rights reserved.
 #
 #   These coded instructions, statements, and computer programs are the
@@ -222,6 +222,9 @@
 /usr/share/cups/ppdc/*
 %dir /usr/share/cups/templates
 /usr/share/cups/templates/*
+%dir /usr/share/cups/usb
+/usr/share/cups/usb/*
+
 %dir /usr/share/doc/cups
 /usr/share/doc/cups/*.*
 %dir /usr/share/doc/cups/help
Index: backend/org.cups.usb-quirks
===================================================================
--- backend/org.cups.usb-quirks	(revision 0)
+++ backend/org.cups.usb-quirks	(revision 11155)
@@ -0,0 +1,212 @@
+# USB backend 'quirks' file.
+#
+# This file lists known issues with various vendors or printers.  Each
+# line contains either a comment (starting with #) or the USB vendor ID,
+# product ID (omit for all vendor products), and a list of known issues:
+#
+#   blacklist     The printer is not functional with the USB backend.
+#   no-reattach   Do no re-attach usblp kernel module after printing.
+#   soft-reset    Do a soft reset after printing for cleanup.
+#   unidir        Only supported unidirectional I/O
+#   usb-init      Needs vendor USB initialization string.
+#   vendor-class  Uses vendor-specific class or subclass.
+#   whitelist     The printer is functional with the USB backend.
+
+# HP DeskJet 895C
+0x03f0 0x0004 unidir
+
+# HP DeskJet 880C
+0x03f0 0x0104 unidir
+
+# HP DeskJet 815C
+0x03f0 0x0204 unidir
+
+# HP DeskJet 810C/812C
+0x03f0 0x0304 unidir
+
+# HP DeskJet 830C
+0x03f0 0x0404 unidir
+
+# HP DeskJet 885C
+0x03f0 0x0504 unidir
+
+# HP DeskJet 840C
+0x03f0 0x0604 unidir
+
+# HP DeskJet 816C
+0x03f0 0x0804 unidir
+
+# HP Deskjet 959C
+0x03f0 0x1104 unidir
+
+# NEC Picty900 (HP OEM)
+0x0409 0xefbe unidir
+
+# NEC Picty760 (HP OEM)
+0x0409 0xbef4 unidir
+
+# NEC Picty920 (HP OEM)
+0x0409 0xf0be unidir
+
+# NEC Picty800 (HP OEM)
+0x0409 0xf1be unidir
+
+# Lexmark International, Inc. (e250d), https://bugs.launchpad.net/bugs/1084164
+0x043d 0x00f3 no-reattach
+
+# Kyocera Mita FS 820, by zut <kernel@zut.de>
+0x0482 0x0010 unidir
+
+# Canon, Inc. PIXMA iP6000D Printer, https://bugs.launchpad.net/bugs/1160638
+0x04a9 0x1095 unidir
+
+# Canon, Inc. PIXMA iP4200 Printer, http://www.cups.org/str.php?L4155
+0x04a9 0x10a2 unidir
+
+# Canon, Inc. PIXMA iP4300 Printer, https://bugs.launchpad.net/bugs/1032385
+0x04a9 0x10b6 unidir
+
+# Canon, Inc. MP210 https://bugzilla.redhat.com/show_bug.cgi?id=847923#c53
+0x04a9 0x1721 unidir
+
+# Canon, Inc. MP500 Printer, https://bugs.launchpad.net/bugs/1032456
+0x04a9 0x170c unidir
+
+# Canon, Inc. MP510 Printer, https://bugs.launchpad.net/bugs/1050009
+0x04a9 0x1717 unidir
+
+# Canon, Inc. MP550 Printer, http://www.cups.org/str.php?L4155
+0x04a9 0x173d unidir
+
+# Canon, Inc. MP560 Printer, http://www.cups.org/str.php?L4155
+0x04a9 0x173e unidir
+
+# Canon, Inc. MF4150 Printer, https://bugs.launchpad.net/bugs/1160638
+0x04a9 0x26a3 no-reattach
+
+# Brother Industries, Ltd HL-1430 Laser Printer, https://bugs.launchpad.net/bugs/1038695
+0x04f9 0x001a no-reattach
+
+# Brother Industries, Ltd HL-1440 Laser Printer, https://bugs.launchpad.net/bugs/1000253
+0x04f9 0x000d no-reattach unidir
+
+# Brother Industries, Ltd HL-1450 Laser Printer, https://bugs.launchpad.net/bugs/1000253
+0x04f9 0x000e no-reattach unidir
+
+# Oki Data Corp. Okipage 14ex Printer, https://bugs.launchpad.net/bugs/872483
+0x06bc 0x000b no-reattach
+
+# Oki Data Corp. B410d, https://bugs.launchpad.net/bugs/872483
+0x06bc 0x01c7 no-reattach
+
+# Seiko Epson Corp. Stylus Color 740 / Photo 750, http://bugs.debian.org/697970
+0x04b8 0x0001 no-reattach unidir
+
+# Seiko Epson Corp. Stylus Color 670, https://bugs.launchpad.net/bugs/872483
+0x04b8 0x0005 no-reattach
+
+# Seiko Epson Receipt Printer M129C
+0x04b8 0x0202 vendor-class
+
+# Prolific Technology, Inc. PL2305 Parallel Port (USB -> Parallel adapter), https://bugs.launchpad.net/bugs/987485
+0x067b 0x2305 no-reattach soft-reset unidir
+
+# Xerox Phaser 3124 https://bugzilla.redhat.com/show_bug.cgi?id=867392
+0x0924 0x3ce9 no-reattach
+
+# Xerox WorkCentre 3210 https://bugs.launchpad.net/bugs/1102470
+0x0924 0x4293 no-reattach
+
+# QinHeng Electronics CH340S (USB -> Parallel adapter), https://bugs.launchpad.net/bugs/1000253
+0x1a86 0x7584 no-reattach
+
+# All Samsung devices, https://bugs.launchpad.net/bugs/1032456
+0x04e8 soft-reset
+
+# All Zebra devices, https://bugs.launchpad.net/bugs/1001028
+0x0a5f unidir
+
+# Canon CP-10
+0x04a9 0x304a blacklist
+
+# Canon CP-100
+0x04a9 0x3063 blacklist
+
+# Canon CP-200
+0x04a9 0x307c blacklist
+
+# Canon CP-300
+0x04a9 0x307d blacklist
+
+# Canon CP-220
+0x04a9 0x30bd blacklist
+
+# Canon CP-330
+0x04a9 0x30be blacklist
+
+# Canon SELPHY CP400
+0x04a9 0x30f6 blacklist
+
+# Canon SELPHY CP600
+0x04a9 0x310b blacklist
+
+# Canon SELPHY CP710
+0x04a9 0x3127 blacklist
+
+# Canon SELPHY CP510
+0x04a9 0x3128 blacklist
+
+# Canon SELPHY ES1
+0x04a9 0x3141 blacklist
+
+# Canon SELPHY CP730
+0x04a9 0x3142 blacklist
+
+# Canon SELPHY CP720
+0x04a9 0x3143 blacklist
+
+# Canon SELPHY CP750
+0x04a9 0x3170 blacklist
+
+# Canon SELPHY CP740
+0x04a9 0x3171 blacklist
+
+# Canon SELPHY ES2
+0x04a9 0x3185 blacklist
+
+# Canon SELPHY ES20
+0x04a9 0x3186 blacklist
+
+# Canon SELPHY CP770
+0x04a9 0x31aa blacklist
+
+# Canon SELPHY CP760
+0x04a9 0x31ab blacklist
+
+# Canon SELPHY ES30
+0x04a9 0x31b0 blacklist
+
+# Canon SELPHY CP780
+0x04a9 0x31dd blacklist
+
+# Canon SELPHY ES40
+0x04a9 0x31ee blacklist
+
+# Canon SELPHY CP800
+0x04a9 0x3214 blacklist
+
+# Canon SELPHY CP900
+0x04a9 0x3255 blacklist
+
+# Canon SELPHY CP810
+0x04a9 0x3256 blacklist
+
+# Canon SELPHY CP500
+0x04a9 0x30f5 blacklist
+
+# Canon SELPHY ES3
+0x04a9 0x31af blacklist
+
+# Canon SELPHY CP780
+0x04a9 0x31dd blacklist
+
Index: backend/usb-libusb.c
===================================================================
--- backend/usb-libusb.c	(revision 11153)
+++ backend/usb-libusb.c	(working copy)
@@ -16,18 +16,20 @@
  *   list_devices()	  - List the available printers.
  *   print_device()	  - Print a file to a USB device.
  *   close_device()	  - Close the connection to the USB printer.
+ *   compare_quirks()	  - Compare two quirks entries.
  *   find_device()	  - Find or enumerate USB printers.
+ *   find_quirks()	  - Find the quirks for the given printer, if any.
  *   get_device_id()	  - Get the IEEE-1284 device ID for the printer.
  *   list_cb()		  - List USB printers for discovery.
+ *   load_quirks()	  - Load all quirks files in the /usr/share/cups/usb
+ *			    directory.
  *   make_device_uri()	  - Create a device URI for a USB printer.
  *   open_device()	  - Open a connection to the USB printer.
  *   print_cb() 	  - Find a USB printer for printing.
- *   printer_class_soft_reset()' - Do the soft reset request specific to
- *                          printers
- *   quirks()	 	  - Get the known quirks of a given printer model
  *   read_thread()	  - Thread to read the backchannel data on.
  *   sidechannel_thread() - Handle side-channel requests.
  *   soft_reset()	  - Send a soft reset to the device.
+ *   soft_reset_printer() - Do the soft reset request specific to printers
  */

 /*
@@ -36,6 +38,7 @@

 #include <libusb.h>
 #include <cups/cups-private.h>
+#include <cups/dir.h>
 #include <pthread.h>
 #include <sys/select.h>
 #include <sys/types.h>
@@ -70,15 +73,15 @@
 			read_endp,	/* Read endpoint */
 			protocol,	/* Protocol: 1 = Uni-di, 2 = Bi-di. */
 			usblp_attached,	/* "usblp" kernel module attached? */
-			reset_after_job; /* Set to 1 by print_device() */
-  unsigned int		quirks;		/* Quirks flags */
+			reset_after_job;/* Set to 1 by print_device() */
+  unsigned		quirks;		/* Quirks flags */
   struct libusb_device_handle *handle;	/* Open handle to device */
 } usb_printer_t;

 typedef int (*usb_cb_t)(usb_printer_t *, const char *, const char *,
                         const void *);

-typedef struct usb_globals_s
+typedef struct usb_globals_s		/* Global USB printer information */
 {
   usb_printer_t		*printer;	/* Printer */

@@ -105,143 +108,41 @@
 } usb_globals_t;

 /*
- * Quirks: various printer quirks are handled by this table & its flags.
+ * Quirks: various printer quirks are handled by this structure and its flags.
  *
- * This is copied from the usblp kernel module. So we can easily copy and paste
- * new quirks from the module.
+ * The quirks table used to be compiled into the backend but is now loaded from
+ * one or more files in the /usr/share/cups/usb directory.
  */

-struct quirk_printer_struct {
-	int vendorId;
-	int productId;
-	unsigned int quirks;
-};
-
-#define USBLP_QUIRK_BIDIR	0x1	/* reports bidir but requires
-					   unidirectional mode (no INs/reads) */
-#define USBLP_QUIRK_USB_INIT	0x2	/* needs vendor USB init string */
-#define USBLP_QUIRK_BAD_CLASS	0x4	/* descriptor uses vendor-specific
+#define USB_QUIRK_BLACKLIST	0x0001	/* Does not conform to the spec */
+#define USB_QUIRK_NO_REATTACH	0x0002	/* After printing we cannot re-attach
+					   the usblp kernel module */
+#define USB_QUIRK_SOFT_RESET	0x0004	/* After printing do a soft reset
+					   for clean-up */
+#define USB_QUIRK_UNIDIR	0x0008	/* Requires unidirectional mode */
+#define USB_QUIRK_USB_INIT	0x0010	/* Needs vendor USB init string */
+#define USB_QUIRK_VENDOR_CLASS	0x0020	/* Descriptor uses vendor-specific
 					   Class or SubClass */
-#define USBLP_QUIRK_BLACKLIST	0x8	/* these printers do not conform to the USB print spec */
-#define USBLP_QUIRK_RESET	0x4000	/* After printing do a reset
-					   for clean-up */
-#define USBLP_QUIRK_NO_REATTACH	0x8000	/* After printing we cannot re-attach
-					   the usblp kernel module */
+#define USB_QUIRK_WHITELIST	0x0000	/* no quirks */

-static const struct quirk_printer_struct quirk_printers[] = {
-	{ 0x03f0, 0x0004, USBLP_QUIRK_BIDIR }, /* HP DeskJet 895C */
-	{ 0x03f0, 0x0104, USBLP_QUIRK_BIDIR }, /* HP DeskJet 880C */
-	{ 0x03f0, 0x0204, USBLP_QUIRK_BIDIR }, /* HP DeskJet 815C */
-	{ 0x03f0, 0x0304, USBLP_QUIRK_BIDIR }, /* HP DeskJet 810C/812C */
-	{ 0x03f0, 0x0404, USBLP_QUIRK_BIDIR }, /* HP DeskJet 830C */
-	{ 0x03f0, 0x0504, USBLP_QUIRK_BIDIR }, /* HP DeskJet 885C */
-	{ 0x03f0, 0x0604, USBLP_QUIRK_BIDIR }, /* HP DeskJet 840C */
-	{ 0x03f0, 0x0804, USBLP_QUIRK_BIDIR }, /* HP DeskJet 816C */
-	{ 0x03f0, 0x1104, USBLP_QUIRK_BIDIR }, /* HP Deskjet 959C */
-	{ 0x0409, 0xefbe, USBLP_QUIRK_BIDIR }, /* NEC Picty900 (HP OEM) */
-	{ 0x0409, 0xbef4, USBLP_QUIRK_BIDIR }, /* NEC Picty760 (HP OEM) */
-	{ 0x0409, 0xf0be, USBLP_QUIRK_BIDIR }, /* NEC Picty920 (HP OEM) */
-	{ 0x0409, 0xf1be, USBLP_QUIRK_BIDIR }, /* NEC Picty800 (HP OEM) */
-	{ 0x043d, 0x00f3, USBLP_QUIRK_NO_REATTACH }, /* Lexmark International,
-		       Inc. (e250d), https://bugs.launchpad.net/bugs/1084164 */
-	{ 0x0482, 0x0010, USBLP_QUIRK_BIDIR }, /* Kyocera Mita FS 820,
-						  by zut <kernel@zut.de> */
-	{ 0x04a9, 0x1095, USBLP_QUIRK_BIDIR }, /* Canon, Inc. PIXMA iP6000D
-			    Printer, https://bugs.launchpad.net/bugs/1160638 */
-	{ 0x04a9, 0x10a2, USBLP_QUIRK_BIDIR }, /* Canon, Inc. PIXMA iP4200
-			    Printer, http://www.cups.org/str.php?L4155 */
-	{ 0x04a9, 0x10b6, USBLP_QUIRK_BIDIR }, /* Canon, Inc. PIXMA iP4300
-			    Printer, https://bugs.launchpad.net/bugs/1032385 */
-	{ 0x04a9, 0x1721, USBLP_QUIRK_BIDIR }, /* Canon, Inc. MP210
-		      https://bugzilla.redhat.com/show_bug.cgi?id=847923#c53 */
-	{ 0x04a9, 0x170c, USBLP_QUIRK_BIDIR }, /* Canon, Inc. MP500
-			    Printer, https://bugs.launchpad.net/bugs/1032456 */
-	{ 0x04a9, 0x1717, USBLP_QUIRK_BIDIR }, /* Canon, Inc. MP510
-			    Printer, https://bugs.launchpad.net/bugs/1050009 */
-	{ 0x04a9, 0x173d, USBLP_QUIRK_BIDIR }, /* Canon, Inc. MP550
-			    Printer, http://www.cups.org/str.php?L4155 */
-	{ 0x04a9, 0x173e, USBLP_QUIRK_BIDIR }, /* Canon, Inc. MP560
-			    Printer, http://www.cups.org/str.php?L4155 */
-	{ 0x04a9, 0x26a3, USBLP_QUIRK_NO_REATTACH }, /* Canon, Inc. MF4150
-		            Printer, https://bugs.launchpad.net/bugs/1160638 */
-	{ 0x04f9, 0x001a, USBLP_QUIRK_NO_REATTACH }, /* Brother Industries, Ltd
-						  HL-1430 Laser Printer,
-				     https://bugs.launchpad.net/bugs/1038695 */
-	{ 0x04f9, 0x000d, USBLP_QUIRK_BIDIR |
-			  USBLP_QUIRK_NO_REATTACH }, /* Brother Industries, Ltd
-						  HL-1440 Laser Printer,
-				     https://bugs.launchpad.net/bugs/1000253 */
-	{ 0x04f9, 0x000e, USBLP_QUIRK_BIDIR |
-			  USBLP_QUIRK_NO_REATTACH }, /* Brother Industries, Ltd
-						  HL-1450 Laser Printer,
-				     https://bugs.launchpad.net/bugs/1000253 */
-	{ 0x06bc, 0x000b, USBLP_QUIRK_NO_REATTACH }, /* Oki Data Corp.
-						  Okipage 14ex Printer,
-				     https://bugs.launchpad.net/bugs/872483 */
-	{ 0x06bc, 0x01c7, USBLP_QUIRK_NO_REATTACH }, /* Oki Data Corp. B410d,
-				     https://bugs.launchpad.net/bugs/872483 */
-	{ 0x04b8, 0x0001, USBLP_QUIRK_BIDIR |
-			  USBLP_QUIRK_NO_REATTACH }, /* Seiko Epson Corp. Stylus Color 740 / Photo 750,
-				     http://bugs.debian.org/697970 */
-	{ 0x04b8, 0x0005, USBLP_QUIRK_NO_REATTACH }, /* Seiko Epson Corp. Stylus Color 670,
-				     https://bugs.launchpad.net/bugs/872483 */
-	{ 0x04b8, 0x0202, USBLP_QUIRK_BAD_CLASS }, /* Seiko Epson Receipt
-						      Printer M129C */
-	{ 0x067b, 0x2305, USBLP_QUIRK_BIDIR |
-			  USBLP_QUIRK_NO_REATTACH |
-	                  USBLP_QUIRK_RESET },
-	/* Prolific Technology, Inc. PL2305 Parallel Port
-	   (USB -> Parallel adapter), https://bugs.launchpad.net/bugs/987485 */
-	{ 0x0924, 0x3ce9, USBLP_QUIRK_NO_REATTACH }, /* Xerox Phaser 3124
-			  https://bugzilla.redhat.com/show_bug.cgi?id=867392 */
-	{ 0x0924, 0x4293, USBLP_QUIRK_NO_REATTACH }, /* Xerox WorkCentre 3210
-				     https://bugs.launchpad.net/bugs/1102470 */
-	{ 0x1a86, 0x7584, USBLP_QUIRK_NO_REATTACH }, /* QinHeng Electronics
-   CH340S (USB -> Parallel adapter), https://bugs.launchpad.net/bugs/1000253 */
-	{ 0x04e8, 0x0000, USBLP_QUIRK_RESET }, /* All Samsung devices,
-				     https://bugs.launchpad.net/bugs/1032456 */
-	{ 0x0a5f, 0x0000, USBLP_QUIRK_BIDIR }, /* All Zebra devices,
-				     https://bugs.launchpad.net/bugs/1001028 */
-	/* Canon */
-	{ 0x04a9, 0x304a, USBLP_QUIRK_BLACKLIST }, /* Canon CP-10 */
-	{ 0x04a9, 0x3063, USBLP_QUIRK_BLACKLIST }, /* Canon CP-100 */
-	{ 0x04a9, 0x307c, USBLP_QUIRK_BLACKLIST }, /* Canon CP-200 */
-	{ 0x04a9, 0x307d, USBLP_QUIRK_BLACKLIST }, /* Canon CP-300 */
-	{ 0x04a9, 0x30bd, USBLP_QUIRK_BLACKLIST }, /* Canon CP-220 */
-	{ 0x04a9, 0x30be, USBLP_QUIRK_BLACKLIST }, /* Canon CP-330 */
-	{ 0x04a9, 0x30f6, USBLP_QUIRK_BLACKLIST }, /* Canon SELPHY CP400 */
-	{ 0x04a9, 0x310b, USBLP_QUIRK_BLACKLIST }, /* Canon SELPHY CP600 */
-	{ 0x04a9, 0x3127, USBLP_QUIRK_BLACKLIST }, /* Canon SELPHY CP710 */
-	{ 0x04a9, 0x3128, USBLP_QUIRK_BLACKLIST }, /* Canon SELPHY CP510 */
-	{ 0x04a9, 0x3141, USBLP_QUIRK_BLACKLIST }, /* Canon SELPHY ES1 */
-	{ 0x04a9, 0x3142, USBLP_QUIRK_BLACKLIST }, /* Canon SELPHY CP730 */
-	{ 0x04a9, 0x3143, USBLP_QUIRK_BLACKLIST }, /* Canon SELPHY CP720 */
-	{ 0x04a9, 0x3170, USBLP_QUIRK_BLACKLIST }, /* Canon SELPHY CP750 */
-	{ 0x04a9, 0x3171, USBLP_QUIRK_BLACKLIST }, /* Canon SELPHY CP740 */
-	{ 0x04a9, 0x3185, USBLP_QUIRK_BLACKLIST }, /* Canon SELPHY ES2 */
-	{ 0x04a9, 0x3186, USBLP_QUIRK_BLACKLIST }, /* Canon SELPHY ES20 */
-	{ 0x04a9, 0x31aa, USBLP_QUIRK_BLACKLIST }, /* Canon SELPHY CP770 */
-	{ 0x04a9, 0x31ab, USBLP_QUIRK_BLACKLIST }, /* Canon SELPHY CP760 */
-	{ 0x04a9, 0x31b0, USBLP_QUIRK_BLACKLIST }, /* Canon SELPHY ES30 */
-	{ 0x04a9, 0x31dd, USBLP_QUIRK_BLACKLIST }, /* Canon SELPHY CP780 */
-	{ 0x04a9, 0x31ee, USBLP_QUIRK_BLACKLIST }, /* Canon SELPHY ES40 */
-	{ 0x04a9, 0x3214, USBLP_QUIRK_BLACKLIST }, /* Canon SELPHY CP800 */
-	{ 0x04a9, 0x3255, USBLP_QUIRK_BLACKLIST }, /* Canon SELPHY CP900 */
-	{ 0x04a9, 0x3256, USBLP_QUIRK_BLACKLIST }, /* Canon SELPHY CP810 */
-	{ 0x04a9, 0x30F5, USBLP_QUIRK_BLACKLIST }, /* Canon SELPHY CP500 */
-	{ 0x04a9, 0x31AF, USBLP_QUIRK_BLACKLIST }, /* Canon SELPHY ES3 */
-	{ 0x04a9, 0x31DD, USBLP_QUIRK_BLACKLIST }, /* Canon SELPHY CP780 */
-	 /* MISSING PIDs: CP520, CP530, CP790 */
-	{ 0, 0 }
-};

+typedef struct usb_quirk_s		/* USB "quirk" information */
+{
+  int		vendor_id,		/* Affected vendor ID */
+		product_id;		/* Affected product ID or 0 for all */
+  unsigned	quirks;			/* Quirks bitfield */
+} usb_quirk_t;

+
+
+
 /*
  * Globals...
  */

+cups_array_t		*all_quirks;	/* Array of printer quirks */
 usb_globals_t		g = { 0 };	/* Globals */
-libusb_device           **list;         /* List of connected USB devices */
+libusb_device		**all_list;	/* List of connected USB devices */


 /*
@@ -249,22 +150,24 @@
  */

 static int		close_device(usb_printer_t *printer);
+static int		compare_quirks(usb_quirk_t *a, usb_quirk_t *b);
 static usb_printer_t	*find_device(usb_cb_t cb, const void *data);
+static unsigned		find_quirks(int vendor_id, int product_id);
 static int		get_device_id(usb_printer_t *printer, char *buffer,
 			              size_t bufsize);
 static int		list_cb(usb_printer_t *printer, const char *device_uri,
 			        const char *device_id, const void *data);
+static void		load_quirks(void);
 static char		*make_device_uri(usb_printer_t *printer,
 			                 const char *device_id,
 					 char *uri, size_t uri_size);
 static int		open_device(usb_printer_t *printer, int verbose);
 static int		print_cb(usb_printer_t *printer, const char *device_uri,
 			         const char *device_id, const void *data);
-static int		printer_class_soft_reset(usb_printer_t *printer);
-static unsigned int	quirks(int vendor, int product);
 static void		*read_thread(void *reference);
 static void		*sidechannel_thread(void *reference);
 static void		soft_reset(void);
+static int		soft_reset_printer(usb_printer_t *printer);


 /*
@@ -274,6 +177,8 @@
 void
 list_devices(void)
 {
+  load_quirks();
+
   fputs("DEBUG: list_devices\n", stderr);
   find_device(list_cb, NULL);
 }
@@ -316,6 +221,8 @@
   const char	*val;			/* Option value */


+  load_quirks();
+
  /*
   * See if the side-channel descriptor is valid...
   */
@@ -341,9 +248,9 @@

  /*
   * Some devices need a reset after finishing a job, these devices are
-  * marked with the USBLP_QUIRK_RESET quirk.
+  * marked with the USB_QUIRK_SOFT_RESET quirk.
   */
-  g.printer->reset_after_job = (g.printer->quirks & USBLP_QUIRK_RESET ? 1 : 0);
+  g.printer->reset_after_job = (g.printer->quirks & USB_QUIRK_SOFT_RESET ? 1 : 0);

  /*
   * If we are printing data from a print driver on stdin, ignore SIGTERM
@@ -760,7 +667,7 @@
   * Clean up ....
   */

-  libusb_free_device_list(list, 1);
+  libusb_free_device_list(all_list, 1);
   libusb_exit(NULL);

   return (status);
@@ -880,6 +787,23 @@


 /*
+ * 'compare_quirks()' - Compare two quirks entries.
+ */
+
+static int				/* O - Result of comparison */
+compare_quirks(usb_quirk_t *a,		/* I - First quirk entry */
+               usb_quirk_t *b)		/* I - Second quirk entry */
+{
+  int result;				/* Result of comparison */
+
+  if ((result = b->vendor_id - a->vendor_id) == 0)
+    result = b->product_id - a->product_id;
+
+  return (result);
+}
+
+
+/*
  * 'find_device()' - Find or enumerate USB printers.
  */

@@ -923,7 +847,7 @@
   if (err)
   {
     fprintf(stderr, "DEBUG: Unable to initialize USB access via libusb, "
-                    "libusb error %i\n", err);
+                    "libusb error %i\n", (int)err);
     return (NULL);
   }

@@ -951,13 +875,13 @@
           !devdesc.idProduct)
 	continue;

-      printer.quirks = quirks(devdesc.idVendor, devdesc.idProduct);
+      printer.quirks = find_quirks(devdesc.idVendor, devdesc.idProduct);

      /*
       * Ignore blacklisted printers...
       */

-      if (printer.quirks & USBLP_QUIRK_BLACKLIST)
+      if (printer.quirks & USB_QUIRK_BLACKLIST)
         continue;

       for (conf = 0; conf < devdesc.bNumConfigurations; conf ++)
@@ -986,13 +910,13 @@

 	    if (((altptr->bInterfaceClass != LIBUSB_CLASS_PRINTER ||
 		  altptr->bInterfaceSubClass != 1) &&
-		 ((printer.quirks & USBLP_QUIRK_BAD_CLASS) == 0)) ||
+		 ((printer.quirks & USB_QUIRK_VENDOR_CLASS) == 0)) ||
 		(altptr->bInterfaceProtocol != 1 &&	/* Unidirectional */
 		 altptr->bInterfaceProtocol != 2) ||	/* Bidirectional */
 		altptr->bInterfaceProtocol < protocol)
 	      continue;

-	    if (printer.quirks & USBLP_QUIRK_BAD_CLASS)
+	    if (printer.quirks & USB_QUIRK_VENDOR_CLASS)
 	      fprintf(stderr, "DEBUG: Printer does not report class 7 and/or "
 		      "subclass 1 but works as a printer anyway\n");

@@ -1049,7 +973,7 @@
 	      {
 		fprintf(stderr, "DEBUG: Device protocol: %d\n",
 			printer.protocol);
-		if (printer.quirks & USBLP_QUIRK_BIDIR)
+		if (printer.quirks & USB_QUIRK_UNIDIR)
 		{
 		  printer.read_endp = -1;
 		  fprintf(stderr, "DEBUG: Printer reports bi-di support "
@@ -1069,7 +993,7 @@
 					   altsetting[printer.altset].
 					   endpoint[printer.write_endp].
 					   bEndpointAddress;
-		if (printer.quirks & USBLP_QUIRK_NO_REATTACH)
+		if (printer.quirks & USB_QUIRK_NO_REATTACH)
 		{
 		  printer.usblp_attached = 0;
 		  fprintf(stderr, "DEBUG: Printer does not like usblp "
@@ -1105,6 +1029,35 @@


 /*
+ * 'find_quirks()' - Find the quirks for the given printer, if any.
+ *
+ * First looks for an exact match, then looks for the vendor ID wildcard match.
+ */
+
+static unsigned				/* O - Quirks flags */
+find_quirks(int vendor_id,		/* I - Vendor ID */
+            int product_id)		/* I - Product ID */
+{
+  usb_quirk_t	key,			/* Search key */
+		*match;			/* Matching quirk entry */
+
+
+  key.vendor_id  = vendor_id;
+  key.product_id = product_id;
+
+  if ((match = cupsArrayFind(all_quirks, &key)) != NULL)
+    return (match->quirks);
+
+  key.product_id = 0;
+
+  if ((match = cupsArrayFind(all_quirks, &key)) != NULL)
+    return (match->quirks);
+
+  return (USB_QUIRK_WHITELIST);
+}
+
+
+/*
  * 'get_device_id()' - Get the IEEE-1284 device ID for the printer.
  */

@@ -1210,6 +1163,104 @@


 /*
+ * 'load_quirks()' - Load all quirks files in the /usr/share/cups/usb directory.
+ */
+
+static void
+load_quirks(void)
+{
+  const char	*datadir;		/* CUPS_DATADIR environment variable */
+  char		filename[1024],		/* Filename */
+		line[1024];		/* Line from file */
+  cups_dir_t	*dir;			/* Directory */
+  cups_dentry_t	*dent;			/* Directory entry */
+  cups_file_t	*fp;			/* Quirks file */
+  usb_quirk_t	*quirk;			/* New quirk */
+
+
+  all_quirks = cupsArrayNew((cups_array_func_t)compare_quirks, NULL);
+
+  if ((datadir = getenv("CUPS_DATADIR")) == NULL)
+    datadir = CUPS_DATADIR;
+
+  snprintf(filename, sizeof(filename), "%s/usb", datadir);
+  if ((dir = cupsDirOpen(filename)) == NULL)
+  {
+    perror(filename);
+    return;
+  }
+
+  fprintf(stderr, "DEBUG: Loading USB quirks from \"%s\".\n", filename);
+
+  while ((dent = cupsDirRead(dir)) != NULL)
+  {
+    if (!S_ISREG(dent->fileinfo.st_mode))
+      continue;
+
+    snprintf(filename, sizeof(filename), "%s/usb/%s", datadir, dent->filename);
+    if ((fp = cupsFileOpen(filename, "r")) == NULL)
+    {
+      perror(filename);
+      continue;
+    }
+
+    while (cupsFileGets(fp, line, sizeof(line)))
+    {
+     /*
+      * Skip blank and comment lines...
+      */
+
+      if (line[0] == '#' || !line[0])
+        continue;
+
+     /*
+      * Add a quirk...
+      */
+
+      if ((quirk = calloc(1, sizeof(usb_quirk_t))) == NULL)
+      {
+        perror("DEBUG: Unable to allocate memory for quirk");
+        break;
+      }
+
+      if (sscanf(line, "%x%x", &quirk->vendor_id, &quirk->product_id) < 1)
+      {
+        fprintf(stderr, "DEBUG: Bad line: %s\n", line);
+        free(quirk);
+        continue;
+      }
+
+      if (strstr(line, " blacklist"))
+        quirk->quirks |= USB_QUIRK_BLACKLIST;
+
+      if (strstr(line, " no-reattach"))
+        quirk->quirks |= USB_QUIRK_NO_REATTACH;
+
+      if (strstr(line, " soft-reset"))
+        quirk->quirks |= USB_QUIRK_SOFT_RESET;
+
+      if (strstr(line, " unidir"))
+        quirk->quirks |= USB_QUIRK_UNIDIR;
+
+      if (strstr(line, " usb-init"))
+        quirk->quirks |= USB_QUIRK_USB_INIT;
+
+      if (strstr(line, " vendor-class"))
+        quirk->quirks |= USB_QUIRK_VENDOR_CLASS;
+
+      cupsArrayAdd(all_quirks, quirk);
+    }
+
+    cupsFileClose(fp);
+  }
+
+  fprintf(stderr, "DEBUG: Loaded %d quirks.\n", cupsArrayCount(all_quirks));
+
+  cupsDirClose(dir);
+}
+
+
+/*
  * 'make_device_uri()' - Create a device URI for a USB printer.
  */

@@ -1636,65 +1687,6 @@


 /*
- * 'printer_class_soft_reset()' - Do the soft reset request specific to printers
- *
- * This soft reset is specific to the printer device class and is much less
- * invasive than the general USB reset libusb_reset_device(). Especially it
- * does never happen that the USB addressing and configuration changes. What
- * is actually done is that all buffers get flushed and the bulk IN and OUT
- * pipes get reset to their default states. This clears all stall conditions.
- * See http://cholla.mmto.org/computers/linux/usb/usbprint11.pdf
- */
-
-static int				/* O - 0 on success, < 0 on error */
-printer_class_soft_reset(usb_printer_t *printer) /* I - Printer */
-{
-  struct libusb_config_descriptor *confptr = NULL;
-                                        /* Pointer to current configuration */
-  int interface,
-      errcode;
-
-  if (libusb_get_config_descriptor(printer->device, printer->conf, &confptr)
-      < 0)
-    interface = printer->iface;
-  else
-    interface = confptr->interface[printer->iface].
-      altsetting[printer->altset].bInterfaceNumber;
-  libusb_free_config_descriptor(confptr);
-  if ((errcode = libusb_control_transfer(printer->handle,
-					 LIBUSB_REQUEST_TYPE_CLASS |
-					 LIBUSB_ENDPOINT_OUT |
-					 LIBUSB_RECIPIENT_OTHER,
-					 2, 0, interface, NULL, 0, 5000)) < 0)
-    errcode = libusb_control_transfer(printer->handle,
-				      LIBUSB_REQUEST_TYPE_CLASS |
-				      LIBUSB_ENDPOINT_OUT |
-				      LIBUSB_RECIPIENT_INTERFACE,
-				      2, 0, interface, NULL, 0, 5000);
-  return errcode;
-}
-
-
-/*
- * 'quirks()' - Get the known quirks of a given printer model
- */
-
-static unsigned int quirks(int vendor, int product)
-{
-  int i;
-
-  for (i = 0; quirk_printers[i].vendorId; i++)
-  {
-    if (vendor == quirk_printers[i].vendorId &&
-	(quirk_printers[i].productId == 0x0000 ||
-	 product == quirk_printers[i].productId))
-      return quirk_printers[i].quirks;
-  }
-  return 0;
-}
-
-
-/*
  * 'read_thread()' - Thread to read the backchannel data on.
  */

@@ -1917,13 +1909,15 @@
  * 'soft_reset()' - Send a soft reset to the device.
  */

-static void soft_reset(void)
+static void
+soft_reset(void)
 {
   fd_set	  input_set;		/* Input set for select() */
   struct timeval  tv;			/* Time value */
   char		  buffer[2048];		/* Buffer */
   struct timespec cond_timeout;		/* pthread condition timeout */

+
  /*
   * Send an abort once a second until the I/O lock is released by the main
   * thread...
@@ -1968,7 +1962,7 @@
   * Send the reset...
   */

-  printer_class_soft_reset(g.printer);
+  soft_reset_printer(g.printer);

  /*
   * Release the I/O lock...
@@ -1982,6 +1976,51 @@


 /*
+ * 'soft_reset_printer()' - Do the soft reset request specific to printers
+ *
+ * This soft reset is specific to the printer device class and is much less
+ * invasive than the general USB reset libusb_reset_device(). Especially it
+ * does never happen that the USB addressing and configuration changes. What
+ * is actually done is that all buffers get flushed and the bulk IN and OUT
+ * pipes get reset to their default states. This clears all stall conditions.
+ * See http://cholla.mmto.org/computers/linux/usb/usbprint11.pdf
+ */
+
+static int				/* O - 0 on success, < 0 on error */
+soft_reset_printer(
+    usb_printer_t *printer)		/* I - Printer */
+{
+  struct libusb_config_descriptor *confptr = NULL;
+                                        /* Pointer to current configuration */
+  int interface,			/* Interface to reset */
+      errcode;				/* Error code */
+
+
+  if (libusb_get_config_descriptor(printer->device, printer->conf,
+                                   &confptr) < 0)
+    interface = printer->iface;
+  else
+    interface = confptr->interface[printer->iface].
+                         altsetting[printer->altset].bInterfaceNumber;
+
+  libusb_free_config_descriptor(confptr);
+
+  if ((errcode = libusb_control_transfer(printer->handle,
+					 LIBUSB_REQUEST_TYPE_CLASS |
+					 LIBUSB_ENDPOINT_OUT |
+					 LIBUSB_RECIPIENT_OTHER,
+					 2, 0, interface, NULL, 0, 5000)) < 0)
+    errcode = libusb_control_transfer(printer->handle,
+				      LIBUSB_REQUEST_TYPE_CLASS |
+				      LIBUSB_ENDPOINT_OUT |
+				      LIBUSB_RECIPIENT_INTERFACE,
+				      2, 0, interface, NULL, 0, 5000);
+
+  return (errcode);
+}
+
+
+/*
  * End of "$Id$".
  */

Index: backend/Makefile
===================================================================
--- backend/Makefile	(revision 11153)
+++ backend/Makefile	(working copy)
@@ -3,7 +3,7 @@
 #
 #   Backend makefile for CUPS.
 #
-#   Copyright 2007-2012 by Apple Inc.
+#   Copyright 2007-2013 by Apple Inc.
 #   Copyright 1997-2007 by Easy Software Products, all rights reserved.
 #
 #   These coded instructions, statements, and computer programs are the
@@ -109,6 +109,11 @@
 #

 install-data:
+	if test "x$(USBQUIRKS)" != x; then \
+		echo Installing USB quirks in $(USBQUIRKS); \
+		$(INSTALL_DIR) -m 755 $(USBQUIRKS); \
+		$(INSTALL_DATA) org.cups.usb-quirks $(USBQUIRKS); \
+	fi


 #
Index: config-scripts/cups-common.m4
===================================================================
--- config-scripts/cups-common.m4	(revision 11153)
+++ config-scripts/cups-common.m4	(working copy)
@@ -225,7 +225,9 @@
 AC_ARG_ENABLE(libusb, [  --enable-libusb         use libusb for USB printing])

 LIBUSB=""
+USBQUIRKS=""
 AC_SUBST(LIBUSB)
+AC_SUBST(USBQUIRKS)

 if test "x$PKGCONFIG" != x; then
 	if test x$enable_libusb = xyes -o $uname != Darwin; then
@@ -235,6 +237,7 @@
 			AC_DEFINE(HAVE_LIBUSB)
 			CFLAGS="$CFLAGS `$PKGCONFIG --cflags libusb-1.0`"
 			LIBUSB="`$PKGCONFIG --libs libusb-1.0`"
+			USBQUIRKS="\$(DATADIR)/usb"
 		else
 			AC_MSG_RESULT(no)
 		fi

--Boundary_(ID_Y2Z6s7jSVU1j71lDtS768Q)
Content-type: text/html; CHARSET=US-ASCII
Content-transfer-encoding: 7BIT

<html><head><meta http-equiv="Content-Type" content="text/html charset=us-ascii"></head><body style="word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space; "><div><br><div>
<span class="Apple-style-span" style="border-collapse: separate; border-spacing: 0px; "><span class="Apple-style-span" style="border-collapse: separate; color: rgb(0, 0, 0); font-family: 'Andale Mono'; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;  "><div style="word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space; ">_________________________________________________________<br>Michael Sweet, Senior Printing System&nbsp;Engineer, PWG Chair</div></span></span>
</div>

<br></div></body></html>

--Boundary_(ID_Y2Z6s7jSVU1j71lDtS768Q)--

--Boundary_(ID_Kelmt/4IPa794oi450uDmw)--
