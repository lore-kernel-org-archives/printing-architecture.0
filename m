Return-Path: <till.kamppeter@gmail.com>
Message-ID: <44E0AE98.201@gmail.com>
Date: Mon, 14 Aug 2006 19:10:48 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <1B47D24854C7BC4FA8DA28BEBB59B0BA463262@orsmsx419.amr.corp.intel.com>	<44DA12C5.6060801@gmail.com>
	<m3fyg4pmm8.fsf@gromit.moeb>
	<17627.56745.848376.988255@localhost.localdomain>
	<44DBE619.4060706@easysw.com>
In-Reply-To: <44DBE619.4060706@easysw.com>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [lsb-discuss] Agreement on	directory
 structure for printing
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: Michael Sweet <mike@easysw.com>
Cc: Andreas Jaeger <aj@suse.de>, "Printing-Sc (E-mail)" <printing-sc@freestandards.org>, printing-architecture <printing-architecture@freestandards.org>, lsb-discuss <lsb-discuss@freestandards.org>, Wendy Phillips <wendy.phillips@sun.com>

I think we should agree on the version described below (including
lib64). The version with lib64 allows to provide both 32-bit and 64-bit
dynamic libraries for the case that the driver is interfaced by dynamic
library linking (as OpenPrinting vector without IPC). In a version
without lib64 every program dynamicxally linking drivers would need to
be of either 32-bit or 64-bit, not one of 32-bit and another of 64-bit,
as we can provide only one bit-width of the library. For executables
like IJS drivers or CUPS drivers it is enough to put them always in
../lib/.., as they do not need to be the same bit-width as the caller,
therefore only 64-bit libraries go into ../lib64/..

   Till

-----------------------------------------------------------------------

0. If we have ../lib/.. paths and as 64-bit system (with backward
   compatibility to a 32-bit system), 64-bit-only libraries go into the
   appropriate ../lib64/.. path and 32-bit libraries and all (32-bit and
   64-bit) executables into the ../lib/.. path.

1. Distro supplied files

         The filesystem layout as utilized by the distibutions when the
         ppd files and print drivers are initially installed on the
         system. It is presumed that this will also be used for patches
         and updates created and delivered by the distro.

         a. Installation path for ppd files
                 /usr/share/ppd/<supplier>/<manufacturer>/

         b. Installation path for print drivers
                 /usr/lib/printdriver/<supplier>
                 (/usr/lib64/printdriver/<supplier>)

2. Third Party Vendor supplied files

         The filesystem layout to be utilized by third party vendors
         for delivery of ppd files, print drivers and other vendor
         supplied files.

         a. Installation path for PPD files
                 /opt/<supplier>/<internal structure non specified>
            with symlink(s) to let the PPD files appear in
                 /opt/share/ppd/<supplier>/<manufacturer>

         b. Installation path for print drivers
                 /opt/<supplier>/<internal structure non specified>
            with symlink(s) to let the driver files appear in
                 /opt/lib/printdriver/<supplier>/
                 (/opt/lib64/printdriver/<supplier>/)

         As the symlink paths are not (yet) registered with LANANA it
         should be taken care of not overwriting anything existing with
         them. Post-install script should not simply overwrite
         files/directories. In reality a permission of the sys admin
         would be needed, but in practice this is not always possible as
         post-install scripts called from a package installation need to
         be non-interactive.

3. Files created, downloaded, or modified by a system administrator.

         a. Installation path for PPD files
                 /usr/local/share/ppd/<supplier>/<manufacturer>

         b. Installation path for print drivers
                 /usr/local/lib/printdriver/<supplier>
                 (/usr/local/lib64/printdriver/<supplier>)

4. Common features
         These features apply to each of the three supplier categories,
         distro, third party vendor, and administrator.

         a. PPD file naming convention
                 <MFGString>-<MDLString>-<driver>-<language>.ppd

         b. The contents of the driver directories are entirely
         determined by the supplier.  The path to a driver is found
         by using an absolute path in the ppd file.

         c. Install scripts must be  written in Bourne Shell without
         any extensions.

5. Precedence Rules
         Highest precedence is given to the system administrator which
         allows for system by system modfications as determined by
         support personel.

         PPD files
         Admin :                 /usr/local/share/ppd           Highest
         Third Party Vendor :    /opt/<supplier>
         Distro :                /usr/share/ppd                 Lowest

         Drivers
         Admin :                 /usr/local/lib(64)/printdriver Highest
         Third Party Vendor :    /opt/<supplier>
         Distro :                /usr/lib(64)/printdriver       Lowest


-----------------------------------------------------------------------


Michael Sweet wrote:
> Christopher Yeoh wrote:
> 
>> At 2006/8/10 18:43+0200  Andreas Jaeger writes:
>>
>>> On x86-64, ppc64 and s390x I suggest:
>>> {/usr,/usr/local,/opt}/lib/printdriver for 32-bit x86, ppc, s390
>>> libraries
>>> {/usr,/usr/local,/opt}/lib64/printdriver for 64-bit x86-64, ppc64,s390x
>>> libraries
>>>
>>> Just don't hardcode lib but add a footnote that on lib64 systems,
>>> lib64 is used,
>>
>>
>> Yes, that would keep it consistent with the rest of the FHS.
> 
> 
> Actually, I'd expect both 32-bit and 64-bit drivers to be supported
> on a 64-bit system, and the default path we use in CUPS will include
> both the 32-bit and 64-bit paths when CUPS is configured for multiple
> architectures...
> 

