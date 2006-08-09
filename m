Return-Path: <till.kamppeter@gmail.com>
Message-ID: <44DA12C5.6060801@gmail.com>
Date: Wed, 09 Aug 2006 18:52:21 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <1B47D24854C7BC4FA8DA28BEBB59B0BA463262@orsmsx419.amr.corp.intel.com>
In-Reply-To: <1B47D24854C7BC4FA8DA28BEBB59B0BA463262@orsmsx419.amr.corp.intel.com>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [lsb-discuss] Agreement on directory
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
To: "Bastian, Waldo" <waldo.bastian@intel.com>
Cc: "Printing-Sc (E-mail)" <printing-sc@freestandards.org>, lsb-discuss <lsb-discuss@freestandards.org>, Andreas Jaeger <aj@suse.de>, printing-architecture <printing-architecture@freestandards.org>, Wendy Phillips <wendy.phillips@sun.com>

Bastian, Waldo wrote:
> The admin paths in section 5 still needs adjustment.

Below is the version with everything corrected.

What about 64-bit systems (x86-64, ppc64, and s390x) which have a
/usr/lib64/ directory for dynamic/shared libraries?

We could go with

{/usr,/usr/local,/opt}/lib/printdriver

only if the drivers do not ship any shared libraries which provide
functionality for other drivers. If a supplier wants to ship a library
for both 32- and 64-bit only for its own use, he has the total liberty
of directory structure under ../printdriver/<supplier>/ and could
theoretically have lib/ and lib64/ directories there.

   Till


-------------------------------------------------------------------------

1. Distro supplied files

         The filesystem layout as utilized by the distibutions when the
         ppd files and print drivers are initially installed on the
         system. It is presumed that this will also be used for patches
         and updates created and delivered by the distro.

         a. Installation path for ppd files
                 /usr/share/ppd/<supplier>/<manufacturer>/

         b. Installation path for print drivers
                 /usr/lib/printdriver/<supplier>

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
         Admin :                 /usr/local/share/ppd       Highest
         Third Party Vendor :    /opt/<supplier>
         Distro :                /usr/share/ppd             Lowest

         Drivers
         Admin :                 /usr/local/lib/printdriver Highest
         Third Party Vendor :    /opt/<supplier>
         Distro :                /usr/lib/printdriver       Lowest


