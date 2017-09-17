Return-Path: <samuel.thibault@ens-lyon.org>
Date: Sun, 17 Sep 2017 15:11:18 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
Message-ID: <20170917131118.ayage2dvwgv4pslh@var.youpi.perso.aquilenet.fr>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="3hhllbxp4irebnyx"
Content-Disposition: inline
Subject: [Printing-architecture] [PATCH] braille: Add virtual BRF backend
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


--3hhllbxp4irebnyx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

This adds support for generating ready-to-emboss BRF files with cups,
similarly to the cups-pdf backend.

Samuel

--3hhllbxp4irebnyx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=patch

=== modified file 'Makefile.am'
--- Makefile.am	2017-09-16 23:38:33 +0000
+++ Makefile.am	2017-09-17 13:08:53 +0000
@@ -65,6 +65,13 @@ test1284_SOURCES = \
 test1284_LDADD = $(CUPS_LIBS)
 test1284_CFLAGS = $(CUPS_CFLAGS)
 
+if ENABLE_BRAILLE
+pkgbackend_PROGRAMS += cups-brf
+
+cups_brf_SOURCES = \
+	backend/cups-brf.c
+endif
+
 # ==============
 # PPD Generators
 # ==============
@@ -997,6 +1004,8 @@ if ENABLE_DRIVERLESS
 	$(LN_S) -r -f $(DESTDIR)$(pkgppdgendir)/driverless $(DESTDIR)$(pkgbackenddir)
 endif
 if ENABLE_BRAILLE
+	# This needs to be run as root
+	chmod g-rwx,o-rwx $(DESTDIR)/$(pkgbackenddir)/cups-brf
 	$(LN_S) -f imagetobrf $(DESTDIR)$(pkgfilterdir)/imagetoubrl
 	$(LN_S) -f vectortopdf $(DESTDIR)$(pkgfilterdir)/svgtopdf
 	$(LN_S) -f vectortopdf $(DESTDIR)$(pkgfilterdir)/xfigtopdf
=== modified file 'README'
--- README	2017-09-16 21:55:36 +0000
+++ README	2017-09-17 13:04:32 +0000
@@ -1758,6 +1758,19 @@ the default values are shown here.
 lp -o "LibLouis=fr-fr-g1 LibLouis2=gr-gr-g1 TextDotDistance=250 LineSpacing=500" file.txt
 
 
+---------------
+BRF file output
+---------------
+
+One can generate BRF files by adding a virtual BRF printer.
+
+When creating it in the cups interface, choose the CUPS-BRF local printer,
+select the Generic maker, and choose the Generic Braille embosser model.
+
+Printing to the resulting printer will generate a .brf file in a BRF
+subdirectory of the home directory.
+
+
 ----------------------------
 Remark about the source code
 ----------------------------

