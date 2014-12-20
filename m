Return-Path: <pascal@obry.net>
Message-ID: <1419070204.2215.166.camel@obry.net>
From: Pascal Obry <pascal@obry.net>
Date: Sat, 20 Dec 2014 11:10:04 +0100
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0
Subject: [Printing-architecture] question regarding image resolution for
	printing
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


(hope this is the right list)

I may be confused so I'm looking for advices.

I want to print a picture (.tif) using CUPS API. My current algorithm to
compute the size of the picture to fit on the page is:

   <width area (inch)>  * <printer resolution dpi> =3D X pixels
   <height area (inch)> * <printer resolution dpi> =3D Y pixels

(width/height area are the width/height of the paper minus the hard margins=
)

This works fine for printers with 300dpi resolution.

I tried on an Epson 3880 which is given at 360dpi but in this case my
picture is printer on 4 pages. If I use also a 300dpi then all is fine.

Am I confusing dpi and ppi? Are images to be send to CUPS have to be
*always* sent which a 300dpi?=20

Regards,


--=20
  Pascal Obry /  Magny Les Hameaux (78)

  The best way to travel is by means of imagination

  http://v2p.fr.eu.org
  http://www.obry.net

  gpg --keyserver keys.gnupg.net --recv-key F949BD3B
