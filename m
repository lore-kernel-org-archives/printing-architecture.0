Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-type: multipart/mixed; boundary="Boundary_(ID_INcgbRXFDrO5M8qZLeFTLQ)"
From: Michael Sweet <msweet@apple.com>
In-reply-to: <ACCCE59B-5C71-4FB6-A618-18B5621DBC0D@apple.com>
Date: Mon, 28 Oct 2013 11:35:13 -0400
Message-id: <726B5864-433D-4AC5-9742-AF266F7CD7ED@apple.com>
References: <1382715382.32506.5.camel@rubik>
	<ACCCE59B-5C71-4FB6-A618-18B5621DBC0D@apple.com>
Subject: Re: [Printing-architecture] [patch] cups-1.7.0: job history fix
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Tim Waugh <twaugh@redhat.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>


--Boundary_(ID_INcgbRXFDrO5M8qZLeFTLQ)
Content-type: text/plain; CHARSET=US-ASCII
Content-transfer-encoding: 7BIT

and here is the fix:


--Boundary_(ID_INcgbRXFDrO5M8qZLeFTLQ)
Content-type: application/octet-stream; x-unix-mode=0664;
 name=rdar15331639.patch
Content-transfer-encoding: 7bit
Content-disposition: attachment; filename=rdar15331639.patch

Index: scheduler/log.c
===================================================================
--- scheduler/log.c	(revision 11365)
+++ scheduler/log.c	(working copy)
@@ -541,12 +541,13 @@
       */
 
       cupsd_joblog_t *temp;		/* Copy of log message */
+      size_t         log_len = strlen(log_line);
+					/* Length of log message */
 
-
-      if ((temp = malloc(sizeof(cupsd_joblog_t) + strlen(log_line))) != NULL)
+      if ((temp = malloc(sizeof(cupsd_joblog_t) + log_len)) != NULL)
       {
         temp->time = time(NULL);
-	strlcpy(temp->message, log_line, sizeof(temp->message));
+	memcpy(temp->message, log_line, log_len + 1);
       }
 
       if (!job->history)

--Boundary_(ID_INcgbRXFDrO5M8qZLeFTLQ)
Content-type: text/plain; charset=iso-8859-1
Content-transfer-encoding: quoted-printable


On Oct 28, 2013, at 11:30 AM, Michael Sweet <msweet@apple.com> wrote:

> Tim,
>=20
> Thanks, I filed this as:
>=20
>    <rdar://problem/15331639> cups.org: Regression in auto-debug =
logging
>=20
> That said, your proposed fix actually isn't safe either - the Fortify =
strcpy stuff in glibc effectively converts the strcpy to a strlcpy, so =
the code will break if you happen to compile using the =
-D_FORTIFY_SOURCE=3D2 compiler option.
>=20
> I will follow up with a memcpy-based fix.
>=20
> Thanks for reporting this!
>=20
> (and we are 1 electronic signature away from getting cups.org's bug =
tracker back online...)
>=20
>=20
> On Oct 25, 2013, at 11:36 AM, Tim Waugh <twaugh@redhat.com> wrote:
>=20
>> Hi,
>>=20
>> While playing around with a logging enhancement=B9 I discovered a bug =
in
>> the job history code. It was introduced some time after the public
>> source repository was taken off-line, so I don't know what the
>> motivation for the change was.
>>=20
>> A cups_joblog_t declares 'char message[1]' for the message, and is
>> allocated with enough storage for the intended message. However, the
>> message is copied in with strlcpy, with a limit of
>> sizeof(cups_joblog_t->message). As a result, the message is =
severely(!)
>> truncated.
>>=20
>> The fix is to undo the change as attached.
>>=20
>> Tim.
>> */
>>=20
>> =B9 =
http://cyberelk.net/tim/2013/10/25/cups-adding-support-for-system-journal/=

>> =
<cups-jobhistory.patch>_______________________________________________
>> Printing-architecture mailing list
>> Printing-architecture@lists.linux-foundation.org
>> =
https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>=20
> _________________________________________________________
> Michael Sweet, Senior Printing System Engineer, PWG Chair
>=20
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> =
https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair


--Boundary_(ID_INcgbRXFDrO5M8qZLeFTLQ)--
