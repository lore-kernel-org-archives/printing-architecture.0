Return-Path: <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.60.0.2.21\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <03848a6c-7fb8-50c7-6ad9-80df4b36e97e@gmail.com>
Date: Thu, 25 Feb 2021 10:30:55 -0500
Content-Transfer-Encoding: quoted-printable
Message-Id: <E1F3F31C-A2DF-4BCE-826A-FC4282F77670@msweet.org>
References: <12af8541-3113-341d-6b7f-d7393203368f@gmail.com>
 <1099419D-7CC7-448C-84B1-5C35D75F7A03@msweet.org>
 <b6f4687d-fe34-c3e7-d378-a07405dc936e@redhat.com>
 <1AF4A2E5-31EC-4B89-97E1-C181FF4ED4DF@msweet.org>
 <03848a6c-7fb8-50c7-6ad9-80df4b36e97e@gmail.com>
Subject: Re: [Printing-architecture] Automatic printer setup with Printer
	Applications
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

> On Feb 25, 2021, at 10:24 AM, Till Kamppeter =
<till.kamppeter@gmail.com> wrote:
>=20
> On 25/02/2021 14:33, Michael Sweet wrote:
>> Actually, I don't think you're going to find as many broken IPP-USB =
printers as you think since all but the first couple HP models  =
implemented IPP-USB to get AirPrint certification, which means it got =
tested extensively... :)
>>=20
>=20
> When I see bug reports on OpenPrinting or Ubuntu on non-working =
IPP-over-USB printers they are usually HP, probably these old printers =
which you mean.
>=20
>> Up to you, but I would expect some user confirmation before =
installing any software on my computer...
>>=20
>=20
> Simply some pop-up like "Found Acme LaserStar 1000+. Install Acme =
Printer Application?" would be enough.

Agreed, potentially with a prompt for the admin password.  Not that I =
expect malware in the snap store (for example), but we don't want to =
make it an obvious target.

>> Why?  The printer application can just be run with the "autoadd" =
sub-command, no need to link against PAPPL for that.
>=20
> Or if you do not want to call an external executable via command line, =
do IPP with libcups to create the queue (with driver selection "auto").

The challenge there is to find the right socket to talk to... :/

________________________
Michael Sweet



