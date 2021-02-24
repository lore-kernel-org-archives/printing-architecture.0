Return-Path: <zdohnal@redhat.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1614153847;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=4Lge6JY7cemf75HruWcFXQg7+hYKyTrycPMbhPc/dg4=;
 b=Ajorfqw3oLwdXxUPhO5O13SN8t9JnD+BGZ3FAjDxOdxCvKhke+6zIc9m1RaPSX7dDv7slt
 mzFksXUTsYlZHJ3hJWPBpgYcK4Wf2/x6BR9VvX6k9ntOuta7RzyUB6NUsHR6WQ7BZhsDtp
 W9ykyeBjAhHZcjV6o3x8gf9nRA4IvC4=
References: <12af8541-3113-341d-6b7f-d7393203368f@gmail.com>
From: Zdenek Dohnal <zdohnal@redhat.com>
Message-ID: <949aea1f-a0f0-df47-1538-d7782f5350ab@redhat.com>
Date: Wed, 24 Feb 2021 09:03:57 +0100
MIME-Version: 1.0
In-Reply-To: <12af8541-3113-341d-6b7f-d7393203368f@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="uzoqBsYu7RRvS936Pd9vCmFSHIAqMEBkb"
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
To: Till Kamppeter <till.kamppeter@gmail.com>, Open Printing <printing-architecture@lists.linux-foundation.org>, Michael Sweet <msweet@msweet.org>, Jai Luthra <luthrajaiji@gmail.com>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--uzoqBsYu7RRvS936Pd9vCmFSHIAqMEBkb
Content-Type: multipart/mixed; boundary="1rRUAklc2xXalt5IlHes5JvFYJHxYguNa";
 protected-headers="v1"
From: Zdenek Dohnal <zdohnal@redhat.com>
To: Till Kamppeter <till.kamppeter@gmail.com>,
 Open Printing <printing-architecture@lists.linux-foundation.org>,
 Michael Sweet <msweet@msweet.org>, Jai Luthra <luthrajaiji@gmail.com>
Message-ID: <949aea1f-a0f0-df47-1538-d7782f5350ab@redhat.com>
Subject: Re: Automatic printer setup with Printer Applications
References: <12af8541-3113-341d-6b7f-d7393203368f@gmail.com>
In-Reply-To: <12af8541-3113-341d-6b7f-d7393203368f@gmail.com>

--1rRUAklc2xXalt5IlHes5JvFYJHxYguNa
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

Hi Till!

On 2/23/21 8:27 PM, Till Kamppeter wrote:
> Hi,
>
> one important feature for a good user experience with printing is the
> automatic setup of printers. at least locally connected (USB) printers
> either when they get plugged in and turned on or when their Printer
> Application gets installed and started.
>
> The user expects this behavior, as in the current Linux distributions
> which use classic printer drivers consisting of PPD files and filters
> the locally connected printers also get their CUPS queue set up
> automatically and we do not want to loose this functionality when
> switching over to Printer Applications.
Totally agree.
>
> The first though here is to let the Printer Application, which is
> running as daemon observe the system for USB printers appearing or
> diappearing. This can be done using the hotplug functionality of
> libusb or with a UDEV monitor based on libudev (installing a UDEV
> rules file to make UDEV trigger a command execution does not work out
> of a Snap or other sandboxed packages).

Ok, I did a quick search, udev rules don't work because /sys is a
read-only in Snap?

Then a service/daemon looks like a only way. Printer applications will
run as a service and udev-configure-printer is run as a service already,
but the udev rules must be removed and we need to add libusb/libudev
functionality into udev-configure-printer, if we are going to use it.

Do I understand it correctly?


> As soon as a new device appears the Printer Application would check
> whether it is supported by it and if so, create a print queue.
>
> A proposed implementation is discussed as a Pull Request for the
> Printer Application support library PAPPL:
>
> https://github.com/michaelrsweet/pappl/pull/36
>
> There see especially my comment
>
> https://github.com/michaelrsweet/pappl/pull/36#issuecomment-783533960
>
> The main problem of this approach is that there can be many Printer
> Applications installed, especially with a desktop Linux distribution
> which should support as many different models of hardware as possible
> and therefore has practically all drivers available as free software
> installed. Once a new printer plugged in every Printer Application
> checks whether it supports it. Depending on how they do this this can
> cause a load peak for the system and also for the printer (if the
> Printer Application has to do additional queries on the decision
> whether the printer is supported).

It just got on my mind (probably it will be nonsense) - what about
having only one printer application as a front door and a communication
point with other stuff in the system, and the other driver specific
stuff will be as a module, which could be loaded by one main printer
application, which would do the registering in MDNS and communication
with USB, so hammering USB ports could be prevented.

Even users can be happy that they don't need to install
'foomatic-printerapp' for this printer, 'hplip-printerapp' for other
printer, and they can just install 'generic-printerapp' and if they
don't care about installing all drivers (iiuc our CUPS snap integrates
all drivers anyway...) the modules will be installed via weak deps. Who
cares about minimization, he can install without weak deps and find out
which module supports his printer.

