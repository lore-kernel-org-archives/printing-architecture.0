Return-Path: <zdohnal@redhat.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1597644010;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=CfQvAw7mq97Clt5dptw7AqVlfp6jKpL1gn/TJgx+irA=;
 b=HfCPIDej3viubAiYcUi4hslejkxT4g46RSc25P0+IbB1Qf7weE2rAVOSaYEatMQaaTx0mM
 VXw7o+0OeJWEJ9NxpmDNmt98hGTjXF3H/PLtnL0DwN2hZLQzqImT6I81Rumkks2vWhvr6b
 7FhXXsF/koSN12mR4kzF6wvf5OBy37I=
References: <b9b25328-27b3-4008-8ec0-bac7aa1f0b67@gmail.com>
 <981b69fe-6611-ac9c-23ae-8019ca01ed28@gmail.com>
From: Zdenek Dohnal <zdohnal@redhat.com>
Message-ID: <85bab82b-5502-8272-aaca-b1e9ddb385ee@redhat.com>
Date: Mon, 17 Aug 2020 08:00:00 +0200
MIME-Version: 1.0
In-Reply-To: <981b69fe-6611-ac9c-23ae-8019ca01ed28@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="2gNPZFZ1I1GqthgFcT1uhMREvPtiTGm9H"
Subject: Re: [Printing-architecture] OpenPrinting News
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
Cc: Aveek Basu <aveek.basu@lexmark.com>, Open Printing <printing-architecture@lists.linux-foundation.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--2gNPZFZ1I1GqthgFcT1uhMREvPtiTGm9H
Content-Type: multipart/mixed; boundary="uxcHM7aPv92uLAeXzRgrM4yjEzB3Q33ck"

--uxcHM7aPv92uLAeXzRgrM4yjEzB3Q33ck
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

Hi all,

just one little update:

- lprint is on its way to Fedora
https://bugzilla.redhat.com/show_bug.cgi?id=3D1867587 - I plan to do an
update for F32+

On 8/14/20 1:42 PM, Till Kamppeter wrote:
> I have done two little updates in my August news post, after getting
> hints from Alexander Pevzner (thanks a lot):
>
> 1. ippusbxd is deprecated now. After Linux distributions switching to
> the better ipp-usb, Chrome OS has created their own ippusb_bridge in
> Rust:
>
> https://github.com/dgreid/platform2/tree/master/ippusb_bridge
>
> 2. sane-airscan is now in updates-testing repository for Fedora 32
>
> =C2=A0=C2=A0 Till
>
>
> On 14/08/2020 08:29, Till Kamppeter wrote:
>> Hi,
>>
>> I have posted the newest development of the last month on our web
>> site now.
>>
>> Here we go:
>>
>> https://openprinting.github.io/OpenPrinting-News-August-2020/
>>
>> =C2=A0=C2=A0=C2=A0 Till
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture

--=20
Zdenek Dohnal
Software Engineer
Red Hat Czech - Brno TPB-C



--uxcHM7aPv92uLAeXzRgrM4yjEzB3Q33ck--

--2gNPZFZ1I1GqthgFcT1uhMREvPtiTGm9H
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEettYIDyl8EbygCWyFapqf01CJ9cFAl86HOEACgkQFapqf01C
J9f69Af/Sao3wWtb+X+N98XoC++TkfZC8inqRLWyslFx5EiW9f2sXFJHFnO2102/
0p0bPRpuJnqsh26qCd1H20DVtMp8UkjBuekqvm8FtoHraqC3GM7G7y1o1oGuREX3
K+s8aPkudoB/Fi2vkpMxSvWQgvmszxhcI02Yzh/P5TlMTMd34raFV3Rpjm1b9ka6
82vhH88ygejxuYMZk7xgZvYi1Ol6jVpAsVsFjR/NtaDC5FmEBW0Dk/j1ur23rQ7d
o+S6adpQU7EmtdM7d6D6kAKvv++1kzTNnYArR9WZD0yNazcRZCV0x0vBA3JgCKna
RPmC4hIE8R5CiWW6zcrbbSyBtuvhOQ==
=iJq9
-----END PGP SIGNATURE-----

--2gNPZFZ1I1GqthgFcT1uhMREvPtiTGm9H--

