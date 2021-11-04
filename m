Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 537EA81FF5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1636037813;
 bh=Rr1wFskrm+mdT7RbgiJ7+yBtfVbSKZ0csjszrUfL3pc=;
 h=From:Date:Subject:To:From;
 b=h0iYMW9KJ2dmQu9fPeYEBUZdAoDqQLMrAnxOFBGAdudjcl8qKAXfuX7nDvz3OLohY
 AcxtIhJfGlEFBJno5A+Rug6QKHmKEYJiS9hvbL0Wl8jcNdokHSw7QHWlglnBOTDSRd
 qXkDdWyy7N3slf3X8CXXAbMcXD0Z32ywkUuacD/Q=
From: Michael Sweet <msweet@msweet.org>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Date: Thu, 4 Nov 2021 10:56:51 -0400
Message-Id: <A0D56D3A-2CCC-4022-9D52-A979C48F37E2@msweet.org>
Subject: [Printing-architecture] PAPPL 1.1b3
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

The third beta release of PAPPL v1.1 is now available for download.  =
PAPPL v1.1 adds support for Wi-Fi configuration, IPP-USB, printer driver =
lookup and auto-add functionality, improves management of multiple =
printers, and adds support for Microsoft=C2=AE Windows=C2=AE 10 and =
higher.

Download:

    https://github.com/michaelrsweet/pappl/releases/tag/v1.1b3

Home page:

    https://www.msweet.org/pappl

Changes in 1.1b3 include:

- Added a new `papplSystemSetAuthCallback` API to support alternate =
authentication mechanisms (Issue #185)
- Added `papplCreateTempFile` and `papplPrinterOpenFile` file creation =
functions (Issue #186)
- Added support for a `server-options` option for the `server` =
sub-command (Issue #187)
- Added an optional callback for processing USB gadget print data.
- Added `papplCopyString`, `papplGetRand`, and `papplGetTempDir` utility =
functions.
- Calling `papplSystemSetHostName` did not also update the default TLS =
common name.
- Now map `file:///dev/null` to `NUL:` on Windows.

Enjoy!

________________________
Michael Sweet



