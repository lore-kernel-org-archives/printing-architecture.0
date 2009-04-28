Message-ID: <49F758CE.5060808@gmail.com>
Date: Tue, 28 Apr 2009 21:28:14 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Fixes and changes on the "cups" output
 device of Ghostscript -Please Test!
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <mike@easysw.com>, "SUFFIELD,DAVID (HP-Vancouver,ex1)" <david.suffield@hp.com>, shiyun.yie@hp.com, "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, gs-devel <gs-devel@ghostscript.com>

Hi,

I have done several fixes and enhancements on the CUPS Raster output 
device of Ghostscript, to support the Duplex-related keywords in the 
CUPS PPD extensions (all tests done with Mike Sweet's "rasterview"):


*cupsFlipDuplex:
----------------

Did not work for landscape documents. In general, the XY and YX 
components of the matrix were swapped. This broke the output with 
asymmetric resolutions (like 300x600 dpi) and back sides which are 
supposed to be rotated or Y-flipped came out blank.

*cupsBackSide:
--------------

Introduced support for this keyword which is the replacement for 
*cupsFlipDuplex:. Therefore *cupsFlipDuplex: gets generally ignored if 
*cupsBackSide: is supplied. All modes described in the PPD extensions 
are supported.

*cupsEvenDuplex:
----------------

Introduced support for this keyword. Now "*cupsEvenDuplex: True" causes 
a blank page to be appended to documents with odd numbers of pages.


All these changes I have committed to the SVN repository of Ghostscript 
and so they get part of GPL Ghostscript 8.65.

I have also created patches for Ghostscript 8.64 and uploaded them to

http://www.openprinting.org/download/printing/ghostscript-cups-patches/

The patches are

cups-device-support-cupsbackside-ppd-keyword.patch
cups-device-support-cupsevenduplex-ppd-keyword.patch

The first patch also contains the fixes for the *cupsFlipDuplex: keyword.

In addition, I have added support for having page size entries in the 
PPD which have the same width and height but differ only by the margins, 
like "A4" with normal margins and "A4.fullbleed" with zero margins. The 
fix is also uploaded to the SVN repository for Ghostscript 8.65 and the 
patch for 8.64 is this one:

cups-device-select-pagesize-margins-by-pagesize-name.patch

at the same place as the other two patches.

I will look into the "*APDuplexRequiresFlippedMargin:" keyword soon.

Please have a look into the patches and try them out. Tell me whether 
they are OK and if something does not work, please supply fixes orhelp 
me to fix it.

Thanks in advance.

    Till
