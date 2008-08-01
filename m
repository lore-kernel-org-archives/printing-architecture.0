Message-ID: <4893124F.6080202@gmail.com>
Date: Fri, 01 Aug 2008 15:40:31 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <200807311309.m6VD9s5n018013@dsl092-065-009.bos1.dsl.speakeasy.net>	<p06110400c4b793ad4cd1@[192.168.1.102]>	<200807312114.m6VLEhgd004613@dsl092-065-009.bos1.dsl.speakeasy.net>	<489230B6.8050306@gmail.com>	<200807312156.m6VLusVF004364@dsl092-065-009.bos1.dsl.speakeasy.net>	<4892B6A9.90609@gmail.com>	<200808011134.m71BYXdK003793@dsl092-065-009.bos1.dsl.speakeasy.net>	<4892FDDB.5060104@gmail.com>	<20080801123314.GA26452@nagini.vm.bytemark.co.uk>	<200808011243.m71ChRZ9004044@dsl092-065-009.bos1.dsl.speakeasy.net>
	<20080801130240.GB26452@nagini.vm.bytemark.co.uk>
	<200808011308.m71D8CMM004429@dsl092-065-009.bos1.dsl.speakeasy.net>
In-Reply-To: <200808011308.m71D8CMM004429@dsl092-065-009.bos1.dsl.speakeasy.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [Gimp-print-devel] Common Printing
 Dialog: PPD extension	specs updated
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
Cc: printing-architecture@lists.linux-foundation.org, printing-japan@lists.linux-foundation.org, gimp-print-devel@lists.sourceforge.net, jriddell@ubuntu.com, Roger Leigh <rleigh@whinlatter.ukfsn.org>

Robert Krawitz wrote:
>    Date: Fri, 1 Aug 2008 14:02:41 +0100
>    From: Roger Leigh <rleigh@whinlatter.ukfsn.org>
> 
>    On Fri, Aug 01, 2008 at 08:43:27AM -0400, Robert Krawitz wrote:
>    >    Date: Fri, 1 Aug 2008 13:33:14 +0100
>    >    From: Roger Leigh <rleigh@whinlatter.ukfsn.org>
>    > 
>    >    > There must be some possibility to provide an appropriate search path. 
>    >    > Would be bad if one would need to set a symlink from the source tree 
>    >    > into the system (would make distro packaging impossible).
>    > 
>    >    The search path is specified directly in genppd.c.  See
>    >    baselocaledir with relation to bindtextdomain/textdomain and the -c
>    >    option (which Robert's example used).  If this isn't working, the
>    >    debug/verbose option and strace should show you why.
>    > 
>    > I suspect that all of this is why a lot of people have had problems
>    > with translated PPD files all along.  We've had reports about this
>    > ever since the 4.2 days.
> 
>    What are you referring to here as the source of problems?
> 
> It not finding the correct translations
> 
>    >    Note: you *must* have all the locales being used available, which are
>    >    generated with localedef/locale-gen.  They should probably all be UTF-8
>    >    locales as well (do we enforce this?).
>    > 
>    > How would we enforce this (and what specifically do we need to
>    > enforce)?  We don't have much control over what users have installed
>    > on their systems.
> 
>    Don't the PPD files need to be in a single encoding?  Or does each
>    language have a defined encoding?  With the current setup, don't we just
>    get whatever locale the system is set up to use?
> 
> Per Mike Sweet, we have to use UTF-8 for all of the PPD files.
> 

I have installed all locales now, by doing

for l in `cat /usr/share/i18n/SUPPORTED`; do sudo locale-gen $l; done

on my Ubuntu Intrepid. Then I have run

LC_ALL= LANG= LANGUAGE= 
STP_MODULE_PATH=../../src/main/.libs:../../src/main 
STP_DATA_PATH=../../src/xml strace -s 1024 -o st.out ./cups-genppd.5.2 
-p ppd/Global -c `pwd`/catalog/share/locale pcl-2

and according to st.out it still reads only English message catalogs.

I tried also

LC_ALL=de LANG=de LANGUAGE=de 
STP_MODULE_PATH=../../src/main/.libs:../../src/main 
STP_DATA_PATH=../../src/xml strace -s 1024 -o st.out ./cups-genppd.5.2 
-p ppd/Global -c `pwd`/catalog/share/locale pcl-2

to see whether it perhaps reads only German message catalogs but it 
still reads only English message catalogs.

Robert, can it be that your I18n is based on something which SUSE has 
patched into gettext?

    Till
