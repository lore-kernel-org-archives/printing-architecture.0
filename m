Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 47D9781FE3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1630443820;
 bh=g/4Ze2gGUC+bvs3igDtJrLqMq+fNcip6WzJ4Nn7zH/s=;
 h=From:Date:Subject:To:From;
 b=v4nl6uCcft9MdZ+AL/HGPtmVhUxfw/KAHJAr268/LSbneGU14URUl4ed/gaWsYVkr
 BUbrdqJ5WQ3q+7yBNPM4iCtza0k/yBXn89venweKBnbNvc2g2GXWkbRj02IvkJsbUC
 1DJFzXnT/TE/1tCt+iMYpaxtm/CMhTD3qr8ClV5s=
From: Michael Sweet <msweet@msweet.org>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Date: Tue, 31 Aug 2021 17:03:38 -0400
Message-Id: <CE67ED23-12F1-42B9-A1A2-790966FB4D72@msweet.org>
Subject: [Printing-architecture] PAPPL 1.1b1
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

The first beta release of PAPPL v1.1 is now available for download.  =
PAPPL v1.1 adds support for Wi-Fi configuration, IPP-USB, printer driver =
lookup and auto-add functionality, improves management of multiple =
printers, and adds support for Microsoft=C2=AE Windows=C2=AE 10 and =
higher.

	https://github.com/michaelrsweet/pappl/releases/tag/v1.1b1

Changes in 1.1b1 include:

- Added support for Windows 10 and higher.
- Added `PAPPL_SOPTIONS_NO_TLS` option to disable TLS support.
- Added Wi-Fi callbacks to support configuration over IPP-USB (Issue =
#45)
- Added buttons and sub-commands to pause and resume printers (Issue =
#124)
- `papplMainLoop` now uses a persistent location for state and spool =
files by
  default (Issue #128)
- `papplMainLoop` now supports clients talking to a system-wide server =
running
  as root (Issue #148)
- Added a "set default" button to the web interface (Issue #150)
- The `drivers` sub-command now reports the IEEE-1284 device ID for a =
given
  driver (Issue #157)
- Jobs can now be canceled and printers deleted when a processing job is =
trying
  to connect to a printer (Issue #163)
- The default media is now updated if the ready media for a given tray =
is
  updated (Issue #164)
- Fixed an issue with the "drivers" sub-command not working if you don't =
have a
  system callback.
- Fixed a deadlock issue on macOS.
- Added a new `papplJobCreateWithFile` API to allow printer applications =
to
  submit print jobs internally.
- Refactored the `papplSystem` hostname/port APIs to be consistent with =
the
  naming used for the `papplClient` APIs.

Enjoy!

________________________
Michael Sweet



