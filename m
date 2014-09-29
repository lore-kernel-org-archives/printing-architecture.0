Return-Path: <pascal@obry.net>
Message-ID: <1412013631.15605.54.camel@obry.net>
From: Pascal Obry <pascal@obry.net>
Date: Mon, 29 Sep 2014 20:00:31 +0200
In-Reply-To: <1411403192.8537.62.camel@obry.net>
References: <1411402800.8537.59.camel@obry.net>
	<1411403192.8537.62.camel@obry.net>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0
Subject: Re: [Printing-architecture] question about profile/driver
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


Responding to myself with some more data that should help. This could be
a cups-filter issue.

I have printed the same picture (I have even verified the MD5 of the tif
file to be sure) from an old Ubuntu box and the picture looks ok there.
I'm printing on both computers using GNOME eog and I have double
(triple) checked that all parameters are identical.

So wrong print with:
   CUPS 1.7.5
   gutenprint 5.2.10

Correct output with:
   CUPS 1.7.2-0ubuntu1.2
   gutenprint 5.2.10~pre2-0ubuntu2

Any idea? Do you need more data?

I have also done a diff of the .ppd files to ensure nothing wrong was
there:

>  diff epson_3880.ppd /etc/cups/ppd/Epson_Stylus_Pro_3880.ppd=20
> 18c18
> < *FileVersion:       "5.2.10-pre2"
> ---
> > *FileVersion:       "5.2.10"
> 26c26
> < *NickName:      "Epson Stylus Pro 3880 - CUPS+Gutenprint
v5.2.10-pre2"
> ---
> > *NickName:      "Epson Stylus Pro 3880 - CUPS+Gutenprint v5.2.10"

Thanks,

--=20
  Pascal Obry /  Magny Les Hameaux (78)

  The best way to travel is by means of imagination

  http://v2p.fr.eu.org
  http://www.obry.net

  gpg --keyserver keys.gnupg.net --recv-key F949BD3B

