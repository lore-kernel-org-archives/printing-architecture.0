Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 8A14A81012
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1639507567;
 bh=covZdixQiAegZtw5L5+rbdbzICVeRDoOu58GySiWI2c=;
 h=From:Date:Subject:To:From;
 b=f3RiQPZppufYsH5cnDSPFWm7i5FrbKc2Tl5B0RNOZH/sPlHoFgx4y0pNo17kPOsLo
 yA3DFQRCgwUN/Rx55RvtM2Qxgr3E8UStHXN54lGttawHFnyjwsTLCPrhlpDNoswlTI
 UQL71ytDYhnYVpNfe7ZrF9EckGcbezhZwO+Dk52U=
From: Michael Sweet <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.40.0.1.81\))
Date: Tue, 14 Dec 2021 13:46:05 -0500
Message-Id: <2FD1E641-1B9A-481B-8823-0271245872C4@msweet.org>
Subject: [Printing-architecture] PDFio 1.0.0
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

All,

The first stable release of PDFio is now available!  PDFio is a simple C =
library for reading and writing PDF files.  The primary goals of PDFio =
are:

- Read and write any version of PDF file
- Provide access to pages, objects, and streams within a PDF file
- Support reading and writing of encrypted PDF files
- Extract or embed useful metadata (author, creator, page information, =
etc.)
- "Filter" PDF files, for example to extract a range of pages or to =
embed fonts that are missing from a PDF
- Provide access to objects used for each page

PDFio is *not* concerned with rendering or viewing a PDF file, although =
a PDF RIP or viewer could be written using it.

Enjoy!

Download: https://github.com/michaelrsweet/pdfio/releases/tag/v1.0.0
Home Page: https://www.msweet.org/pdfio

________________________
Michael Sweet



