Message-ID: <2F7D63A21DB2C74EB8EB8C09AF667DB0130D1C9C@eitc220.eitc.epson.com>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Date: Thu, 8 Nov 2007 14:42:03 -0800 
MIME-Version: 1.0
Content-Type: text/plain
Subject: [Printing-architecture] RE: [Printing-summit] RE: where is the info
	on driver directories
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.freestandards.org, printing-summit@lists.linux-foundation.org

So, does this mean that a better directory path (according to the LSB) would
be


/usr/lib/supplier/pdpca

[ I don't like this but would do so if LSB has to have this.  The reason is
that for a help desk person or a user they have to know who wrote the driver
(the "developer" and not the "manufacture") before they can find a pdpca.
But maybe they will know or the help desk person will be able to figure it
out. Someone has to the name of developer of the driver under test -- I
guess that has to be known in any case.  But if the top directory is pdpca
instead of supplier then the person trying to do the test would at least
know that these were the possible pdpca suppliers. ]

[ Remember in the Linux world the word "supplier" DOES NOT MEAN
"manufacture" and the LSB should start using a different qualifier; such as,
"developer" instead of the word "supplier".   If the LSB wants "supplier" to
mean "manufacture" then there would have to be a sub-directories specified
under the "supplier" directory that denotes the "developer".  This would
mean that Guten would have directories under Epson, HP, Canon, etc instead
of just Guten (under a /usr/print/ top level directory).   I am sure that
manufactures would not care if they put their scan drivers in one top-level
directory and printer drivers in another. ]

[ I think that directories by function (print, scan, etc) make more sense
(to users, developer, maintainer, help desk, (is that most people)) than
directories by supplier (Epson, HP, Guten, etc). How many mere mortals have
tried to find (and spend some time) where an application is located
(/usr/bin, /usr/lib, /usr/local, etc.).  Directories like /usr/print,
/usr/network, /usr/mouse, /usr/scan, /usr/display, /usr/io are easier for
me.  For applications that are not system related (word-processor, etc)
would go into /usr/apps. ......]

Would anyone have a problem with having both directories with a link between
them???

glen

> -----Original Message-----
> From: Ira McDonald [mailto:blueroofmusic@gmail.com]
> Sent: Thursday, November 08, 2007 1:58 PM
> To: Petrie, Glen; Ira McDonald
> Cc: Till Kamppeter; printing-architecture@lists.freestandards.org;
> printing-summit@lists.linux-foundation.org
> Subject: Re: [Printing-summit] RE: where is the info on driver directories
> 
> Hi Glen,
> 
> Yes, there was a reason we didn't infix 'pd' or 'driver'.  The FHS people
> and LSB people told us there was an *existing* convention of
> /usr/lib/supplier for drivers for all types of devices...ah, ha...
> 
> So they pushed back on an infix unique to printer drivers.
> 
> Cheers,
> - Ira
> 
> On Nov 8, 2007 1:57 PM, Petrie, Glen <glen.petrie@eitc.epson.com> wrote:
> > Thanks for the info Till, but can we narrow things down?
> >
> > [ I know I was not involved in the original discussion but...]
> >
> > Ok, the PPD's primary location is: /usr/share/ppd/supplier/
> > Ok, the driver's primary location is: /usr/lib/supplier
> >    [ I would have used /usr/lib/pd/supplier; but that's me]
> >    [ or better yet /usr/lib/driver/supplier; but that's me]
> >
> > for the printer-driver/printer compatibility application; I would like
> to
> > suggest...
> >
> > /usr/lib/pdpca/supplier
> >
> > { pdpca stands for "printer-driver/printer compatibility application" }
> >
> > Do you have a better suggestion for the path?
> >
> >
> > A side comment
> >
> > Why wasn't /usr/pd/ or /usr/print/ or /usr/printing/ or
> /usr/printdriver/
> > not considered as an easier directory path name for people to understand
> for
> > the location of printing stuff? [ but that just my opinion ]
> >
> > glen
> >
> > > -----Original Message-----
> > > From: Till Kamppeter [mailto:till.kamppeter@gmail.com]
> > > Sent: Tuesday, October 30, 2007 6:07 PM
> > > To: Petrie, Glen
> > > Subject: Re: where is the info on driver directories
> > >
> > > Petrie, Glen wrote:
> > > > Can you give me the url for the info on where to store drivers?
> Thanks
> > > > ahead of time.
> > > >
> > >
> > > PPDs go into one of
> > >
> > > /usr/share/ppd/supplier/
> > > /opt/share/ppd/supplier/
> > > /usr/local/share/ppd/supplier/
> > >
> > > CUPS from version 1.3.x on searches these directories for PPDs.
> > >
> > > Driver executables, auxiliary files and so on go all into
> > >
> > > /usr/lib/supplier
> > > /opt/supplier
> > > /usr/local/lib/supplier
> > >
> > > The internal structure of these can be freely arranged by the
> suppliers.
> > >
> > > Absolute paths in the PPDs of the packages make the driver files being
> > > found. The maintainer scripts of the packages can set symlinks into
> > > system directories to make other items found, like CUPS backends (see
> > > LSB DDK).
> > >
> > > It is recommeded to use the LSB DDK for making conforming packages:
> > >
> > > https://www.linux-
> > > foundation.org/en/OpenPrinting/WritingAndPackagingPrinterDrivers
> > >
> > >     Till
> > _______________________________________________
> > Printing-summit mailing list
> > Printing-summit@lists.linux-foundation.org
> > https://lists.linux-foundation.org/mailman/listinfo/printing-summit
> >
> 
> 
> 
> --
> Ira McDonald (Musician / Software Architect)
> Chair - Linux Foundation Open Printing WG
> Blue Roof Music / High North Inc
> PO Box 221  Grand Marais, MI  49839
> work: +1-906-494-2434
> home: +1-906-494-2697
> email: blueroofmusic@gmail.com
