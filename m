Return-Path: <marius.predut@intel.com>
From: "Predut, Marius" <marius.predut@intel.com>
Date: Thu, 5 May 2016 20:53:46 +0000
Message-ID: <0E2B2CA4D522C14FBE8646D789EF72A01C54EF76@IRSMSX103.ger.corp.intel.com>
References: <0E2B2CA4D522C14FBE8646D789EF72A01C53EB99@IRSMSX104.ger.corp.intel.com>
	<alpine.LNX.2.00.1605041044230.19729@nelson.suse.de>
	<0E2B2CA4D522C14FBE8646D789EF72A01C54D6C1@IRSMSX103.ger.corp.intel.com>
	<alpine.LNX.2.00.1605041524030.23023@nelson.suse.de>
In-Reply-To: <alpine.LNX.2.00.1605041524030.23023@nelson.suse.de>
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
> Sent: Wednesday, May 04, 2016 4:53 PM
> To: Predut, Marius
> Cc: printing-architecture@lists.linux-foundation.org
> Subject: RE: [Printing-architecture] snmp - average-toner-coverage per pa=
ge
>=20
>=20
> Hello,
>=20
> On May 4 12:49 Predut, Marius wrote (excerpt):
> >> 4. Get the PostScript stream while print job filtering
> >>     and analyze it.
> >>
> >> Newer Ghostscript versions provide the Ghostscript
> >> devices ink_cov and inkcov that output ink coverage:
> >> -----------------------------------------------------------
> >> $ gs -q -dNOPAUSE -dBATCH -sDEVICE=3Dink_cov \
> >>   -sOutputFile=3D/tmp/ink_cov.out \
> >>   /usr/share/ghostscript/9.19/examples/colorcir.ps
> >>
> >> $ cat /tmp/ink_cov.out
> >>   5.33833  5.95657  6.71122  4.25845 CMYK OK
> ...
> > Thank you so much for this solution!
> > The ink_cov/ inkcov is can be ip address?
>=20
> Perhaps this is no solution for your use case.
>=20
> I do not understand the meaning of "ip address" here.
>=20
> Do you perhaps ask if this can be used to query a
> network printer device from remote (via its IP address)
> for its ink coverage of a particular printed page?

Yes,
I don't have access to the document sent for print , this is the problem!
I need a solution to query the counter printer and compound somehow the wan=
ted value
(an estimate toner spent for page)
For example if I know effective area printed on a page I can estimate the c=
overage percent.
The printer  have an IP address.

So, do you have/see other solution here ?

>=20
> You cannot do that with Ghostscript.
>=20
> To use Ghostscript this way you need to run it on a computer.
>=20
> Ghostscript is a PostScript (and PDF) interpreter.
>=20
> Ghostscript input is PostScript or PDF and its output is
> what a particular so called "Ghostscript device" produces.
>=20
> Usually Ghostscript devices produce other printer languages
> like PCL or Ghostscript devices produce various kind of
> raster data like JPEG or CUPS raster data.
>=20
> But there are also special Ghostscript devices that
> output special stuff like the ink coverage.
>=20
> This means it only works when you have PostScript or PDF
> as input and you must be able to run Ghostscript with
> that PostScript or PDF input to get its ink coverage.
>=20
> When you print that PostScript or PDF on a printer device
> the actual ink/toner consumption of the printer device could
> be noticeable different compared to the ink coverage report
> of Ghostscript because the printer device may do its own
> way how much of what ink/toner it puts on the paper.
>=20
> Think about a toner-saving printing mode where the
> printer device puts less ink/toner on the paper
> compared to what Ghostscript had reported
> versus
> a high-quality photo printing mode where the
> printer device puts more ink/toner on the paper
> compared to what Ghostscript had reported.
>=20
> For example to get real photo quality deep black
> for 0 0 0 RGB (i.e. 100% black) the printer device
> in CMYK mode may put 100% K plus additionally 15% C
> and 15% M on the paper but Ghostscript would report
> only the 100% K component because in its PostScript
> input there is neither 15% C nor 15% M (there is
> only 0 0 0 RGB which translates into 100% K).
>=20
>=20
> Kind Regards
> Johannes Meixner
> --
> SUSE LINUX GmbH - GF: Felix Imendoerffer, Jane Smithard,
> Graham Norton - HRB 21284 (AG Nuernberg)

