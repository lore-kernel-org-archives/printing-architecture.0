Return-Path: <msweet@apple.com>
DKIM-Signature: v=1; a=rsa-sha256; d=apple.com; s=mailout2048s;
	c=relaxed/simple; 
	q=dns/txt; i=@apple.com; t=1422289243; x=2286202843;
	h=From:Sender:Reply-To:Subject:Date:Message-id:To:Cc:MIME-version:Content-type:
	Content-transfer-encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-reply-to:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=l8mSRU3c6mtcqiZr9+XmmRC/rVXaeA0tmItb/5+CCfU=;
	b=lIIpTFSmivA9Fp7r7f4yBALTZv6MYgql67M1Rq6YI9HCB46c7rn/c1VYn7OJRIW3
	WyOm0TzXBve7YUVh4zMKlvu1kVBN+B0ml2zsFqdw6sm6PTCOHOHiCFeFtxnVKrTK
	92ErAztPoUBrz0+93RqcoILBjIFqddkmhF9a76FAgjOXvD3vhUTHWwdxH1DlRgvC
	gX82jZQnFXzU6VrMmXed30MB/HO8jPJ5BeIzNqbkpnmvBNmNLSzE2QA1GLvIqSAd
	eNrbbX8jpDgwa/wR/nTE0ZovZYFLvkgd/xytr0zWkVAR1hWAqC81dPV76T+lK20R
	rqPM4+rdggT8sdi7jqywtA==;
MIME-version: 1.0 (Mac OS X Mail 8.2 \(2070.4\))
Content-type: text/plain; charset=us-ascii
From: Michael Sweet <msweet@apple.com>
In-reply-to: <54C65044.7030501@gmail.com>
Date: Mon, 26 Jan 2015 11:20:39 -0500
Content-transfer-encoding: quoted-printable
Message-id: <43E8D0B5-1E23-4799-AB04-F32DDF745FD3@apple.com>
References: <54C65044.7030501@gmail.com>
Subject: Re: [Printing-architecture] Projects for GSoC 2015: Implementing
 PWG standards
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
Cc: "printing-architecture@lists.linux-foundation.org" <Printing-architecture@lists.linux-foundation.org>

Till,

> On Jan 26, 2015, at 9:33 AM, Till Kamppeter <till.kamppeter@gmail.com> =
wrote:
> ...
> 3. Fax wih IPP multi-function printers
> --------------------------------------
>=20
> Fax integration in he Linux desktop with PWG-Standard-conforming fax =
parts in multi-function devices via IPP and IPP-over-USB.

This is really just a matter of creating fax queues with PPDs containing =
"*cupsFax: true" and providing UI for the cover page (phone number, =
recipient, sender, subject, description, etc.)

CUPS itself already supports fax queues.

(and that is just if you feel there is enough demand for it - "PC fax" =
is increasingly not a supported MFP feature)

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

