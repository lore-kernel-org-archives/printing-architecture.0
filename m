Mime-Version: 1.0 (Apple Message framework v1082)
Content-Type: text/plain; charset=us-ascii
From: Chris Murphy <lists@colorremedies.com>
In-Reply-To: <AANLkTi=yZcKwzCpDVFB8Ufj5hXLfwbbk6zg8vzJ9XdoO@mail.gmail.com>
Date: Thu, 24 Feb 2011 15:51:41 -0700
Content-Transfer-Encoding: quoted-printable
Message-Id: <ACC2A452-CC27-4735-BC0D-1758DDB48D4C@colorremedies.com>
References: <AANLkTikLN+qpdaunDz=bSxPj0K+k+W4Gg3JDh3udXj9=@mail.gmail.com>
	<alpine.LNX.2.00.1102241922270.6623@roma.rasena>
	<40F5FF0F-3AAC-4661-9FF0-4568326A2D51@colorremedies.com>
	<42A75819-F34A-4E8B-A10A-279A60775692@colorremedies.com>
	<AANLkTimHoS=_59Ew5VhVZ6e0FjL95Sf=xcQermUCDw_y@mail.gmail.com>
	<C40A61F6-0EDD-474B-A66D-1EAA40ACF8BF@colorremedies.com>
	<AANLkTi=yZcKwzCpDVFB8Ufj5hXLfwbbk6zg8vzJ9XdoO@mail.gmail.com>
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




On Feb 24, 2011, at 3:43 PM, Richard Hughes wrote:

> On 24 February 2011 22:27, Chris Murphy <lists@colorremedies.com> =
wrote:
>> In my view any application that lets a user work on CMYK that does =
not tag its own data is asking for trouble
>=20
> Isn't any app capable of outputting CMYK going to ask the user for an
> embedded profile? Outputting CMYK is a pretty power-user feature, and
> unspecified CMYK isn't really anything useful at all.

Unknown / not necessarily. It's only been in the last few years that =
Photoshop started embedding ICC profiles in CMYK images by default. It =
is common in prepress (usually due to emotionally unstable reasons) to =
strip CMYK profiles from images and save them untagged.

How they became CMYK? Well they can get there by creating a CMYK =
illustration file from scratch and designing in CMYK. No conversion to =
CMYK actually occurred. But yes, to display that CMYK image/illustration =
on an RGB device implies some kind of transform. Whether it's ICC based =
or not...usually that would be the case. But historically developers =
have simply used inversion. 100%C is 0%R (100%G+100%B), etc. which gets =
you really overly saturated CMYK images on screen, completely not color =
accurate. But you can at least see what you're doing. Recent versions of =
QuarkXPress work this way I think still, by default. So I can't vouch =
for apps on Linux, how they will behave with respect to CMYK. They very =
well may be thinking of plotters and such and never have considered =
anything other than RGB for display, and therefore just used 1/d =
conversion.


Chris=
