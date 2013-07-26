Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-type: multipart/mixed; boundary="Boundary_(ID_uQ7ztIiNLv/DjKaJPl5NzA)"
From: Michael Sweet <msweet@apple.com>
In-reply-to: <000AC9EF-2754-4A7D-805B-4832B50EB57A@apple.com>
Date: Fri, 26 Jul 2013 17:36:12 -0400
Message-id: <8F0DB4FE-3641-4495-A918-5A50918F158D@apple.com>
References: <51ED6BDA.2080206@redhat.com> <51ED6CC4.1040501@redhat.com>
	<0C413B5E-6225-4CF7-BF17-8E164B520D7E@apple.com>
	<1374570518.4832.2.camel@rubik>
	<C01D5828-4CCD-4A70-8549-B976AE80DF4C@apple.com>
	<51EE90D7.9070607@gmail.com>
	<AB1EE3DA-E24E-489D-B1A8-FED07237D651@apple.com>
	<51EEBF83.2090006@gmail.com>
	<14E6A268-7B57-4F95-9384-647E0A8D3C47@apple.com>
	<51EECDF8.9070209@gmail.com>
	<000AC9EF-2754-4A7D-805B-4832B50EB57A@apple.com>
Subject: Re: [Printing-architecture] printers.conf frequently gets truncated
 to zero length after unclean shutdowns
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Steve Bergman <sbergman27@gmail.com>
Cc: Eric Sandeen <sandeen@redhat.com>, "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>


--Boundary_(ID_uQ7ztIiNLv/DjKaJPl5NzA)
Content-type: text/plain; CHARSET=US-ASCII
Content-transfer-encoding: 7BIT

All,

Here is the proposed change that adds a "SyncOnClose" directive to the cups-files.conf file:


--Boundary_(ID_uQ7ztIiNLv/DjKaJPl5NzA)
Content-type: application/octet-stream; name=rdar14523043.patch
Content-transfer-encoding: 7bit
Content-disposition: attachment; filename=rdar14523043.patch

Index: conf/cups-files.conf.in
===================================================================
--- conf/cups-files.conf.in	(revision 11192)
+++ conf/cups-files.conf.in	(working copy)
@@ -8,6 +8,9 @@
 # List of events that are considered fatal errors for the scheduler...
 #FatalErrors @CUPS_FATAL_ERRORS@

+# Do we call fsync() after writing configuration or status files?
+#SyncOnClose No
+
 # Default user and group for filters/backends/helper programs; this cannot be
 # any user or group that resolves to ID 0 for security reasons...
 #User @CUPS_USER@
Index: doc/help/ref-cups-files-conf.html.in
===================================================================
--- doc/help/ref-cups-files-conf.html.in	(revision 11192)
+++ doc/help/ref-cups-files-conf.html.in	(working copy)
@@ -429,6 +429,31 @@
 default server directory is <VAR>/etc/cups</VAR>.</P>


+<H2 CLASS="title"><SPAN CLASS="info">CUPS 1.6.4</SPAN><A NAME="SyncOnClose">SyncOnClose</A></H2>
+
+<H3>Examples</H3>
+
+<PRE CLASS="command">
+SyncOnClose No
+SyncOnClose Yes
+</PRE>
+
+<H3>Description</H3>
+
+<P>The <CODE>SyncOnClose</CODE> directive determines whether the scheduler
+flushes changes to configuration and state files to disk. The default is
+<CODE>No</CODE> which relies on the operating system to schedule a suitable
+time to write changes to disk.</P>
+
+<BLOCKQUOTE><B>Note:</B>
+
+<P>Setting <CODE>SyncOnClose</CODE> to <CODE>Yes</CODE> makes the scheduler use the <CODE>fsync(2)</CODE> system call to write all changes to disk, however the drive or network file system server may still delay writing data to disk. Do not depend on this functionality to prevent data loss in the event of unexpected hardware failure.</P>
+
+<P>Enabling <CODE>SyncOnClose</CODE> may also cause the scheduler to periodically become unresponsive while it waits for changes to be written.</P>
+
+</BLOCKQUOTE>
+
+
 <H2 CLASS="title"><A NAME="SystemGroup">SystemGroup</A></H2>

 <H3>Examples</H3>
Index: man/cups-files.conf.man.in
===================================================================
--- man/cups-files.conf.man.in	(revision 11192)
+++ man/cups-files.conf.man.in	(working copy)
@@ -122,6 +122,12 @@
 .br
 Specifies the directory where the server configuration files can be found.
 .TP 5
+SyncOnClose Yes
+.TP 5
+SyncOnClose No
+Specifies whether the scheduler calls \fIfsync(2)\fR after writing configuration
+or state files. The default is No.
+.TP 5
 SystemGroup group-name [group-name ...]
 .br
 Specifies the group(s) to use for System class authentication.
