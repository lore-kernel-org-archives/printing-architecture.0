Mime-Version: 1.0 (Apple Message framework v1082)
Content-Type: text/plain; charset=us-ascii
From: Chris Murphy <lists@colorremedies.com>
In-Reply-To: <AANLkTi=A8Z_H6CXnZizsr_r6zzcWUJZBuxaMDk1_L2ON@mail.gmail.com>
Date: Thu, 24 Feb 2011 10:52:39 -0700
Content-Transfer-Encoding: quoted-printable
Message-Id: <159637EF-273A-4084-B6C9-DE239C7172B0@colorremedies.com>
References: <AANLkTikLN+qpdaunDz=bSxPj0K+k+W4Gg3JDh3udXj9=@mail.gmail.com>
	<1FBAD420-6AF8-44A8-B5D5-77FDE617BCB3@mmiworks.net>
	<9198987E-D9BD-4C2F-B83C-ECB56D1C2E22@colorremedies.com>
	<AANLkTim5g3dsp4N2E3Tv9e6wR6iqtQu415BWQ=sRkDpL@mail.gmail.com>
	<FD797C30-7A88-40E3-864E-83E4FBCCC146@colorremedies.com>
	<AANLkTi=A8Z_H6CXnZizsr_r6zzcWUJZBuxaMDk1_L2ON@mail.gmail.com>
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
To: Richard Hughes <hughsient@gmail.com>
Cc: Printing-architecture@lists.linux-foundation.org

On Feb 24, 2011, at 10:46 AM, Richard Hughes wrote:

> On 24 February 2011 17:41, Chris Murphy <lists@colorremedies.com> =
wrote:
>> ...and not "auto assign" which just makes me want to poke myself in =
the eye with a stick.
>=20
> Heh, you made me laugh out loud.. :-)

It's more sensible to put "No Idea" everywhere you'd see "Automatic".


>> Not a bad punt for now actually....might be best to just leave CMYK =
untouched.
>=20
> Yup, that was my strategy too.

It's consistent with Windows and Mac OS also. *shrug* And that's not a =
bad thing in this instance.

>=20
>> I'm thinking of users. Not rational beings.
>=20
> Fair point, but even non-rational beings shouldn't have to understand
> what a fallback profile is used for.

No, I don't know that it makes sense to spin precious engineering cycles =
on them either. That's why I'm not a fan of this distinction of "low =
end, mid end, high end" user and all the different paths and behaviors =
this implies coding for. I think you build one path, one set of logical =
structures, it includes all the users. Even a high end user can be a low =
end user when they print to a color laser printer and don't care about =
super accuracy. And even a low end user wants to start out with prints =
that don't look like dog crap out of the gate before they choose some =
option to make it look "better".

Chris=
