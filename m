Return-Path: <twaugh@redhat.com>
Message-ID: <1436781940.5156.14.camel@redhat.com>
From: Tim Waugh <twaugh@redhat.com>
Date: Mon, 13 Jul 2015 11:05:40 +0100
In-Reply-To: <559D7321.8070804@gmail.com>
References: <559B2849.7060907@gmail.com> <m3egkk5ft5.fsf@carbon.jhcloos.org>
	<alpine.LNX.2.00.1507071604010.29822@nelson.suse.de>
	<m38uas552b.fsf@carbon.jhcloos.org>
	<alpine.LNX.2.00.1507081104010.31457@nelson.suse.de>
	<CAN40gSuQ70vpuCMX=1QCxiO0a+78y5G3OykniJepA08fM8V9Ng@mail.gmail.com>
	<559D7321.8070804@gmail.com>
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-Sb/FtbGB0ckrqGTJ69j6"
Mime-Version: 1.0
Subject: Re: [Printing-architecture] Upstream future of ippusbxd
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>, Ira McDonald <blueroofmusic@gmail.com>, Johannes Meixner <jsmeix@suse.de>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, Debian-printing@lists.debian.org, James Cloos <cloos@jhcloos.com>


--=-Sb/FtbGB0ckrqGTJ69j6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2015-07-08 at 15:59 -0300, Till Kamppeter wrote:
> 2. Create an organization named OpenPrinting on GitHub and move
> ippusbxd to there. Move also the other projects to there converting=20
> them to GIT.

One very big advantage of using GitHub is that you get to use tools
like Travis CI/Jenkins for continuous integration easily, so that every
time a change is made or proposed you can see whether it will break the
build. If there was a test suite, it could also run that. You can also
link projects to coverity-scan for free usage. Here's an example using
both those things:
https://travis-ci.org/twaugh/patchutils/builds/70706661

(I think coverity defects are only visible to the project owner.)

GitHub also has a useful mini-patch-review system. When anyone submits
a pull request from their own repository or from a branch in the main
project, you can comment on individual lines that are changed.

> And then keep Bugzilla on OpenPrinting or use the GitHub issue=20
> tracker instead?

If you wanted to stick with Bugzilla there's a GitHub webhook to
integrate with it. (I've never used it myself.)
https://github.com/github/github-services/blob/master/docs/bugzilla

I think all those things happen automatically with GitHub's issue
tracker.

Tim.
*/

--=-Sb/FtbGB0ckrqGTJ69j6
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAABAgAGBQJVo410AAoJELfCDQeUkepj3L4IAJA9axihBbVqO2eqerl8I123
a2j7B+B9KAXSq2z7nysd5Nzf3aIhMoNxacR+oBieCCbSvKrtkhKKj9Qw1pvwJ7pf
2KtkLxPfZmGkCS6YAbVKgGfRau95ZXgAfjuk4+a4d459xdsxbF90EkVlX4U4nbNj
e/QCb7gNL92DBe6Ewdp9E7Sp++5BsAX9pgVW5XnG04MnwWA6fjaGR+rb7NuGESal
beHH+R3mFZ517lh82vn69+BH0muTYENDJ6rVh19WUpuiB1n821hD0sJ+l94gOVXy
aio9UenRlr321BKrXvDJA1vyOXYT21QlAcE1+wJJWm8mvxZoO2Uu8M7ZDmFnAXI=
=SRtv
-----END PGP SIGNATURE-----

--=-Sb/FtbGB0ckrqGTJ69j6--

