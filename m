Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CE06240AFA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C14E240220
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 2F5B180444
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1674061345;
 bh=jBYMHT5zAlCuDR2h3ymHgasFhCdUQYxX+Wgd4QJsn9k=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=fCgAJep+sUOb1CiBHM9KKzdIfUObA8euqDQ+eMwox2d9eDpK590nS/GcOebsHmAZg
 /k6atpADjPMN84WzYWAZQ9Doncllbp1Y9EdfBLL7hN4STSHyVmI6x2n6OKHosIeBEj
 qVLSWlK61y7SSJm4rhqGftIFcjN/3/jFNu/px0r4=
Content-Type: multipart/signed;
 boundary="Apple-Mail=_56432D20-C759-4A35-ACE9-DB304E3DA773";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.300.101.1.3\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <8fa2d6b9-4d9e-6bdd-d9da-93e53ae8fe62@gmail.com>
Date: Wed, 18 Jan 2023 12:02:13 -0500
Message-Id: <47019C70-182C-4083-8053-FA3503A55EB5@msweet.org>
References: <7ed5b062-73bc-0002-14c8-bda32c5f7866@gmail.com>
 <63ED10FD-8152-401C-92A8-F5B89CCA1F68@msweet.org>
 <8b095d8c-f33a-5686-72e9-70ab9ad4e2cd@gmail.com>
 <09B091BC-0273-42EC-8F3B-C01AF9761048@msweet.org>
 <60a37a80-7574-2b4e-7c40-2c65837c1b3c@gmail.com>
 <7F9BA7FA-BBE7-48E3-B70E-A806707F0928@msweet.org>
 <8fa2d6b9-4d9e-6bdd-d9da-93e53ae8fe62@gmail.com>
Subject: Re: [Printing-architecture] Google Summer of Code 2023 - Project
 ideas page for the Linux Foundation online
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Aveek Basu <basu.aveek@gmail.com>


--Apple-Mail=_56432D20-C759-4A35-ACE9-DB304E3DA773
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Till,

On Jan 17, 2023, at 5:49 PM, Till Kamppeter <till.kamppeter@gmail.com> =
wrote:
>=20
> On 17/01/2023 16:27, Michael Sweet wrote:
>>>=20
>>> Would other parts like CUPS or cups-filters need to get updated.
>> There is a new (OPTIONAL) "job-triggers-supported" attribute that can =
be used by a Printer to suggest presets based on selections, e.g., pick =
a photo media triggers using the photo preset.
>=20
> OK, on an implementation of creating presets from within a Printer =
Application (or PAPPL) I would then allow the user also to set a trigger =
via an appropriate UI in the web interface.

I don't know whether supporting triggers is necessary in the web =
interface.

> In CPDB (the CUPS backend) I will add support to parse the =
"job-presets-supported" attribute of the printer to let it add an option =
to select a preset to the print dialog and if the use selects a preset, =
the CUPS backend will send this preset's settings as job attributes to =
the CUPS queue. This is how I understood to use presets following
>=20
> https://ftp.pwg.org/pub/pwg/ipp/wd/wd-ippnodriver20-20221027.pdf

Current version:

	https://ftp.pwg.org/pub/pwg/ipp/wd/wd-ippnodriver20-20230116.pdf

>> There is also the new (OPTIONAL) "client-info" attribute to provide =
Client-side metadata (like OS, application, etc.) - that one will need =
some privacy controls for users to "opt in".
>>=20
>=20
> Does this allow a client app to tell the printer that the job comes =
from this app? So that if it is Darktable for example that the printer =
prints in photo mode (sets print-content-optimize=3Dphoto)?

No, the point of "client-info" is to allow a Client to identity the =
software components being used for printing.  It is ABSOLUTELY NOT for =
tailoring behavior to a particular client or application, as that way =
lies madness.

The specific uses of "client-info" are Job Accounting and =
troubleshooting (i.e. knowing that LibreOffice is the application =
producing the PDF file you are trying to print, or knowing that a =
particular version of ChromeOS isn't working, etc.)

> ...
> For example a PPD file has the option "PrintDirection" with the 2 =
choices "uni-directional" and "bi-directional". We assume higher quality =
by the former and higher speed by the latter choice.

Possibly, yes.  Of course, the class of printer offering this option =
(dot matrix) doesn't exactly offer much in the way of quality or =
speed... :)

