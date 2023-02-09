Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C65DE82144
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DB7A98214D
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org EDEBD803AC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1675968908;
 bh=QC2r6jhGQUNp2E1eZiZFSd8gHuTGkJaXypQw8AVS6jw=;
 h=From:Date:Subject:To:From;
 b=B0HdF4Z+Gkl2Myq40hmVvHeRMGLepnc3Q3YbY/7q5fTbfpAIzQzNfMzUjC+um52t1
 YFnjtw5jH9Si/hTrzI01Q97ABb89Y5nueSrT1ryLOKLoCe83sR1f/e/VtaGuHyoBpq
 m+glARyRIlMRJTQP2gqZQh0TjpbOWgfKum4O/oHw=
From: Michael Sweet <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.400.51.1.1\))
Date: Thu, 9 Feb 2023 13:54:56 -0500
Message-Id: <07F66A5B-89F4-4487-9AA0-7CA65D22A15A@msweet.org>
Subject: [Printing-architecture] libcups v3.0b1
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

libcups v3.0b1 is the first beta release of the CUPS v3 library and =
tools which remove deprecated APIs, add new APIs, and normalize existing =
APIs.

	https://github.com/OpenPrinting/libcups/releases/v3.0b1

Changes include:

- Documentation updates (Issue #32)
- Split out libcups and tools from CUPS 2.x.
- Simplified the configure script.
- Now require a C99-capable C compiler.
- Now require GNU TLS, LibreSSL, or OpenSSL.
- Now require ZLIB.
- Now require POSIX or Windows threading support.
- Now require the `poll` function (`WSAPoll` on Windows).
- Now install with a prefix by default to allow coexistance with CUPS =
2.x (Issue #21)
- Added new `GENERATE-FILE` directive for `ipptool` test files.
- Added new `ATTR-IF-DEFINED` and `ATTR-IF-NOT-DEFINED` directives to =
IPP data files (Issue #3)
- Added `ippFile` API for working with IPP data files as used by =
`ipptool`, `ippexeprinter`, and other tools (Issue #14)
- Added a roll to the default color ippeveprinter printer.
- Added new DNS-SD API (Issue #19)
- Added new PWG media sizes.
- Added new `WITH-ALL-VALUES-FROM` predicate for ipptool files (Issue =
#20)
- Added new `SAVE-ALL-CONTENT`, `WITH-ALL-CONTENT`, and =
`WITH-ALL-MIME-TYPES` predicates for ipptool files (Issue #22)
- Added, modernized, and promoted the localization interfaces to public =
API (Issue #24)
- Added public JSON API (Issue #31)
- Added new `basename` variable for use in ipptool files (Issue #44)
- Updated the CUPS API for consistency.
- Fixed ipptool's handling of EXPECT for member attributes (Issue #4)
- Fixed ipptool's support for octetString values (Issue #23)
- Removed all obsolete/deprecated CUPS 2.x APIs.
- Removed (obsolete) Kerberos support.
- Removed support for SecureTransport (macOS) due to deprecation of the =
platform API.
- Removed support for SChannel (Windows) due to restrictions on its use =
in
  domain accounts.

Enjoy!

________________________
Michael Sweet

