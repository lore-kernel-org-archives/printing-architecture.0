Return-Path: <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.1\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <2926c01aeb59bfc6d8cb03768ffc9630@suse.de>
Date: Fri, 14 Aug 2020 10:29:52 -0400
Content-Transfer-Encoding: quoted-printable
Message-Id: <5DD951BC-F37C-42A1-8EA0-B6548F532F9C@msweet.org>
References: <b632639fbe44c484b718bfb5ff5c8f57@suse.de>
 <e9cfb622-9618-05d3-ca65-86eab89787f1@gmail.com>
 <2926c01aeb59bfc6d8cb03768ffc9630@suse.de>
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Till Kamppeter <till.kamppeter@gmail.com>

Johannes,

> On Aug 14, 2020, at 7:45 AM, Johannes Meixner <jsmeix@suse.de> wrote:
> ...
> Those excerpts point to what I do not yet understand:
>=20
> I was thinking it is an intended advantage that clients communicate
> normally directly with IPP printer devices

Client applications shouldn't be talking directly to printers - most =
printers don't handle spooling of multiple jobs or the full range of =
file formats we are used to on Linux.  The current division of labor =
(application browses for printers, asks local spooler service to talk to =
printer) will remain.

________________________
Michael Sweet



