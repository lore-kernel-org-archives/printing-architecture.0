Message-ID: <4B9D7C2C.8040205@avasys.jp>
Date: Mon, 15 Mar 2010 09:15:40 +0900
From: Olaf Meeuwissen <olaf.meeuwissen@avasys.jp>
MIME-Version: 1.0
References: <20100305095257.9953.E0F122DE@canon.co.jp>	<4B90ECFA.1030506@gmail.com>
	<4B943B74.8060602@avasys.jp> <4B9CEECF.4050401@gmail.com>
	<4B9D0D69.9030501@bredband.net>
In-Reply-To: <4B9D0D69.9030501@bredband.net>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [Printing-japan] OpenPrinting Japan
 Mar. 2010 meeting minutes (in	English)
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Per Hermansson <hermansson.per@bredband.net>
Cc: printing-architecture@lists.linux-foundation.org, printing-japan@lists.linux-foundation.org, Till Kamppeter <till.kamppeter@gmail.com>

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Per Hermansson wrote:

> Hi all
> I merged a fix that removes the reference to GFile with
> g_path_get_basename which seems to exist in GLib 2.16

It does but you need to link against libgio to get it.  At leas on my
system `pkg-config --libs` does _not_ include that.  Looks like you need
to add `gio` to the list of `packages` in the Makefile if you really
want it.

> so that compile error shouldn't exist anymore.
> Hopefully it works with 2.16 now, but I haven't tested it.

It's gone on Debian 5.0.4.

Hope this helps,
- --
Olaf Meeuwissen, LPIC-2           FLOSS Engineer -- AVASYS CORPORATION
FSF Associate Member #1962               Help support software freedom
                 http://www.fsf.org/jf?referrer=1962

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.9 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iEYEARECAAYFAkudfCsACgkQt5qrxaZLMnIxaQCgkDaCO0KDguGxlKyWGlN5/jUt
GY0An36zAC288z/v5R/bd0D8928iXOAY
=rxU9
-----END PGP SIGNATURE-----
