Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Date: Mon, 13 Jul 2009 06:25:45 -0700
Message-ID: <ED4094DE5E8ACD4BBDACA6AD398E608F4188AD@EEAEX03.us.epson.net>
References: <ED4094DE5E8ACD4BBDACA6AD398E608F418864@EEAEX03.us.epson.net>
	<200907101600.36756.hvengel@astound.net>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Subject: Re: [Printing-architecture] Questions, Concern, Disscusion on CPD
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "Hal V. Engel" <hvengel@astound.net>, printing-architecture@lists.linux-foundation.org

I am not going to argue with you; you simply missed the point.

> -----Original Message-----
> From: printing-architecture-bounces@lists.linux-foundation.org
> [mailto:printing-architecture-bounces@lists.linux-foundation.org] On
> Behalf Of Hal V. Engel
> Sent: Friday, July 10, 2009 4:01 PM
> To: printing-architecture@lists.linux-foundation.org
> Subject: Re: [Printing-architecture] Questions, Concern, Disscusion on
CPD
>=20
> On Thursday 09 July 2009 09:39:14 am Petrie, Glen wrote:
> >  E: Another "option" to consider for this section is an advanced
button.
> > The key to printing a specific print-quality (actually, better
stated as
> > a specific print-intent) is to know more about the media being
printed
> > to.   That is, for example using paper; what is brightness, the
weight,
> > the finish (rough, smooth, polished), color, etc.  From these facts,
the
> > printer driver can tune its color-to-ink processing and other
factors to
> > achieve the best output for the user print intent.  Typically, a
user
> > can easily find this information on the cover of the media being
used in
> > the printer.  Note, I have not seen this kind of processing done in
> > color-management processing software.
>=20
> You are incorrect.  This is exactly what should happen in a proper
color
> managed work flow and this is exactly what color management is for.
> Proper
> profiles are media (as well as device and device settings) specific.
They
> are
> created by measuring the media white point (you called this color) and
> brightness (these are actually the same thing) as well as the
resulting
> absolute (meaning CIE XYZ or CIE L*a*b*) colors/tones of various
amounts
> and
> combinations of inks/colorants on that media (we usually measure 1,000
to
> 3,000 color patches when creating a printer profile).
>=20
> The correct use of a printer ICC profile should optimize how the
> inks/colorants are put down on the paper to match the paper white
point to
> the
> grays/blacks created by the inks/colorants (I have assumed relative
> colorimentric intent) as well as to optimize the gamut/dynamic range
of
> the
> resulting prints without over inking.
>=20
> I am not sure if I have ever seen a paper package that had the media
white
> point listed at least not in a form that would have colorimetric
meaning.
> Although these may exist I have NEVER seen a printer driver that had
the
> ability to accept this data (paper white point) as user input other
than
> by
> using an ICC profile.  I just looked at the box and the product sheet
from
> the
> box of the Ilford paper that I use and it did NOT list the paper white
> point
> or brightness of the paper.  If it did I would expect to find
something
> like:
>=20
> White point: XYZ: 84.550000 88.240000 74.960000, D50 Lab: 95.261904 -
> 0.999796
> -1.888369
>=20
> (The above is the measured white point of a sample of Ilford Galerie
> Smooth
> Gloss paper - note the first Lab value is also the "brightness" -
actually
> Luminosity - of the paper).
>=20
> Isn't the media type setting what is used to denote the general
> characteristics of the media such as finish and weight....
>=20
> Hal
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
>
https://lists.linux-foundation.org/mailman/listinfo/printing-architectur
e
