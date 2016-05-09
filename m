Return-Path: <marius.predut@intel.com>
From: "Predut, Marius" <marius.predut@intel.com>
Date: Mon, 9 May 2016 09:42:20 +0000
Message-ID: <0E2B2CA4D522C14FBE8646D789EF72A01C54FD8C@IRSMSX103.ger.corp.intel.com>
References: <0E2B2CA4D522C14FBE8646D789EF72A01C53EB99@IRSMSX104.ger.corp.intel.com>
	<alpine.LNX.2.00.1605041044230.19729@nelson.suse.de>
	<0E2B2CA4D522C14FBE8646D789EF72A01C54D6C1@IRSMSX103.ger.corp.intel.com>
	<alpine.LNX.2.00.1605041524030.23023@nelson.suse.de>
	<0E2B2CA4D522C14FBE8646D789EF72A01C54EF76@IRSMSX103.ger.corp.intel.com>
	<alpine.LNX.2.00.1605091023180.24937@nelson.suse.de>
In-Reply-To: <alpine.LNX.2.00.1605091023180.24937@nelson.suse.de>
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
> Sent: Monday, May 09, 2016 11:40 AM
> To: Predut, Marius
> Cc: printing-architecture@lists.linux-foundation.org
> Subject: RE: [Printing-architecture] snmp - average-toner-coverage per pa=
ge
>=20
>=20
> Hello,
>=20
> On May 5 20:53 Predut, Marius wrote (excerpt):
> >>>> 4. Get the PostScript stream while print job filtering
> >>>>     and analyze it.
> ...
> > I don't have access to the document sent for print
>=20
> Then you cannot analyze the PostScript stream.
>=20
> > I need a solution to query the counter printer and compound somehow
> > the wanted value (an estimate toner spent for page) For example if I
> > know effective area printed on a page I can estimate the coverage
> > percent.
> > The printer  have an IP address.
> >
> > So, do you have/see other solution here ?
>=20
> I am afraid, I do not see another solution except to query the network
> printer itself via SNMP.
>=20
> I think when you can only access a network printer itself, you can only q=
uery
> its internal counters/values via SNMP.
>=20
> I do not know if usual network printers maintain an internal counter/valu=
e
> that can be used to calculate the average toner-coverage per page.
One idea can be to counts pixels on each page,=20
divides pixel count by pixels possible on a page to give the percentage of =
coverage,
 and keeps a rolling average percent weighted by area printed.=20
But I don't know if SNMP can give me this counters.
This printer RFC  https://tools.ietf.org/html/rfc3805
Don't help me too much.
(OIDS that can be interesting in this context : somehow this OIDS can be us=
ed : prtMarkerSuppliesGroup prtMarkerCounterUnit prtMarkerLifeCount
But I don't know how to deal with)
>=20
> Only FYI:
> For some possible issues that I noticed regarding SNMP with network
> printers, you may have a look at
> https://en.opensuse.org/SDB:Printer_Accounting
>=20
>=20
> Kind Regards
> Johannes Meixner
> --
> SUSE LINUX GmbH - GF: Felix Imendoerffer, Jane Smithard, Graham Norton -
> HRB 21284 (AG Nuernberg)

