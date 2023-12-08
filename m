Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 90C7483A8F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CFBF583A6B
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org BD17E803D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1702055697;
 bh=HIrtwsAWy1MdNVypn+ZQy3gxt3114EVcN7cmteJl/74=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=gH5Ll97/jLO/NMWcvCOES7vVmHBKOV6oEQLYlOB4s9ZJ3jDAtvAMtAlu9N3htj/vj
 ktVSej3TFRSg6vIEcN+vld0nwIC5G1GB5Uz1okman1A2B5/7eG0jgkUyEDPrPtOJdD
 6RLOMbCx27hBANTUNG7nb0RPPTcj3fN8QOd2l82U=
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.200.91.1.1\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <fa90fbc0-1523-4dc0-b16e-3bbb8e2dac56@apevzner.com>
Date: Fri, 8 Dec 2023 12:14:44 -0500
Content-Transfer-Encoding: quoted-printable
Message-Id: <3BC27CB9-23C9-4D9B-8862-693F255177B6@msweet.org>
References: <fa90fbc0-1523-4dc0-b16e-3bbb8e2dac56@apevzner.com>
Subject: Re: [Printing-architecture] github.com/OpenPrinting/goipp 1.1.0 and
 ipp-usb 0.9.24 announce
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Alexander Pevzner <pzz@apevzner.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Alexander,

> On Dec 8, 2023, at 11:02=E2=80=AFAM, Alexander Pevzner =
<pzz@apevzner.com> wrote:
> ...
> Please note, that fixing Pantum M7300FDW requires the similar patch in =
CUPS, which is not currently approved (see =
https://github.com/OpenPrinting/cups/pull/826).

*No*.  Fixing this printers requires that the printer manufacturer fixes =
their firmware...  It is one thing if an attribute is using an odd =
syntax (e.g. name instead of keyword), but quite another thing when they =
break a fundamental part of the IPP encoding that has known, *previously =
exploited* security implications.  Think of it as a malicious USB device =
that causes an issue when plugged into a computer...

________________________
Michael Sweet

