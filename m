Return-Path: <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.1\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <18af2b4b-81cd-6607-19a6-22a4a625e595@gmail.com>
Date: Sun, 9 Aug 2020 00:49:36 -0400
Content-Transfer-Encoding: quoted-printable
Message-Id: <BE27FEA8-677C-46BE-8FEF-B0BA00DE4236@msweet.org>
References: <d157a0d9-6cc4-39e2-b06f-710daeac0483@gmail.com>
 <CAABHnQ2xa00=aH+LgHpdnS3-CTtMMSYQ6u+rtzqW7VJqPWoY_w@mail.gmail.com>
 <18af2b4b-81cd-6607-19a6-22a4a625e595@gmail.com>
Subject: Re: [Printing-architecture] Printer Application for PostScript
	printers
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Sambhav Dusad <sambhavdusad24@gmail.com>, Jai Luthra <luthrajaiji@gmail.com>, dipanshu verma <dipanshu.career@gmail.com>, Aveek Basu <basu.aveek@gmail.com>

Till,

> On Aug 8, 2020, at 7:31 AM, Till Kamppeter <till.kamppeter@gmail.com> =
wrote:
>=20
> On 08/08/2020 10:32, Jai Luthra wrote:
>> For the auto-setup, I am still working on it. But according to the =
current plan(based on discussions with Michael and you), all that the =
printer application will need to do is provide a callback that takes as =
input the device id and returns the driver name(or "NULL" in case your =
application doesn't support it).
>> Please note that this is not yet a part of PAPPL
>> https://github.com/michaelrsweet/pappl/pull/36
>>=20
>=20
> Great, thanks. So this callback function is probably expected to be =
written by the individual Printer Application developers?

Yes, absolutely.  A printer application will use the device ID string to =
determine whether it can support a device.

________________________
Michael Sweet



