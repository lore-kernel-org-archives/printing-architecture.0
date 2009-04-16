Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Date: Thu, 16 Apr 2009 10:23:55 -0700
Message-ID: <ED4094DE5E8ACD4BBDACA6AD398E608F379CB1@EEAEX03.us.epson.net>
References: <ED4094DE5E8ACD4BBDACA6AD398E608F379CAF@EEAEX03.us.epson.net>
	<49E768BF.6030404@apple.com>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Subject: Re: [Printing-architecture] [Printing-summit] Preview for CPD
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael R Sweet <msweet@apple.com>
Cc: printing-architecture@lists.linux-foundation.org, printing-summit@lists.linux-foundation.org, Till Kamppeter <till.kamppeter@gmail.com>

Good idea but I still believe it should be the User's choice

> -----Original Message-----
> From: Michael R Sweet [mailto:msweet@apple.com]
> Sent: Thursday, April 16, 2009 10:20 AM
> To: Petrie, Glen
> Cc: Till Kamppeter; peter sikking; printing-architecture@lists.linux-
> foundation.org; printing-summit@lists.linux-foundation.org
> Subject: Re: [Printing-summit] Preview for CPD
>=20
> Petrie, Glen wrote:
> >
> >
> > Peter, Till,
> >
> >
> >
> > I believe my understanding from the print-summit was that the new
CPD
> > would "always" preview the actual print content, which was based on
> > Peter's usability test results.  The concern I have is that the
> > potential processing in creating the preview would include the
entire
> > print chain; even though the image is at a very low resolution.
This
> > level of processing has a potential large time delay.   If the
End-User
> > starts making print option changes that affect the preview; the
preview
> > image will have to be re-rendered, which may take too much time.
> >
> >
> >
> > I would like to suggest that the CPD add and use, as the default, an
> > internal default image that illustrates the print intent and print
> > options but not the actual print content.  This would reduce
potential
> > heavy processing for the actual print content preview.  However, the
> > user should be able to enable display of the actual print content
and
> > willing to accept the potential time delay in creating the actual
print
> > content.
>=20
> *Or* you could display the default image while generating the actual
> preview image (with some sort of animated progress indicator/spinner)
> so that you get the best of both worlds.
>=20
> --
> ______________________________________________________________________
> Michael R Sweet                        Senior Printing System Engineer
