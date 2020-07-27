Return-Path: <bT.dlrtkb0=vsxnu2c1fvc3cc=r6gzs8@return.smtpservice.net>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=smtpservice.net; s=m98gg0.a1-4.dyn; x=1595885055; h=Feedback-ID:
 X-Smtpcorp-Track:To:Message-Id:Date:From:Subject:Reply-To:Sender:
 List-Unsubscribe; bh=oPv8eTgphEifF9AILA3bnO+A7P0+JGXLP8LhDdkQNZM=; b=Su4r9fZa
 ATaudm7dNGXKATHdLQmzpMBiy/xQG1C1bw1E0Fjotx6r8x0Ts/rU10jyyW6FPotsUNK3fZXB6Azwu
 ckG/YZxP79G5CRfHTcFWn/fmU3CsMg/91g2NYFfpmsRUBFfYTR6m6u/k8OvC30kDqmmKhvHznCXi/
 WxjXy5or+8j31oow+L3TSFcvnOL81JgAwp8sYJtxLFcvCJJRPgsiK0Qp6WNtZDVPagFOQrk2YkSwc
 yqEp1MHP2Z5f+3CijIj470SvzoWGOMH37wEVZ7f9Nqe591iq7hZ7vRmF0O1OyNoP8wX295uTUBroS
 ehuz7+J0fRbXQ+hfvRdymnYwQw==;
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
From: henri <henri@stmargarets.school.nz>
In-Reply-To: <16921E5F-00D1-4F92-B029-4CB755D8A45C@msweet.org>
Date: Tue, 28 Jul 2020 08:58:20 +1200
Content-Transfer-Encoding: quoted-printable
Message-Id: <FF3368B0-A7EE-443C-A8B0-DAF1F3306457@stmargarets.school.nz>
References: <1a1f8955-f2ab-b741-a6af-8950bbbe8b15@gmail.com>
 <588DCEE8-BBFC-4C93-AE76-1DDE16E24CDA@msweet.org>
 <d2cdf110-8a80-7180-34f7-e6666af8d663@gmail.com>
 <16921E5F-00D1-4F92-B029-4CB755D8A45C@msweet.org>
Subject: Re: [Printing-architecture] PostScript printers without PPD files?
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@msweet.org>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Till Kamppeter <till.kamppeter@gmail.com>

Hi,=20

You could use a generic PostScript PPD and that may allow you to print =
with basic functionality to the printer.

Henri=20


> On 28/07/2020, at 8:55 AM, Michael Sweet <msweet@msweet.org> wrote:
>=20
> Till,
>=20
>> On Jul 27, 2020, at 4:39 PM, Till Kamppeter =
<till.kamppeter@gmail.com> wrote:
>> ...
>> Is there already some free software code to query an arbitrary, =
non-IPP PostScript printer so that one can create a PPD for it?
>=20
> Not that I'm aware of, but you can look at the generic PostScript PPD =
for inspiration on the commands you'd send.
>=20
> ________________________
> Michael Sweet
>=20
>=20
>=20
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> =
https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture

