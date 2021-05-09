Return-Path: <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.11\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <11635c5c-deaf-94af-012e-36717fd6900e@gmail.com>
Date: Sun, 9 May 2021 16:34:55 -0400
Content-Transfer-Encoding: quoted-printable
Message-Id: <71632EB9-69EE-4AF8-A191-D638C439C7DD@msweet.org>
References: <8c101e3b-2f80-666c-db86-05b7dd170a7c@gmail.com>
 <FC123AED-25FA-4E37-9957-29565F89DC1D@msweet.org>
 <e8060298-8b2b-94d9-3eaf-1386cbc9543c@gmail.com>
 <29E8A83D-5BBB-49AA-83A6-4B3EB765828A@msweet.org>
 <9db67beb-7ca2-249c-88e4-ead29d19ce63@gmail.com>
 <FC95906E-6085-4121-AEA8-9E53613872AD@msweet.org>
 <fdd1654d-8dd6-9eb8-e41d-dcf786c559d1@gmail.com>
 <YJckMlum0aC3moQO@shaftnet.org>
 <E783C6F3-AF3B-41C3-9432-88E23AF907D7@msweet.org>
 <YJdH6p4ePqKSATLL@shaftnet.org>
 <1501D827-9DF0-45D4-87C6-FB9953C7BF1B@msweet.org>
 <1a37c322-5ca3-727b-583f-2b6bc78e44e2@gmail.com>
 <663F1B36-C6A5-4261-8226-C659DC8DA871@msweet.org>
 <11635c5c-deaf-94af-012e-36717fd6900e@gmail.com>
Subject: Re: [Printing-architecture] Make use of extended color spaces on
 IPP printers
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Jay Berkenbilt <ejb@ql.org>, Vikrant Malik <vikrant@iitk.ac.in>

Till,

> On May 9, 2021, at 3:26 PM, Till Kamppeter <till.kamppeter@gmail.com> =
wrote:
>=20
> On 09/05/2021 15:41, Michael Sweet wrote:
>>> Now for DeviceRGB (and DeviceGray) I assume that here the data is =
required in the printer's native color space. Am I right? But can I do =
true driverless printing with this? Can I download the printer's ICC =
profiles from the printer? And if yes, by which URL?
>> So printers that support device RGB and device gray also support the =
"printer-icc-profiles" attribute, which allows you to determine which =
profile to use for a particular combination of Job Template attributes.  =
In some cases a single profile is reported that represents the printer's =
internal working color space.
>=20
> Unfortunately, this is not always the case. My HP OfficeJet Pro 8730 =
has the following attributes
>=20
> urf-supported (1setOf keyword) =3D =
CP1,MT1-2-8-9-10-11,PQ3-4-5,RS300-600,SRGB24,OB10,W8,DEVW8,DEVRGB24,ADOBER=
GB24,DM3,FN3,IS1-2,V1.4pwg-raster-document-type-supported (1setOf =
keyword) =3D sgray_8,srgb_8,adobe-rgb_8,rgb_8
>=20
> but no "printer-icc-profiles" attribute. So for Apple Raster it =
supports Device Gray and Device RGB and for PWG Raster input it supports =
at least Device RGB ("rgb_8"?), but there is no information about how to =
download the appropriate ICC profiles from the printer, meaning that =
these device color spaces are unusable for true driverless printing. Am =
I right?

So if you used a color profile generation utility you could print a =
target image in DeviceRGB to generate an ICC profile that could be used =
locally.

________________________
Michael Sweet



