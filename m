Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: text/plain;
	charset="US-ASCII"
Content-Transfer-Encoding: quoted-printable
Date: Mon, 29 Mar 2010 07:28:39 -0700
Message-ID: <ED4094DE5E8ACD4BBDACA6AD398E608F0242B7@EEAEX03.us.epson.net>
References: <ED4094DE5E8ACD4BBDACA6AD398E608F0242AF@EEAEX03.us.epson.net>
	<4BABC456.4030005@gmail.com>
	<77B651FE-6B30-499A-BFC6-DA4753374D97@mmiworks.net>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Subject: Re: [Printing-architecture] Another Epson Question on the Common
	Print	Dialog
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: kate price <kate@mmiworks.net>, Till Kamppeter <till.kamppeter@gmail.com>
Cc: printing-architecture@lists.linux-foundation.org

All,

<..snip..>

>>............ We are working from the basis that printable area and
orientation are two obvious parameters that the app must know to
transform.

This clarification states, "the app must know to transform"; thus, the
application will, by this clarification, perform the transformation.
Epson is specifically interested in understanding about the "how does
the app perform the transform" and=20

> >>   2. ..... how does the application "expand" the image ?
> >>         1. by how much ?
> >>         2. if the image size does not equal media size, the how is
> >>            the scale ratio of the expanding decided?
> >>         3. what is the method used by the application to expand the
> >>            image? There are other methods beyond simple scaling.
=20
All of these item can change from print-vendor to print-vendor and
printer-to-printer; so it important the printer vendor to understand
more of the details.

Thanks, glen


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
>=20
> On 25 Mar 2010, at 21:15, Till Kamppeter wrote:
>=20
> > On 03/25/2010 05:16 PM, Petrie, Glen wrote:
> >> All,
> >>
> >> Another question has been asked by Epson internal on the Common
Print
> >> Dialog.
> >>
> >> The issue is on borderless printing.
> >>
> >>   1. Is the follow flow correct?
> >>
> >> In addition, we want to ask a question regarding the borderless
> >> printing
> >> with Common Printing Dialog (CPD).
> >>
> >> We are understanding the borderless printing scenario with CPD as
> >> follows. Is it right?
> >>
> >> 1) Users select the "Borderless" option.
> >>
> >> 2) The "Borderless" option is reported back to the application.
> >>
> >> 3) The application "expands" the image for "Borderless" printing,
and
> >> send the expanded PDF to CPD.
> >>
> >> 4) CPD shows the preview of received PDF.
> >>
> >> 5) If users judge that it is OK, CPD sends the "expanded" PDF to
> >> CUPS.
> >>
> >>   2. If the above flow is correct; then, how does the application
> >>      "expand" the image ?
> >>         1. by how much ?
> >>         2. if the image size does not equal media size, the how is
> >> the
> >>            scale ratio of the expanding decided?
> >>         3. what is the method used by the application to expand the
> >>            image? There are other methods beyond simple scaling.
> >>
> >> Borderless printing, today, is done by the printer driver
> >> independent of
> >> the application.
> >>
> >> I will forward your replies to internal Epson.
> >
> > Not exactly, this is more the workflow of an application-supplied
> > option, where the setting of the option determines how the
application
> > should create the document to be sent to the printer.
> >
> > Borderless is usually simply a boolean option supplied by the
driver.
> > One does not expect that the application needs to re-render the PDF.
> > The
> > driver takes care of appropriate overspray expansion when rendering
> > the PDF.
> >
> > I general, the app can only react to option settings with
re-rendering
> > if the options is an option supplied by the app and not from the
> > printer, driver, or printing system (CUPS).
> >
> >    Till
> > _______________________________________________
> > Printing-architecture mailing list
> > Printing-architecture@lists.linux-foundation.org
> > https://lists.linux-foundation.org/mailman/listinfo/printing-
> architecture

