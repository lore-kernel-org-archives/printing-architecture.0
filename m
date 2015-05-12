Return-Path: <msweet@apple.com>
DKIM-Signature: v=1; a=rsa-sha256; d=apple.com; s=mailout2048s;
	c=relaxed/simple; 
	q=dns/txt; i=@apple.com; t=1431400640; x=2295314240;
	h=From:Sender:Reply-To:Subject:Date:Message-id:To:Cc:MIME-version:Content-type:
	Content-transfer-encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-reply-to:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=aZ3Sgs0lO+oBSKTH/JbgNq/hZdf5SWfTZ2WIb7PwXQA=;
	b=ANP6a8J00w0t4GhlKy43J6b6uewtDiVgFl+yjpSwDZWxm+G/WVk53NSp+VK44QL3
	JATSsZwkgeqmmelyo7zM55XjjmS4EsFhXk+1qVpwTcEGMHb6KduWCL9BQiknwb75
	f5r7ATqc9W/BEWTeuqdYBzl+gxU/sGOSwK+dGvcE29zFITZmrmKVpKevb3vs2U9d
	eMonlydoaI9n4BAMErme7OIZCnkzpA4lLhP3FQDSSNDXXuzSbz2AcWnbP3RRhl+9
	27xjFSxYqu+ivDsEELJLiKTTiL54svhHM0FiNI2r56eHr+R7d6W5wqQbcdANEsQU
	H4xXbW025vPI4mrDdBgXgw==;
MIME-version: 1.0 (Mac OS X Mail 8.2 \(2098\))
Content-type: text/plain; charset=us-ascii
From: Michael Sweet <msweet@apple.com>
In-reply-to: <55516852.7020901@gmail.com>
Date: Mon, 11 May 2015 23:17:16 -0400
Content-transfer-encoding: quoted-printable
Message-id: <985151A7-6F30-427C-A659-87869D7295F1@apple.com>
References: <5550D4B1.8030508@gmail.com>
	<EA92BE17-AC3A-4843-86F9-60F846220A3B@apple.com>
	<55516852.7020901@gmail.com>
Subject: Re: [Printing-architecture] IPP(-over-USB) scanners - How to
 distinguish them from printers
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, "Kumar,
	Sanjay" <sanjay.kumar14@hp.com>

Perhaps I wasn't clear enough; I meant the IPP USB devices that do not =
implement the IPP part... :) You can expect a 4xx response (usually 404 =
Not Found) if you try to POST to /ipp/print.


> On May 11, 2015, at 10:41 PM, Till Kamppeter =
<till.kamppeter@gmail.com> wrote:
>=20
> On 05/11/2015 11:39 PM, Michael Sweet wrote:
>> The non-IPP USB scanners will not respond to a Get-Printer-Attributes =
request.
>>=20
>=20
> And IPP-over-USB devices without print functionality, like these =
stand-alone scanners?
>=20
>   Till
>=20

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

