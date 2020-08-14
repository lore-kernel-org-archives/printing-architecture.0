Return-Path: <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.1\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <b632639fbe44c484b718bfb5ff5c8f57@suse.de>
Date: Fri, 14 Aug 2020 10:25:43 -0400
Content-Transfer-Encoding: quoted-printable
Message-Id: <276D5B87-88EB-406F-BB2E-4ED92686D320@msweet.org>
References: <b632639fbe44c484b718bfb5ff5c8f57@suse.de>
Subject: Re: [Printing-architecture] Will IPP printer devices and Printer
 Applications obsolete the cupsd?
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Johannes Meixner <jsmeix@suse.de>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Johannes,

> On Aug 14, 2020, at 4:47 AM, Johannes Meixner <jsmeix@suse.de> wrote:
>=20
>=20
> Hello,
>=20
> I have a general question:
>=20
> Will IPP printer devices and Printer Applications obsolete the cupsd?

Not specifically, but certainly a future version of cupsd (that doesn't =
support printer drivers) can be much simpler.  That had been the point =
of my previous CUPS Plenary presentations in 2018 and 2019 - CUPS (and =
cupsd) can evolve into a local (per-user) spooler service that handles =
converting things to raster as needed, sending the print jobs to IPP =
Printers, and reporting status/asking for authentication/etc.

A separate sharing server can be used for the traditional print server =
functionality, and it will be able to provide proper =
quotas/billing/accounting/access control/etc.

________________________
Michael Sweet



