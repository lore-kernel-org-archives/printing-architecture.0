Return-Path: <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.60.0.2.21\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <d66bd61c-4a20-fb0c-9efb-83cae46febe1@gmail.com>
Date: Tue, 20 Apr 2021 12:42:55 -0400
Content-Transfer-Encoding: quoted-printable
Message-Id: <A794D575-259C-4315-9CC8-7D7F4385C70D@msweet.org>
References: <da1e3969-fb49-7fd7-1728-f18759afc3c2@apevzner.com>
 <A48C14A9-A2BE-4A1C-8F91-9C0D85A98051@msweet.org>
 <d66bd61c-4a20-fb0c-9efb-83cae46febe1@gmail.com>
Subject: Re: [Printing-architecture] Mopria has published the eSCL protocol
 specification
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Till,

I think I've made my position clear.  Until the industry adopts IPP =
Scan, there is little point in pushing for it, and eSCL is what new MFPs =
implement.

Andrew Mitchell (HP) tried to do an IPP Scan before AirPrint adopted =
eSCL, and then a couple years later Pete Zehler finished the current IPP =
Scan to convince Mopria to use IPP for scanning instead of eSCL, but =
since Apple had already adopted eSCL for AirPrint it was a losing =
battle.

There are new discussions between Microsoft and the PWG concerning cloud =
scanning, and since they adopted IPP for their Universal Print Service =
(part of the cloud-based Azure ActiveDirectory work) they may decide =
they want to use IPP Scan for that, but things are so early in =
discussions I wouldn't keep your hopes up!

IMHO our efforts are best focused on supporting eSCL.  If, in the =
future, IPP Scan gets a place at the table then we can support that =
protocol as well.


> On Apr 20, 2021, at 12:13 PM, Till Kamppeter =
<till.kamppeter@gmail.com> wrote:
>=20
> Question is now whether we should implement the new architecture of =
Scanner Applications/sandboxable scanner drivers with eSCL or whether we =
should use IPP Scan.
>=20
> eSCL is probably easier to implement, as we have sane-airscan =
containing all client code and AirSane containing the server code, both =
needing to get updated to fully comply with the public eSCL standard and =
their code being moved into (a) library/ies, so that one can easily =
integrate it with PAPPL. No need to implement a new protocol completely =
from scratch.
>=20
> On the other side with IPP Scan we have more consistency as all the =
rest (printing, IPP System Service) is also IPP.
>=20
> WDYT?
>=20
>   Till
>=20
>=20
> On 19/04/2021 20:38, Michael Sweet wrote:
>> Alexander,
>> Thanks for letting us know!
>>> On Apr 19, 2021, at 1:17 PM, Alexander Pevzner <pzz@apevzner.com> =
wrote:
>>>=20
>>> Hi,
>>>=20
>>> Mopria has published the eSCL protocol specification:
>>>=20
>>>    https://mopria.org/spec-download
>>>=20
>>> Basically, it's the same as scanning part of Apple AirPrint (Bonjour =
scanning).
>=20

________________________
Michael Sweet



