Return-Path: <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.1\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <09070443-4d49-f477-5b29-cd9cc785f4aa@gmail.com>
Date: Wed, 29 Jul 2020 15:28:35 -0400
Content-Transfer-Encoding: quoted-printable
Message-Id: <1DC62161-5712-4FEB-B249-4C11F5834539@msweet.org>
References: <09070443-4d49-f477-5b29-cd9cc785f4aa@gmail.com>
Subject: Re: [Printing-architecture] Canceling jobs in Printer Applications
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Jai Luthra <luthrajaiji@gmail.com>

Till,

> On Jul 28, 2020, at 5:53 PM, Till Kamppeter <till.kamppeter@gmail.com> =
wrote:
>=20
> Hi,
>=20
> what does exactly happen if a job gets cancelled inside a PAPPL-based =
Printer Application? For example if a user or admin cancels a running =
job in the web interface, or if a destination device disappears in the =
middle of the job?
>=20
> How will filter processes get stopped, for example in the middle of a =
200-page job or in the middle of an A0-sized photo?
>=20
> I do not see any JobCanceled variable which gets set when the job is =
cancelled and which the filters check in loops or at every page. The =
filters in cups-filters have such facility whereas the filters in the =
PCL sample Printer Application do not have this.

So it is up to the PAPPL filter functions to check the =
papplJobIsCanceled value and clean up accordingly.  In the case of the =
JPEG and PNG filters, we'll stop mid-page as needed courtesy of the =
papplJobFilterImage function, which they both call to handle the actual =
conversion of the source image to the destination color space...

Similarly, the PWG/Apple raster processing path will cancel mid-page.

________________________
Michael Sweet



