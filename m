Mime-Version: 1.0 (Apple Message framework v1082)
Content-Type: text/plain; charset=us-ascii
From: Chris Murphy <lists@colorremedies.com>
In-Reply-To: <AANLkTimHoS=_59Ew5VhVZ6e0FjL95Sf=xcQermUCDw_y@mail.gmail.com>
Date: Thu, 24 Feb 2011 15:27:49 -0700
Content-Transfer-Encoding: quoted-printable
Message-Id: <C40A61F6-0EDD-474B-A66D-1EAA40ACF8BF@colorremedies.com>
References: <AANLkTikLN+qpdaunDz=bSxPj0K+k+W4Gg3JDh3udXj9=@mail.gmail.com>
	<alpine.LNX.2.00.1102241922270.6623@roma.rasena>
	<40F5FF0F-3AAC-4661-9FF0-4568326A2D51@colorremedies.com>
	<42A75819-F34A-4E8B-A10A-279A60775692@colorremedies.com>
	<AANLkTimHoS=_59Ew5VhVZ6e0FjL95Sf=xcQermUCDw_y@mail.gmail.com>
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

On Feb 24, 2011, at 3:08 PM, Richard Hughes wrote:

> On 24 February 2011 21:42, Chris Murphy <lists@colorremedies.com> =
wrote:
>> In that case you either have to fail the print job, or you have to =
assume some CMYK space
>=20
> So, in the case of CYMK, it's not just as case where we can "assume
> sRGB" like we can RGB with a clear conscience. It kinda comes back to
> my original question, is this a per-user preference, or a per-system
> policy?

Ha it's a per instance preference. The document should be self =
describing (tagged) to prevent this event from being questionable in the =
first place. In my view any application that lets a user work on CMYK =
that does not tag its own data is asking for trouble - by rights CMYK =
print jobs going to non-CMYK devices should fail. But that's not such a =
great sort of degradation for users.

Apple and Microsoft require applications to honor conversion to RGB on =
demand - i.e. the system knows the driver being selected is RGB at the =
time the dialog pops up and the printer is chosen and the system informs =
and requires the application submit RGB at the time the job is spooled. =
So that makes conversion the responsibility of the application. Not the =
system. I tend to agree with this strategy.

Farther downstream, I would think GhostScript has some assumption it =
uses when incoming file is CMYK and outgoing file must be RGB (or vice =
versa). I don't know presently where this logic is handled.

If you're going to have some system level service handle this =
correction, well you have various points where that could occur and if =
you're really going to build such a thing, you might consider including =
spot color and DeviceN into the plan so that, even if you don't build in =
such support now, you don't have an "oh shit" later on when you find the =
location where this is handled in the print pipeline is not ideal. Ideal =
would mean downstream from the app, but upstream from rasterizing, but =
downstream enough to know the capabilities of the printer, even in fact =
how well it registers colors is a nice bit of info to have when properly =
building device values for print.


Chris=
