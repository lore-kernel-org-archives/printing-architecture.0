Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=references:in-reply-to:mime-version:content-transfer-encoding
	:content-type:message-id:cc:x-mailer:from:subject:date:to;
	bh=ie+AomwKNbMHpegrpkrXlw6iAhuStlY1IJUyNivUCQg=;
	b=eVsmGEMjqbdgyCjSl+rV9a6udcfbFSEHWUQpNwq825h8QwnLkvkrMNbpB3TEqiUcMk
	rLJCwk5IrkMtAYf1gFpmaCMguhOaeL+/BnQwUJgaTiiUl7q0Q0+q4Rp92GratPYK77vL
	Fm7CGN7V/IhPujOIdHOeO6vJ1d59xml89ak480+zLRUTlTenveOhwNgxwHZa8AwzZe36
	2i0NSw+HhqTlaDvG33PfqJ9zwyG8ZGaODV6epjXheR9G1hRYpiu78xnWP56kXAyulmnG
	OuRl/BUTo/kEpmeOIk1+AxYh9THlkFrK0Kon5D5B72EP3s32pMZE/2ekg0VMBjURV5fU
	vZWQ==
References: <CA++JLR+st2adL_vf0+rC=OUBFXNqAbTSfrvvoZBtZ_hA_GA56Q@mail.gmail.com>
	<CA++JLRKGqqLQi_JjkA+ZghwWeN1=jdsivYCPCMB3_J0CLxpfMQ@mail.gmail.com>
	<4F97B82B.7040306@gmail.com>
	<CAN40gStH4vSYTEm4syWMUO1j3itm7V7iTE23e+1mFEAWthbjVg@mail.gmail.com>
	<1335363815.2535.0.camel@rubik>
	<alpine.LNX.2.00.1204260704580.8774@siras.rasena>
	<CAD2FfiEp0POX1B69KbZFy7FHHAVid7s6eTvUGE3xfzK0WX9cRQ@mail.gmail.com>
	<D221590B-CE27-44C4-AC6B-D0F62C066A4E@apple.com>
	<m3lili6p6j.fsf@carbon.jhcloos.org>
In-Reply-To: <m3lili6p6j.fsf@carbon.jhcloos.org>
Mime-Version: 1.0 (1.0)
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii
Message-Id: <086704C9-9E81-4F8C-AB26-E6A969171552@gmail.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
Date: Fri, 27 Apr 2012 06:10:46 -0700
Subject: Re: [Printing-architecture] colord profile per-user in CUPS server
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: James Cloos <cloos@jhcloos.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, Tim Waugh <cyberelk11@gmail.com>

James, I suggest to report this as a bug to GTK upstream. First, the setting=
s for the default case are wrong and second, instances shoul be supported, t=
hey are a CUPS feature to save settings for common tasks and in color manage=
ment age it is especially important. The print dialogs should also have a "S=
ave settings as ..."-like button to save settings into a new instance and a "=
save"-like button to save the settings into the current instance.

   Till



On Apr 26, 2012, at 4:36 PM, James Cloos <cloos@jhcloos.com> wrote:

>>>>>> "MS" =3D=3D Michael Sweet <msweet@apple.com> writes:
>=20
> MS> I don't know if the current GTK+/GNOME print dialog exposes instances,=

>=20
> It notices them, but it doesn't really support them.
>=20
> As an example, I have instances like:
>=20
> ,----< excerpt from ~/.cups/lpoptions >
> | Dest mc/booklet number-up=3D2 Duplex=3DDuplexTumble
> | Dest mc/short Duplex=3DDuplexTumble
> | Dest mc/long Duplex=3DDuplexNoTumble
> | Dest mc Duplex=3DNone
> | Default mc Duplex=3DDuplexNoTumble
> `----
>=20
> GTK apps only show a single mc queue, but conflate it into=20
> number-up=3D2 DuplexNoTumble, which isn't even a defined instance.
>=20
> Qt4, OTOH, seems to get it right, showing each instance as a separate
> queue, with correct settings for each.
>=20
> -JimC
> --=20
> James Cloos <cloos@jhcloos.com>         OpenPGP: 1024D/ED7DAEA6
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
