Return-Path: <pascal@obry.net>
Message-ID: <1404295099.28244.4.camel@pascal.home.net>
From: Pascal Obry <pascal@obry.net>
Date: Wed, 02 Jul 2014 11:58:19 +0200
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0
Subject: [Printing-architecture] CUPS and CM
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
To: printing-architecture@lists.linux-foundation.org


I need to send an image to a printer via the CUPS API and must be sure
that there is no CM at all done by CUPS. I cannot find an option to
disable CM. I'm worried because since 1.6 (if I read correctly the
documentation) CUPS is using a PDF filter which support CM. But apart
from that I do not find hints about handing CM or disabling it
completely.

Any idea?

Thanks in advance,


--=20
  Pascal Obry /  Magny Les Hameaux (78)

  The best way to travel is by means of imagination

  http://v2p.fr.eu.org
  http://www.obry.net

  gpg --keyserver keys.gnupg.net --recv-key F949BD3B

