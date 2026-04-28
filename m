Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94F492E7162
	for <printing-architecture@lists.linux.dev>; Tue, 28 Apr 2026 05:42:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.17.10
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777354968; cv=none; b=myWS2HlSZUENz2d4Z4Wz7z+GgXQiJVwGAlXN9loW7ooyE3qGWXlbMrI+evCvbhJYi8B2uKfV9ncPvKCyM64EaZM3EhwJerxC4EEOsLOCw2DlE5Yv5guL//umFL+YxtAO6jph/NnOC5NA7zcIDaU9ZDhwqgQ1wm+xjuaoVd8ycVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777354968; c=relaxed/simple;
	bh=FrWEK0e0FcCRzg1zaUPESLfBkOmzv9IgT/6c5Wschvw=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:Cc:From:
	 In-Reply-To:Content-Type; b=RXNiCsvI+V2T/Az+RwUC2eJBdlQy9rh7ycfR95uafe2QF2l0ugiJ7kQK3bQFMziv6lWtsgh2dFLgtKK/gZL4N+H6XbBjXpx2S44RiUqnBHikALsTyd6v5NQF1ufig9rzPVj9faTnxorKFY3ucui9JfmnFAYa2MFq7hI9cT4jU2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=becherer.de; spf=pass smtp.mailfrom=becherer.de; dkim=pass (2048-bit key) header.d=becherer.de header.i=simon@becherer.de header.b=pAcXXnke; arc=none smtp.client-ip=212.227.17.10
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=becherer.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=becherer.de
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=becherer.de header.i=simon@becherer.de header.b="pAcXXnke"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=becherer.de;
	s=s1-ionos; t=1777354959; x=1777959759; i=simon@becherer.de;
	bh=FrWEK0e0FcCRzg1zaUPESLfBkOmzv9IgT/6c5Wschvw=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:Subject:To:
	 References:Cc:From:In-Reply-To:Content-Type:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=pAcXXnkevLDV+9C4UspjxTHL5Cuz0iHMwEWXvlkRn8DlaF+TpunMOZUuL5vvnL/v
	 lvcR4mYMp42136ANhYnbSLaH7qNCMMxMZMgWKZEMRKaYm0lRvDyV11Bm5YNusdS8S
	 2qH/HIuFKuqtM3vdeKL2iFz2dke/p9roGk5jNEFb3U848XlyRSWn8LH+mgd2/Fo26
	 e12g5ita/4f7FSvOwh+hya7XECGkrXUm7kUCg7mV2hstBY5MD4fe5thyorMcP5UDL
	 2eqMh+wrfGa7ZwEPFp7SejCFtZvK03fKyx6lusXhimRzpC95gtTFcxOAz2F2m/u/r
	 qgKrlD290IWaH99B+w==
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from client.hidden.invalid by mrelayeu.kundenserver.de (mreue109
 [212.227.15.146]) with ESMTPSA (Nemesis) id 1MLz3X-1w0Ck21Fw1-00MEE3; Tue, 28
 Apr 2026 07:37:27 +0200
Message-ID: <7992d56e-2425-4431-a2b4-86bdc1c6689b@becherer.de>
Date: Tue, 28 Apr 2026 07:37:26 +0200
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Xerox Phaser 7500DX PPD
To: printing-architecture@lists.linux.dev
References: <CAAcCaTTPopK=4DU1Qw_R6WMWc5vBUEU620=4xfzuEq3mwOi73w@mail.gmail.com>
Content-Language: de-DE
Cc: davidday@gmail.com
From: Simon Becherer <simon@becherer.de>
Autocrypt: addr=simon@becherer.de; keydata=
 xjMEXqQ+jhYJKwYBBAHaRw8BAQdAXtBMXHGwb3OCUsYktZYBSVFHmSCjXru+pTbwlA3WcQXN
 IlNpbW9uIEJlY2hlcmVyIDxzaW1vbkBiZWNoZXJlci5kZT7ClgQTFggAPgIbAwULCQgHAgYV
 CgkICwIEFgIDAQIeAQIXgBYhBKjW8inasnMyWz0lMjCnmz4w7QASBQJmJfKXBQkNJjmVAAoJ
 EDCnmz4w7QAS36oA/2zgGdESFn6YLLjAzDyJQEU7A+3uq/mQKKzUXJg5hbDmAP9/wiHSNXYl
 wq0KK6h8En2GDIFIDiYRdJ38K1WfIkVVA844BF6kPo4SCisGAQQBl1UBBQEBB0CfRSEhqfs7
 qS5vXl32l8rQv8Ry2wKyl7cTDkTYr6IAZAMBCAfCfgQYFggAJgIbDBYhBKjW8inasnMyWz0l
 MjCnmz4w7QASBQJmJfKXBQkNJjmVAAoJEDCnmz4w7QASdpoBAO0GQ90wsS2Kx8DC5GXrFmra
 E8CWnpXtidlsX8gWKn2YAQDMHw5IJcjGqPDi3BcgdJ/navIgf6Xs3v8ujKHo29qeBQ==
