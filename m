From: Tim Waugh <twaugh@redhat.com>
In-Reply-To: <alpine.LNX.2.00.1101061119110.6846@roma.rasena>
References: <alpine.LNX.2.00.1101061000050.6846@roma.rasena>
	<1294306085.2824.3.camel@worm.elk>
	<alpine.LNX.2.00.1101061031470.6846@roma.rasena>
	<1294307620.2824.9.camel@worm.elk>
	<alpine.LNX.2.00.1101061058270.6846@roma.rasena>
	<1294309133.2824.23.camel@worm.elk>
	<alpine.LNX.2.00.1101061119110.6846@roma.rasena>
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature";
	boundary="=-OSdM2/YtnSumwv4NXQ/C"
Date: Thu, 06 Jan 2011 10:55:02 +0000
Message-ID: <1294311302.2824.31.camel@worm.elk>
Mime-Version: 1.0
Subject: Re: [Printing-architecture] Any news regarding colour management?
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Kai-Uwe Behrmann <ku.b@gmx.de>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>


--=-OSdM2/YtnSumwv4NXQ/C
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2011-01-06 at 11:33 +0100, Kai-Uwe Behrmann wrote:
> Indeed, that will be very useful. Can you imagine to have that in a=20
> generic way, so more CMS's can utilise that capability?

I think it's already pretty generic actually -- I don't think there's
anything in colord that ties it to any scheme in particular.  Really
it's just a small daemon to associate printer queues with ICC files.  I
imagine (but don't know for sure) that Oyranos CMS could add a small
hook into colord and that would be all that is required.

> The reason I ask is that Oyranos CMS provides already a lot for=20
> configuring and colour managing the desktop and devices. Its going to be=
=20
> integrated into KDE, can run standalone with Xorg or in small devices. So=
=20
> the Oyranos project would be interessted to hook as well into CUPS and=
=20
> tell pstoraster, which ICC profile to use for printing.

Yes, this is similar to how gnome-color-manager works I believe.

> I have nothing against D-Bus as is. But is it relly needed in that=20
> context? I guess not. A simple convention can reach the same effect and=
=20
> remains open for a heterogenous environment.

The associations between devices, profiles and ICC files are kept in a
running daemon which starts on first use, and this is managed by D-Bus.
I'm sure it could be done another way, but again it just seems the most
convenient already-implemented way.

Is this sort of system really likely to be needed on a system without
D-Bus installed?

> The task is to
> * create a request with meta information (e.g. PPD) to get ICC
> * send and wait for an answere from command line tool, C interface ...
> * get the answere and translate it to a ICC profile
> * use the ICC profile with ghostscript

That's part of it.  The other part is for the CUPS scheduler to register
colour profiles and ICC files with colord for each queue on start-up.

Tim.
*/


--=-OSdM2/YtnSumwv4NXQ/C
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iD8DBQBNJZ+EBLQafZpK2tcRAlnPAKC5JM7GxotCs6u8nuTSsXAR9wWidwCgu071
a0h2n1FxtM6LeOKOR+PqDDQ=
=tAww
-----END PGP SIGNATURE-----

--=-OSdM2/YtnSumwv4NXQ/C--

