Received: from mail.valdk.tel (mail.valdk.tel [185.177.150.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65D8F3A382B
	for <printing-architecture@lists.linux.dev>; Thu,  6 Aug 2026 19:21:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.177.150.13
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786044089; cv=none; b=U25GZP8MIYPxYUEu/whdWyyqkryMYm2lUDTH0Sa6VN+xZbY9szJ55McNunzj9Z/MQ84p99nb0lFtFi/Rp/+Y4ilmuJjFjAaWdFh4WNZyhexzzG7vrc914mTLLvYMnXBBjZcsKjS/6MYz09Dt8ZyZOumJdKI9GX4HJ1F5Y16VZz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786044089; c=relaxed/simple;
	bh=eKoPq21dlPt+tUQX/EtcQ99CVDDSpqQr7A+jM7avim4=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=FNt0WMuQWuyAuEilIXQnbKKNLZGgZh36FgdFifqIE0zGXovmAKQ65wDEM9ldqel2zyCUNNzGAEySjX6St02PMQIVb6lTh/rl+BgFUKfExDH/DdN0rUMdQouIZfaakGuruGjz3qDmSGeou5RzahHO2m9Jv2szdQ7O34M6hUMTZck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=valdikss.org.ru; spf=pass smtp.mailfrom=valdikss.org.ru; dkim=pass (2048-bit key) header.d=valdikss.org.ru header.i=@valdikss.org.ru header.b=LrePbjjY; arc=none smtp.client-ip=185.177.150.13
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=valdikss.org.ru
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=valdikss.org.ru
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=valdikss.org.ru header.i=@valdikss.org.ru header.b="LrePbjjY"
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id ED403241D213;
	Thu, 06 Aug 2026 22:13:50 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=valdikss.org.ru;
	s=msrv; t=1786043633; h=from:subject:date:message-id:to:mime-version:content-type:
	 content-language:in-reply-to:references:autocrypt;
	bh=yUZPHV8/i3dKmlwDFfJcQHoVvWrTKwhScxmIPdUQeKQ=;
	b=LrePbjjYxvS825fdviRnC/0XlU7CnpNpx1ezBJwVpT+47KEAct/YTdEh8gXjZdYKg2Sk83
	hFDulkg49rEKaYKD+h9lkNktqZb/Q5laElM+MWOeT+Q6Dga8oie980D2s2hwv2zWLxfmCB
	xKgZq+VPGBQwROkBHK1IHd6WkTijhyD5pZ/2bBpSnMKaX/g+g2rQJRggvRc5BxpCx9ADSg
	REqU6FjmP0JAN8zIgfLKcX0gXpQ/P6jbd3/MK7WYV9v3dM7HgPGg+Y0wNdTvmNqhnoHoMf
	38Kzg1x5eDcC3BRZFiV/91gqoRdvnTENMLvqJgtXJ97NPh+RwK0anQ6/8wFFow==
Message-ID: <b724d8f0-f11a-4679-90a6-c87f2c000762@valdikss.org.ru>
Date: Thu, 6 Aug 2026 22:13:48 +0300
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: A working Samsung printer made obsolete by one unsupported driver
To: Till Kamppeter <till.kamppeter@gmail.com>, Bas Homans <bas@homans.nl>,
 OpenPrinting <printing-architecture@lists.linux.dev>,
 Ayush Singh <ayushsinghceee@gmail.com>, Pankaj Kumar <pankaj955956@gmail.com>
References: <CC3A107F-882A-407F-9419-120ECC3E4DBD@homans.nl>
 <f9f9d69c-5662-4070-b675-68b096e62f99@gmail.com>
Content-Language: ru, en-US
From: ValdikSS <iam@valdikss.org.ru>
Autocrypt: addr=iam@valdikss.org.ru; keydata=
 xsFNBFPBBkkBEADaww9j8CxzrWLEe+Ho9ZsoTFThdb3NZA3F+vRMoMyvBuy6so9ZQZgCXoz+
 Fl8jRF6CYOxoe2iHgC3VisT6T0CivyRQexGQ8bga6vvuXHDfZKt1R6nxPoBJLeyk/dFQk0eC
 RB81SQ+KHh2AUaTHZueS4m7rWg42gGKr57s+SkyqNYQ3/8sk1pw+p+PmJ0t4B1xRsTmdJEfO
 RPq+hZp8NfAzmJ4ORWeuopDRRwNmlHrvAqQfsNPwzfKxpT1G4bab4i7JAfZku2Quiiml1cI3
 VKVf7FdR+HauuDXECEUh5vsoYR2h8DyfJQLOBi3kbAJpDlkc/C/9atEubOI/blxshxA8Cv/B
 Gkpf//aAthFEBnbQHFn40jSDIB+QY2SLcpUvSWmu5fKFICyOCDh6K/RQbaeCDQD0L2W6S/65
 28EOHALSFqkF6RkAKXBDgT9qEBcQk9CNWkA6HcpsTCcNqEdsIlsHXVaVLQggBvvvJRiWzJY0
 QFRxPePnwuHCbnFqpMFP7BQKJyw0+hSo4K3o+zm/+/UZANjHt3S126pScFocEQVIXWVhlDrH
 2WuOlRrvfh6cTiD4VKPRiii2EJxA+2tRZzmZiHAeYePq0LD8a0cDkI3/7gtPbMbtgVv2JgpR
 RZubPS3On+CWbcp9UPqsOnhp6epXPHkcHokGYkLo7xzUBsjENQARAQABzR5WYWxkaWtTUyA8
 aWFtQHZhbGRpa3NzLm9yZy5ydT7CwY4EEwEIADgWIQQyKiC9dymZLfa/vWBc1yAu74j3cgUC
 XqmcAgIbAwULCQgHAgYVCgkICwIEFgIDAQIeAQIXgAAKCRBc1yAu74j3coeKD/9FKRS1CcO6
 54uChXmsgtoZjkexjagl2kTXtde5FFPh8Hxub+tNRYIUOYilx5R8pidmKZpVGVlPP3Rzf/Vf
 tr9YiEhSinQ1waWV5VfU43R5qTo0/I7Ni/vjbboAGULg1bPv0N3lnC5NOEq34WauuXJbfQBl
 uQpHaG6gGrJyy9hmD0LI9he3JpGItjqicJ4MS3XJO/YmC0UNsvpeuh1Fi6Y+QiJ+AgpYWCgX
 t8VaoGuinQePLu/Iy+gp5Ie+JTPWt2AKOJylCs6473VdY8m+geJD8yot1uL9mXtRdL8uKXKv
 2R4EbEaGVJ0/ls0v0TAohfeFQDdwzGQjk1aBBfdbhDcVmo8slb0ry53AbzO/nxS0pEycvPXu
 4pC3pJKCe2pPUuNrCj6Qoijtv0abLN1VocJ2dTsXNgOVHnrEvu032kjTyiGJeQVRgl90Sv/H
 S/17JHUdTGfoEkTHfivqZOYv/ccYpqh0M1TUE5xgPVnWX13uoBswVZimLKkIPfOxtmQ8Wge2
 WlDR/QLwIkGm2b9fBI68lNgBBPv7k16dQL/5ugSDvZNWSThGoYL6i8a3jUJfK8JilIJhsh+D
 90MfCAbfiECALc0HOmC4KVRY/zIVMZgwFm0PjNtID0TmWHoFb8rt5sVyLf//Xco4SVk80wPQ
 /TRnOGM2InosX3l2YoxBrT5Epc7BTQRTwQZJARAAo5h4vuxyV04K1mhVsqoY05kruPrMVptv
 +uopIlteLfn/9EM0Mn10FJA5WHLWqTT/TuFN+wxkGa1KRnziLpbc/Zq2L/AWthDEb9+pNEjr
 3HfT7H71Rjsa3GEYiFgVtPYIQZ8RwuvYv31FgXedHBEXYrhm+kKh8d0A76nHc9jUJJKZyja6
 Wtz2SP6QFYnlf9rCXMiyB5d4l0xZgbWWok8Fol9tZbRte+Lwn1QtmpNhtDbEb28I3W3VVYnk
 LYtWaTWo8udVyngjGCM3zLV4VMVDZi77Fycel1UGNQTCyjeNuhRyL6Ms9IOGVcKWURJWXbzZ
 BSBzqc/PGvRi+A1ytJtEKWyZHrx1Yf5va3vDqRKYBxhOtnf5Fh+nd0e37V8yUb3ofLXgG30A
 mR14xobjaF3ziS0D5w03611YpPlIKwWogQeOVHlinYySIlQtKEsx5pQYgdQ0PzFy53xUsx47
 EVLeRKw5PG4uyH79mgyNEFhn+tGMUlSOYDngIIiSm0k0v8+hyP+T1XLDy4Uo4IQXTdRZ5/tN
 AIlhNEftQyvI3wZC9IZoiZLOgw7qsCrBJ5VMwweZzi94PYCjQPUACr8yF5taJ1lQKuUfltR1
 iGYb6Vdf9hnNs5E0Flo2WZfaywfMjAh5I9GhUKRC6BgfpYtmgFbGzDbhr1idSH3NbMUD3wg+
 TP0AEQEAAcLBXwQYAQIACQUCU8EGSQIbDAAKCRBc1yAu74j3coMhD/wJiHIe7DuvhWr39An/
 yA9zAqNTvQEdm3vUIw5UQjqn45IOnn/R+leps31hVrROSzhpXeeGtOh17+jjt2hbw3KRrgYi
 V+qWiNBx7Ux3UOGOCqeAhnztTn0uHJUiarEYPhTm6K4tJB1Ob6RG7+ftIBrD/fUCCDWIEOT8
 7Q0xj0IH94Gxo1s+iRrRnNwyQXa821EzqqZgsv4fKvQmGtGX3sPDrXV057tNaF7jmrWBkJZt
 heU8LaH4EAmcJc1k30k1ql8T4kXO1qKlJvMdLji39fq7kWA6xdgpjwI5EHaIAj6R2T48iWVw
 Fu2vLSZPR983j+Eh7VwGnvAh9Tj19uXYPUBqgAzIYDWWOGiM2FsezzWQ8rADAcXNMyV+/a4S
 Kcur0yPLYbL5mP5TWLb4ucCF/6eDgcNG6u1U1kKslRXzVc/3l8ZoX4Djs0nIyjwsbhuwiL8x
 rvpQq1VvOlkpyypS8w5t4U12yEeO2XKiHUcnCdFCk5yd1Vg77EulqY06nCJgaVMDSxLowtqL
 6V6G7SxBEhcsR4fmpY7nj4GoymEGom3dLqe2JjTpVTJcuuFleHHI/lbcBa5hiN8a7+c8A9K2
 FzgxriVWpfwm0XovNBjugipYItle3p/18YCjVnUoXEsgrjUOgAaQ2RVHJzRz07tKX1DBhFRD
 OEcVmRU/pw5/zoQyQg==
In-Reply-To: <f9f9d69c-5662-4070-b675-68b096e62f99@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------VILLHvZm2oyu4I0OqKlMsbZA"
X-Last-TLS-Session-Version: TLSv1.3

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------VILLHvZm2oyu4I0OqKlMsbZA
Content-Type: multipart/mixed; boundary="------------0XTmkGM5pNnbVzrj6fYKo5ek";
 protected-headers="v1"; hp="clear"
Message-ID: <b724d8f0-f11a-4679-90a6-c87f2c000762@valdikss.org.ru>
Date: Thu, 6 Aug 2026 22:13:48 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: A working Samsung printer made obsolete by one unsupported driver
To: Till Kamppeter <till.kamppeter@gmail.com>, Bas Homans <bas@homans.nl>,
 OpenPrinting <printing-architecture@lists.linux.dev>,
 Ayush Singh <ayushsinghceee@gmail.com>, Pankaj Kumar <pankaj955956@gmail.com>
References: <CC3A107F-882A-407F-9419-120ECC3E4DBD@homans.nl>
 <f9f9d69c-5662-4070-b675-68b096e62f99@gmail.com>
Content-Language: ru, en-US
From: ValdikSS <iam@valdikss.org.ru>
Autocrypt: addr=iam@valdikss.org.ru; keydata=
 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
 OEcVmRU/pw5/zoQyQg==
In-Reply-To: <f9f9d69c-5662-4070-b675-68b096e62f99@gmail.com>

--------------0XTmkGM5pNnbVzrj6fYKo5ek
Content-Type: multipart/alternative;
 boundary="------------hvewzhKAG2bS4tNNGaMvK2Oc"

--------------hvewzhKAG2bS4tNNGaMvK2Oc
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGVsbG8sIHRoaXMgcHJpbnRlciBpcyBzdXBwb3J0ZWQgaW4gU3BsaVguDQoNClNwbGlYIGlu
IGdlbmVyYWwgY291bGQgYmUgY29tcGlsZWQgYW5kIHVzZWQgb24gbWFjT1MsIEknbSBhbG1v
c3QgY2VydGFpbiANCnRoYXQgdGhlIG5ld2VzdCBtYWNPUyBpcyBhbHNvIHN1cHBvcnRlZC4g
SG93ZXZlciB0aGUgYnVpbGQgc3lzdGVtIGlzIG5vdCANCnR1bmVkIGZvciBtYWNPUywgYW5k
IEkgaGF2ZSBubyBpZGVhIGhvdyBtb2Rlcm4gTWFjcyB3b3JrLCB3aGljaCBmaWxlcyBnbyAN
CndoZXJlLCBhbmQgb25seSBoZWFyZCBhYm91dCBub3Rhcml6YXRpb24gYW5kIHNpZ25hdHVy
ZXMuDQoNCkhlcmUgYXJlIHRoaXJkLXBhcnR5IGF0dGVtcHMsIGZvciBvbGRlciB2ZXJzaW9u
cyB0aG91Z2g6DQoNCiAgKiBodHRwczovL2dpdGh1Yi5jb20vamFucnVldGgvc3BsaXgtMi4w
LjAtbWFjb3MNCiAgKiBodHRwczovL2dpdGh1Yi5jb20vcGhvdG92aXJ1cy9zcGxpeC1tYWNv
cw0KDQpUaGlzIHNlZW1zIHRvIGJlIHRoZSBjb21waWxhdGlvbiBwYXRjaDogDQpodHRwczov
L2dpdGh1Yi5jb20vcGhvdG92aXJ1cy9zcGxpeC1tYWNvcy9jb21taXQvZDU2M2FkZWVlNzA1
NjYwZDZhNDI2YmZjYWM0MTkyNTUzM2QxMjhiYQ0KDQpPdmVyYWxsLCBpZiBhbnlvbmUgaGF2
ZSBNYWMgYW5kIGtub3cgaG93IHRvIGNvbXBpbGUgYW5kIGluc3RhbGwgZm9yIGl0LCANCnBs
ZWFzZSB3cml0ZSB0aGUgaW5zdHJ1Y3Rpb24gYW5kL29yIGFkZCBjb21waWxhdGlvbiBpbnRv
IFNwbGlYJ3MgR2l0aHViIA0KQWN0aW9ucyBmaWxlIG9uIG1hY29zIGJ1aWxkZXIuDQoNCk9y
IG1heWJlIGl0J3MgcG9zc2libGUgdG8gd3JpdGUgYSBob21lYnJldyBmaWxlLg0KDQoNCk9u
IDgvNi8yNiA4OjE5IFBNLCBUaWxsIEthbXBwZXRlciB3cm90ZToNCj4gSGksDQo+DQo+IHRo
YW5rcyBmb3IgeW91ciBtYWlsLg0KPg0KPiBJIGFtIGZvcndhcmRpbmcgaXQgdG8gb3VyIG1h
aWxpbmcgbGlzdCAocGxlYXNlIHN1YnNjcmliZSB0byBpdCkgYW5kIA0KPiBhbHNvIHRvIG91
ciBtYWludGFpbmVycyBhbmQgY29udHJpYnV0b3JzIGZvciBsZWdhY3kgcHJpbnRlciBkcml2
ZXJzLg0KPg0KPiDCoMKgIFRpbGwNCj4NCj4NCj4gT24gOC82LzI2IDE3OjIxLCBiYXNAaG9t
YW5zLm5sIHdyb3RlOg0KPj4gRGVhciBNciBCcm91c3NhcmQsIEhQIFN1c3RhaW5hYmxlIElt
cGFjdCB0ZWFtLCBhbmQgT3BlblByaW50aW5nIA0KPj4gY29sbGVhZ3VlcywNCj4+DQo+PiBJ
IGFtIHdyaXRpbmcgYWJvdXQgYSBzbWFsbCBidXQgcmF0aGVyIHRlbGxpbmcgZXhhbXBsZSBv
ZiBhdm9pZGFibGUgDQo+PiBlbGVjdHJvbmljIHdhc3RlLg0KPj4NCj4+IE15IFNhbXN1bmcg
TUwtMjE2MCBsYXNlciBwcmludGVyIGlzIG1lY2hhbmljYWxseSBzb3VuZCwgcmVsaWFibGUs
IA0KPj4gZWNvbm9taWNhbCwgYW5kIGVudGlyZWx5IGFkZXF1YXRlIGZvciBpdHMgcHVycG9z
ZS4gT24gbXkgDQo+PiBBcHBsZS1zaWxpY29uIE1hYyBtaW5pLCB0aGUgcHJpbnRlciBpcyBk
ZXRlY3RlZCBjb3JyZWN0bHkgYW5kIHByaW50IA0KPj4gam9icyBhcmUgc3VjY2Vzc2Z1bGx5
IHNwb29sZWQuIEhvd2V2ZXIsIG9uIGJvdGggbWFjT1MgMjYgYW5kIG1hY09TIDI3IA0KPj4g
UHVibGljIEJldGEsIHByaW50aW5nIHRoZW4gc3RvcHMgYmVjYXVzZSB0aGUgbGVnYWN5IFNh
bXN1bmcgcHJpbnQgDQo+PiBzb2Z0d2FyZSBpcyByZWplY3RlZCBhcyBpbmNvbXBhdGlibGUu
DQo+Pg0KPj4gQWlyUHJpbnQgaXMgbm90IGF2YWlsYWJsZSBvbiB0aGlzIG1vZGVsLCBhbmQg
dGhlIHByaW50ZXIgdXNlcyANCj4+IFNhbXN1bmfigJlzIFNQTCBwcmludGluZyBsYW5ndWFn
ZSByYXRoZXIgdGhhbiBzdGFuZGFyZCBQQ0wgb3IgDQo+PiBQb3N0U2NyaXB0LiBDb25zZXF1
ZW50bHksIGEgcGVyZmVjdGx5IGZ1bmN0aW9uYWwgbWFjaGluZSBoYXMgDQo+PiBlZmZlY3Rp
dmVseSBiZWVuIHR1cm5lZCBpbnRvIGVsZWN0cm9uaWMgd2FzdGUgc29sZWx5IGJlY2F1c2Ug
YSBzbWFsbCANCj4+IHNvZnR3YXJlIHRyYW5zbGF0aW9uIGxheWVyIGlzIG5vIGxvbmdlciBt
YWludGFpbmVkLg0KPj4NCj4+IEhQIGFjcXVpcmVkIFNhbXN1bmfigJlzIHByaW50ZXIgYnVz
aW5lc3MgaW4gMjAxNy4gSSBkbyBub3QgZXhwZWN0IA0KPj4gaW5kZWZpbml0ZSBmdWxsIGNv
bW1lcmNpYWwgc3VwcG9ydCBmb3IgZXZlcnkgbGVnYWN5IHByb2R1Y3QuIEkgZG8sIA0KPj4g
aG93ZXZlciwgYmVsaWV2ZSB0aGF0IG1ha2luZyBvdGhlcndpc2Ugc2VydmljZWFibGUgaGFy
ZHdhcmUgdW51c2FibGUgDQo+PiB0aHJvdWdoIHNvZnR3YXJlIGFiYW5kb25tZW50IGlzIGRp
ZmZpY3VsdCB0byByZWNvbmNpbGUgd2l0aCBIUOKAmXMgDQo+PiBzdGF0ZWQgY2lyY3VsYXJp
dHkgcHJpbmNpcGxlcyBvZiBleHRlbmRpbmcgdXNlZnVsIHByb2R1Y3QgbGlmZSANCj4+IHRo
cm91Z2ggcmVwYWlyLCByZWZ1cmJpc2htZW50IGFuZCByZXVzZS4NCj4+DQo+PiBJIHRoZXJl
Zm9yZSBhc2sgSFAgdG8gY29uc2lkZXIgb25lIG9mIHRoZSBmb2xsb3dpbmcgcHJvcG9ydGlv
bmF0ZSANCj4+IHNvbHV0aW9uczoNCj4+DQo+PiDCoDEuDQo+Pg0KPj4gwqDCoMKgIFJlbGVh
c2UgYSBzaWduZWQsIEFwcGxlLXNpbGljb24tY29tcGF0aWJsZSB2ZXJzaW9uIG9mIHRoZSBT
YW1zdW5nIA0KPj4gU1BMIHByaW50DQo+PiDCoMKgwqAgZmlsdGVyOw0KPj4NCj4+IMKgMi4N
Cj4+DQo+PiDCoMKgwqAgUmVsZWFzZSB0aGUgcmVsZXZhbnQgbGVnYWN5IFNQTCBkcml2ZXIg
c291cmNlIGNvZGUgYW5kL29yIHRlY2huaWNhbA0KPj4gwqDCoMKgIHNwZWNpZmljYXRpb25z
IHVuZGVyIGEgc3VpdGFibGUgb3Blbi1zb3VyY2UgbGljZW5jZSwgZW5hYmxpbmcgDQo+PiBP
cGVuUHJpbnRpbmcNCj4+IMKgwqDCoCBhbmQgdGhlIFNwbGlYIGNvbW11bml0eSB0byBtYWlu
dGFpbiBpdDsNCj4+DQo+PiDCoDMuDQo+Pg0KPj4gwqDCoMKgIElmIG5laXRoZXIgb3B0aW9u
IGlzIHBvc3NpYmxlLCBleHBsYWluIHdoYXQgbGVnYWwgb3IgdGVjaG5pY2FsIA0KPj4gb2Jz
dGFjbGUNCj4+IMKgwqDCoCBwcmV2ZW50cyBIUCBmcm9tIGNvb3BlcmF0aW5nIHdpdGggdGhl
IGV4aXN0aW5nIG9wZW4tc291cmNlIA0KPj4gcHJpbnRpbmcgY29tbXVuaXR5Lg0KPj4NCj4+
IFRoaXMgaXMgbm90IG1lcmVseSB0aGVvcmV0aWNhbDogT3BlblByaW50aW5n4oCZcyBTcGxp
WCBwcm9qZWN0IGFscmVhZHkgDQo+PiBwcm92aWRlcyBzdXBwb3J0IGZvciB0aGUgTUwtMjE2
MCBmYW1pbHkgb24gTGludXguIFRoZSBuZWNlc3NhcnkgDQo+PiBrbm93bGVkZ2UgYW5kIGRl
dmVsb3BlciBjb21tdW5pdHkgdGhlcmVmb3JlIGV4aXN0OyB0aGV5IG1lcmVseSBuZWVkIA0K
Pj4gc3VmZmljaWVudCBkb2N1bWVudGF0aW9uLCBzb3VyY2UgYWNjZXNzIG9yIGNvb3BlcmF0
aW9uIGZyb20gdGhlIA0KPj4gcmlnaHRzIGhvbGRlci4NCj4+DQo+PiBQbGVhc2Ugcm91dGUg
dGhpcyBtZXNzYWdlIHRvIHRoZSB0ZWFtcyByZXNwb25zaWJsZSBmb3IgU2Ftc3VuZyBsZWdh
Y3kgDQo+PiBwcmludCBlbmdpbmVlcmluZywgU3VzdGFpbmFibGUgSW1wYWN0LCBhbmQgb3Bl
bi1zb3VyY2Ugb3IgDQo+PiBpbnRlbGxlY3R1YWwtcHJvcGVydHkgbGljZW5zaW5nLiBJIHdv
dWxkIGFwcHJlY2lhdGUgYSBzdWJzdGFudGl2ZSANCj4+IHJlc3BvbnNlIGFzIHRvIHdoZXRo
ZXIgSFAgaXMgd2lsbGluZyB0byBwdXJzdWUgYW55IG9mIHRoZXNlIG9wdGlvbnMuDQo+Pg0K
Pj4gSSB3b3VsZCBnbGFkbHkgaGF2ZSBwcmludGVkIGFuZCBwb3N0ZWQgdGhpcyBsZXR0ZXIs
IGJ1dCB1bmZvcnR1bmF0ZWx5IA0KPj4gSFDigJlzIHdpdGhkcmF3YWwgb2Ygc29mdHdhcmUg
c3VwcG9ydCBmb3IgbXkgb3RoZXJ3aXNlIGZ1bmN0aW9uYWwgDQo+PiBwcmludGVyIHByZXZl
bnRlZCBtZSBmcm9tIGRvaW5nIHNvLg0KPj4NCj4+IEtpbmQgcmVnYXJkcywNCj4+DQo+PiBC
YXMgSG9tYW5zDQo+Pg0KPj4NCj4+IFRoZSBOZXRoZXJsYW5kcw0KPj4NCj4NCg==
--------------hvewzhKAG2bS4tNNGaMvK2Oc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Hello, this printer is supported in SpliX.</p>
    <p>SpliX in general could be compiled and used on macOS, I'm almost
      certain that the newest macOS is also supported. However the build
      system is not tuned for macOS, and I have no idea how modern Macs
      work, which files go where, and only heard about notarization and
      signatures.</p>
    <p>Here are third-party attemps, for older versions though:</p>
    <ul>
      <li><a class=3D"moz-txt-link-freetext" href=3D"https://github.com/j=
anrueth/splix-2.0.0-macos">https://github.com/janrueth/splix-2.0.0-macos<=
/a></li>
      <li><a class=3D"moz-txt-link-freetext" href=3D"https://github.com/p=
hotovirus/splix-macos">https://github.com/photovirus/splix-macos</a></li>=

    </ul>
    <p>This seems to be the compilation patch:
<a class=3D"moz-txt-link-freetext" href=3D"https://github.com/photovirus/=
splix-macos/commit/d563adeee705660d6a426bfcac41925533d128ba">https://gith=
ub.com/photovirus/splix-macos/commit/d563adeee705660d6a426bfcac41925533d1=
28ba</a></p>
    <p>Overall, if anyone have Mac and know how to compile and install
      for it, please write the instruction and/or add compilation into
      SpliX's Github Actions file on macos builder.</p>
    <p>Or maybe it's possible to write a homebrew file.</p>
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">On 8/6/26 8:19 PM, Till Kamppeter
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:f9f9d69c-5662-4070-b675-68b096e62f99@gmail.com">Hi,
      <br>
      <br>
      thanks for your mail.
      <br>
      <br>
      I am forwarding it to our mailing list (please subscribe to it)
      and also to our maintainers and contributors for legacy printer
      drivers.
      <br>
      <br>
      =C2=A0=C2=A0 Till
      <br>
      <br>
      <br>
      On 8/6/26 17:21, <a class=3D"moz-txt-link-abbreviated" href=3D"mail=
to:bas@homans.nl">bas@homans.nl</a> wrote:
      <br>
      <blockquote type=3D"cite">Dear Mr Broussard, HP Sustainable Impact
        team, and OpenPrinting colleagues,
        <br>
        <br>
        I am writing about a small but rather telling example of
        avoidable electronic waste.
        <br>
        <br>
        My Samsung ML-2160 laser printer is mechanically sound,
        reliable, economical, and entirely adequate for its purpose. On
        my Apple-silicon Mac mini, the printer is detected correctly and
        print jobs are successfully spooled. However, on both macOS 26
        and macOS 27 Public Beta, printing then stops because the legacy
        Samsung print software is rejected as incompatible.
        <br>
        <br>
        AirPrint is not available on this model, and the printer uses
        Samsung=E2=80=99s SPL printing language rather than standard PCL =
or
        PostScript. Consequently, a perfectly functional machine has
        effectively been turned into electronic waste solely because a
        small software translation layer is no longer maintained.
        <br>
        <br>
        HP acquired Samsung=E2=80=99s printer business in 2017. I do not =
expect
        indefinite full commercial support for every legacy product. I
        do, however, believe that making otherwise serviceable hardware
        unusable through software abandonment is difficult to reconcile
        with HP=E2=80=99s stated circularity principles of extending usef=
ul
        product life through repair, refurbishment and reuse.
        <br>
        <br>
        I therefore ask HP to consider one of the following
        proportionate solutions:
        <br>
        <br>
        =C2=A01.
        <br>
        <br>
        =C2=A0=C2=A0=C2=A0 Release a signed, Apple-silicon-compatible ver=
sion of the
        Samsung SPL print
        <br>
        =C2=A0=C2=A0=C2=A0 filter;
        <br>
        <br>
        =C2=A02.
        <br>
        <br>
        =C2=A0=C2=A0=C2=A0 Release the relevant legacy SPL driver source =
code and/or
        technical
        <br>
        =C2=A0=C2=A0=C2=A0 specifications under a suitable open-source li=
cence,
        enabling OpenPrinting
        <br>
        =C2=A0=C2=A0=C2=A0 and the SpliX community to maintain it;
        <br>
        <br>
        =C2=A03.
        <br>
        <br>
        =C2=A0=C2=A0=C2=A0 If neither option is possible, explain what le=
gal or
        technical obstacle
        <br>
        =C2=A0=C2=A0=C2=A0 prevents HP from cooperating with the existing=
 open-source
        printing community.
        <br>
        <br>
        This is not merely theoretical: OpenPrinting=E2=80=99s SpliX proj=
ect
        already provides support for the ML-2160 family on Linux. The
        necessary knowledge and developer community therefore exist;
        they merely need sufficient documentation, source access or
        cooperation from the rights holder.
        <br>
        <br>
        Please route this message to the teams responsible for Samsung
        legacy print engineering, Sustainable Impact, and open-source or
        intellectual-property licensing. I would appreciate a
        substantive response as to whether HP is willing to pursue any
        of these options.
        <br>
        <br>
        I would gladly have printed and posted this letter, but
        unfortunately HP=E2=80=99s withdrawal of software support for my
        otherwise functional printer prevented me from doing so.
        <br>
        <br>
        Kind regards,
        <br>
        <br>
        Bas Homans
        <br>
        <br>
        <br>
        The Netherlands
        <br>
        <br>
      </blockquote>
      <br>
    </blockquote>
  </body>
</html>

--------------hvewzhKAG2bS4tNNGaMvK2Oc--

--------------0XTmkGM5pNnbVzrj6fYKo5ek--

--------------VILLHvZm2oyu4I0OqKlMsbZA
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEEMiogvXcpmS32v71gXNcgLu+I93IFAmp03OwFAwAAAAAACgkQXNcgLu+I93KH
og//c2ygJIuNu2mAQCaAF4g7EB9MvXbg9Up23R1vv6qNPEztrm9bzWXbKNf16pmeND8WsoKcTelR
3oggbjkjUaURLoPYBl90YBtrpoxcNQV7rT47ZPHchybl8WvTRyqVEGbdPs9U2aiqp5yvEvjZaXp9
6FOAax077ger2Yno044cmqO+5IY2vBDGdV3V3RjDbPWXgIvka2lk2TH54d/PWvGUAnruQPPwFfPX
JWYwPdfB2ZSnMBwOp21sdkPEqj4/7v17C8mqj6jONYJqyweRVAYcZvX3hRWP+3wlETNF/RQwQJLy
oqmZNWCHKshEGoqWiLDzgGGEq2cdr7/Byecnaj4RN8tHhc9rCu+z76SbdXnY/38FNNKqyJbxyAU9
MKXr4gI3tFgFuxiUYC027Efa9GY6FbrzFmO3hKwJ6ArrKtu+xUvQv8zvLeVKH88netHj5iyk6Gxs
bzBS5wdTTuczG7LhSMKxOEK43dfeVjVz38aUKNtTwKutxsdHrRNQkWj3QZrLNmGxpDAdeNKXYmsJ
l+Gb/Sv6E5XMbcoB+II6f5lAVH/rO8uRVojGKPiJXQfdnIpb9n0Ly24vNqKTytyejO1dPNokg6Vg
bWTQoWuSe2Wm8iistbCTBP34bDz6i/38V7eZarocY9kTuu4/a5+86qSyFsPSsfH6gbXp7XWy04AZ
V1c=
=g5sG
-----END PGP SIGNATURE-----

--------------VILLHvZm2oyu4I0OqKlMsbZA--