Index: scheduler/conf.c
===================================================================
--- scheduler/conf.c	(revision 11192)
+++ scheduler/conf.c	(working copy)
@@ -174,6 +174,7 @@
   { "ServerRoot",		&ServerRoot,		CUPSD_VARTYPE_PATHNAME },
   { "SMBConfigFile",		&SMBConfigFile,		CUPSD_VARTYPE_STRING },
   { "StateDir",			&StateDir,		CUPSD_VARTYPE_STRING },
+  { "SyncOnClose",		&SyncOnClose,		CUPSD_VARTYPE_BOOLEAN },
 #ifdef HAVE_AUTHORIZATION_H
   { "SystemGroupAuthKey",	&SystemGroupAuthKey,	CUPSD_VARTYPE_STRING },
 #endif /* HAVE_AUTHORIZATION_H */
@@ -734,6 +735,7 @@
   ReloadTimeout	           = DEFAULT_KEEPALIVE;
   RootCertDuration         = 300;
   StrictConformance        = FALSE;
+  SyncOnClose              = FALSE;
   Timeout                  = DEFAULT_TIMEOUT;
   WebInterface             = CUPS_DEFAULT_WEBIF;

Index: scheduler/conf.h
===================================================================
--- scheduler/conf.h	(revision 11192)
+++ scheduler/conf.h	(working copy)
@@ -172,6 +172,8 @@
 					/* Which errors are fatal? */
 			StrictConformance	VALUE(FALSE),
 					/* Require strict IPP conformance? */
+			SyncOnClose		VALUE(FALSE),
+					/* Call fsync() when closing files? */
 			LogFilePerm		VALUE(0644);
 					/* Permissions for log files */
 VAR cupsd_loglevel_t	LogLevel		VALUE(CUPSD_LOG_WARN);
Index: scheduler/file.c
===================================================================
--- scheduler/file.c	(revision 11192)
+++ scheduler/file.c	(working copy)
@@ -109,6 +109,29 @@


  /*
+  * Synchronize changes to disk if SyncOnClose is enabled.
+  */
+
+  if (SyncOnClose)
+  {
+    if (cupsFileFlush(fp))
+    {
+      cupsdLogMessage(CUPSD_LOG_ERROR, "Unable to write changes to \"%s\": %s",
+		      filename, strerror(errno));
+      cupsFileClose(fp);
+      return (-1);
+    }
+
+    if (fsync(cupsFileNumber(fp)))
+    {
+      cupsdLogMessage(CUPSD_LOG_ERROR, "Unable to sync changes to \"%s\": %s",
+		      filename, strerror(errno));
+      cupsFileClose(fp);
+      return (-1);
+    }
+  }
+
+ /*
   * First close the file...
   */


--Boundary_(ID_uQ7ztIiNLv/DjKaJPl5NzA)
Content-type: text/plain; CHARSET=US-ASCII
Content-transfer-encoding: 7BIT



As I mentioned before the default is off (SyncOnClose No), and I included a big disclaimer on its use in the HTML documentation.

Let me know if you have any feedback - this will be included in CUPS 1.6.4 and 1.7.0.


On Jul 23, 2013, at 3:01 PM, Michael Sweet <msweet@apple.com> wrote:

> I can make sure that the changes apply cleanly to 1.6.x and are included in the final 1.6.x release (1.6.4).  Beyond that, yes, you'll need to coordinate with your distro of choice or edit and compile yourself.
> 
> 
> On 2013-07-23, at 2:39 PM, Steve Bergman <sbergman27@gmail.com> wrote:
> 
>> On 07/23/2013 01:16 PM, Michael Sweet wrote:
>>> In this case the unrealistic expectation is that if you pull the plug on a running system that you won't lose any data.  Systems that offer that level of assurance are designed accordingly and generally include some form of backup power that will allow pending writes to complete.
>> 
>> That flies in the face of the 12 years of experience I have with the same workloads running under ext3. And running under ext4/delalloc or xfs, cups should be able to do even better for both performance and reliability if it does things right.
>> 
>> But that's all just spilled milk over the dam now. Most all current Unix/Linux filesystems now require fsync in order to provide sane integrity guarantees. That's just a fact of life that we've all got to live with. If offering a fix in the next major CUPS release is the best you're willing to do, then it is, at least, better than nothing at all. Thank you, at least, for that much.
>> 
>> This moves the focus to convincing the CUPS package maintainers of existing distros to patch their pre-1.7 versions with the necessary functionality. Which is kind of where I started. So back to the RH Bugzilla thread...
>> 
>> -Steve
> 
> _________________________________________________________
> Michael Sweet, Senior Printing System Engineer, PWG Chair
> 

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair


--Boundary_(ID_uQ7ztIiNLv/DjKaJPl5NzA)--
