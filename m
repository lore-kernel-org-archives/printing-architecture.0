Return-Path: <till.kamppeter@gmx.net>
Message-ID: <446CE626.3030901@gmx.net>
Date: Thu, 18 May 2006 23:24:54 +0200
From: Till Kamppeter <till.kamppeter@gmx.net>
MIME-Version: 1.0
Subject: Re: [Desktop_printing] Re: [Printing-architecture] Re: Building PAPI
	implementation
References: <446B24E3.2080702@gmx.net> <446B3404.9060809@Sun.COM>
	<446B8F9E.5070306@gmx.net> <446C42EB.4020709@gmx.net>
	<446C92C3.8010008@gmx.net> <446CC4D4.10908@Sun.COM>
In-Reply-To: <446CC4D4.10908@Sun.COM>
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

Thank you for this valuable info, so I will rearrange my RPM to choose
the PAPI library with update-alternatives. Once manually configured (or
automatically by scriptlets in RPMs, or by setup programs) to the
actually installed spooler would serve well, no one is switching between
spoolers between every print job. Usually on one box one spooler is used.

And another thing: foomatic-configure auto-detects the locally installed
spooler with a few lines, by checking presence of spooler-specific files.

See more comments below.

   Till

Norm Jacobs wrote:
> The SourceForge openprinting project PAPI implementation actually
> contains multiple implementations of the PAPI, but the one that
> you link with and interact with directly uses a "printer-uri-supported"
> value in your name service/configuration data to contact the print
> service for a particular print queue.  If there isn't a
> printer-uri-supported
> in the configuration data, it doesn't know how to contact the print service
> and will only return the name service/configuration data from a query. 
> This
> data is retrieved on Solaris using the name service switch and can be
> stored in ${HOME}/.printers, /etc/printers.conf, NIS priners.conf.byname,
> NIS+ printers.org_dir, and/or LDAP.  On other platforms, the NSS support
> is emulated and can be stored in /etc/printers.conf, /etc/printcap , and
> NIS printers.conf.byname.
> 
> If you add a
> "printer-uri-supported=ipp\://majax.mandrakesoft.com/printers/HPPSmart2600"
> to the /etc/printers.conf or /etc/printcap entry for your printer, It's
> likely
> that you will see the results that you are looking for.
> 

This would require hacking the CUPS daemon to get this automatic.

> The PAPI implementation should probably be modified to use the "rm" and
> "rp"
> information in abscense of a "printer-uri-supported" value.  This would be
> similiar to what is being done for "bsdaddr"
> (see papi/source/libpapi-dynamic/nss.c:fill_printer_uri_supported)
> 
> Additionally, the cupsd code that generates /etc/printcap and
> /etc/printers.conf
> entries (cups/scheduler/printers.c:cupsWritePrintcap()) could be
> enhanced to
> include the printer-uri-supported key/value data in it's output.
> 
> Finally, if you only plan on targeting a particular print service, you can
> probably get away with removing libpapi.so and replacing it with a symlink
> to psm-{svc}.so.
> 

For a fully automatic mode the best would be best to auto-detect the
spooler at first and then use the spoolers native way to get the printer
info.

>    -Norm
> 
> PS
> There are descriptions of the various bits in subversion under
> papi/docs/README.*.
> This is a short description of the PAPI implementations in the PAPI code
> base.
> 

The only docu I have read was the API spec (the PDF file) to understand
what info PAPI can deliver to me.

> I'll oversimplify this a little, but the PAPI implementation on SourceForge
> contains multiple implementations of the PAPI (all exporting the PAPI
> interface).
>    source/libpapi-dynamic (builds and installs as libpapi.so)
>          This implements something roughly analogous to the name service
>      switch.  It is effectively interposed between the applications
>      and the "real" PAPI print service support.  It resolves queue
>      names using a nameservice (/etc/printers.conf, /etc/printcap,
>      NIS printers.conf.byname).  On Solaris this also includes
>      $HOME/.printers, NIS+ printers.org_dir, and LDAP.  It uses the
>      "printer-uri-supported" information from these nameservices to
>      load backend PAPI print service support and contact the
>          real print service for the requested operation.  The printer
>      query operations (papiPrintersList and papiPrintersQuery) support
>      in this library is "special" (and I don't necessarily mean that in
>      a good way),  It may not contact the actual print service if the
>      name service contained the requested data.
> 
>    source/libpapi-lpd (builds and installs as psm-lpd.so and lpd-port)
>          This implements support for contacting RFC-1179 based print
> services.
>      Because of the limitted nature and wide variety of RFC-1179 support,
>          the PAPI support is very limitted.  The following printer/job
>      operations do something useful:
>                papiPrinterQuery, papiPrinterPurgeJobs, papiPrinterListJobs,
>                papiJobSubmit, papiJobSubmitByReference,
> papiJobStreamOpen/Write/Close,
>                papiJobQuery, papiJobCancel
>          Because RFC-1179 returns very little information, the query
>      functions return a very basic skeleton of information.  They
>      could be made to provide information from an associated PPD file,
>      but there are other areas where the time might be better spent.
>      lpd-port provides a means of isolating parts of rfc-1179 support
>          that require elevated privilege from that application.
> 
>    libpapi-ipp (builds and installs as psm-ipp.so)
>      This implements support for contacting IPP based print services.  IPP
>      provides a a framework and rich set of operations and attributes for
>      printing.  As a result, the PAPI support on top of IPP is complete.
>      It makes use of standard IPP operations and attributes for the vast
>      majority of the implementation with CUPS extensions being used where
>      there was no standard means.
> 

So I will try to use psm-ipp.so deirectly now by setting some symlinks
and if this works, I will use update-alternatives in the RPMs.

