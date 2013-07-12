Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-type: text/plain; charset=windows-1252
From: Michael Sweet <msweet@apple.com>
In-reply-to: <CA+PBKyK-JofRsT3n=fzMq4Zk4c=+ouNmO5W6kYda1Hh-0Gsbtg@mail.gmail.com>
Date: Fri, 12 Jul 2013 19:08:10 -0400
Content-transfer-encoding: quoted-printable
Message-id: <B2DDBE78-2368-4C1C-9574-D28953440C4D@apple.com>
References: <AECFED11-16E9-438E-9EDE-9E59E49D38B9@apple.com>
	<CA+PBKyK-JofRsT3n=fzMq4Zk4c=+ouNmO5W6kYda1Hh-0Gsbtg@mail.gmail.com>
Subject: Re: [Printing-architecture] CUPS 1.7rc1 now live
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Naruhiko Ogasawara <naruoga@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Just email the translations to me directly and I'll be happy to merge =
the changes.


On 2013-07-12, at 2:04 AM, Naruhiko Ogasawara <naruoga@gmail.com> wrote:

> Hi Mike,
>=20
>=20
> Thanks for working new CUPS 1.7; lots of improvement about IPP related =
features.
>=20
> Anyway, I just checked cups_ja.po of CUPS 1.7rc1 and 147 untranslated =
messages
> (because of ipptool improvement and new ippfind tool?).
> I've not checked web template files yet but they might have a new =
messages.
>=20
> So we, Japanese localization team should start to translate, but how =
do we do?
> CUPS web page is still temporary and no forum we have.
> Where is a good place to send our translation result to you?  In this =
list?
>=20
>=20
> Thanks,
>=20
>=20
> 2013/7/12 Michael Sweet <msweet@apple.com>:
>> Not just one CUPS release but two!
>>=20
>> CUPS 1.7rc1 is our first release candidate for CUPS 1.7.0 and =
includes the
>> fixes from CUPS 1.6.3, adds a new ippfind utility, fixes some issues =
in the
>> ipptool utility, and fixes some general printing bugs. Changes =
include:
>>=20
>> =95 Printer xxx-default values were not reported by =
Get-Printer-Attributes or
>> lpoptions (<rdar://problem/14401795>)
>> =95 Fixed deprecation warnings for many functions on OS X so they are =
tied to
>> the deployment version when building (<rdar://problem/14210079>)
>> =95 Fixed a build issue on ARM-based Linux systems - unable to =
validate
>> va_list arguments.
>> =95 Added a new ippfind tool for finding IPP printers and other =
Bonjour
>> services (<rdar://problem/13876199>)
>> =95 Fixed some issues with conversion of PWG media size names to =
hundredths of
>> millimeters (<rdar://problem/14065748>)
>> =95 The IPP backend could crash on OS X when printing to a Kerberized =
printer
>> (<rdar://problem/14040186>)
>> =95 The ipptool program now automatically extends timeouts when the =
output
>> buffer is filled (<rdar://problem/14016099>)
>> =95 The ipptool program now supports the --help and --version =
options.
>> =95 The ipptool program did not continue past include file errors by =
default
>> (<rdar://problem/13875803>)
>> =95 The ipptool program now supports FILE-ID and TEST-ID directives =
and
>> includes their values in its XML output (<rdar://problem/13876038>)
>> =95 The ipptool program now supports WITH-HOSTNAME, WITH-RESOURCE, =
and
>> WITH-SCHEME expect predicates to compare the corresponding URI =
components
>> (<rdar://problem/13876091>)
>>=20
>> Enjoy!
>=20
>=20
>=20
>=20
> --
> Naruhiko Ogasawara (naruoga@gmail.com)

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

