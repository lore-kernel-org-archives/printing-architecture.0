Mime-Version: 1.0 (Apple Message framework v1082)
Content-Type: text/plain; charset=us-ascii
From: Chris Murphy <lists@colorremedies.com>
In-Reply-To: <AANLkTim5KTc2n3GyDsL0uAMpHju_kWrbYk9QCwaqyYnF@mail.gmail.com>
Date: Thu, 24 Feb 2011 10:34:11 -0700
Content-Transfer-Encoding: quoted-printable
Message-Id: <DA4E2FD8-85B4-4EAB-B08F-1E1DA7E16E0A@colorremedies.com>
References: <AANLkTikLN+qpdaunDz=bSxPj0K+k+W4Gg3JDh3udXj9=@mail.gmail.com>
	<1FBAD420-6AF8-44A8-B5D5-77FDE617BCB3@mmiworks.net>
	<AANLkTim5KTc2n3GyDsL0uAMpHju_kWrbYk9QCwaqyYnF@mail.gmail.com>
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



On Feb 24, 2011, at 10:05 AM, Richard Hughes wrote:

> It's not a meta-spec, it's a Human Interface Guideline specific to the
> GNOME desktop. If we're making a CPD implementation to work to the
> GNOME HIG, it's not going to look anything like the CPD implementation
> for KDE. So then we're just left with a DBus interface that can't
> actually do anything much more than we could before.

I think the CPD in the wiki is meant to be a very rudimentary mockup to =
provide a visual is all. I don't think it's meant to be fixed in stone. =
Naturally it needs to fit into the HIG for Gnome and KDE independently, =
and be conscious of how it would be presented on mobile platforms one =
day in the near future as well. So it can't be using 95% white space =
like the mockups do. To me, it's understood because it's unworkable as a =
fixed layout.

>=20
>>> So basically, I'm not sure what the CPD buys us. Looking at
>> I am not sure what you mean exactly. please be a bit more
>> precise about what you do not see working, from which perspective
>> (technical, color workflows, or something else).
>=20
> These are my three target users: =
http://colord.hughsie.com/profiles.html
>=20
> None of these people would be able to choose an option from a dropdown
> just listing the ICC filenames by filename. And they shouldn't have to
> when we can map from qualifier to icc profile automatically...

Agreed. Also I'll point out we shouldn't list ICC profiles by filename =
anyway. They have internal names and that's what the user should see. If =
you have rollovers that show a URI for where this profile is located, =
that could show filename.


Chris Murphy=
