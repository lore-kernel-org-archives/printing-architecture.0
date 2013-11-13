Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-type: text/plain; charset=windows-1252
From: Michael Sweet <msweet@apple.com>
In-reply-to: <5282AA4D.9010201@gmail.com>
Date: Wed, 13 Nov 2013 10:09:20 -0500
Content-transfer-encoding: quoted-printable
Message-id: <7FE3E1C3-2889-4E01-9C35-FA3716CA03B2@apple.com>
References: <51BA5B58.3080208@gmail.com> <5270DD07.4080601@gmail.com>
	<B68BB93E-6180-44CE-BEDA-3A499C72D823@apple.com>
	<5282AA4D.9010201@gmail.com>
Subject: Re: [Printing-architecture] Concept for PPD-less CUPS-spooled
 printing on Bonjour-discovered network printers
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, John Layt <john@layt.net>, Marek Kasik <mkasik@redhat.com>

Till,

On Nov 12, 2013, at 5:23 PM, Till Kamppeter <till.kamppeter@gmail.com> =
wrote:
> ...
> AFAIR The cupsEnumDests() function is not passing on all needed
> information, especially not the TXT record which contains important =
info
> like the printer's PDLs.

Keep in mind that the TXT record often only provides a subset of the =
supported values; once you actually decide to use a printer you need to =
query the document-format-supported attribute, which you can already do =
with the new APIs.

> It also lists only local and remote CUPS queues
> and not my IPP network printers (is it restricted to input formats, =
like
> PDF? Or IPP Everywhere/PWG Raster?). For only doing the original task =
of
> cups-browsed, creating local queues pointing to remote CUPS queues to =
be
> able to easily print on these remote printers from the current
> applications cupsEnumDests() would even work.

Currently we require printers to support PDF to support direct printing. =
 The next feature release of CUPS will be adding support for =93temporary=94=
 print queues, at which point I will =93throw the switch=94 to allow PWG =
Raster printers to be shown as well.  Printing to such a queue will =
cause a local (temporary) print queue to be created and used to print to =
the corresponding printer.

> Another question is whether cupsEnumDests() can run in parallel with
> other, independent services, in my case Tim Waugh's backward
> compatibility CUPS browsing/broadcasting.

There is no reason it can=92t, the main thing you=92ll need to do is =
suppress duplicates.

>> Also, I have my concerns of this approach - with cupsd not knowing =
anything about the printer, and with there being no way for a non-aware =
app to know what the printer's capabilities are, I foresee a lot of =
interoperability issues.
>=20
> The problem of this kind of queues is really that if an application is
> not aware of them, it prints (if the app sends PDF it actually prints,
> as the correct filter chain is called) on them but with unsatisfying
> results do to not knowing enough of the printer.
>=20
> They work only to their full extent if the app is aware of them and
> polls the capabilities record of the printer via IPP. And this record
> cannot be polled by cups-browsed already as then entering the network
> with a mobile device can wake up all printers from power saving mode,
> some models even getting noisy then.

Thus my point about not adding the printer queue until you actually need =
to use it. Browse to discover, add a local queue as needed to print to =
it (at which time it is OK to wake the printer up with a direct query=85)

_______________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