I just got this thought because I'm thinking more about systemd
nowadays, so it would be kind of systemd-version for printing apps.

>
> So we need to do one or more of the following:
>
> - Use the lowest impact method to observe device appearing and
> disappering. Is it libusb's hotplug or libudev's monitor?
>
> - Lowest impact determining whether the appearing printer is
> supported, ideally letting the libusb/libudev process already grab the
> device ID and then run this device ID through PAPPL's auto-add
> callback function (this is the function with which each driver checks
> whether a printer is supported).
>
> - Configurability of Printer Applications to turn off auto-setup and
> to blacklist selected printers, to avoid that there are more that one
> queues because a printer is supported by several Printer Applications.
>
> - Reduce the number of Printer Applications which come with a Linux
> distribution by creating only one Printer Application which retro-fits
> all legacy printer drivers which are not maintained any more.
>
> On a Debian or Ubuntu distribution you find all available printer
> drivers with the command line
>
> apt search printer-driver | grep '^printer-driver-' | grep -v
> printer-driver-all | grep -v -- -common/ | cut -d / -f 1 | sed -e
> s/^printer-driver-//
>
> which results in
>
> brlaser
> c2050
> c2esp
> cjet
> cups-pdf
> dymo
> escpr
> foo2zjs
> fujixerox
> gutenprint
> hpcups
> hpijs
> indexbraille
> m2300w
> min12xxw
> oki
> pnm2ppa
> postscript-hp
> ptouch
> pxljr
> sag-gdi
> splix
>
> Take out hpcups, hpijs and postscript-hp and replace them by hplip.
> Also take out cups-pdf. Then we have 19 drivers and in addition we
> have foomatic which supports all built-in drivers of Ghostscript.
> Looking through the list there are many which are not maintained
> upstream any more: c2050, c2esp, cjet, m2300w, min12xxw, pnm2ppa,
> pxljr, sag-gdi, splix (and perhaps even more). They can all get joined
> into the Foomatic Printer Application, so we end up with a maximum of
> 11 Printer Applications. One needs to find out whether the impact of
> all of them on an appearing USB printer is too high or not.
>
> An alternative approach would be to have a separate, external program
> to auto-setup printers instead of each Printer Application doing it
> individually, as we have currently /lib/udev/udev-configure-printer
> (part of system-config-printer) to auto-create CUPS queues with
> classic printer drivers. This program identifies the printer and
> assigns a driver supporting it, using a priority scheme if there is
> more than one suitable driver. One could proceed similarly for Printer
> Applications or even extend /lib/udev/udev-configure-printer for
> Printer Application support. This would especially also assure that
> only one print queue gets set up, independent of how many Printer
> Applications support the printer.
>
> WDYT?
>
> Should we take the centralized approach? Or should we let the Printer
> Applications do the auto setup individually?
If the one big printer application system+modules is a complete
nonsense, I would go with at least putting all dead drivers into
foomatic printer application, and then update udev-configure-printer to
use libusb/libudev for checking USB device, and if found any, it will
contact a printer application via PAPPL API or (probably rather, it
looks like it is more popular) via DBUS message.
>
> Should we use libusb's hotplug approach or libudev's UDEV monitor
> approach to get notified of appearing and disappearing printers?
I would prefer libusb - IMO libudev is closer to HW, which IIUC is not
needed here, so libusb looks fine for us.
>
> Any other thoughts?
>
> =C2=A0=C2=A0 Till
>
--=20
Zdenek Dohnal
Software Engineer
Red Hat Czech - Brno TPB-C



--1rRUAklc2xXalt5IlHes5JvFYJHxYguNa--

--uzoqBsYu7RRvS936Pd9vCmFSHIAqMEBkb
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEEettYIDyl8EbygCWyFapqf01CJ9cFAmA2CG0FAwAAAAAACgkQFapqf01CJ9cC
WAf6A20ZqlvlwZdITyG1K/HO6bPpghST7CB+veYMNV7Ls92z+bKA+kLhiYGdJW00QDIcJceqNfC+
6QtrxNgdNGqTL9IufGjGybrdwiZbuWmb+oj5tKV3r7Uv1yB6FEm81Od6Pfez2If8jz//ZjA5gH4h
DUwbqIKlHyp2RZ+tiO8Zws1rxuhn86ENWY/hjKFxYB4bMT/aHSvRUib/bFvod9P3lUybLQmqTZn9
BIOYOsHRoD7oEyfT1hJfNMnobilANouCdu1wpNNWAdhSCxIhUBqGGlFiw8xqoISplHVTIwk7mvFD
WZUXfcL1ZSDlR6iX6KvqpO4SymArII5QU2MjF6N+vw==
=jwVc
-----END PGP SIGNATURE-----

--uzoqBsYu7RRvS936Pd9vCmFSHIAqMEBkb--

