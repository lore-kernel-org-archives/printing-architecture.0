Return-Path: <mike@easysw.com>
Message-ID: <446919E7.3070905@easysw.com>
Date: Mon, 15 May 2006 20:16:39 -0400
From: Michael Sweet <mike@easysw.com>
MIME-Version: 1.0
References: <44664EAA.2030508@gmx.net>
	<4467B9FD.6030005@gmx.net>	<20060515183801.A638.TORATANI.YASUMASA@canon.co.jp>	<4468CAFA.9030408@gmx.net>
	<4468E039.5000304@gmx.net> <4468E873.7050902@easysw.com>
	<4468ECB9.5060507@gmx.net>
In-Reply-To: <4468ECB9.5060507@gmx.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Re: [Desktop_printing] Deprecate IJS?
 GhostScript with only "opvp" as	output device?
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
Cc: TORATANI Yasumasa <toratani.yasumasa@canon.co.jp>, printing-architecture <printing-architecture@freestandards.org>, "desktop_printing@osdl.org" <desktop_printing@osdl.org>

Till Kamppeter wrote:
> Michael Sweet wrote:
>> Both Gutenprint and HPLIP have CUPS native interfaces that are better
>> suited to pure-raster printing.
>>
> 
> I do not want to deprecate CUPS raster (CUPS raster is probably the
> second reason to deprecate IJS), it is probably the better choice in
> terms of color management and clean job canceling than OpenPrinting vector.
> 
> When will HP's rastertohplip be published?

You need to ask HP about that.  I do owe them a .drv file against
the latest release...

>>> And with the OpenPrinting vector interface one would even be able to
>>> modularize out all the GhostScript output devices and leave GhostScript
>>> with "opvp" as the only output device. So also the problem of the X11
>>> output drivers in the GhostScript implementation of distributions and
>>> using GhostScript on X-less servers would get nicely solved.
>>>
>>> WDYT?
>>
>> We still need to ensure that the new interface is compatible on all
>> of the current operating systems; for us that means: AIX, HP-UX, IRIX,
>> Linux, MacOS X, Solaris, and *BSD.
>>
> 
> If an OS does not provide any possibility for dynamic linking like libdl
> under Linux, we must fall back to a separate process, where the driver
> library is statically linked to the server executable.
> 
>> Also, the X11 problem is already solved by the dynamic module support,
>> right?
>>
> 
> Yes, but this solution seems not to be overtaken by upstream (AFPL/GPL)
> GhostScript.
> 
>   Till


-- 
______________________________________________________________________
Michael Sweet, Easy Software Products           mike at easysw dot com
Internet Printing and Publishing Software        http://www.easysw.com
