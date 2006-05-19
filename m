Return-Path: <Norm.Jacobs@Sun.COM>
Message-ID: <446DB66F.4060100@Sun.COM>
Date: Fri, 19 May 2006 07:13:35 -0500
From: Norm Jacobs <Norm.Jacobs@Sun.COM>
MIME-Version: 1.0
Subject: Re: [Desktop_printing] Re: [Printing-architecture] Re: Building PAPI
	implementation
References: <446B24E3.2080702@gmx.net> <446B3404.9060809@Sun.COM>
	<446B8F9E.5070306@gmx.net> <446C42EB.4020709@gmx.net>
	<446C92C3.8010008@gmx.net> <446CC4D4.10908@Sun.COM>
	<446CE626.3030901@gmx.net> <446CF46A.8040607@gmx.net>
	<446D3D1A.1040003@Sun.COM> <446D9201.8010803@gmx.net>
In-Reply-To: <446D9201.8010803@gmx.net>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmx.net>
Cc: mike@easysw.com, Wendy Phillips <wendyp@dalea.sfbay.sun.com>, printing-architecture <printing-architecture@freestandards.org>, "desktop_printing@osdl.org" <desktop_printing@osdl.org>

Till Kamppeter wrote:
> Norm Jacobs wrote:
>   
>> Till Kamppeter wrote:
>>
>>     
>>> I tried the trick with the links. I did
>>>
>>> -------------------------------------------------------------------------
>>> [root@majax c]# mv /usr/lib/libpapi.so.0.0.0
>>> /usr/lib/libpapi.so.0.0.0.orig
>>> [root@majax c]# ln -s /usr/lib/psm-ipp.so /usr/lib/libpapi.so.0.0.0
>>> -------------------------------------------------------------------------
>>>
>>> And then I got a lot of output with "printer-query", all CUPS-specific
>>> options and settings, but still one important thing missing: The options
>>> in the PPD file. So I cannot build a complete printing dialog with the
>>> info which I can poll with PAPI and this is very important for the
>>> standard to be adopted.
>>>   
>>>       
>> The PPD file data via a capabilities interface is something that Wendy
>> is working on.  I don't know that there is an ETA yet.
>>     
>
> What is an ETA?
>
>   
estimated time of arrival
>>> Another thing is taht if I have queues which are broadcasted from remote
>>> machines to my local CUPS daemon, "printer-query" cannot poll info about
>>> them at all. It tells that these queues do not exist.
>>>   
>>>       
>> The PAPI implementation in psm-ipp.so will contact the IPP server
>> that is either the "default" compiled in service, specified via environment
>> variable (IPP_SERVER, CUPS_SERVER) or via the destination name. Eg.
>>
>>    papiPrinterQuery(svc, "ipp://server/printers/queue", ...);
>>
>>    $ lpstat -p ipp://server/printers/queue -l 2
>>
>> Part of the attraction of the libpapi-dynamic implementation is that it
>> will
>> enumerate print queues from a configuration db/name service and resolve
>> names to uri's on a variety of print services across multiple hosts.  To
>> solve
>> the update problem with CUPS browse protocol, I prototyped a CUPS browse
>> listener that can be run to keep /etc/printers.conf up to date.  The right
>> way to do this on systems with CUPS running would be to have CUPS make
>> the configuration updates via the "PrintcapFormat" directive.  I can supply
>> diffs for this as well.  I run both Solaris LP and CUPS on my laptop
>> side by side
>> with a mod for this.
>>
>>     
>
> A standard CUPS frontend like kprinter shows all printers available via
> the local or selected CUPS server, including the ones which the server
> gets via broadcast. It also shows all capabilities of the broadcasted
> printers as they were local. And for that no external name service or
> file like /etc/printers.conf is needed. To make it as transparent as
> possible for end users an application linked against libpapi running on
> a box with CUPS as printing system should show the same printers and
> options as an application directly linked against libcups and this
> should be achieved without any change on the CUPS configuration, the
> CUPS daemon or library code and without any extra name service or browse
> listener daemon.
>
> It is a nice thing to have the libpapi-dynamic which can pull in various
> other PAPI libs and poll name services to serve on machines with
> different spoolers running in parallel, but I think there should also be
> a PAPI library which gets the full information out of CUPS. Perhaps this
> PAPI library (psm-cups.so or libpapi-cups.so) is perhaps more easily
> done by linking it against libcups to avoid redoing of code.
>
>   
I agree, the IPP module should be able to ask the CUPS/IPP server
for all of the printers it knows about and then use them. 
papiPrintersList() uses CUPS extensions to IPP (CUPS_GET_PRINTERS
and CUPS_GET_CLASSES) to get a list of queues that the print
service knows about.

       -Norm