=== added file 'backend/cups-brf.c'
--- backend/cups-brf.c	1970-01-01 00:00:00 +0000
+++ backend/cups-brf.c	2017-09-17 13:05:25 +0000
@@ -0,0 +1,162 @@
+/*
+ * BRF (Braille-Ready Format) virtual backend
+ *
+ * Copyright (c) 2017 by Samuel Thibault <samuel.thibault@ens-lyon.org>
+ *
+ * Permission is hereby granted, free of charge, to any person obtaining a copy
+ * of this software and associated documentation files (the "Software"), to deal
+ * in the Software without restriction, including without limitation the rights
+ * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
+ * copies of the Software, and to permit persons to whom the Software is
+ * furnished to do so, subject to the following conditions:
+ *
+ *
+ * The above copyright notice and this permission notice shall be included in
+ * all copies or substantial portions of the Software.
+ *
+ *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
+ * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
+ * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL THE
+ * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
+ * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
+ * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
+ * THE SOFTWARE.
+ */
+
+#include "backend-private.h"
+#include <string.h>
+#include <errno.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <unistd.h>
+#include <sys/stat.h>
+#include <pwd.h>
+
+int main(int argc, char *argv[]) {
+  char *user;
+  char *dir;
+  char *title;
+  char *outfile;
+  char *c;
+  char buffer[4096];
+  ssize_t sizein, sizeout, done;
+  struct passwd *pw;
+  int ret;
+  int fd;
+
+  if (setuid(0)) {
+    /* We need to be root to be able to turn into another user.  */
+    fprintf(stderr,"ERROR: cups-brf must be called as root\n");
+    return CUPS_BACKEND_FAILED;
+  }
+
+  if (argc == 1) {
+    /* This is just discovery.  */
+    printf("file cups-brf:/ \"Virtual Braille BRF Printer\" \"CUPS-BRF\" \"MFG:Generic;MDL:CUPS-BRF Printer;DES:Generic CUPS-BRF Printer;CLS:PRINTER;CMD:BRF;\"\n");
+    return CUPS_BACKEND_OK;
+  }
+
+  if (argc < 6) {
+    /* Invalid number of parameters.  */
+    fprintf(stderr, "ERROR: cups-brf jobid user name nb options [filename]\n");
+    return CUPS_BACKEND_FAILED;
+  }
+
+  if (argc == 7) {
+    /* Explicit file name, open it.  */
+    char *filename = argv[6];
+    fd = open(filename,  O_RDONLY);
+    if (dup2(fd, STDIN_FILENO) < 0) {
+      fprintf(stderr, "ERROR: opening file \"%s\"\n", filename);
+      return CUPS_BACKEND_FAILED;
+    }
+  }
+
+  /* Now we have everything, turn into the user */
+  user = argv[2];
+  pw = getpwnam(user);
+  if (pw == NULL) {
+    fprintf(stderr, "ERROR: getting user \"%s\" information\n", user);
+    return CUPS_BACKEND_FAILED;
+  }
+  if (setgid(pw->pw_gid)) {
+    fprintf(stderr, "ERROR: turning gid into %u\n", pw->pw_gid);
+    return CUPS_BACKEND_FAILED;
+  }
+  if (setuid(pw->pw_uid)) {
+    fprintf(stderr, "ERROR: turning uid into %u\n", pw->pw_uid);
+    return CUPS_BACKEND_FAILED;
+  }
+
+  /* Now we act as user */
+  umask(0077);
+
+  /* Create BRF directory in $HOME */
+  if (asprintf(&dir, "%s/BRF", pw->pw_dir) < 0) {
+    fprintf(stderr, "ERROR: could not allocate memory\n");
+    return CUPS_BACKEND_FAILED;
+  }
+  fprintf(stderr, "DEBUG: creating directory \"%s\n", dir);
+  ret = mkdir(dir, 0700);
+  if (ret == -1 && errno != EEXIST) {
+    fprintf(stderr, "ERROR: could not create directory \"%s\": %s\n", dir, strerror(errno));
+    return CUPS_BACKEND_FAILED;
+  }
+
+  /* Avoid escaping from the directory */
+  title = argv[3];
+  for (c = title; *c; c++) {
+    if (*c == '/')
+      *c = '_';
+  }
+  /* Avoid hiding the file */
+  while (*title == '.')
+    title++;
+
+  /* Avoid empty title */
+  if (!*title)
+    title = "unknown";
+
+  /* generate mask */
+  if (asprintf(&outfile, "%s/%s.XXXXXX.brf", dir, title) < 0) {
+    fprintf(stderr, "ERROR: could not allocate memory\n");
+    return CUPS_BACKEND_FAILED;
+  }
+
+  /* Create file */
+  fprintf(stderr, "DEBUG: creating file \"%s\n", outfile);
+  fd = mkstemps(outfile, 4);
+  if (fd < 0) {
+    fprintf(stderr, "ERROR: could not create file \"%s\": %s\n", outfile, strerror(errno));
+    return CUPS_BACKEND_FAILED;
+  }
+
+  /* We are all set, copy data.  */
+  while (1) {
+    /* Read some.  */
+    sizein = read(STDIN_FILENO, buffer, sizeof(buffer));
+    if (sizein < 0) {
+      fprintf(stderr, "ERROR: while reading input: %s\n", strerror(errno));
+      return CUPS_BACKEND_FAILED;
+    }
+    if (sizein == 0)
+      /* We are done! */
+      break;
+
+    /* Write it.  */
+    for (done = 0; done < sizein; done += sizeout) {
+      sizeout = write(fd, buffer + done, sizein - done);
+      if (sizeout < 0) {
+	fprintf(stderr, "ERROR: while writing to \"%s\": %s\n", outfile, strerror(errno));
+	return CUPS_BACKEND_FAILED;
+      }
+    }
+  }
+  if (close(fd) < 0) {
+    fprintf(stderr, "ERROR: while closing \"%s\": %s\n", outfile, strerror(errno));
+    return CUPS_BACKEND_FAILED;
+  }
+
+  return CUPS_BACKEND_OK;
+}


--3hhllbxp4irebnyx--
