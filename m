Mime-Version: 1.0 (Apple Message framework v1082)
Content-Type: text/plain; charset=iso-8859-1
From: peter sikking <peter@mmiworks.net>
In-Reply-To: <AANLkTikLN+qpdaunDz=bSxPj0K+k+W4Gg3JDh3udXj9=@mail.gmail.com>
Date: Thu, 24 Feb 2011 16:36:59 +0100
Content-Transfer-Encoding: quoted-printable
Message-Id: <1FBAD420-6AF8-44A8-B5D5-77FDE617BCB3@mmiworks.net>
References: <AANLkTikLN+qpdaunDz=bSxPj0K+k+W4Gg3JDh3udXj9=@mail.gmail.com>
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

Richard Hughes wrote:

> I've been doing quite a lot of research in to the Common Printing
> Dialog in the last two days for my colord integration. I'm really not
> sure where it fits in my color managed architecture plans.
>=20
> =46rom my perhaps-na=EFve point of view, CPD seems to have 3 main =
problems:
>=20
> * There hasn't been any code merged in 5 *years*, even though quite a
> lot of code has already been written.
> * Neither GTK or KDE seem to want to include a new UI that doesn't
> match either of their HIG guidelines.

both KDE and GNOME will happily take the patches. there is a lot of
enthusiasm for it at both platforms. just not to do the work. so we
have to get it to work as a large infrastructure project, then it
can go in.

about the HIG: in the spec you are looking at is a KDE/GNOME agnostic
meta spec, the implementation is done for KDE and GNOME separately,
fully HIG-compliant.

> * Every single PPD file on the planet would need to be modified to
> support the CPD.

Till has ensured that the cpd is backward compatible with any
(decent) PPD file on the planet. apart from that all major
printer manufacturers have been planning and gearing up for
PPD amending that will unlock the full cpd potential.

> So basically, I'm not sure what the CPD buys us. Looking at
> =
http://wiki.openusability.org/wiki/printing/index.php/Photo_printers_param=
eter_specifications#Color_Management_and_the_CPD
> I'm not convinced mixing the color management settings in with the
> printing options makes a lot of sense either.


now it is getting interesting.

I am not sure what you mean exactly. please be a bit more
precise about what you do not see working, from which perspective
(technical, color workflows, or something else).

    --ps

        founder + principal interaction architect
            man + machine interface works

        http://blog.mmiworks.net: on interaction architecture



