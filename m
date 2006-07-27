Return-Path: <wendy.phillips@sun.com>
Message-ID: <44C80C19.6040700@sun.com>
Date: Wed, 26 Jul 2006 17:43:05 -0700
From: Wendy Phillips <wendy.phillips@sun.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Proposed filesystem layout for print ppd
	and driver files
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: printing-architecture <printing-architecture@freestandards.org>
Cc: cyeoh@samba.org, mats.d.wichmann@intel.com, wendyp@jurassic.eng.sun.com

As a result of the past weeks discussion and the fsg architecture 
meeting today, the following proposal is on the table. It defines 
directories for ppd files and print drivers; placement of files is based 
on category of provider: distribution, third party vendor, and system 
administrator.

I have added Chris and Mats as you have been contributing to the 
discussion. If you want to add yourself to the fsg architecture alias, 
it's not high volumne and it would be good to have you.

Regards.

-Wendy


1. Distro supplied files

         The filesystem layout as utilized by the distibutions when the
         ppd files and print drivers are initially installed on the 		 
system. It is presumed that this will also be used for patches 			and 
updates created and delivered by the distro.

         a. Installation path for ppd files
                 /usr/share/ppd/<supplier>/<manufacturer>/

         b. Installation path for print drivers
                 /usr/lib/printdriver/<supplier>

2. Third Party Vendor supplied files

         The filesystem layout to be utilized by third party vendors
         for delivery of ppd files, print drivers and other vendor
         supplied files.

         a. Installation path for PPD files
                 /opt/print/ppd/<supplier>/<manufacturer>

         b. Installation path for print drivers
                 /opt/print/driver/<supplier>

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
         Third Party Vendor :    /opt/print/ppd
         Distro :                /usr/share/ppd          Lowest

         Drivers
         Admin :                 /usr/local/print/driver Highest
         Third Party Vendor :    /opt/print/driver
         Distro :                /usr/lib/printdriver    Lowest