In-Reply-To: <CAAcCaTTPopK=4DU1Qw_R6WMWc5vBUEU620=4xfzuEq3mwOi73w@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------kwSF1CxFdv8X6iVsv5fEbTRT"
X-Provags-ID: V03:K1:173gyYPzCQl0O+HvvdJpOA5OXdMm3Zr+BtpB4iRysklG+0EZpOZ
 pwEkM6mnhgtuPJLKH1XaX50typu4rZpIzJ6Ix9rnYwITh4ZdmLcGFjuSITqOMxMRIEzY089
 MJGmnhuWrawMdYuxk1uta9WZsN6W4ESyrrqkX416EoZqgPuY98svLSK7+ir2S4aZe6nfz+s
 FfPDa6i8yLTLc5ha1qkfQ==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:LCIVo2MdzpI=;4b/vthZGg3UTnKqp1zyvUmejlUM
 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
 MJF3Jaqw==

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------kwSF1CxFdv8X6iVsv5fEbTRT
Content-Type: multipart/mixed; boundary="------------Upw6cGHLYAfkxGqufgsbIaU7";
 protected-headers="v1"
From: Simon Becherer <simon@becherer.de>
To: printing-architecture@lists.linux.dev
Cc: davidday@gmail.com
Message-ID: <7992d56e-2425-4431-a2b4-86bdc1c6689b@becherer.de>
Subject: Re: Xerox Phaser 7500DX PPD
References: <CAAcCaTTPopK=4DU1Qw_R6WMWc5vBUEU620=4xfzuEq3mwOi73w@mail.gmail.com>
In-Reply-To: <CAAcCaTTPopK=4DU1Qw_R6WMWc5vBUEU620=4xfzuEq3mwOi73w@mail.gmail.com>

--------------Upw6cGHLYAfkxGqufgsbIaU7
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCkFtIDI3LjA0LjI2IHVtIDIzOjEzIHNjaHJpZWIgRGF2aWQgRGF5Og0KPiBHcmVldGlu
Z3MsDQo+IA0KPiBOb3QgY2VydGFpbiBpZiB0aGlzIGlzIHRoZSByaWdodCBmb3J1bSwgYnV0
IEkgYW0gaW4gdGhlIHByb2Nlc3Mgb2YNCj4gc3dpdGNoaW5nIG15IGRlc2t0b3AgY29sZC10
dXJrZXkgdG8gTGludXggKGhhdmluZyBsYXN0IHVzZWQgVU4qWCBvbiBhDQo+IFN1biBTcGFy
YyAxMCB3b3Jrc3RhdGlvbiBpbiB0aGUgbWlkLTE5OTBzKSBmcm9tIGEgV2luZG93cyAxMA0K
PiBlbnZpcm9ubWVudC4gTXkgYmVsb3ZlZCBYZXJveCBQaGFzZXIgNzUwMERYIHByaW50ZXIg
aXMgc3VzcGljaW91c2x5DQo+IGFic2VudCBmcm9tIHRoZSBsaXN0IG9mIGRyaXZlcnMgb24g
dGhlIE9wZW4gUHJpbnRpbmcNCj4gIlBvc3RzY3JpcHQtWGVyb3giIHBhZ2UsIGFuZCBJIHdh
cyBzdW1tYXJpbHkgZGlzbWlzc2VkIGJ5IHRoZSBzdXBwb3J0DQo+IGZvbGtzIGF0IFhlcm94
LiBJcyBhbnlvbmUgYXdhcmUgb2YgYSBuYXRpdmUgb3IgY29tcGF0aWJsZSBkcml2ZXIgZm9y
DQo+IHRoZSA3NTAwIGxpbmUsIG9yIGFueSBraW5kIG9mIHdvcmthcm91bmQ/IFRoZSBzaW1p
bGFybHkgc3BlYydkIDc0MDBuDQo+IGRyaXZlciBwcmludHMgMi1zaWRlZCwgQiZXLCBzaXpl
IHVwIHRvIDExeDE3LCBhbmQgcmVzb2x1dGlvbnMgdXAgdG8NCj4gMTIwMHgxMjAwLCBidXQg
dGhlIGNvbG9yIHByb2ZpbGUgbGlzdHMsICJVbnNwZWNpZmllZCBwcm9maWxlIiB3aXRoIG5v
DQo+IG9wdGlvbiBmb3IgY29sb3IgcHJpbnRpbmcuIFRob3VnaHRzPw0KPiANCj4gVGhhbmsg
eW91DQo+IA0KDQpBIHF1aWNrIGdvb2dlbGluZyBzaG93czoNCg0KaHR0cDovL2F4aWxpcy5m
cmVlLmZyL3BwZC8/bSZkaXI9QXJ0JTIwZ3JhcGhpcXVlLw0KDQp0aGVyZSBhcmUgNzUwMGRu
LnBwZCgncykNCg0KKHdpdGhvdXQgY2hlY2tpbmcgd2hhdCBpdCBpcykNCg0Kc2ltb04NCg0K
LS0gDQp3d3cuYmVjaGVyZXIuZGUNCg0K

--------------Upw6cGHLYAfkxGqufgsbIaU7--

--------------kwSF1CxFdv8X6iVsv5fEbTRT
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wr0EABYIAG8FgmnwR5YJEDCnmz4w7QASRxQAAAAAAB4AIHNhbHRAbm90YXRpb25z
LnNlcXVvaWEtcGdwLm9yZ0mcz9G5hgBpL4ztyDDQYsDW+tcn8JKVvWbdL+f/bhNF
FiEEqNbyKdqyczJbPSUyMKebPjDtABIAAP6pAQDdsuvx+solzWauG4J/B1Od9MUK
qb8YytxofGf7ogGRLAD+KF0lP6+kgyRnZuDrfv3epyIMHWp26nHTATiDeW2rNAc=
=K0ru
-----END PGP SIGNATURE-----

--------------kwSF1CxFdv8X6iVsv5fEbTRT--
