Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7EC5941FBA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 362A541F85
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org F40AD803A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1696555742;
 bh=YkEVbusoFf99eDWOTzKGGz/1FmpN/y0YaPtYL5oJ27k=;
 h=From:Date:Subject:To:From;
 b=KbZDWjadAWjQ2G9ohAKrAusFsH4FNHU4NcPTzLos1s4w7HAEqJkw9yCphqSpLVdq+
 aLIDzuiMR4i/HuGldvIbqUrlfrmFZ//PCa9SSf3HM0RAWWBp9iqK5G8yguKY6xbic8
 HWdhXQn3EsSGEepWfV2hwSqZlLBHt9hwrMDAWpH4=
From: Michael Sweet <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.700.6\))
Date: Thu, 5 Oct 2023 21:28:49 -0400
Message-Id: <244F7933-E4EB-427A-AEA0-FEDEB8E82666@msweet.org>
Subject: [Printing-architecture] libcups v3.0b2
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

libcups v3.0b2 is the second beta release of the CUPS v3 library and =
tools which remove deprecated APIs, add new APIs, and normalize existing =
APIs:

	https://github.com/OpenPrinting/libcups/releases/tag/v3.0b2

Changes include:

- Added the `ipptransform` command to replace/upgrade the `ippevepcl` =
and
  `ippeveps` commands (Issue #65)
- Added `cupsFormDecode` and `cupsFormEncode` APIs (Issue #49)
- Added `cupsJWT` APIs to support JSON Web Tokens (Issue #50, Issue #52)
- Added `ippAddCredentialsString` and `ippCopyCredentialsString` APIs
  (Issue #58)
- Added `cupsCreateCredentialsRequest` and `cupsSignCredentialsRequest` =
APIs and
  updated `cupsCreateCredentials` API to better support X.509 =
certificates
  (Issue #59)
- Updated the configure script to add `_FORTIFY_SOURCE=3D3` (previous =
level was 2)
  when not using address sanitizer and when it hasn't already been added
  (Issue #51)
- Updated the `httpAddrListen` function to use the maximum backlog =
value.
- Fixed ipptool limit on the size of an attribute value that would be =
printed
  (Issue #5)
- Fixed some configure script issues (Issue #48)
- Fixed JSON output bug in ipptool.
- Fixed `CUPS_DNSSD_IF_INDEX_LOCAL` when using Avahi.

Enjoy!

________________________
Michael Sweet

