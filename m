Return-Path: <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.60.0.2.21\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <8c101e3b-2f80-666c-db86-05b7dd170a7c@gmail.com>
Date: Tue, 27 Apr 2021 14:02:11 -0400
Content-Transfer-Encoding: quoted-printable
Message-Id: <FC123AED-25FA-4E37-9957-29565F89DC1D@msweet.org>
References: <8c101e3b-2f80-666c-db86-05b7dd170a7c@gmail.com>
Subject: Re: [Printing-architecture] Human-readable strings for standard IPP
 options/choices/attributes/propertirs
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Till,

The CUPS repository already contains a nearly-complete set of these, and =
they came from the IPP Registry project's exported strings from the IANA =
IPP registry.

    https://github.com/OpenPrinting/cups/tree/master/locale
    https://github.com/istopwg/ippregistry/tree/master/localizations

The PWG maintains a copy of the English strings (I've tried a few times =
to get localizations for other languages without much success) on their =
FTP server (also served by HTTP/HTTPS):

    https://ftp.pwg.org/pub/pwg/ipp/examples/ipp.pot
    https://ftp.pwg.org/pub/pwg/ipp/examples/ipp.strings


> On Apr 27, 2021, at 1:46 PM, Till Kamppeter <till.kamppeter@gmail.com> =
wrote:
>=20
> Hi,
>=20
> while I was looking through the code of the PPD file generators in =
CUPS and cups-filters for creating CUPS queues for driverless IPP =
printers I wa thinking about where the human-readable strings for the =
PPD files (and also for print dialogs) come from and whether one could =
also generate PPD files translated into non-English languages.
>=20
> I have also seen that printers supply human-readable strings for =
options and choices via the URL listed in the printer-strings-uri IPP =
attribute, but these strings are only for the options and choices which =
are not IPP or PWG standard.
>=20
> Seeing this I thought that the wide majority of IPP attributes, =
options, choices, and properties ar IPP/PWG standardized, and so they =
should always be well served by the same human-readable strings, =
independent of operating system, desktop, or other client software being =
used.
>=20
> So it would be great to have some central repository for these strings =
for any operating system and application software to use when working =
with IPP printers. Is there something like that? Was susch a thing =
already discussed at the PWG? Or is every OS or application developer =
supposed to "invent" his own, personal set of human-readable strings for =
standard IPP attributes?
>=20
>   Till
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> =
https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>=20

________________________
Michael Sweet



