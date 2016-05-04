Return-Path: <marius.predut@intel.com>
From: "Predut, Marius" <marius.predut@intel.com>
Date: Wed, 4 May 2016 12:49:24 +0000
Message-ID: <0E2B2CA4D522C14FBE8646D789EF72A01C54D6C1@IRSMSX103.ger.corp.intel.com>
References: <0E2B2CA4D522C14FBE8646D789EF72A01C53EB99@IRSMSX104.ger.corp.intel.com>
	<alpine.LNX.2.00.1605041044230.19729@nelson.suse.de>
In-Reply-To: <alpine.LNX.2.00.1605041044230.19729@nelson.suse.de>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Printing-architecture] snmp - average-toner-coverage per page
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Johannes Meixner <jsmeix@suse.de>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

> -----Original Message-----
> From: Johannes Meixner [mailto:jsmeix@suse.de]
> Sent: Wednesday, May 04, 2016 12:03 PM
> To: Predut, Marius
> Cc: printing-architecture@lists.linux-foundation.org
> Subject: Re: [Printing-architecture] snmp - average-toner-coverage per pa=
ge
>=20
>=20
> Hello,
>=20
> On May 3 16:35 Predut, Marius wrote (excerpt):
> > After I print page I want to know average-toner-coverage-per-page
> > (a kind of Cost per Page).
> > To do it are 3 possibilities:
> >
> > 1. Get the amount of toner used and rapport it to a
> >    standard (%5 coverage) - prices
> > 2. Get the effective printed area relative to the paper
> >    (supppoe user print only halp of paper) - less precise

I am tried to use SNTP protocol: prtMarkerCounterUnit and=20
prtMarkerLifeCount OIDS to count the number of lines/characters.
To do this , the OID prtMarkerCounterUnit need to be updated  from default =
value(impressions) to  chars, lines, micrometers ,etc;
But seems this fild is ready only.
Is a way to use it?


> > 3. Get the stream from printer and analyze it.
>=20
> 4. Get the PostScript stream while print job filtering
>     and analyze it.
>=20
> Newer Ghostscript versions provide the Ghostscript
> devices ink_cov and inkcov that output ink coverage:
> -----------------------------------------------------------
> $ gs -q -dNOPAUSE -dBATCH -sDEVICE=3Dink_cov \
>   -sOutputFile=3D/tmp/ink_cov.out \
>   /usr/share/ghostscript/9.19/examples/colorcir.ps
>=20
> $ cat /tmp/ink_cov.out
>   5.33833  5.95657  6.71122  4.25845 CMYK OK
>=20
> $ gs -q -dNOPAUSE -dBATCH -sDEVICE=3Dinkcov \
>   -sOutputFile=3D/tmp/inkcov.out \
>   /usr/share/ghostscript/9.19/examples/colorcir.ps
>=20
> $ cat /tmp/inkcov.out
>   0.09991  0.08222  0.08234  0.08425 CMYK OK
> -----------------------------------------------------------
> See "Ink coverage output" in
> http://www.ghostscript.com/doc/current/Devices.htm#Test
>=20

Thank you so much for this solution!
The ink_cov/ inkcov is can be ip address?

>=20
> Kind Regards
> Johannes Meixner
> --
> SUSE LINUX GmbH - GF: Felix Imendoerffer, Jane Smithard,
> Graham Norton - HRB 21284 (AG Nuernberg)

