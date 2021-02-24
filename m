Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=nbh3f7GqNOShq94gXEw28YtJnSsgxG/1VWY2BYqBd6k=;
 b=vKBUjhZWRTJ5tEjU2cmnWHzc2LIdFtpqPX/tkF7mlGaLZtAIBQzbA6zWPDN0AN0ZIu
 chexjS1vIBRYr4+OOMaNnW5nxNhcLIM3Az5sfzNuI4WL/qJL7zsaMx/2kr6EaVjZtlp7
 xHbEzxvZLU3qjqQOx1m9ZQn5Pa0LN/ILu29D04H88/A4kPG/WVeQQNb7KtA37k+iYo6S
 t4DspWfeGKcecoPYBWdItokF4rynGxnePjr1lhSrFT8wWK8p+9GfHq9okEksuDoAdGfp
 v47wal/UnapfCSGJZj1L6iMm+Xo7EFoOMLY1gL+4lEwRvUZOv9VSRmY4pPknJ22w13BF
 cYiw==
References: <12af8541-3113-341d-6b7f-d7393203368f@gmail.com>
 <1099419D-7CC7-448C-84B1-5C35D75F7A03@msweet.org>
 <54aefb59-d506-8e30-8891-9d051ef81fed@gmail.com>
 <DC5E23E8-80FD-4835-B3C7-B637D5287267@msweet.org>
 <00d2660e-d305-7dcb-4535-fbbcfbbaeb01@gmail.com>
 <773208ED-C079-432B-AB40-ACCF42D65E65@msweet.org>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <4dd0ae14-053c-9862-8636-d8bed5a50367@gmail.com>
Date: Wed, 24 Feb 2021 21:15:16 +0100
MIME-Version: 1.0
In-Reply-To: <773208ED-C079-432B-AB40-ACCF42D65E65@msweet.org>
Content-Type: text/plain; charset="windows-1252"; format="flowed"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Printing-architecture] Automatic printer setup with Printer
	Applications
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@msweet.org>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Jai Luthra <luthrajaiji@gmail.com>

On 24/02/2021 21:01, Michael Sweet wrote:
> The "drivers" sub-command from PAPPL almost has everything needed:
>=20
>     testsuite/testmainloop drivers
>     pwg_2inch-203dpi-black_1 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0PWG 2inch Lab=
el 203DPI Black
>     pwg_2inch-300dpi-black_1 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0PWG 2inch Lab=
el 300DPI Black
>     pwg_4inch-203dpi-black_1 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0PWG 4inch Lab=
el 203DPI Black
>     pwg_4inch-300dpi-black_1 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0PWG 4inch Lab=
el 300DPI Black
>     pwg_common-300dpi-black_1 =A0 =A0 =A0 =A0 =A0 =A0 =A0 PWG Office 300D=
PI Black
>     pwg_common-300dpi-sgray_8 =A0 =A0 =A0 =A0 =A0 =A0 =A0 PWG Office 300D=
PI sGray 8-bit
>     pwg_common-300dpi-srgb_8 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0PWG Office 30=
0DPI sRGB 8-bit
>     pwg_common-300dpi-600dpi-black_1 =A0 =A0 =A0 =A0PWG Office 300DPI 600=
DPI Black
>     pwg_common-300dpi-600dpi-sgray_8 =A0 =A0 =A0 =A0PWG Office 300DPI 600=
DPI
>     sGray 8-bit
>     pwg_common-300dpi-600dpi-srgb_8 =A0 =A0 =A0 =A0 PWG Office 300DPI 600=
DPI
>     sRGB 8-bit
>     pwg_fail-300dpi-black_1 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 PWG Always Fa=
ils 300DPI Black
>=20
>     hp-printer-app drivers
>     hp_deskjet =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0HP DeskJet
>     hp_generic =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0Generic PCL
>     hp_laserjet =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 H=
P LaserJet
>=20
>=20
> We can extend this to report the 1284 device IDs (which will give you=20
> make and model separate from the driver description string along with=20
> the command set(s)), and/or provide the information in a more=20
> machine-friendly format.

Yes, this would be great. You could create some variants (options?) for=20
the "drivers" subcommand, the current format, device ID added, only=20
device ID plus driver name, every column in "..." for easy separation by=20
a program, ... and the same things should be also queriable via IPP, so=20
that a program does not need to run a client command line.

Device IDs could also inform about support level. An ID with make and=20
model can provide an exact match to that printer which is higher=20
priority than "genric" device IDs, like "CMD:POSTSCRIPT;" or=20
"MFG:HP;CMD:PXL;".

    Till

    Till
