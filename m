From: "Hal V. Engel" <hvengel@astound.net>
Date: Sun, 26 Oct 2008 14:23:41 -0700
References: <200810132357.m9DNvMRf015955@dsl092-065-009.bos1.dsl.speakeasy.net>
	<200810261140.27047.hvengel@astound.net>
	<200810261904.m9QJ423w015373@dsl092-065-009.bos1.dsl.speakeasy.net>
In-Reply-To: <200810261904.m9QJ423w015373@dsl092-065-009.bos1.dsl.speakeasy.net>
MIME-Version: 1.0
Content-Type: text/plain;
  charset="iso-8859-15"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200810261423.42000.hvengel@astound.net>
Subject: Re: [Printing-architecture] [Gimp-print-devel] Looking ahead to 5.3
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Robert Krawitz <rlk@alum.mit.edu>
Cc: printing-architecture@lists.linux-foundation.org, gimp-print-devel@lists.sourceforge.net

On Sunday 26 October 2008 12:04:02 Robert Krawitz wrote:
>    From: "Hal V. Engel" <hvengel@astound.net>
>    Date: Sun, 26 Oct 2008 11:40:26 -0700
>
>    On Sunday 26 October 2008 09:55:06 Michael R Sweet wrote:
>    > Robert Krawitz wrote:
>    > >    Date: Sun, 26 Oct 2008 01:18:30 +0000
>    > >    From: "Alastair M. Robinson" <blackfive@fakenhamweb.co.uk>
>    > >
>    > >    Robert Krawitz wrote:
>    > >    > Why does it have to be server-side?  The print dialog could
>    > >    > implement it.
>    > >
>    > >    Well, this whole discussion started with the question of how
>    > >    gutenprint will work with the Common Printing Dialog.
>    > >
>    > > Yeah, well, I'm not assuming that the implementation (at least) of
>    > > the CPD can't be changed.  Nor am I assuming that CUPS can't be
>    > > changed (which it would need to be anyway, in order to handle
>    > > curves).  This
>    >
>    > Um, CUPS doesn't have to be changed to support curves aka LUTs - the
>    > existing 1setOf functionality handles arbitrarily long arrays of data.
>    >
>    > Whether it makes sense to pass all that data as part of the job is
>    > another matter - I personally don't believe it does since it is
>    > highly driver-specific and something the user is likely to generate
>    > once and reference multiple times.
>
>    I agree with this.
>
> I don't disagree.  I just don't think that the fact that something's
> not likely to be done all that often is a good reason to consider it
> an "administrative" task that requires administrator privilege.

I didn't read Michael's statement as saying that this would always require 
administrative privilege.  What I was agreeing with was that this was a create 
once (or at least only once in a while) and use often type of thing.  Because 
of that I think that it makes sense to avoid transmitting this data to the 
print server for every job if possible.  But I also agree with you that it 
should be possible for ordinarily users to create calibration data sets and 
use them without the need for administrative rights.  If that use case means 
that the calibration data needs to be passed to the back end with each job 
then that must be allowed but that also implies that there is a way to pass a 
file and other than the actual document to be printed I don't think this is 
allowed for files that are not installed in the /usr/cups/... directories.
  
>
>    > IOW, I don't see a user (or program) doing this:
>    >
>    >      lp -o gutenprint-cyan-curve=0,0.01,0.012,...,1.0 filename
>    >
>    > Instead, I would expect them to use:
>    >
>    >      lp -o stpUserProfile=AcmeLustreGray filename
>    >
>    > where "AcmeLustreGray" is a profile that the user created using a
>    > Gutenprint-specific profiling/admin application.  This profile would
>    > be "installed" on the system that is actually doing the printing.
>    > This would not necessarily require root privileges to do as user-
>    > specific profile directories are easy to do and CUPS does not require
>    > root access to update a printer as long as the distro/OS puts users in
>    > the system group (lpadmin or sys depending on the system).
>
>    I am a little confused (sorry).  I can't find any documentation on
>    stpUserProfile anywhere.   Could you provide an explanation?
>
> It doesn't exist, at least right now -- Mike was just using this as an
> example.

So something like this would be a new driver option that would be added to the 
GutenPrint driver that could be set to point to a calibration file that would 
be used by the driver?  Of course this implies that users can somehow setup a 
"AcmeLustreGray" calibration data set so that a driver like GutenPrint could 
use it.  Another source of confusion for me is that I though that the 
/usr/share/cups/profiles directory was for ICC profiles but I guess that could 
also contain calibration data sets.  

The other issue is how would this work in the general case?  I could see this 
being OK, but perhaps not ideal,  when the print server is located on the same 
machine as the users.  But what happens if the print server is located on the 
network or what if the printer is shared (which is the same as being on the 
network)?  How would users "install" their own ICC Profiles and calibration 
data sets?  In addition for network printers with administratively installed 
ICC profiles and calibration data sets how can these be discovered by 
ordinarily users so that these can be used?  For calibration data this is a 
smaller issue since users do not need to have direct access to the calibration 
data since these could be encapsulated and hidden in presets that were created 
by the administrator that would show up in the CPD.  But users do need to be 
able to discover and get copies of ICC profiles to be able to do soft proofing 
and this would not be possible on a networked printer at least not without 
some new features in the print system.   

For the new PDF printing work flow the ICC Profile issues could become moot if 
things are properly designed.  The PDF format allows for there to be an 
embedded output profile as well as profiles for individual objects in the 
document and the PDF specification calls for PDF rasterization software to use 
that output profile if it finds one in the file.  In other words the PDF 
document file could be used to transmit the output profile information to the 
print server and then the requirement that output profiles be located in a 
certain location goes away.  Of course this functionality would have to be 
implemented in the CPD and the rest of the printing work flow since it is 
currently unsupported.  

Hal
