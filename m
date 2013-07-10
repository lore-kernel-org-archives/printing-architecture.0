Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-type: multipart/mixed; boundary="Boundary_(ID_g+KgwPGbLUKhIMNIXqjDCg)"
From: Michael Sweet <msweet@apple.com>
In-reply-to: <51DD7DB2.4070808@gmail.com>
Date: Wed, 10 Jul 2013 11:47:18 -0400
Message-id: <FF2054C7-A4B4-4709-8267-D6D202DC0BCE@apple.com>
References: <51DC8343.4020104@gmail.com>
	<8CA7D32C-A551-482E-9F26-9C1909D74736@apple.com>
	<843B55ED-9D7F-4ECD-B50B-272848E9649B@apple.com>
	<51DD7DB2.4070808@gmail.com>
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


--Boundary_(ID_g+KgwPGbLUKhIMNIXqjDCg)
Content-type: text/plain; CHARSET=US-ASCII
Content-transfer-encoding: 7BIT

Till,

Whoops, sorry:



--Boundary_(ID_g+KgwPGbLUKhIMNIXqjDCg)
Content-type: application/octet-stream; name=rdar14401795.patch
Content-transfer-encoding: 7bit
Content-disposition: attachment; filename=rdar14401795.patch

Index: cups/encode.c
===================================================================
--- cups/encode.c	(revision 11114)
+++ cups/encode.c	(working copy)
@@ -534,7 +534,7 @@
       else
         ops ++;
 
-    if (*ops == IPP_OP_CUPS_NONE)
+    if (*ops == IPP_OP_CUPS_NONE && op != IPP_OP_CUPS_NONE)
     {
       DEBUG_printf(("2cupsEncodeOptions2: Skipping \"%s\".", option->name));
       continue;

--Boundary_(ID_g+KgwPGbLUKhIMNIXqjDCg)
Content-type: text/plain; CHARSET=US-ASCII
Content-transfer-encoding: 7BIT



Also, I now have an official GIT mirror of live SVN up at:

    http://www.cups.org/cups.git

I will be posting information on the download page shortly...


On Jul 10, 2013, at 11:28 AM, Till Kamppeter <till.kamppeter@gmail.com> wrote:

> Thank you for the patch, but the patch you have attached is wrong. The
> attached patch is for the IPP version probl;em in client.conf (Apple bug
> #14401718, Debian bug #711848).
> 
> My problem is Apple bug #14401795.
> 
>   Till
> 
> 
> On 07/10/2013 04:44 PM, Michael Sweet wrote:
>> Till,
>> 
>> Here is the patch for 1.7 (1.7rc1 to be released soon):
>> 
>> 
>> 
>> 
>> 
>> However, when I went back to test on 1.6 TOT I was unable to reproduce there. Either I had already fixed the problem for 1.6.3 or it wasn't already broken.  The changes in 1.7 (to filter encoded attributes based on operation code) were responsible for the breakage there, but 1.6 doesn't include that code...
>> 
>> 
>> On Jul 10, 2013, at 10:17 AM, Michael Sweet <msweet@apple.com> wrote:
>> 
>>> Filed as Apple bug:
>>> 
>>>   <rdar://problem/14401795> cups.org: xxx-default options set from lpadmin are not returned by Get-Printer-Attributes
>>> 
>>> I was able to reproduce both with lpoptions and ipptool.  I'll let you know when I have a fix...
>>> 
>>> 
>>> On Jul 9, 2013, at 5:40 PM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
>>> 
>>>> Hi,
>>>> 
>>>> I have a problem with non-PPD options set in /etc/cups/printers.conf.
>>>> 
>>>> For filters and cups-browsed I have defined some options foor being
>>>> stored in /etc/cups/printers.conf which are not options of CUPS itself.
>>>> 
>>>> I set these options via
>>>> 
>>>> lpadmin -p <printer> -o <option>-default=<value>
>>>> 
>>>> getting a line
>>>> 
>>>> Option <option> <value>
>>>> 
>>>> in the entry of <printer>. What works is that these options get supplied
>>>> with every job, so I can use such options to configure filters or to get
>>>> filters into a debug mode. I am using this successfully for example with
>>>> the "usb" CUPS backend to find quirk rules for broken USB printers.
>>>> 
>>>> Now I also want to use this simply to mark print queues (setting an
>>>> option which is ignored by all filters). For example all queues created
>>>> by cups-browsed get the cups-browsed boolean option set by doing the IPP
>>>> equivalent of:
>>>> 
>>>> lpadmin -p <printer> -o cups-browsed-default
>>>> 
>>>> resulting in a line
>>>> 
>>>> Option cups-browsed true
>>>> 
>>>> in /etc/cups/printers.conf. This way I want that if cups-browsed not
>>>> closed cleanly (system crash) and so did not remove the queues it
>>>> created in the next session finds these queues and treats them
>>>> correctly, so that crashes do not lead to ghost queues.
>>>> 
>>>> Now it seems that I cannot read out this option setting (without sending
>>>> a job and checking error_log), as
>>>> 
>>>> lpoptions -p <printer>
>>>> 
>>>> does not list the option (as "cups-browsed" or "cups-browsed=true") and
>>>> 
>>>> val = cupsGetOption("cups-browsed", dest->num_options, dest->options)
>>>> 
>>>> in a C program (with dest being the record of the printer in question)
>>>> gives val = NULL as one gets when requesting the value of a non-existing
>>>> option.
>>>> 
>>>> In CUPS 1.5.x (Ubuntu Precise, 12.04 LTS) this still worked. both
>>>> cups-browsed was able to read out the "cups-browsed" marker option from
>>>> its queues via the C line shown above and
>>>> 
>>>> lpoptions -p <printer>
>>>> 
>>>> contains "cups-browsed=true" in its output.
>>>> 
>>>> I would consider this a bug in CUPS 1.6.x. Mike can you have a look? Thanks.
>>>> 
>>>> Till
>>> 
>>> _________________________________________________________
>>> Michael Sweet, Senior Printing System Engineer, PWG Chair
>>> 
>>> _______________________________________________
>>> Printing-architecture mailing list
>>> Printing-architecture@lists.linux-foundation.org
>>> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>> 
>> _________________________________________________________
>> Michael Sweet, Senior Printing System Engineer, PWG Chair
>> 
> 

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair


--Boundary_(ID_g+KgwPGbLUKhIMNIXqjDCg)--
