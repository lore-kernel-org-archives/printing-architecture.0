Message-ID: <2F7D63A21DB2C74EB8EB8C09AF667DB0130D1C88@eitc220.eitc.epson.com>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Date: Thu, 8 Nov 2007 10:57:31 -0800 
MIME-Version: 1.0
Content-Type: text/plain
Subject: [Printing-architecture] RE: where is the info on driver directories
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>, "Petrie, Glen" <glen.petrie@eitc.epson.com>
Cc: printing-architecture@lists.freestandards.org, printing-summit@lists.linux-foundation.org

Thanks for the info Till, but can we narrow things down?

[ I know I was not involved in the original discussion but...]

Ok, the PPD's primary location is: /usr/share/ppd/supplier/
Ok, the driver's primary location is: /usr/lib/supplier
   [ I would have used /usr/lib/pd/supplier; but that's me]
   [ or better yet /usr/lib/driver/supplier; but that's me]

for the printer-driver/printer compatibility application; I would like to
suggest...

/usr/lib/pdpca/supplier

{ pdpca stands for "printer-driver/printer compatibility application" }

Do you have a better suggestion for the path?


A side comment

Why wasn't /usr/pd/ or /usr/print/ or /usr/printing/ or /usr/printdriver/
not considered as an easier directory path name for people to understand for
the location of printing stuff? [ but that just my opinion ]

glen

> -----Original Message-----
> From: Till Kamppeter [mailto:till.kamppeter@gmail.com]
> Sent: Tuesday, October 30, 2007 6:07 PM
> To: Petrie, Glen
> Subject: Re: where is the info on driver directories
> 
> Petrie, Glen wrote:
> > Can you give me the url for the info on where to store drivers?  Thanks
> > ahead of time.
> >
> 
> PPDs go into one of
> 
> /usr/share/ppd/supplier/
> /opt/share/ppd/supplier/
> /usr/local/share/ppd/supplier/
> 
> CUPS from version 1.3.x on searches these directories for PPDs.
> 
> Driver executables, auxiliary files and so on go all into
> 
> /usr/lib/supplier
> /opt/supplier
> /usr/local/lib/supplier
> 
> The internal structure of these can be freely arranged by the suppliers.
> 
> Absolute paths in the PPDs of the packages make the driver files being
> found. The maintainer scripts of the packages can set symlinks into
> system directories to make other items found, like CUPS backends (see
> LSB DDK).
> 
> It is recommeded to use the LSB DDK for making conforming packages:
> 
> https://www.linux-
> foundation.org/en/OpenPrinting/WritingAndPackagingPrinterDrivers
> 
>     Till
