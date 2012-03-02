Return-Path: <twaugh@redhat.com>
Message-ID: <1330690418.32498.29.camel@rubik>
From: Tim Waugh <twaugh@redhat.com>
Date: Fri, 02 Mar 2012 12:13:38 +0000
In-Reply-To: <20120302.210815.55716582.sho@bbr.jp>
References: <CAD2FfiGa5qyHQ9q-CT6RcDzQU4Yyov2kxq-nB6cSB21CeivdqA@mail.gmail.com>
	<20120302.185849.486545915.sho@bbr.jp> <1330687322.32498.3.camel@rubik>
	<20120302.210815.55716582.sho@bbr.jp>
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-OZisu8kZq7mK5MqkDAK0"
Mime-Version: 1.0
Subject: Re: [Printing-architecture] pdftopdf
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Koji Otani <sho@bbr.jp>
Cc: printing-architecture@lists.linux-foundation.org, till.kamppeter@gmail.com


--=-OZisu8kZq7mK5MqkDAK0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2012-03-02 at 21:08 +0900, Koji Otani wrote:
> Changes I made are needless for poppler and poppler can't use them.
> I used only a frame of codes in some files.

I don't understand.  Wasn't the whole idea of poppler to avoid having
bits of xpdf copied into every project that wants to do things to a PDF
file?  And doesn't pdftopdf want to do things to a PDF file?

Can you explain why it is that poppler "can't use" the extra bits you've
changed?  Can you describe what they are?  It seems to me that poppler
ought to provide sufficient insight into the structure of a PDF file so
that pdftopdf can do its job.  If it doesn't, that sounds like something
the poppler project would want to provide... no?

Tim.
*/


--=-OZisu8kZq7mK5MqkDAK0
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEVAwUAT1C5cu7Fkar03pQsAQKswggAuVqs3d9BC2THI/nbY4G+d9qieMzlByPL
T5b9AwdP69AMN83y0jTwJrtJOsqP+XDrFSF92C+4+W3c/rL5aYbTpnNuxcwOqIV2
bUmlEh1D8e1igIZ5MD0WPha4T1IitdlnJrbpSTaNQwdwj8sFfyMIq4QmqGjyjhEL
xK8KNqKd7VIJf3jri1p2dXql/r8sASgPXJO9f8zFif80DLf+NNwgDxxy//TnC10V
BR4yBNSlIpK/qhyTs4OkA/S83Ddi7RRm7/NGVWuO8gEMbZcVORCnmaUigMMQGfko
zzJ392NLnebLc9EZ7QamxJQ5GkIhsKX3VO1zQCvPR6OZDibTC3b3YA==
=h2hT
-----END PGP SIGNATURE-----

--=-OZisu8kZq7mK5MqkDAK0--

