Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: text/plain;
	charset="US-ASCII"
Content-Transfer-Encoding: quoted-printable
Date: Tue, 30 Mar 2010 06:10:33 -0700
Message-ID: <ED4094DE5E8ACD4BBDACA6AD398E608F0242C2@EEAEX03.us.epson.net>
References: <ED4094DE5E8ACD4BBDACA6AD398E608F0242AF@EEAEX03.us.epson.net><4BABC456.4030005@gmail.com><77B651FE-6B30-499A-BFC6-DA4753374D97@mmiworks.net><ED4094DE5E8ACD4BBDACA6AD398E608F0242B7@EEAEX03.us.epson.net>
	<D9530B8A-BA07-4848-BD7D-167B84480C0B@mmiworks.net>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Subject: Re: [Printing-architecture] Another Epson Question on the
	CommonPrint	Dialog
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: peter sikking <peter@mmiworks.net>, Open Printing <printing-architecture@lists.linux-foundation.org>
Cc: "Petrie, Glen" <glen.petrie@eitc.epson.com>

Thank you for your reply.  I have forwarded to the interested parties
within Epson.

Glen


> -----Original Message-----
> From: printing-architecture-bounces@lists.linux-foundation.org
> [mailto:printing-architecture-bounces@lists.linux-foundation.org] On
> Behalf Of peter sikking
> Sent: Tuesday, March 30, 2010 2:53 AM
> To: Open Printing
> Subject: Re: [Printing-architecture] Another Epson Question on the
> CommonPrint Dialog
>=20
> Glen wrote:
>=20
> >>> ............ We are working from the basis that printable area and
> > orientation are two obvious parameters that the app must know to
> > transform.
> >
> > This clarification states, "the app must know to transform"; thus,
the
> > application will, by this clarification, perform the transformation.
> > Epson is specifically interested in understanding about the "how
does
> > the app perform the transform" and
>=20
> first of all, let's define transformation: this is the act of
> "putting it on paper."
>=20
> how any application gets its data on paper is exactly their
> expert domain. for instance: a web browser reflows the web
> page content to the printable area of the page, according to
> the css of the page.
>=20
> there are a thousands of applications where we have no idea how
> they get it on paper. a DNA database? I have no idea what
> would be an appropriate representation on printed media, but
> the people who write the app do.
>=20
> OK, so the app needs at least the printable area (page size - margins)
> to do its job. in more advanced cases (eg. centre on page), it will
> have to know the page size _and_ the margins.
>=20
> now, if either of these things happen in the cpd,
>=20
> - media size change (eg. A4 <-> letter)
> - portrait <-> landscape change
> - margin change
> - borderless printing (hey, nothing but a margin change, really)
>=20
> the app gets notified of the new printable area, or
> new page size + margins, and does the transformation again.
>=20
> >>>>  2. ..... how does the application "expand" the image ?
> >>>>        1. by how much ?
> >>>>        2. if the image size does not equal media size, the how is
> >>>>           the scale ratio of the expanding decided?
> >>>>        3. what is the method used by the application to expand
the
> >>>>           image? There are other methods beyond simple scaling.
> >
> > All of these item can change from print-vendor to print-vendor and
> > printer-to-printer; so it important the printer vendor to understand
> > more of the details.
>=20
>=20
> printer vendors are in complete control of the default paper sizes,
> and their margins in the cpd via the ppd. and borderless printing
> ain't nothing but a special margin.
>=20
> so putting it together we can see the chain now:
>=20
> - the printer (vendor) provides the paper size + borderless margins;
> - users choose this paper size + borderless;
> - the app transforms its data to the resulting printable area.
>=20
>      --ps
>=20
>          founder + principal interaction architect
>              man + machine interface works
>=20
>          http://mmiworks.net/blog : on interaction architecture
>=20
>=20
>=20
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
>
https://lists.linux-foundation.org/mailman/listinfo/printing-architectur
e
