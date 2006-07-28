Return-Path: <imcdonald@sharplabs.com>
Message-ID: <789E617C880666438EDEE30C2A3E8D10EE90@mailsrvnt05.enet.sharplabs.com>
From: "McDonald, Ira" <imcdonald@sharplabs.com>
Date: Fri, 28 Jul 2006 13:17:37 -0700
MIME-Version: 1.0
Content-Type: text/plain;
	charset="ISO-8859-1"
Subject: Re: [Printing-architecture] Submitting a standard candidate to the
	FSG OP Steering Commit	tee
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: 'Till Kamppeter' <till.kamppeter@gmail.com>, Norm Jacobs <Norm.Jacobs@Sun.COM>, "McDonald, Ira" <imcdonald@sharplabs.com>, printing-architecture <printing-architecture@freestandards.org>

Hi Till,

After we reach concensus on the directory hierarchy and
filename standard, I have volunteered as editor to wrap
it in FSG document boilerplate/format (like JTAPI spec),
including a Rationale section that justifies our design
choices.  

I'll produce this spec in HTML format, because I don't
know how to run MS Word or Open Office or whatever.  You
could help by converting that HTML format to '.doc' and/or
'.odt' and generating the '.pdf'.

Then, as champion, you fill out the forms (see below)
and submit them to the Steering Committee, who start
an open last call to all of FSG Open Printing and any
other interested parties.

The complete FSG/OP release procedure (including forms)
is in the directory:

ftp://ftp.pwg.org/pub/pwg/fsg/steering_committee/Release-Procedure

in the files:

  FSG-OpenPrinting-Release-Procedure--V0100-2004-0930.doc
  FSG-OpenPrinting-Release-Procedure--V0100-2004-0930.pdf

The final version of the form for JTAPI is in directory:

ftp://ftp.pwg.org/pub/pwg/fsg/jobticket/Release_Request

in the files:

  JTAPI-Release-Request-V0102-2005-0715.doc
  JTAPI-Release-Request-V0102-2005-0715.pdf

Chris Yeoh and others still seem to want more changes,
so I'm not sure we're that close to concensus yet.

Cheers,
- Ira


Ira McDonald (Musician / Software Architect)
Blue Roof Music / High North Inc
PO Box 221  Grand Marais, MI  49839
phone: +1-906-494-2434
email: imcdonald@sharplabs.com

> -----Original Message-----
> From: Till Kamppeter [mailto:till.kamppeter@gmail.com]
> Sent: Thursday, July 27, 2006 5:58 AM
> To: McDonald, Ira; Norm Jacobs
> Subject: Submitting a standard candidate to the FSG OP Steering
> Committee
>
> 
> Hi,
> 
> the printing directory structure standard is nearly finished 
> (see cited
> posting below). If up to the middle of next week no one of the FHS
> people objects, I will have to submit this standard to be approved by
> the FSG OpenPrinting Steering Committee as I am assigned to be the
> champion of this standard candidate.
> 
> What do I have to do exactly. Which forms do a have to fill 
> and what do
> I have to report? Where do I have to post them?
> 
>    Till
> 
> 
> Wendy Phillips wrote:
> > As a result of the past weeks discussion and the fsg architecture 
> > meeting today, the following proposal is on the table. It defines 
> > directories for ppd files and print drivers; placement of 
> files is based 
> > on category of provider: distribution, third party vendor, 
> and system 
> > administrator.
> > 
> > I have added Chris and Mats as you have been contributing to the 
> > discussion. If you want to add yourself to the fsg 
> architecture alias, 
> > it's not high volumne and it would be good to have you.
> > 
> > Regards.
> > 
> > -Wendy
> > 
> > 
> > 1. Distro supplied files
> > 
> >          The filesystem layout as utilized by the 
> distibutions when the
> >          ppd files and print drivers are initially 
> installed on the 		 
> > system. It is presumed that this will also be used for 
> patches 			and 
> > updates created and delivered by the distro.
> > 
> >          a. Installation path for ppd files
> >                  /usr/share/ppd/<supplier>/<manufacturer>/
> > 
> >          b. Installation path for print drivers
> >                  /usr/lib/printdriver/<supplier>
> > 
> > 2. Third Party Vendor supplied files
> > 
> >          The filesystem layout to be utilized by third party vendors
> >          for delivery of ppd files, print drivers and other vendor
> >          supplied files.
> > 
> >          a. Installation path for PPD files
> >                  /opt/print/ppd/<supplier>/<manufacturer>
> > 
> >          b. Installation path for print drivers
> >                  /opt/print/driver/<supplier>
> > 
> > 3. Files created, downloaded, or modified by a system administrator.
> > 
> >          a. Installation path for PPD files
> >                  /usr/local/print/ppd/<supplier>/<manufacturer>
> > 
> >          b. Installation path for print drivers
> >                  /usr/local/print/driver/<supplier>
> > 
> > 4. Common features
> >          These features apply to each of the three supplier 
> categories,
> >          distro, third party vendor, and administrator.
> > 
> >          a. PPD file naming convention
> >                  <MFGString>-<MDLString>-<driver>-<language>.ppd
> > 
> >          b. The contents of the driver directories are entirely
> >          determined by the supplier.  The path to a driver is found
> >          by using an absolute path in the ppd file.
> > 
> >          c. Install scripts must be  written in Bourne Shell without
> >          any extensions.
> > 
> > 5. Precedence Rules
> >          Highest precedence is given to the system 
> administrator which
> >          allows for system by system modfications as determined by
> >          support personel.
> > 
> >          PPD files
> >          Admin :                 /usr/local/print/ppd    Highest
> >          Third Party Vendor :    /opt/print/ppd
> >          Distro :                /usr/share/ppd          Lowest
> > 
> >          Drivers
> >          Admin :                 /usr/local/print/driver Highest
> >          Third Party Vendor :    /opt/print/driver
> >          Distro :                /usr/lib/printdriver    Lowest
> > 
> > _______________________________________________
> > Printing-architecture mailing list
> > Printing-architecture@lists.freestandards.org
> > 
> http://lists.freestandards.org/mailman/listinfo/printing-architecture
> > 
> 

-- 
No virus found in this outgoing message.
Checked by AVG Free Edition.
Version: 7.1.394 / Virus Database: 268.10.5/403 - Release Date: 7/28/2006
 

