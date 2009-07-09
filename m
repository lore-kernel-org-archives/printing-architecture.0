Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Date: Thu, 9 Jul 2009 07:09:17 -0700
Message-ID: <ED4094DE5E8ACD4BBDACA6AD398E608F41885F@EEAEX03.us.epson.net>
References: <4A5364E7.9000904@gmail.com>
	<ED4094DE5E8ACD4BBDACA6AD398E608F418827@EEAEX03.us.epson.net>
	<ED4094DE5E8ACD4BBDACA6AD398E608F41885E@EEAEX03.us.epson.net>
	<200907090856.57775.alex.wauck@gmail.com>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Subject: Re: [Printing-architecture] new cpd specs
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Alexander Wauck <alex.wauck@gmail.com>, printing-architecture@lists.linux-foundation.org
Cc: Till Kamppeter <till.kamppeter@gmail.com>

Alex,

The question is providing a button to allow it.  This is a COMMON print
dialog.  Therefore, the control should be there.  If an application does
not (can not) support it, then the application elects to deactivate the
button when the dialog is called.  In this specific example, the button
may be deactivated if there is no clipboard content.  In addition, why
should I have to go to another application (like Klipper) to print
content I have access to.

glen

> -----Original Message-----
> From: Alexander Wauck [mailto:alex.wauck@gmail.com]
> Sent: Thursday, July 09, 2009 6:57 AM
> To: printing-architecture@lists.linux-foundation.org
> Cc: Petrie, Glen; Till Kamppeter
> Subject: Re: [Printing-architecture] new cpd specs
>=20
> > I thought of another useful button for "pages to print" (Should be
> > called "Content to Print") is printing the Clipboard.  Since this is
the
> > CPD, the clipboard is something app have in common.
>=20
> Do Qt/GTK+ applications have their own clipboards (I'm thinking of
> OpenOffice in
> particular), or do they use a common clipboard?  I don't think that
> functionality belongs in the dialog itself unless applications have
their
> own
> clipboards.  If the common clipboard is all there is, then a clipboard
> manager
> application (like Klipper) should provide this functionality.
>=20
> Alex
>=20
> --
> Public keys:
> http://dragonfly.mediaservices.gac.edu/alex/keys/
>=20
> ()  ascii ribbon campaign - against html e-mail
> /\  www.asciiribbon.org   - against proprietary attachments
>=20
> http://www.gnu.org/philosophy/no-word-attachments.html
