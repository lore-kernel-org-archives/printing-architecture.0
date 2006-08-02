Return-Path: <imcdonald@sharplabs.com>
Message-ID: <789E617C880666438EDEE30C2A3E8D10EEA3@mailsrvnt05.enet.sharplabs.com>
From: "McDonald, Ira" <imcdonald@sharplabs.com>
Date: Wed, 2 Aug 2006 09:18:45 -0700 
MIME-Version: 1.0
Content-Type: text/plain;
	charset="ISO-8859-1"
Subject: Re: [Printing-architecture] Proposed filesystem layout for print
	ppd and driver files
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: 'Till Kamppeter' <till.kamppeter@gmail.com>, Christopher Yeoh <cyeoh@samba.org>
Cc: rusty@samba.org, mats.d.wichmann@intel.com, wendyp@jurassic.eng.sun.com, printing-architecture <printing-architecture@freestandards.org>, Wendy Phillips <wendy.phillips@sun.com>

Hi Till,

I mostly agree with this set of directory paths - thanks for
writing up the summary.

I think that full FHS compliance is important - partly because
it's a requirement for inclusion in LSB - and partly because
I dislike "reinventing the wheel".

Except that I do NOT agree that the symlinks should be
mandatory - if a print software vendor wants to store
directly and ONLY in '/opt/share/ppd/<supplier>/<mfg>',
that is sufficient and _preferable_ to the creation of
more '/opt/<supplier>' directories for a useless level
of indirection.

Cheers,
- Ira

Ira McDonald (Musician / Software Architect)
Blue Roof Music / High North Inc
PO Box 221  Grand Marais, MI  49839
phone: +1-906-494-2434
email: imcdonald@sharplabs.com

