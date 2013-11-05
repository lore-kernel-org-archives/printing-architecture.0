Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-type: multipart/mixed; boundary="Boundary_(ID_YeHxFxdDbPwZ8FOh8GzqYA)"
From: Michael Sweet <msweet@apple.com>
Date: Tue, 05 Nov 2013 10:16:25 -0500
Message-id: <22D2D947-0004-48B6-9F76-2139E76BA53F@apple.com>
Subject: [Printing-architecture] Raw printing bug with CUPS 1.7.0,
	with a patch
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>


--Boundary_(ID_YeHxFxdDbPwZ8FOh8GzqYA)
Content-type: text/plain; charset=windows-1252
Content-transfer-encoding: quoted-printable

All,

This has been reported a couple times - customers are using raw queues =
on a CUPS server with the client (running CUPS 1.7.0) using a driver. =
Since CUPS reports support for gzip compression, the client =
automatically compresses the raw print stream but the server doesn=92t =
gunzip the data before sending it on its way.

A fix for the server side will be included in CUPS 1.7.1, but the =
attached patch should be applied to all versions of CUPS to fix this =
particular issue (this isn=92t something we can fix on the client side =
without breaking valid uses of compression to real printers=85)


--Boundary_(ID_YeHxFxdDbPwZ8FOh8GzqYA)
Content-type: application/octet-stream; x-mac-type=54455854; x-unix-mode=0664;
 name=rdar15008524.patch
Content-transfer-encoding: 7bit
Content-disposition: attachment; filename=rdar15008524.patch

Index: scheduler/job.c
===================================================================
--- scheduler/job.c	(revision 11375)
+++ scheduler/job.c	(working copy)
@@ -758,9 +703,8 @@
   * Add decompression/raw filter as needed...
   */

-  if ((!job->printer->raw && job->compressions[job->current_file]) ||
-      (!filters && !job->printer->remote &&
-       (job->num_files > 1 || !strncmp(job->printer->device_uri, "file:", 5))))
+  if (job->compressions[job->current_file] &&
+      (!job->printer->remote || job->num_files == 1))
   {
    /*
     * Add gziptoany filter to the front of the list...

--Boundary_(ID_YeHxFxdDbPwZ8FOh8GzqYA)
Content-type: text/plain; CHARSET=US-ASCII
Content-transfer-encoding: 7BIT


_______________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair


--Boundary_(ID_YeHxFxdDbPwZ8FOh8GzqYA)--
