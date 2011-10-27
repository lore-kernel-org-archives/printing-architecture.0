Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=jPDuV+Z36mSNrI8CfvUKnO+NVpnDYTL0mFXh2TCbW1s=;
	b=Ae5SpVQJQEb6D2DIYG+mAJy25bZS51tilVvYB0rUZzTWSMtE22g+8fuRRrUdYzos6C
	TFezK27SpUFQ6jCR8YVLXFSpnuk+LG5epGNnICWVNsST/cnZ28VCYdPnJXCsTGEtEI0F
	mkV5N/tOeFMXj3/MnE2e1TSa4GpHBtttiuWKo=
Message-ID: <4EA99DFF.3080801@gmail.com>
Date: Thu, 27 Oct 2011 20:07:59 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Moving CUPS filters to OpenPrinting
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Open Printing <printing-architecture@lists.linux-foundation.org>

Hi,

Mike Sweet intends to remove the filters which are not used by Mac OS X 
from the CUPS upstream package:

http://www.cups.org/str.php?L3930

We have agreed on this on the last OpenPrinting Summit and the filters 
will be continued and hosted by OpenPrinting. In addition, the filters 
for the PDF printing workflow will not be adopted by CUPS but joined 
with the CUPS filters we overtake.

All Linux distributions would have to include this new CUPS filters 
package then to get CUPS continuing to work and have the same feature 
set as before.

Due to the fact that this package will use the PDF workflow by default 
and that all major desktop applications send their print jobs already in 
PDF, this will complete the implementation of PDF as standard print job 
format. See also my updated web page:

https://www.linuxfoundation.org/collaborate/workgroups/openprinting/pdfasstandardprintjobformat

By this, we also do not need to get a copyright/license agreement 
between the developers of the PDF filters and Apple.

We can start hosting the CUPS filters as soon as our BZR repositories 
for OpenPrinting will be back. In the CUPS project these filters are 
already separated into their own branch, we only need to import them 
from their SVN into our BZR.

We also need a name for the package. Should we call it simply 
"cups-filters"? Or "op-cups-filters"? Or do we rename Foomatic to 
openprinting and have the packages

- openprinting-db
- openprinting-db-nonfree
- openprinting-db-engine
- openprinting-rip
- openprinting-cups-filters

Note that we keep foomatic-rip/openprinting-rip separate from the CUPS 
filters as this filter is a universal filter which also works with many 
other printing systems.

Another decision to make is whether we really should maintain all the 
filters which get over to us from CUPS or whether we should discontinue 
some. The filter set will contain "imageto..." and "textto..." filters 
which are not made use of by the usual desktop applications, they send 
all PDF (and some send PostScript). Alternatively, these filters could 
be made optional.

    Till
