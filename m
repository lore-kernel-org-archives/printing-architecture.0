Return-Path: <Norm.Jacobs@Sun.COM>
Message-ID: <446BA39A.80802@Sun.COM>
Date: Wed, 17 May 2006 17:28:42 -0500
From: Norm Jacobs <Norm.Jacobs@Sun.COM>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Meeting notes for 2006-05-17 / LSB 3.2
	recommendation
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: printing-architecture <printing-architecture@freestandards.org>



We spent the vast majority of our meeting time discussing what we would 
like to
recommend for LSB 3.2.  We are also planning on meeting next week at our
normal Wednesday time.

<RECOMMENDATION>

    ESPgs 8.15.1 or later with the following drivers compiled in
             ijs    - InkJet Server
             cups   - CUPS raster
             opvp   - OpenPrinting Vector
  
    Installation Locations
       PPD
          /usr/share/ppd/{supplier}/{manufacturer}-{model}.ppd
             where whitespace and dash(-) are replaced with with 
unserscore(_)
             supplier is the ppd file supplier (gutenprint, hplip, cups, 
epson,
                                                hp, ...)
             manufacturer is the print manufacturer name from the IEEE 1284
                          Device ID
             model is the printer model from the IEEE 1284 Device ID
          Eg.
             
/usr/share/ppd/gutenprint/Hewlett_Packard-hp_color_LaserJet_4650.ppd
             /usr/share/ppd/HP/Hewlett_Packard-hp_color_LaserJet_4650.ppd

       Driver
          /usr/lib/printerdriver/{supplier}/...
             where whitespace and dash(-) are replaced with with 
unserscore(_)
             supplier is the ppd file supplier (gutenprint, hplip, cups, 
epson,
                                                hp, ...)
          /usr/lib/printerdriver/bin/{supplier-executable(s)}
             links to executables in the {supplier} directory

          Eg.
             /usr/lib/prinerdriver/gutenprint/...
             /usr/lib/printerdriver/bin/gutenprintijs-5.0 -> 
../gutenprint/gutenprintijs-5.0

    Installation scripts should be bourne shell and be careful about 
portability.
    mindful of (sed/awk/...) use lsb tools.

    Printer identification
       use IEEE 1284 Device Id.  In particular, the MFG, MDL, and CMD values
       are what we most want to see used (and correctly provided by printer
       vendors).  This should be the EXACT same value for 1284 parallel,
       USB, SNMP, and ultimately IPP query.
             MFG - Manufacturer
             MDL - Model
             CMD - Command Set (PJL, MLC, BIDI_ECP, PCLXL, PCL, PDF, 
PJL, MIME,
                 POSTSCRIPT, ...)

    Possibly require/recommend foomatic for LSB 3.2

</RECOMMENDATION>

    We discussed including PAPI v1.0 in LSB 3.2, but the issue is that 
it needs
    to be shipping in a couple of Linux distros before it can be considered.
    It's likely that this will have to wait for the next LSB.  In the 
meantime,
    Till is working on including it in the Mandrake cooker.

    Norm needs to get some configuration related instructions to Till 
for the
    PAPI and needs to put the Solaris foomatic-filters changes that he 
put into
    the CVS main trunk into the stable branch (foomatic-3_0-branch)

    Till mentioned filters running as an unprivileged user (lp) and 
making sure that
    filters didn't use absolute paths in filter chains.


That's about all I remember and the highlights of Wendy's notes.

       -Norm



