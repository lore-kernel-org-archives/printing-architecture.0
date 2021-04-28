Return-Path: <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.11\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <e8060298-8b2b-94d9-3eaf-1386cbc9543c@gmail.com>
Date: Wed, 28 Apr 2021 07:43:17 -0400
Content-Transfer-Encoding: quoted-printable
Message-Id: <29E8A83D-5BBB-49AA-83A6-4B3EB765828A@msweet.org>
References: <8c101e3b-2f80-666c-db86-05b7dd170a7c@gmail.com>
 <FC123AED-25FA-4E37-9957-29565F89DC1D@msweet.org>
 <e8060298-8b2b-94d9-3eaf-1386cbc9543c@gmail.com>
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

With IPP you *don't* select color spaces as user options as those are =
artifacts of the file format and not part of the job ticket.

Realistically, the best thing to do is use the "print-content-optimize" =
value ('auto', 'graphic', 'photo', 'text', 'text-and-graphic') and/or =
the original document format (e.g. printing an image means default to =
photo mode, etc.) and then (if sending raster data) choosing an =
appropriate "pwg-raster-document-type-supported"/"urf-supported" value =
(which is where you will find the color spaces and bit depths that the =
printer supports). The current CUPS PPD generator uses these to generate =
ColorModel choices, which is how we let the user choose a color mode =
today.

In the future we should hide that implementation detail (maybe exposed =
under "expert controls"?) since it is confusing for a lot of users.  =
Moreover, it is possible for a smart PDF RIP will detect the kind of =
colors being used in a PDF document and choose an appropriate raster =
color space and bit depth when rendering a page.

I know there are going to be people that scream, "I need to have =
absolute control over every aspect of my printing!"  But that kind of =
control doesn't belong in the printing system or in the main UI - it =
belongs in the Printer Application (or printer, in the case of an IPP =
Everywhere/AirPrint printer) because those are device =
process/calibration settings that are explicitly *not* part of the IPP =
model.  IPP has always been about specifying intent (*what* you want) =
and not process (*how* to do it).


> On Apr 28, 2021, at 4:17 AM, Till Kamppeter <till.kamppeter@gmail.com> =
wrote:
>=20
> I have found one problem. For the color modes IPP has only the =
following choices:
>=20
> "print-color-mode" =3D "Print Color Mode";
> "print-color-mode.auto" =3D "Automatic";
> "print-color-mode.auto-monochrome" =3D "Auto Monochrome";
> "print-color-mode.bi-level" =3D "Text";
> "print-color-mode.color" =3D "Color";
> "print-color-mode.highlight" =3D "Highlight";
> "print-color-mode.monochrome" =3D "Monochrome";
> "print-color-mode.process-bi-level" =3D "Process Text";
> "print-color-mode.process-monochrome" =3D "Process Monochrome";
>=20
> Apple Raster and PWG Raster support more modes though, especially with =
16 bit instead of 8 bit color depth, "device" color modes and Adobe RGB =
instead of sRGB. Are there standard strings for these? And where do I =
find them?
>=20
>   Till
>=20
> On 27/04/2021 20:02, Michael Sweet wrote:
>> Till,
>> The CUPS repository already contains a nearly-complete set of these, =
and they came from the IPP Registry project's exported strings from the =
IANA IPP registry.
>>     https://github.com/OpenPrinting/cups/tree/master/locale
>>     https://github.com/istopwg/ippregistry/tree/master/localizations
>> The PWG maintains a copy of the English strings (I've tried a few =
times to get localizations for other languages without much success) on =
their FTP server (also served by HTTP/HTTPS):
>>     https://ftp.pwg.org/pub/pwg/ipp/examples/ipp.pot
>>     https://ftp.pwg.org/pub/pwg/ipp/examples/ipp.strings
>>> On Apr 27, 2021, at 1:46 PM, Till Kamppeter =
<till.kamppeter@gmail.com> wrote:
>>>=20
>>> Hi,
>>>=20
>>> while I was looking through the code of the PPD file generators in =
CUPS and cups-filters for creating CUPS queues for driverless IPP =
printers I wa thinking about where the human-readable strings for the =
PPD files (and also for print dialogs) come from and whether one could =
also generate PPD files translated into non-English languages.
>>>=20
>>> I have also seen that printers supply human-readable strings for =
options and choices via the URL listed in the printer-strings-uri IPP =
attribute, but these strings are only for the options and choices which =
are not IPP or PWG standard.
>>>=20
>>> Seeing this I thought that the wide majority of IPP attributes, =
options, choices, and properties ar IPP/PWG standardized, and so they =
should always be well served by the same human-readable strings, =
independent of operating system, desktop, or other client software being =
used.
>>>=20
>>> So it would be great to have some central repository for these =
strings for any operating system and application software to use when =
working with IPP printers. Is there something like that? Was susch a =
thing already discussed at the PWG? Or is every OS or application =
developer supposed to "invent" his own, personal set of human-readable =
strings for standard IPP attributes?
>>>=20
>>>   Till
>>> _______________________________________________
>>> Printing-architecture mailing list
>>> Printing-architecture@lists.linux-foundation.org
>>> =
https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>>>=20
>> ________________________
>> Michael Sweet
>=20

________________________
Michael Sweet



