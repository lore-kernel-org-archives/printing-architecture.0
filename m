Return-Path: <zdohnal@redhat.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1614246854;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Q+k331T5kgTKDZ6kR94oIPJJ5PeSorE0vMa+v0I57HQ=;
 b=Y4a9rQoC3KyOELg8KDx5Efdpdj8UCRwofdLNq0jSo0ryNxnow0Zfn/UxetoZrsyDATj7ea
 SIFhFk6BDdYG6Q5VsstcAqPxnUrINnXXcTJez5Pkl54rO9VZESuGysDSj/K+9ub8UcyAjQ
 spdxb5976VixdB7LtfMOzGZtXtlpz9Y=
References: <12af8541-3113-341d-6b7f-d7393203368f@gmail.com>
 <1099419D-7CC7-448C-84B1-5C35D75F7A03@msweet.org>
 <b6f4687d-fe34-c3e7-d378-a07405dc936e@redhat.com>
 <4c554835-e8f7-3399-098d-11718beb020c@gmail.com>
From: Zdenek Dohnal <zdohnal@redhat.com>
Message-ID: <7a99cf12-2c9f-8d4b-3a3a-f5d559efa4a9@redhat.com>
Date: Thu, 25 Feb 2021 10:54:04 +0100
MIME-Version: 1.0
In-Reply-To: <4c554835-e8f7-3399-098d-11718beb020c@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="gE483UM3lFnXZvSOuqBjlRF8lewfXPX0z"
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
To: Till Kamppeter <till.kamppeter@gmail.com>, Michael Sweet <msweet@msweet.org>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Jai Luthra <luthrajaiji@gmail.com>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--gE483UM3lFnXZvSOuqBjlRF8lewfXPX0z
Content-Type: multipart/mixed; boundary="iX2tO0inHR0l545d6LGezYjUOYW6myv8D";
 protected-headers="v1"
From: Zdenek Dohnal <zdohnal@redhat.com>
To: Till Kamppeter <till.kamppeter@gmail.com>,
 Michael Sweet <msweet@msweet.org>
Cc: "printing-architecture@lists.linux-foundation.org"
 <printing-architecture@lists.linux-foundation.org>,
 Jai Luthra <luthrajaiji@gmail.com>
Message-ID: <7a99cf12-2c9f-8d4b-3a3a-f5d559efa4a9@redhat.com>
Subject: Re: Automatic printer setup with Printer Applications
References: <12af8541-3113-341d-6b7f-d7393203368f@gmail.com>
 <1099419D-7CC7-448C-84B1-5C35D75F7A03@msweet.org>
 <b6f4687d-fe34-c3e7-d378-a07405dc936e@redhat.com>
 <4c554835-e8f7-3399-098d-11718beb020c@gmail.com>
In-Reply-To: <4c554835-e8f7-3399-098d-11718beb020c@gmail.com>

--iX2tO0inHR0l545d6LGezYjUOYW6myv8D
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US


On 2/25/21 10:24 AM, Till Kamppeter wrote:
> On 25/02/2021 09:52, Zdenek Dohnal wrote:
>> Sounds reasonable, except for crying in beer! That's never reasonable
>> around here :D
>>
>> So udev-configure-printer would:
>>
>> 1) check if there is a USB device - if it is IPP-over-USB and isn't in
>> allow list (probably there will be devices which will present themselves
>> as IPP-over-USB, but it will be broken, so they want to fall back to
>> printer application...), break out
>>
>> 2) find a printer application which supports the device
>>
>> 3) if it is not installed, install it - this will need to be updated -
>> currently PackageKit is used in scp lib, but PackageKit is going away in
>> the future [1] - I heard there is some work in DNF regarding PackageKit
>> functionality, but I'm not sure how far they are. Not mentioning it is a
>> distro specific package manager, not sure if other distros have already
>> some alternative to PackageKit.
>>
>
> Here we should not only consider distro-specific RPM and DEB packages
> but also distro-independent packaging, like Snap, as Printer
> Applications should also serve for hardware manufacturers to easily
> create distro-independent driver packages, one for all.
>
> Central repositories, like the Snap Store would need some
> hardware-signature-based search, see
>
> https://forum.snapcraft.io/t/hardware-associated-snaps-snap-store-search-=
by-hardware-signature/
>
I don't know about programming Snap installation from an application
right now, I'll search for some manuals. If you have any links about
programming it, please send them my way.
>
>> 4) auto-add the device to a printer application - scp lib for adding
>> print queues is now for CUPS only and written in Python, so it will need
>> to be rewritten in C/Go using PAPPL.
>>
>
> Zdenek, could you update your GSoC project idea if needed?
>
> https://wiki.linuxfoundation.org/gsoc/google-summer-code-2021-openprintin=
g-projects#turn_the_scp-dbus-service_methods_-_getbestdrivers_and_missingex=
ecutables_-_of_system-config-printer_into_c
>

IMO it can stay as it is - I wouldn't like to update the GSoC project
with more tasks and make it more complex, since the last GSoC project
wasn't implemented.

udev-configure-printer can use this project once it is implemented, so
IMO it is not a good idea to put udev-configure-printer there right now
since dbus-service is not implemented yet.

>
> =A0=A0 Till
>
--=20
Zdenek Dohnal
Software Engineer
Red Hat Czech - Brno TPB-C



--iX2tO0inHR0l545d6LGezYjUOYW6myv8D--

--gE483UM3lFnXZvSOuqBjlRF8lewfXPX0z
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEEettYIDyl8EbygCWyFapqf01CJ9cFAmA3c7wFAwAAAAAACgkQFapqf01CJ9eS
0wf/ZbdSjgyGMNiWcctYoZWBdLfdjhrZ7IeptqXO6J67qrdlw6rvVshSG5DMn5dTtUoz/6FgK2X6
FDkBvhqYvZeyCAUUQvRoGCn3g9aiVhhNJFzZf9aGKLy1YU8Bluz+BMS6M7A4DH+HLxWnLM/oCrvK
GVvqwNPBVZEq++XMqF0HoaMdC6dZDXTFF1a62gSf5nAgZ8HqcJW93WLzbvvkm1xHYFPFaU7IGErI
qF0E3Fc1FlfCdSsUhKJYrpASkZwyPcmlSMrVqBYhE8Gk0SSeCJitkL65Dpe/vqsjJTEVWWHAAvRK
pm8V8sett3BjJUDqyY4Gw/oH85eM2POIg4ZvaHUAMg==
=H2lT
-----END PGP SIGNATURE-----

--gE483UM3lFnXZvSOuqBjlRF8lewfXPX0z--

