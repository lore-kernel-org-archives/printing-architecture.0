Return-Path: <pascal@obry.net>
Message-ID: <1404748055.11220.7.camel@pascal.home.net>
From: Pascal Obry <pascal@obry.net>
Date: Mon, 07 Jul 2014 17:47:35 +0200
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0
Subject: [Printing-architecture] CUPS and color management
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


Hello,

I have a question regarding color management with CUPS. I need to print
a raster image (jpeg, tiff) which has already been converted with the
printer profile. The printing is done using the CUPS API
(cupsPrintFile). I want to ensure that NO color management is done by
CUPS or any filters.

Is there something to do? If so What do I need to do?

Thanks,

--=20
  Pascal Obry /  Magny Les Hameaux (78)

  The best way to travel is by means of imagination

  http://v2p.fr.eu.org
  http://www.obry.net

  gpg --keyserver keys.gnupg.net --recv-key F949BD3B

