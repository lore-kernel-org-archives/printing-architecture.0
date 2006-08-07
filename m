Return-Path: <till.kamppeter@gmail.com>
Message-ID: <44D72730.5030907@gmail.com>
Date: Mon, 07 Aug 2006 13:42:40 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Agreement on directory structure for
	printing
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: "Printing-Sc (E-mail)" <printing-sc@freestandards.org>, printing-architecture <printing-architecture@freestandards.org>, lsb-discuss <lsb-discuss@freestandards.org>

Hi,

here is the standard for the printer driver/PPD directory structure on
which we have agreed so far (this is Wendy Philips' proposal from July
27 with the /opt/ directory structure modified to comply FHS according
to Christopher Yeoh's postings):

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
                 /usr/local/print/ppd/<supplier>/<manufacturer>

         b. Installation path for print drivers
                 /usr/local/print/driver/<supplier>

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
         Admin :                 /usr/local/print/ppd    Highest
         Third Party Vendor :    /opt/<supplier>
         Distro :                /usr/share/ppd          Lowest

         Drivers
         Admin :                 /usr/local/print/driver Highest
         Third Party Vendor :    /opt/<supplier>
         Distro :                /usr/lib/printdriver    Lowest


   Till

