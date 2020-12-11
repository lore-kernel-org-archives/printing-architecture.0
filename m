Return-Path: <msweet@msweet.org>
From: Michael Sweet <msweet@msweet.org>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.4\))
Date: Fri, 11 Dec 2020 12:37:11 -0500
Message-Id: <1B5C71F2-BC97-46B9-A321-5D56522720AB@msweet.org>
Subject: [Printing-architecture] PAPPL 1.0.0
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

The first stable release of PAPPL is now available for download. PAPPL =
is a simple C-based framework/library for developing CUPS Printer =
Applications, which are the recommended replacement for printer drivers.

    https://www.msweet.org/pappl
    https://github.com/michaelrsweet/pappl/releases/tag/v1.0.0

Changes in 1.0.0 include:

- papplSystemLoadState would not load printers whose device IDs =
contained the # character (Issue #92)
- Passing =E2=80=9Cauto=E2=80=9D for the driver name would cause a crash =
if there was no auto- add callback.
- Added papplPrinterGetPath API to get the path for a printer web page =
(Issue #97)
- The papplPrinterAddLink and papplSystemAddLink functions now accept an =
=E2=80=9Coptions=E2=80=9D argument instead of the =E2=80=9Csecure=E2=80=9D=
 boolean in order to allow links to be added to multiple places on the =
web interface in addition to requesting a secure (HTTPS) link (Issue =
#98)

Enjoy!

________________________
Michael Sweet



