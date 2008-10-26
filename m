From: "Hal V. Engel" <hvengel@astound.net>
Date: Sun, 26 Oct 2008 11:40:26 -0700
References: <200810132357.m9DNvMRf015955@dsl092-065-009.bos1.dsl.speakeasy.net>
	<200810260141.m9Q1fdci000540@dsl092-065-009.bos1.dsl.speakeasy.net>
	<4904A0EA.4030508@apple.com>
In-Reply-To: <4904A0EA.4030508@apple.com>
MIME-Version: 1.0
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200810261140.27047.hvengel@astound.net>
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
To: gimp-print-devel@lists.sourceforge.net
Cc: printing-architecture@lists.linux-foundation.org

On Sunday 26 October 2008 09:55:06 Michael R Sweet wrote:
> Robert Krawitz wrote:
> >    Date: Sun, 26 Oct 2008 01:18:30 +0000
> >    From: "Alastair M. Robinson" <blackfive@fakenhamweb.co.uk>
> >
> >    Robert Krawitz wrote:
> >    > Why does it have to be server-side?  The print dialog could
> >    > implement it.
> >
> >    Well, this whole discussion started with the question of how
> >    gutenprint will work with the Common Printing Dialog.
> >
> > Yeah, well, I'm not assuming that the implementation (at least) of the
> > CPD can't be changed.  Nor am I assuming that CUPS can't be changed
> > (which it would need to be anyway, in order to handle curves).  This
>
> Um, CUPS doesn't have to be changed to support curves aka LUTs - the
> existing 1setOf functionality handles arbitrarily long arrays of data.
>
> Whether it makes sense to pass all that data as part of the job is
> another matter - I personally don't believe it does since it is
> highly driver-specific and something the user is likely to generate
> once and reference multiple times.

I agree with this.

>
> IOW, I don't see a user (or program) doing this:
>
>      lp -o gutenprint-cyan-curve=0,0.01,0.012,...,1.0 filename
>
> Instead, I would expect them to use:
>
>      lp -o stpUserProfile=AcmeLustreGray filename
>
> where "AcmeLustreGray" is a profile that the user created using a
> Gutenprint-specific profiling/admin application.  This profile would
> be "installed" on the system that is actually doing the printing.
> This would not necessarily require root privileges to do as user-
> specific profile directories are easy to do and CUPS does not require
> root access to update a printer as long as the distro/OS puts users in
> the system group (lpadmin or sys depending on the system).

I am a little confused (sorry).  I can't find any documentation on 
stpUserProfile anywhere.   Could you provide an explanation?

Hal
 
