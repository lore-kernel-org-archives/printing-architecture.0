Message-ID: <484683B0.2060708@gmail.com>
Date: Wed, 04 Jun 2008 13:59:44 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <484541C0.3060501@gmail.com>	<20080604.105602.104056266.sho@bbr.jp>	<48465B3D.4080809@gmail.com>
	<20080604.181746.02274177.sho@bbr.jp>
In-Reply-To: <20080604.181746.02274177.sho@bbr.jp>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] PDF CUPS filter packages
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Koji Otani <sho@bbr.jp>
Cc: toratani.yasumasa@canon.co.jp, printing-architecture@lists.linux-foundation.org

Thank you, now the package rebuilds correctly for me. Next step to fix 
now for you is to eliminate the necessity of full copies of the Poppler 
and CUPS source code in the package.

Another issue are the cost factors in the .convs files. They must 
prioritize the PDF workflow. Note here that lower cost factors give 
higher priority.

I suggest the following:

pdftopdf:
application/pdf         application/vnd.cups-pdf        33   pdftopdf

pdftoraster:
application/vnd.cups-pdf application/vnd.cups-raster    66   pdftoraster

imagetopdf:
image/gif               application/vnd.cups-pdf        50   imagetopdf
...
image/x-sun-raster      application/vnd.cups-pdf        50   imagetopdf

(all lines 50 as cost factor)

We will also need a pstopdf filter to handle PostScript input. This 
filter can be a simple script which can be easily derived from the 
pstoraster filter. It will need the following conversion rule:

pstopdf:
application/postscript   application/pdf                   0 pstopdf

We also need to add the following rule to make native PostScript 
printers working with the PDF workflow (the filter comes already with CUPS):

pdftops:
application/vnd.cups-pdf application/vnd.cups-postscript   0 pdftops


Also a problem are the PPD files shipped with the package. They need 
certain OpenPrinting Vector driver modules which do not ship with the 
package. The PPD files need to be moved into the packages which ship the 
driver modules, as otherwise a printer setup tool will list the 
appropriate printers but printing on them will not work. In addition, 
PPD files should not be put directly into /usr/share/ppd, but into 
/usr/share/ppd/<supplier>/<manufacturer>.


I have also run lintian and linda, reporting the following smaller 
issues with the package:

------------------------------------------------------------------------
till@till-laptop:~/ubuntu/opfc-pdf-filters/opfc-pdf-filters-0.4.1$ linda 
../opfc-pdf-filters_0.4.1-1ubuntu804_amd64.deb
W: opfc-pdf-filters; File 
/usr/share/doc/opfc-pdf-filters/imagetopdf/LICENSE.txt.gz is considered 
to be an extra license file.
W: opfc-pdf-filters; Binary /usr/lib/cups/filter/pdftoopvp compiled with 
an RPATH of /usr/lib.
till@till-laptop:~/ubuntu/opfc-pdf-filters/opfc-pdf-filters-0.4.1$ 
lintian ../opfc-pdf-filters_0.4.1-1ubuntu804_amd64.deb
W: opfc-pdf-filters: extra-license-file 
usr/share/doc/opfc-pdf-filters/imagetopdf/LICENSE.txt.gz
W: opfc-pdf-filters: copyright-without-copyright-notice
till@till-laptop:~/ubuntu/opfc-pdf-filters/opfc-pdf-filters-0.4.1$
------------------------------------------------------------------------

    Till



Koji Otani wrote:
> From: Till Kamppeter <till.kamppeter@gmail.com>
> Subject: Re: [Printing-architecture] PDF CUPS filter packages
> Date: Wed, 04 Jun 2008 11:07:09 +0200
> Message-ID: <48465B3D.4080809@gmail.com>
> 
> till.kamppeter> Koji Otani wrote:
> till.kamppeter> > Hi Till,
> till.kamppeter> > 
> till.kamppeter> > I'm Koji Otani.
> till.kamppeter> > 
> till.kamppeter> > Thank you for trying PDF filters.
> till.kamppeter> > 
> till.kamppeter> > I'm wondering that error with dpkg-buildpackage is caused by using
> till.kamppeter> > the compiler for 64bits. I'll see and fix it.
> till.kamppeter> > 
> till.kamppeter> > Errors with manually compiling are caused by wrong specified
> till.kamppeter> >   --with-poppler-source option. That's option's value should be
> till.kamppeter> >   specified with full path. (See INSTALL please)
> till.kamppeter> >
> till.kamppeter> 
> till.kamppeter> I have used the full path now and the problem still occurs. See below.
> till.kamppeter> 
> till.kamppeter>     Till
> till.kamppeter> 
> 
> Sorry, these problem was caused by newer GCC (>= 4.2).
> I've fixed these and uploaded new packages for Ubuntu 8.04 and Fedora 9.
> Please try these.
> 
> ------------
> Koji Otani.
> 

