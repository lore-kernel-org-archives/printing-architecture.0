Return-Path: <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.4\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <46318bff-36e7-fcf4-19de-d5ed75fcac35@apevzner.com>
Date: Thu, 22 Oct 2020 17:56:31 -0400
Content-Transfer-Encoding: quoted-printable
Message-Id: <8C681DFC-701F-4370-AD3E-CD15160B06DE@msweet.org>
References: <f46bf16f-d469-cd4e-698e-525481cc98f6@redhat.com>
 <90443F3C-FBAE-4CF6-B34B-55887A90F11D@msweet.org>
 <9e45b8ca-0bde-12bb-5555-e469bdd27852@apevzner.com>
 <35F1D87E-67D6-424E-AD36-7F8C035A69E1@msweet.org>
 <46318bff-36e7-fcf4-19de-d5ed75fcac35@apevzner.com>
Subject: Re: [Printing-architecture] IPP Validate-Job operation and its
 implementation in CUPS
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

> On Oct 22, 2020, at 5:39 PM, Alexander Pevzner <pzz@apevzner.com> =
wrote:
>=20
> Michael.
>=20
> On 10/22/20 11:33 PM, Michael Sweet wrote:
>> Validate-Job is a necessary step in some managed/paid printing =
configurations - you'll get back a per-job authorization code that need =
to be used with Print-Job.
>> It is also a recommended step in both IPP Implementor's Guides...
>=20
> Thank you for the explanation. And yet another question, what will =
CUPS do, if printer doesn't understand Expect: 100-continue header?

CUPS times out the expectation after 1 second, continuing the print job =
(and assuming there won't be an authentication challenge).  Fortunately, =
most printers support Expect, but if they don't there isn't a large =
penalty.

________________________
Michael Sweet



