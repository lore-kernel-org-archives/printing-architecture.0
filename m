Return-Path: <cloos@jhcloos.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jhcloos.com;
	s=ore14; t=1401529226;
	bh=GPUU1MMCUwrImm1uqy12r1QtzOgVHd12VhHFcgiIXHs=;
	h=From:To:Subject:Date:From;
	b=dZLMPqQYqGnjzyQxkNqT2FzNNAtoMrdfDrDUZznQCwF0XSKNihbB80/L2Zu70Sgn7
	PJddkL0hrQGUzY1CCHt4nQwhKRCbz5xYhcCBjnEVyblDKKjgfcZrneJtrXdVqmkyyf
	CeukQ1HgZX6JWlG9pR4enmGhVrA4FnrbnEZRc1kA=
From: James Cloos <cloos@jhcloos.com>
Date: Sat, 31 May 2014 05:30:35 -0400
Message-ID: <m3wqd2b8h7.fsf@carbon.jhcloos.org>
MIME-Version: 1.0
Content-Type: text/plain
Subject: [Printing-architecture] pwgtoraster vs calibrated spaces
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org

I was wrong about sGray.  It turns out that sGray is not defined as
having the same curve as sRGB, but rather it always has gamma 2.2.

The cupsraster document says srgb gamma/whitepoint, and the pwg raster
doc says srgb grayscale.  But everything else I've found says 2.2.
And it seems a D50 illuminate.

That being said, this colorspace dictionary:

[ /CalGray 
  <<  /WhitePoint [ 0.96420288 1.0 0.82490540 ] 
      /Gamma 2.2 
  >> 
]

in stead of /DeviceGray should work for converting sGray pages to pdf.

For AdobeRGB, you can use this:

[ /CalRGB
  << /WhitePoint [ 0.95045471 1.0 1.08905029 ]
     /Gamma [ 2.2 2.2 2.2 ]
  >>
endobj

For sRGB, though, you'll have to embed the icc file.

AFAICT, put the space in an object and specify a ref to that object
where you currently specify /DeviceRGB, usw.

-JimC
--
James Cloos <cloos@jhcloos.com>         OpenPGP: 0x997A9F17ED7DAEA6
