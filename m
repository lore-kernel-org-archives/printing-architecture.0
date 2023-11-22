Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3E37761186
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F0E586114A
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org DA27E81D95
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1700662745;
 bh=LDY1F3fDNiDqkmWw+hsRrcTtNzNH6nHZ/w6q5LQt9JI=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=F/IyuKCbaX6zwQ+HIJhR+MOtfMV7Y+Nsgxs1yRogcKsehOgOzsmMnoV6of+A0Uy6b
 9MFOkov9sPn71spRREXJkSbI1A3Quwj/tCSsnSL2v9RQFzvN4Sk//GXI5vV+k6Hta8
 irzLP/k4QrpHLSa02XlQ8hdiDSSnHucSY4SefuvI=
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.200.91.1.1\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <20231121-turquoise-starling-of-fascination-1e4144@meerkat>
Date: Wed, 22 Nov 2023 09:18:53 -0500
Content-Transfer-Encoding: quoted-printable
Message-Id: <B966EAD0-AEBB-4035-9BB1-B449A00D2A21@msweet.org>
References: <20231121-turquoise-starling-of-fascination-1e4144@meerkat>
Subject: Re: [Printing-architecture] RFC: Moving the printing-architecture
 list
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Konstantin,

My preference is the Linux development lists.  Also, I request that we =
add a printing-users list for discussing general printing issues vs. =
discussions of development and design.  (I've been asking for the users =
list since 2020 because Apple is eliminating the CUPS mailing lists...)


> On Nov 21, 2023, at 4:35=E2=80=AFPM, Konstantin Ryabitsev =
<konstantin@linuxfoundation.org> wrote:
>=20
> Hello, everyone:
>=20
> The mailman-2 system running on lists.linuxfoundation.org is being =
retired, so
> we need to find new homes for all lists that are being hosted there, =
and this
> includes the printing-architecture list.
>=20
> We have two options when it comes to where to move to:
>=20
> 1. migrate to lists.linux.dev, which is the platform where most linux
>   development lists live
> 2. migrate to groups.linuxfoundation.org, which is a groups.io managed
>   platform; it is generally considered more forgiving for =
non-developers, but
>   it is a proprietary closed platform
>=20
> The main upside of lists.linux.dev are:
>=20
> - the canonical address will change to =
printing-architecture@lists.linux.dev,
>  but the old address will continue to work, so any ongoing discussions =
using
>  the old address can play out to their end, and any old documentation =
will
>  continue to remain relevant
> - the list will be automatically archived on lore.kernel.org
>=20
> The main downside of lists.linux.dev:
>=20
> - HTML email is generally given a higher spam score, so it could be =
more
>  forbidding to some participants to join in conversations
> - there is no webby management interface and {un}subscribing requires =
sending
>  mail to printing-architecture+{un}subscribe@lists.linux.dev address.
>=20
> The main upside of groups.io:
>=20
> - Rich web interface for management and access to archives
> - Newbie-friendly for subscribing and unsubscribing
>=20
> The main downside of groups.io:
>=20
> - The list address will change to
>  printing-architecture@groups.linuxfoundation.org, and the old address =
will
>  no longer work (there will be an auto-responder bounce with =
instructions
>  where the message should be sent instead).
> - Proprietary platform
>=20
> Let me know how you'd like to proceed. We need to figure this out in =
the next
> few weeks, as we have a limited remaining time to shut down the =
mailman-2
> system behind lists.linuxfoundation.org.
>=20
> Best regards,
> Konstantin
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> =
https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>=20

________________________
Michael Sweet

