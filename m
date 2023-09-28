Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9829D409E3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7CFFD400D1
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 6F55C80E89
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1695933204;
 bh=eEu5P0HzsCnkALg4CCxNIF14qEEz46US70XFmvdVpxY=;
 h=From:Date:Subject:To:From;
 b=rKWwg4a9IVHrKWnLOBnqCPLas7IN1jfn6q9WvPIbw8sP/BuIqpKWbrwr27VmSamp2
 scOCgwPMQiKUDY4dolzSEvbkpbTXAVbWWYKKErHjIm0CyYMq8JrQcGWarkws7ed5lt
 Roeqf9Dz4QtCBXGgRMtTJODMuiHIqZa4WmSvvDbk=
From: Michael Sweet <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.700.6\))
Date: Thu, 28 Sep 2023 16:33:12 -0400
Message-Id: <466F65B1-087B-4CBB-97EF-5594C976E4D5@msweet.org>
Subject: [Printing-architecture] PAPPL 1.4.0
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

PAPPL v1.4.0 is now available for download and is a feature release:

    https://github.com/michaelrsweet/pappl/releases/tag/v1.4.0

Changes in 1.4.0 include:

- Added support for "job-retain-until" (Issue #14)
- Added new PAPPL-Create-Printers operation, and the PAPPL mainloop API =
now
  auto-adds local printers the first time a server is run (Issue #245)
- Added new `papplDeviceRemoveScheme` and `papplDeviceRemoveTypes` APIs =
to
  disable unwanted device types (Issue #259)
- Added support for suspending and resuming jobs at copy boundaries =
(Issue #266)
- Added support for server configuration files (Issue #279)
- Now preserve the paused state of printers (Issue #286)
- Fixed reporting of "xxx-k-octet-supported" attributes.
- Fixed printing of 1/2/4-bit grayscale PNG images (Issue #267)
- Fixed USB serial number for DYMO printers (Issue #271)
- Fixed a potential buffer overflow in the logging code (Issue #272)
- Fixed DNS-SD advertisements when the server name is set to "localhost"
  (Issue #274)
- Fixed hostname change detection when using mDNSResponder (Issue #282)
- Fixed authentication cookie comparisons for simple password mode.
- Fixed a potential time-of-use issue with PAPPL-created directories.
- Fixed handling of trailing '%' in log format strings.
- Updated the `options` sub-command to list vendor options and values
  (Issue #255)
- Updated web interface to show the age of jobs (Issue #256)
- Updated "devices" sub-command to have the PAPPL server find the =
devices
  instead of doing it directly (Issue #262)
- Updated default logging to be less chatty (Issue #270)
- Updated the Wi-Fi configuration page to support hidden networks.
- Updated the Wi-Fi configuration page reload time to 30 seconds.
- Updated TLS certificate generation to support more types of =
certificates and
  to use modern OpenSSL/GNU TLS APIs.

Enjoy!

________________________
Michael Sweet