> The PostScript Printer Application creates a vendor option from that, =
named "print-direction" with choices "uni-directional" and =
"bi-directional". In the current version the user can set a default for =
this option by the web interface, under "Printing Defaults".
>=20
> Now let us assume that PAPPL allows users to create presets via a new =
web interface page, or even automatically creates presets in some way. =
We also assume that we have a newer PAPPL version supporting the =
"job-presets-supported" printer IPP attribute and by this tells which =
presets it has readily available. The attribute will look like this:
>=20
>    job-presets-supported=3D{
>      preset-name=3D'draft'
>      preset-category=3D'print-quality'
>      printer-resolution=3D300dpi,
>      print-direction=3D'bi-directional'
>    },{
>      preset-name=3D'normal'
>      preset-category=3D'print-quality'
>      printer-resolution=3D600dpi,
>      print-direction=3D'bi-directional'
>    },{
>      preset-name=3D'high'
>      preset-category=3D'print-quality'
>      printer-resolution=3D1200dpi,
>      print-direction=3D'uni-directional'
>    }

Current PAPPL supports it, you just need to pass the values in the IPP =
attributes in the papplPrinterSetDriverData call.

> Once, due to the preset-category being "print-quality" it changes the =
"print-quality" attribute, instead of having the 3 standard choices, it =
gets the choices defined by the presets and the printer is supposed to =
execute the print-quality job attribute by setting the other job =
attributes as described by the appropriate preset. Am I right?

Not exactly.

Presets normally show up as a list of choices - the PWG 5100.13 update =
adds an optional category that allows UI designers to group those =
presets (possibly as a separate list under the "print quality" UI) but =
it shouldn't replace the existing print-quality UI.

One possible implementation choice would be to show print-quality =
presets as the "easy" UI and any print quality attributes as the =
"expert" UI.  The new "print-processing-attributes-supported" attribute =
is actually designed to facilitate this so that a Client can easily =
determine which Job Template attributes contribute to "print quality" =
(which really isn't just one control with "draft", "normal", and =
"high").

So please just think of presets as a way to expose common/logical =
combinations of attributes and values for regular users (the "easy" UI) =
and not as a wholesale replacement of those attributes.

> Now let as assume we have the same entries in "job-presets-supported" =
but their preset-category is NOT "print-quality" but for example =
"feature" instead.
>=20
> In this case a client would need to add an option to the print dialog =
named "Presets" and offering the choices "none", "draft", "normal", and =
"high", and if the user sets this to "high", the client should add the =
job attributes printer-resolution=3D1200dpi and =
print-direction=3D'uni-directional' to the job. Am I right? Has this =
also to work this way despite "print-direction" is not a standard IPP =
attribute name (it is created by the PostScript Printer Application, =
derived from the PrintDirection option of the PPD)?

That is one potential implementation, yes.

________________________
Michael Sweet


--Apple-Mail=_56432D20-C759-4A35-ACE9-DB304E3DA773
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkIbDzcZsP1Y8+PQFvmfHXsgfMkQFAmPIJhUACgkQvmfHXsgf
MkQD1Q//VfokWPSWhfxTH5ux8TESU1jQlqZm6zECmrmn7ZII2UqcCzyIm0Nnl+yq
S+3anps5BtA8Qzf/RuR17fSxUdo3fhe+kl6CLUknmoMYmnBsTbejY7bNmuD4IXh9
fLgTIVhMz71UyL9coGgy5dteh6uGV0EhGo55PgfVS9Be6j0j4egfK8RuQm98yGM8
kTluF5V7JEqFlMgqQ6r/43u6xeD7hB2EIeRgVu09d5hiDw7ISdU9cHLO1oAs8xtN
x9SPWCko41Jmr7dyHjwMj81H6SLbmfgOiVYsVmtNEpN22v+iYseUUCAh3lnaqMqe
rk/ZmFsDRi8qxT/MnFg+4oT0c8HOjW79iDQh1BNmtudRiYRjMKMsf1MxYt/6dbhZ
2ESxQ2YQ+xI3ilQtPS7hzSo34ykIrmE0fc33WKKpJcXZX5fQ24CM7/4lhJCwwn6D
yz/DnUCp7hnaaA1ld2f1defRjfP00/xXDrufxAgGyB4ue1arvXgC3L4fIES1hbMA
/0uJYUJepgA+1MdSdE+kcMsPL9eO6LhkSYITfP3m7Qe6/I03tJECAZ7dsrJEmjtX
EN0NGhs6PHpYOAy0UoCozQm08VgEABfXevp7G2z+gB/e0mYhShelgZW1/eNeNg/5
SwkBGIrcNUSXR31HGbNlffwajClZnImD7x5bujIvbocAZmjsGLI=
=ihwM
-----END PGP SIGNATURE-----

--Apple-Mail=_56432D20-C759-4A35-ACE9-DB304E3DA773--
