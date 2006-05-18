Return-Path: <till.kamppeter@gmx.net>
Message-ID: <446CF46A.8040607@gmx.net>
Date: Fri, 19 May 2006 00:25:46 +0200
From: Till Kamppeter <till.kamppeter@gmx.net>
MIME-Version: 1.0
Subject: Re: [Desktop_printing] Re: [Printing-architecture] Re: Building PAPI
	implementation
References: <446B24E3.2080702@gmx.net>
	<446B3404.9060809@Sun.COM>	<446B8F9E.5070306@gmx.net>
	<446C42EB.4020709@gmx.net>	<446C92C3.8010008@gmx.net>
	<446CC4D4.10908@Sun.COM> <446CE626.3030901@gmx.net>
In-Reply-To: <446CE626.3030901@gmx.net>
Content-Type: text/plain; charset=ISO-8859-1
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
To: Norm Jacobs <Norm.Jacobs@Sun.COM>
Cc: printing-architecture <printing-architecture@freestandards.org>, "desktop_printing@osdl.org" <desktop_printing@osdl.org>

I tried the trick with the links. I did

-------------------------------------------------------------------------
[root@majax c]# mv /usr/lib/libpapi.so.0.0.0 /usr/lib/libpapi.so.0.0.0.orig
[root@majax c]# ln -s /usr/lib/psm-ipp.so /usr/lib/libpapi.so.0.0.0
-------------------------------------------------------------------------

And then I got a lot of output with "printer-query", all CUPS-specific
options and settings, but still one important thing missing: The options
in the PPD file. So I cannot build a complete printing dialog with the
info which I can poll with PAPI and this is very important for the
standard to be adopted.

Another thing is taht if I have queues which are broadcasted from remote
machines to my local CUPS daemon, "printer-query" cannot poll info about
them at all. It tells that these queues do not exist.

Printing with the PAPI "lpr" command works, but "print-test" complains
with the following error:

-------------------------------------------------------------------------
[root@majax c]# print-test -d LJ4050
print-test: relocation error: print-test: symbol papiJobCreate, version
SUNWprivate_1.0 not defined in file libpapi.so.0 with link time reference
[root@majax c]#
-------------------------------------------------------------------------

   Till

Till Kamppeter wrote:
> Thank you for this valuable info, so I will rearrange my RPM to choose
> the PAPI library with update-alternatives. Once manually configured (or
> automatically by scriptlets in RPMs, or by setup programs) to the
> actually installed spooler would serve well, no one is switching between
> spoolers between every print job. Usually on one box one spooler is used.
> 
> And another thing: foomatic-configure auto-detects the locally installed
> spooler with a few lines, by checking presence of spooler-specific files.
> 
> See more comments below.
> 
>    Till

