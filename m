Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=f8+0t9WMnGUn1NZil8+XkUjvXd0YYgoDarMcD7sa8b8=;
	b=rEAisHiDVZG9VtsfN+7480d1H2UIbh9oWWB/7lAVJbr1skSzJ9y96CtZHqxoYVfkqj
	Qa2K+S/lWI0kQBiNFBXFfQSqYjLa/zEWwoxBLlIPVHbozIqpbS/CUojNcA54hLIQYVbD
	SFNx2leWdB/gtJkgNMOvXfUdsBVKouOJRdfiQdhgsXWURR3sSs/uJYcyPyFwGs/4JB5m
	kLAR0hAZz44I6Np5V4JBKFf7hxfeuAFaIcjbDPOrcLJlG9Z3J7FzrxCJx8akBHwEocnK
	ROOH+Cl0StK5IZbCzvuL9yVx61KSt86461tKMMJcz44W2TMCWlzAM6ko0q1lvesKbmvH
	y+OA==
Message-ID: <53D3D042.7030104@gmail.com>
Date: Sat, 26 Jul 2014 17:58:58 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <53CFCE94.8060605@gmail.com>
	<F1E13EA9-5DEE-4A3B-9E49-1BBD875C355E@apple.com>
	<CAN40gStkAXa9Yi8n_csS5UMprEK28j7bH3L=PexbwTQi+ECDuA@mail.gmail.com>
	<E7CD87FB-A00C-4674-A2B6-D561388F3502@apple.com>
	<CAN40gSs6EgVk00nwS=XxLZ2xUVuh=R5ghks=vVDSLwt=MJG1CA@mail.gmail.com>
In-Reply-To: <CAN40gSs6EgVk00nwS=XxLZ2xUVuh=R5ghks=vVDSLwt=MJG1CA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] SLP (Service Location Protocol)
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Ira McDonald <blueroofmusic@gmail.com>, Michael Sweet <msweet@apple.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Pete Zannucci <pzaan@us.ibm.com>

On 07/24/2014 04:10 AM, Ira McDonald wrote:
> Hi Mike,
> O f course, you're right that DNS-SD won't wake up printers.
> 
> I agree that SLP without a DA shouldn't be used automatically.
> It would wake up printers.
> 
> But the whole idea is  a spectrum of printer discovery:
> a) DNS-SD;
> b) SLP to a DA - found via DHCP option (RFC 2610) or SLP DA
> broadcast advertising;
> c) LDAP w/ Printer Schema, (RFC 3712).
> 
> If this doesn't work well in home networks, well it doesn't.  Then
> you just use DNS-SD/Bonjour and live with the modest number
> of discovered capabilities before direct contact with the Printer
> during the Print client dialogue.

Can it be that SLP got obsolete?

I have looked into how to get SLP working under Ubuntu and when
installing the SLP daemon (package "slpd") I ran into the following bug:

https://bugs.launchpad.net/ubuntu/+source/openslp-dfsg/+bug/1047561

It seems that in both Debian and Ubuntu SLP is unmaintained. The Debian
package is orphaned (has no official maintainer) and not touched for two
and a half years. Ubuntu simply auto-syncs the package from Debian, no
one actually working on this package. The bug report is probably read
only by the people who are suffering the problem, not by anyone who is
supposed to fix the bug.

So this gives me the impression that for nearly no one SLP is missing,
and so that SLP is perhjaps obsolete.

   Till

