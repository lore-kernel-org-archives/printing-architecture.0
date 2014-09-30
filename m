Return-Path: <pascal@obry.net>
Message-ID: <1412092717.5614.61.camel@obry.net>
From: Pascal Obry <pascal@obry.net>
Date: Tue, 30 Sep 2014 17:58:37 +0200
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0
Subject: [Printing-architecture] bug report about color management
Reply-To: pascal@obry.net
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>


After discussion on the gimp-print-devel@ mailing-list I've been
redirected here.

I've found out that the regression (as reported in my previous message
on this mailing-list) about the color management support on GNU/Debian
has been introduced between CUPS 1.7.5-1 and 1.7.5-2. The ColorManaged
CUPS option has been renamed CM-Calibration.

So it looks like a patch rejected by Apple/CUPS.org is bundled with
GNU/Debian CUPS package starting with the second build of CUPS 1.7.5.

The side effect is that this "destroy" the color-management and the
prints are really bad. For the record I'm printing on GNU/Linux since at
least 2 years with an home made ICC profile.

How to proceed? Do you confirm this is a bug?

Thanks,

--=20
  Pascal Obry /  Magny Les Hameaux (78)

  The best way to travel is by means of imagination

  http://v2p.fr.eu.org
  http://www.obry.net

  gpg --keyserver keys.gnupg.net --recv-key F949BD3B

