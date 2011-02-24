Mime-Version: 1.0 (Apple Message framework v1082)
Content-Type: text/plain; charset=us-ascii
From: Chris Murphy <lists@colorremedies.com>
In-Reply-To: <alpine.LNX.2.00.1102242014250.6623@roma.rasena>
Date: Thu, 24 Feb 2011 12:21:24 -0700
Content-Transfer-Encoding: quoted-printable
Message-Id: <40DAD93C-D5D6-4733-A779-B377AC4A2B3C@colorremedies.com>
References: <AANLkTikLN+qpdaunDz=bSxPj0K+k+W4Gg3JDh3udXj9=@mail.gmail.com>
	<1FBAD420-6AF8-44A8-B5D5-77FDE617BCB3@mmiworks.net>
	<9198987E-D9BD-4C2F-B83C-ECB56D1C2E22@colorremedies.com>
	<AANLkTim5g3dsp4N2E3Tv9e6wR6iqtQu415BWQ=sRkDpL@mail.gmail.com>
	<FD797C30-7A88-40E3-864E-83E4FBCCC146@colorremedies.com>
	<AANLkTi=A8Z_H6CXnZizsr_r6zzcWUJZBuxaMDk1_L2ON@mail.gmail.com>
	<159637EF-273A-4084-B6C9-DE239C7172B0@colorremedies.com>
	<alpine.LNX.2.00.1102242014250.6623@roma.rasena>
Subject: Re: [Printing-architecture] Common Printing Dialog and color
	management
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Kai-Uwe Behrmann <ku.b@gmx.de>
Cc: Printing-architecture@lists.linux-foundation.org




On Feb 24, 2011, at 12:18 PM, Kai-Uwe Behrmann wrote:

> Am 24.02.11, 10:52 -0700 schrieb Chris Murphy:
>> On Feb 24, 2011, at 10:46 AM, Richard Hughes wrote:
>>> On 24 February 2011 17:41, Chris Murphy <lists@colorremedies.com> =
wrote:
>>>> Not a bad punt for now actually....might be best to just leave CMYK =
untouched.
>>>=20
>>> Yup, that was my strategy too.
>>=20
>> It's consistent with Windows and Mac OS also. *shrug* And that's not =
a bad thing in this instance.
>=20
> As soon as somewhere in the print path appears a Cmyk default, its a =
failed assumtion. Not actual robust.

True. It would be wrong almost no matter what. Might as well just punt =
and make it a pass through color model. Same would be the case for =
DeviceN, and CMYK is much closer to DeviceN than are RGB and device =
independent spaces.

Chris Murphy=
