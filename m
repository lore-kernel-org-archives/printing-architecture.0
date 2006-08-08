Return-Path: <wendy.phillips@sun.com>
Message-ID: <44D92524.4080803@sun.com>
Date: Tue, 08 Aug 2006 16:58:28 -0700
From: Wendy Phillips <wendy.phillips@sun.com>
MIME-Version: 1.0
References: <1B47D24854C7BC4FA8DA28BEBB59B0BA4176AE@orsmsx419.amr.corp.intel.com>
	<44D761CD.9000806@gmail.com>
In-Reply-To: <44D761CD.9000806@gmail.com>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
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
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: "Bastian, Waldo" <waldo.bastian@intel.com>, lsb-discuss <lsb-discuss@freestandards.org>, printing-architecture <printing-architecture@freestandards.org>, "Printing-Sc (E-mail)" <printing-sc@freestandards.org>

Here is a copy of Till's summary with the changes requested by Waldo.

I notice that the links in /opt are not listed as mandatory. This makes
the task of searching for all PPD files difficult as /opt/<vendor> is 
non-specific.

Is the intent to make the symlinks MUST rather than SHOULD?

-Wendy

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
          Admin :                 /usr/local/print/ppd    Highest
          Third Party Vendor :    /opt/<supplier>
          Distro :                /usr/share/ppd          Lowest

          Drivers
          Admin :                 /usr/local/print/driver Highest
          Third Party Vendor :    /opt/<supplier>
          Distro :                /usr/lib/printdriver    Lowest










Till Kamppeter wrote:
> Thank you for this, i have not seen that Wendy suggested something
> completely different for /usr/local/. What I mean is this:
> 
> ---------------------------------------------------------------------
> 3. Files created, downloaded, or modified by a system administrator.
> 
>          a. Installation path for PPD files
>                  /usr/local/share/ppd/<supplier>/<manufacturer>
> 
>          b. Installation path for print drivers
>                  /usr/local/lib/printdriver/<supplier>
> ---------------------------------------------------------------------
> 
> This way it is the very same structure as in /usr/ and/opt/.
> 
>    Till
> 
> Bastian, Waldo wrote:
>> Given these directories:
>> 	/usr/share/ppd/<supplier>/<manufacturer>/
>> 	/usr/lib/printdriver/<supplier>
>> Is there any particular reason for using 
>> 	/usr/local/print/ppd/<supplier>/<manufacturer>
>> 	/usr/local/print/driver/<supplier>
>> Instead of
>> 	/usr/local/share/ppd/<supplier>/<manufacturer>
>> 	/usr/local/lib/printdriver/<supplier>
>> ??
> 
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.freestandards.org
> http://lists.freestandards.org/mailman/listinfo/printing-architecture