> -----Original Message-----
> From: printing-architecture-bounces@lists.freestandards.org
> [mailto:printing-architecture-bounces@lists.freestandards.org]
> On Behalf
> Of Till Kamppeter
> Sent: Wednesday, August 02, 2006 12:05 PM
> To: Christopher Yeoh
> Cc: rusty@samba.org; mats.d.wichmann@intel.com;
> wendyp@jurassic.eng.sun.com; printing-architecture; Wendy Phillips
> Subject: Re: [Printing-architecture] Proposed filesystem layout for
> print ppd and driver files
> 
> 
> I would like to agree on a directory layout for printing this 
> week. What
> do you think about Chris' suggestions
> 
> Distro-supplied:
>   /usr/share/ppd/<supplier>/<manufacturer>/
>   /usr/lib/printdriver/<supplier>/
> 
> Vendor-supplied:
>   /opt/share/ppd/<supplier>/<manufacturer>/ be a symlink to
>     /opt/<vendor>/<undefined_place_in_hierarchy>
>   /opt/lib/printdriver/<supplier>/ be a symlink
>     /opt/<vendor>/<undefined_place_in_hierarchy>
> 
> Local admin:
>   /usr/local/share/ppd/<supplier>/<manufacturer>/
>   /usr/local/lib/printdriver/<supplier>/
> 
> to be completely FHS compliant?
> 
> Is it really not possible to get the stuff in /opt somewhat 
> simpler and
> stay FHS compliant?
> 
> All the rest (file names, scripts, ...) should stay as we 
> already agreed on.
> 
>    Till
> 
> 
> Christopher Yeoh wrote:
> > Hi Wendy,
> > 
> > (Added Rusty to the CC list since he is also an FHS editor)
> > 
> > At 2006/7/26 17:43-0700  Wendy Phillips writes:
> > 
> >>As a result of the past weeks discussion and the fsg architecture 
> >>meeting today, the following proposal is on the table. It defines 
> >>directories for ppd files and print drivers; placement of 
> files is based 
> >>on category of provider: distribution, third party vendor, 
> and system 
> >>administrator.
> > 
> > 
> >>From an FHS point of view I think the proposal is inconsistent.
> > Currently there is symmetry between /usr, /usr/local and /opt.
> > 
> > Eg if something would normally go in /usr/lib if shipped as part of
> > the distribution, then it would go into /usr/local/lib if compiled
> > locally or /opt/lib (via a symlink) if through a 3rd party package.
> > 
> > We'd need a pretty good reason to break that convention.
> > 
> > Also, I'd reiterate that I don't believe a print subdirectory is
> > needed for the /usr/local and /opt hierarchies.
> > 
> > 
> >>1. Distro supplied files
> >>
> >>         The filesystem layout as utilized by the 
> distibutions when the
> >>         ppd files and print drivers are initially 
> installed on the 		 
> >>system. It is presumed that this will also be used for 
> patches 			and 
> >>updates created and delivered by the distro.
> >>
> >>         a. Installation path for ppd files
> >>                 /usr/share/ppd/<supplier>/<manufacturer>/
> >>
> >>         b. Installation path for print drivers
> >>                 /usr/lib/printdriver/<supplier>
> >>
> > 
> > This looks fine.
> > 
> > 
> >>2. Third Party Vendor supplied files
> >>
> >>         The filesystem layout to be utilized by third party vendors
> >>         for delivery of ppd files, print drivers and other vendor
> >>         supplied files.
> >>
> >>         a. Installation path for PPD files
> >>                 /opt/print/ppd/<supplier>/<manufacturer>
> >>
> >>         b. Installation path for print drivers
> >>                 /opt/print/driver/<supplier>
> >>
> > 
> > I'd suggest instead
> > 
> > /opt/share/ppd/<supplier>/<manufacturer>/<ppd_file> be a 
> symlink to /opt/<vendor>/<undefined_place_in_hierarchy>
> > 
> > and 
> > 
> > /opt/lib/printdriver/<supplier>/<print_driver_filename> be 
> a symlink to /opt/vendor/<undefined_place_in_hierarchy>
> > 
> > 
> > Currently *nothing* installs directly under /opt, outside of
> > /opt/<vendor> (except for symlinks) and we'd need a good reason to
> > change that.
> > 
> > 
> >>3. Files created, downloaded, or modified by a system administrator.
> >>
> >>         a. Installation path for PPD files
> >>                 /usr/local/print/ppd/<supplier>/<manufacturer>
> >>
> >>         b. Installation path for print drivers
> >>                 /usr/local/print/driver/<supplier>
> >>
> > 
> > and here:
> > 
> > /usr/local/share/ppd/<supplier>/manufacturer/
> > 
> > and
> > 
> > /usr/local/lib/printdriver/<supplier>
> > 
> >>4. Common features
> >>         These features apply to each of the three supplier 
> categories,
> >>         distro, third party vendor, and administrator.
> >>
> >>         a. PPD file naming convention
> >>                 <MFGString>-<MDLString>-<driver>-<language>.ppd
> > 
> > 
> > are the mfgstring and mdl strings always going to be unique between
> > suppliers and manufacturers? If so the supplier and manufacturer
> > subdirectories can be dropped for the ppd files - which would simply
> > things somewhat for applications.
> > 
> > 
> >>         b. The contents of the driver directories are entirely
> >>         determined by the supplier.  The path to a driver is found
> >>         by using an absolute path in the ppd file.
> > 
> > 
> > If the path to the driver directory is always determined by the
> > contents of the ppd file, and applications should never be 
> capable of
> > finding them through other means, then for /opt we don't need to
> > specify a path for where they are installed. They can simply live
> > somewhere under /opt/<vendor> (exactly where up to the vendor's
> > discretion)
> > 
> > 
> >>         c. Install scripts must be  written in Bourne Shell without
> >>         any extensions.
> > 
> > 
> > I would suggest restricting to the commands and utilities 
> to usage as
> > specified in the LSB specification (the LSB requires a 
> POSIX shell, so
> > maybe do not allow bash extensions).
> > 
> > 
> >>5. Precedence Rules
> >>         Highest precedence is given to the system 
> administrator which
> >>         allows for system by system modfications as determined by
> >>         support personel.
> >>
> >>         PPD files
> >>         Admin :                 /usr/local/print/ppd    Highest
> >>         Third Party Vendor :    /opt/print/ppd
> >>         Distro :                /usr/share/ppd          Lowest
> >>
> >>         Drivers
> >>         Admin :                 /usr/local/print/driver Highest
> >>         Third Party Vendor :    /opt/print/driver
> >>         Distro :                /usr/lib/printdriver    Lowest
> > 
> > 
> > Precendence rules look good. Though if drivers are always discovered
> > through ppd files do you need to specify precedence rules 
> for them? Or
> > if only a driver and not a ppd file is installed under /usr/local do
> > you expect the application to find it even though the ppd file
> > specifies one in /usr/lib/printdriver ?
> > 
> > btw are there distribution representatives on the
> > printing-architecture mailing list? Because we really do need
> > agreement from them on whatever gets settled upon.
> > 
> > (am on planes for the next couple of days so may be slow in 
> replying)
> > 
> > Regards,
> > 
> > Chris
> 
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.freestandards.org
> http://lists.freestandards.org/mailman/listinfo/printing-architecture
> 

-- 
No virus found in this outgoing message.
Checked by AVG Free Edition.
Version: 7.1.394 / Virus Database: 268.10.5/405 - Release Date: 8/1/2006
 

