Return-Path: <osamu.mihara.pz@fujifilm.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2F83A60E31
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA46060DFF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fireeye.com;
 s=dkim-s202012; t=1701671632; i=@fireeye.com;
 bh=alKc9K2mjDep/8CvhanffphrNnpjWh2D33OPbhblDYI=;
 h=From:To:Subject:Date:Message-ID:Content-Type:Content-ID:
 Content-Transfer-Encoding:MIME-Version;
 b=NfrMdEx7JpBq2IHYFdC6xep6s7MlrXa1c7qg8yjcfr6vlp5A47k0UdXDdNA4w2zYa
 libcqpMMbw6RPlWu3Wfrrzr0dUvccbJxwb3YzGd4Mg9X6S0LcYC9PAgA2v+7Hg6uIH
 QDpRI18ji6jGv03D3Q2VQCaDKG2xkVvkK4lmKsFUR/zmhtAuY0u1MG6wTILMhc+NhX
 JoFdCokx7NP0S+w97GfjqfH5lWuEWWrSnP3X9WDNR/6jLSPIRlqH0eDp2bfO/DnrSP
 cpXhXXxyb4tYBRbDnRqEkIIdDQ1gzvVSRBzyp4sLqkhnP2k46mgJzp4zUIwbtlrXTN
 XF+igh1AnQt5A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fujifilm.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=alKc9K2mjDep/8CvhanffphrNnpjWh2D33OPbhblDYI=;
 b=D3zVzYcgjvhJyfQA7zfvJEuZFxqZAPgSLbabHWRK16dyPWRGc77DcJBDc/pMexFuq6iUSGPquflSwkRhg6/bl1eJxJmcoZNiM5qfr5xLo4tatTKq7y87jQk+y7xZbbfWIwaAYTfc1agL8ts5HlUJsrauUbhuJkdhbzRINQERLAY=
From: Osamu Mihara <osamu.mihara.pz@fujifilm.com>
Date: Mon, 4 Dec 2023 06:29:42 +0000
Message-ID: <17ebd86e-c906-48b1-9f73-2b042bc9a71c@fujifilm.com>
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <1A95F72177102F4BBD49417E45FFFAAF@namprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: [Printing-architecture] nopdfAutoRotate option does not work for
	pdftopdf/universal filter?
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

SGksDQoNCkknbSB0cnlpbmcgdG8gcHJpbnQgQTQgbGFuZHNjYXBlIGRvY3VtZW50cyB0byBteSBw
cmludGVyIHVzaW5nIEdlbmVyaWMtUERGIGRyaXZlci4NClRoZSBwcmludGVyIHN1cHBvcnRzIEEz
IHNpemUgcGFwZXIsIGFuZCBhbHNvIGhhcyBzdGFwbGVyIG9yIGhvbGUtcHVuY2ggb3B0aW9uLg0K
SW4gb3JkZXIgdG8gd29yayBwcm9wZXJseSB0aGVzZSBmaW5pc2hpbmcgb3B0aW9ucyB3aXRoIEE0
IGxhbmRzY2FwZSBkb2N1bWVudCwgdGhlIHByaW50ZXIgZG9lcyBuZWVkIHRvIGtub3cgd2hpY2gg
c2lkZSBpcyB0aGUgdG9wIG9mIHRoZSBwYWdlIChpdCBzaG91bGQgYmUgbG9uZyBlZGdlKS7CoCBI
b3dldmVyLCB0aGUgQ1VQUyBmaWx0ZXJzIHNlZW1zIHRvIHJvdGF0ZSBhdXRvbWF0aWNhbGx5IEE0
IHNpemUgbGFuZHNjYXBlIHBhZ2VzIHRvIHBvcnRyYWl0IG9yaWVudGF0aW9uICh0aGUgdG9wIG9m
IHRoZSBwYWdlIGlzIHNob3J0IGVkZ2UpLg0KDQpJIHRyaWVkIHRvIGNhbmNlbCB0aGUgYXV0by1y
b3RhdGlvbiBmZWF0dXJlIGJ5IHBkZnRvcGRmIGZpbHRlciB1c2luZyAiLW8gbm9wZGZBdXRvUm90
YXRlIiBvciAiLW8gcGRmQXV0b1JvdGF0ZT1mYWxzZSIgb3B0aW9ucywgYnV0IHRoZXkgZG9uJ3Qg
d29yay4NCg0KSSB0cmllZCB3aXRoIGZvbGxvd2luZyBPU2VzLg0KDQotIFVidW50dSAyMi4wNCAo
Y3Vwcy1maWx0ZXJzIDEuMjguMTUpDQotIFVidW50dSAyMy4xMCAoY3Vwcy1maWx0ZXJzIDIuMC4w
KSAtIGZpbHRlciBpcyBjaGFuZ2VkIHRvICJ1bml2ZXJzYWwiPw0KDQpBbnkgaGVscD8NCi0tDQoN
Ck9zYW11IE1JSEFSQSAvIEZVSklGSUxNIEJJDQo=
