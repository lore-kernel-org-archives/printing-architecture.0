Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-type: multipart/mixed; boundary="Boundary_(ID_sRNRBKg4sbktPuaeXVnJ+A)"
From: Michael Sweet <msweet@apple.com>
In-reply-to: <8CA7D32C-A551-482E-9F26-9C1909D74736@apple.com>
Date: Wed, 10 Jul 2013 10:44:32 -0400
Message-id: <843B55ED-9D7F-4ECD-B50B-272848E9649B@apple.com>
References: <51DC8343.4020104@gmail.com>
	<8CA7D32C-A551-482E-9F26-9C1909D74736@apple.com>
Subject: Re: [Printing-architecture] Options in /etc/cups/printers.conf
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>


--Boundary_(ID_sRNRBKg4sbktPuaeXVnJ+A)
Content-type: text/plain; CHARSET=US-ASCII
Content-transfer-encoding: 7BIT

Till,

Here is the patch for 1.7 (1.7rc1 to be released soon):


--Boundary_(ID_sRNRBKg4sbktPuaeXVnJ+A)
Content-type: application/octet-stream; name=rdar14401718.patch
Content-transfer-encoding: 7bit
Content-disposition: attachment; filename=rdar14401718.patch

Index: cups/usersys.c
===================================================================
--- cups/usersys.c	(revision 11112)
+++ cups/usersys.c	(working copy)
@@ -365,6 +365,8 @@
       else if (!strcmp(options, "version=2.2"))
         cg->server_version = 22;
     }
+    else
+      cg->server_version = 20;
 
     if (cg->server[0] != '/' && (port = strrchr(cg->server, ':')) != NULL &&
         !strchr(port, ']') && isdigit(port[1] & 255))
Index: cups/globals.c
===================================================================
--- cups/globals.c	(revision 11112)
+++ cups/globals.c	(working copy)
@@ -215,7 +215,6 @@
   cg->any_root       = 1;
   cg->expired_certs  = 1;
   cg->expired_root   = 1;
-  cg->server_version = 20;
 
  /*
   * Then set directories as appropriate...
Index: cups/ipp.c
===================================================================
--- cups/ipp.c	(revision 11112)
+++ cups/ipp.c	(working copy)
@@ -2340,6 +2340,9 @@
     * Set default version - usually 2.0...
     */
 
+    if (cg->server_version == 0)
+      _cupsSetDefaults();
+
     temp->request.any.version[0] = cg->server_version / 10;
     temp->request.any.version[1] = cg->server_version % 10;
     temp->use                    = 1;

--Boundary_(ID_sRNRBKg4sbktPuaeXVnJ+A)
Content-type: text/plain; CHARSET=US-ASCII
Content-transfer-encoding: 7BIT



However, when I went back to test on 1.6 TOT I was unable to reproduce there. Either I had already fixed the problem for 1.6.3 or it wasn't already broken.  The changes in 1.7 (to filter encoded attributes based on operation code) were responsible for the breakage there, but 1.6 doesn't include that code...


On Jul 10, 2013, at 10:17 AM, Michael Sweet <msweet@apple.com> wrote:

> Filed as Apple bug:
> 
>    <rdar://problem/14401795> cups.org: xxx-default options set from lpadmin are not returned by Get-Printer-Attributes
> 
> I was able to reproduce both with lpoptions and ipptool.  I'll let you know when I have a fix...
> 
> 
> On Jul 9, 2013, at 5:40 PM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
> 
>> Hi,
>> 
>> I have a problem with non-PPD options set in /etc/cups/printers.conf.
>> 
>> For filters and cups-browsed I have defined some options foor being
>> stored in /etc/cups/printers.conf which are not options of CUPS itself.
>> 
>> I set these options via
>> 
>> lpadmin -p <printer> -o <option>-default=<value>
>> 
>> getting a line
>> 
>> Option <option> <value>
>> 
>> in the entry of <printer>. What works is that these options get supplied
>> with every job, so I can use such options to configure filters or to get
>> filters into a debug mode. I am using this successfully for example with
>> the "usb" CUPS backend to find quirk rules for broken USB printers.
>> 
>> Now I also want to use this simply to mark print queues (setting an
>> option which is ignored by all filters). For example all queues created
>> by cups-browsed get the cups-browsed boolean option set by doing the IPP
>> equivalent of:
>> 
>> lpadmin -p <printer> -o cups-browsed-default
>> 
>> resulting in a line
>> 
>> Option cups-browsed true
>> 
>> in /etc/cups/printers.conf. This way I want that if cups-browsed not
>> closed cleanly (system crash) and so did not remove the queues it
>> created in the next session finds these queues and treats them
>> correctly, so that crashes do not lead to ghost queues.
>> 
>> Now it seems that I cannot read out this option setting (without sending
>> a job and checking error_log), as
>> 
>> lpoptions -p <printer>
>> 
>> does not list the option (as "cups-browsed" or "cups-browsed=true") and
>> 
>> val = cupsGetOption("cups-browsed", dest->num_options, dest->options)
>> 
>> in a C program (with dest being the record of the printer in question)
>> gives val = NULL as one gets when requesting the value of a non-existing
>> option.
>> 
>> In CUPS 1.5.x (Ubuntu Precise, 12.04 LTS) this still worked. both
>> cups-browsed was able to read out the "cups-browsed" marker option from
>> its queues via the C line shown above and
>> 
>> lpoptions -p <printer>
>> 
>> contains "cups-browsed=true" in its output.
>> 
>> I would consider this a bug in CUPS 1.6.x. Mike can you have a look? Thanks.
>> 
>>  Till
> 
> _________________________________________________________
> Michael Sweet, Senior Printing System Engineer, PWG Chair
> 
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair


--Boundary_(ID_sRNRBKg4sbktPuaeXVnJ+A)--
