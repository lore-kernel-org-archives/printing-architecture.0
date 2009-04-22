Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Date: Wed, 22 Apr 2009 14:14:45 -0700
Message-ID: <ED4094DE5E8ACD4BBDACA6AD398E608F379D65@EEAEX03.us.epson.net>
References: <ED4094DE5E8ACD4BBDACA6AD398E608F379D52@EEAEX03.us.epson.net>
	<3602B1A0-C33E-4665-BBB6-46D59F2F044E@apple.com>
	<ED4094DE5E8ACD4BBDACA6AD398E608F379D57@EEAEX03.us.epson.net>
	<49EF53C7.8020901@the-axe-effect.de>
	<ED4094DE5E8ACD4BBDACA6AD398E608F379D5B@EEAEX03.us.epson.net>
	<ED4094DE5E8ACD4BBDACA6AD398E608F379D64@EEAEX03.us.epson.net>
	<49EF7E44.6040700@gmail.com>
	<B6DB3491-8B38-4F9B-940F-69CF61B7A93E@apple.com>
	<49EF8444.7010304@gmail.com>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Subject: Re: [Printing-architecture] [Printing-summit] Print Dialog:
	PreviewProcessing: Only A Question
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>, Michael R Sweet <msweet@apple.com>
Cc: printing-architecture@lists.linux-foundation.org, printing-summit@lists.linux-foundation.org

I believe the examples need to be divided up.  As I discussed, there is
the typical user and sophisticated user.  Maybe we should think of the
documents the same way.  I would believe that any one that wants to
print a document of various paper size (paper types) within the single
document will not change the page setting in the dialog -- so this is
really the sophisticated document and, as such, represents a very small
percentage of documents to be printed in the SOHO, Business and
Enterprise environments.  Note that in Production Printing Environment,
these complex documents are common but there the printers are very
sophisticated and have print operators.

I think we should establish a guideline for the 90% user case to help
developers, users and applications understand what to expect and I think
Michael's proposal is the best suggestion.

glen

> -----Original Message-----
> From: Till Kamppeter [mailto:till.kamppeter@gmail.com]
> Sent: Wednesday, April 22, 2009 1:56 PM
> To: Michael R Sweet
> Cc: Petrie, Glen; Tobias Hoffmann; printing-architecture@lists.linux-
> foundation.org; printing-summit@lists.linux-foundation.org
> Subject: Re: [Printing-architecture] [Printing-summit] Print Dialog:
> PreviewProcessing: Only A Question
>=20
> Michael R Sweet wrote:
> > Or just use the size from the document/app as the default and
changing
> > to any other size does scaling. (otherwise, what is the document
size if
> > you don't show it?)
>=20
> There can be documents which have different page sizes, for example
page
> 1 and A4, page 3 A3 and page 4 A4 again. With "Document Page Size(s)"
an
> appropriately loaded printer will take A4 paper for the pages 1, 2,
and
> 4 and A3 paper for page 3. All selections of a concrete page size will
> let the printer print all pages on the same paper size, using
different
> scaling factors if needed.
>=20
>     Till
