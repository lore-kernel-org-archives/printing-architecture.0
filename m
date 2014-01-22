Return-Path: <shane_lin2000@hotmail.com>
Message-ID: <SNT149-W407B16F7728BAD7D8B9D8488A70@phx.gbl>
Content-Type: multipart/alternative;
	boundary="_90b75b01-5bbe-44cf-b272-3809a2c5e187_"
From: Shane Lin <shane_lin2000@hotmail.com>
Date: Wed, 22 Jan 2014 11:58:10 -0800
In-Reply-To: <52E00F63.3060001@gmail.com>
References: <SNT149-W14813CFD43AB9543F81B488A70@phx.gbl>,
	<52E00F63.3060001@gmail.com>
MIME-Version: 1.0
Subject: Re: [Printing-architecture] CUPS Raster filter Question
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "till.kamppeter@gmail.com" <till.kamppeter@gmail.com>, "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

--_90b75b01-5bbe-44cf-b272-3809a2c5e187_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Till=2C
I tried to resolved the printing from the "Document Viewer" with custom pap=
er size issue. Currently=2C if I open a PDF file in the Ubuntu 12.04 and pr=
int with a custom paper size=2C I always get the "Unrecoverable error: rang=
echeck in setpagedevice". I did not see the CUPS raster get generated. Othe=
r page sizes printed ok.
I think my PPD for the page size should be good. it works well with the PS =
printer.=20
I thought using different filter may resolve the issue. But it looks like P=
oppler-based titer did not resolve the issue.=20
Do you have any suggestion?
Thanks=2C
Shane






> Date: Wed=2C 22 Jan 2014 19:35:15 +0100
> From: till.kamppeter@gmail.com
> To: printing-architecture@lists.linux-foundation.org
> Subject: Re: [Printing-architecture] CUPS Raster filter Question
>=20
> On 01/22/2014 06:45 PM=2C Shane Lin wrote:
> > Dear List=2C
> > =20
> > Are there other filters (other than the gstoraster) can generate CUPS
> > raster in the Ubuntu system? What should I do to use them if there is a=
ny?
> >=20
> > Thanks=2C
> > =20
> > Shane
>=20
> Applications usually send print jobs in PDF=2C leading to a
>=20
> pdftopdf -> gstoraster -> rasterto...
>=20
> filter chain. gstoraster which uses Ghostscript can be replaced by
> pdftoraster which is Poppler-based:
>=20
> pdftopdf -> pdftoraster -> rasterto...
>=20
> This can be done by editing the file
> /usr/share/cups/mime/cupsfilters.convs=2C changing the line
>=20
> application/vnd.cups-pdf        application/vnd.cups-raster     100
> pdftoraster
>=20
> to
>=20
> application/vnd.cups-pdf        application/vnd.cups-raster     98
> pdftoraster
>=20
> Then gstoraster is not used any more but always pdftoraster instead.
>=20
> There is also an imagetoraster filter which converts many image formats
> into CUPS Raster=2C but this does not work with multi-page jobs.
>=20
>    Till
>=20
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
 		 	   		  =

--_90b75b01-5bbe-44cf-b272-3809a2c5e187_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<style><!--
.hmmessage P
{
margin:0px=3B
padding:0px
}
body.hmmessage
{
font-size: 12pt=3B
font-family:Calibri
}
--></style></head>
<body class=3D'hmmessage'><div dir=3D'ltr'>Hi Till=2C<div><br></div><div>I =
tried to resolved the printing from the "Document Viewer" with custom paper=
 size issue. Currently=2C if I open a PDF file in the Ubuntu 12.04 and prin=
t with a custom paper size=2C I always get the "Unrecoverable error: rangec=
heck in setpagedevice". I did not see the CUPS raster get generated. Other =
page sizes printed ok.</div><div><br></div><div>I think my PPD for the page=
 size should be good. it works well with the PS printer.&nbsp=3B</div><div>=
<br></div><div>I thought using different filter may resolve the issue. But =
it looks like Poppler-based titer did not resolve the issue.&nbsp=3B</div><=
div><br></div><div>Do you have any suggestion?</div><div><br></div><div>Tha=
nks=2C</div><div><br></div><div>Shane</div><div><br></div><div><br></div><d=
iv><br><br><a href=3D"http://www.windowslive-hotmail.com/betathanks/?locale=
=3Den-us&amp=3Bocid=3DTXT_PROED_thanks_HMWL_thanks_gifts_0507#" target=3D"_=
blank"><br></a><br><br><div>&gt=3B Date: Wed=2C 22 Jan 2014 19:35:15 +0100<=
br>&gt=3B From: till.kamppeter@gmail.com<br>&gt=3B To: printing-architectur=
e@lists.linux-foundation.org<br>&gt=3B Subject: Re: [Printing-architecture]=
 CUPS Raster filter Question<br>&gt=3B <br>&gt=3B On 01/22/2014 06:45 PM=2C=
 Shane Lin wrote:<br>&gt=3B &gt=3B Dear List=2C<br>&gt=3B &gt=3B  <br>&gt=
=3B &gt=3B Are there other filters (other than the gstoraster) can generate=
 CUPS<br>&gt=3B &gt=3B raster in the Ubuntu system? What should I do to use=
 them if there is any?<br>&gt=3B &gt=3B <br>&gt=3B &gt=3B Thanks=2C<br>&gt=
=3B &gt=3B  <br>&gt=3B &gt=3B Shane<br>&gt=3B <br>&gt=3B Applications usual=
ly send print jobs in PDF=2C leading to a<br>&gt=3B <br>&gt=3B pdftopdf -&g=
t=3B gstoraster -&gt=3B rasterto...<br>&gt=3B <br>&gt=3B filter chain. gsto=
raster which uses Ghostscript can be replaced by<br>&gt=3B pdftoraster whic=
h is Poppler-based:<br>&gt=3B <br>&gt=3B pdftopdf -&gt=3B pdftoraster -&gt=
=3B rasterto...<br>&gt=3B <br>&gt=3B This can be done by editing the file<b=
r>&gt=3B /usr/share/cups/mime/cupsfilters.convs=2C changing the line<br>&gt=
=3B <br>&gt=3B application/vnd.cups-pdf        application/vnd.cups-raster =
    100<br>&gt=3B pdftoraster<br>&gt=3B <br>&gt=3B to<br>&gt=3B <br>&gt=3B =
application/vnd.cups-pdf        application/vnd.cups-raster     98<br>&gt=
=3B pdftoraster<br>&gt=3B <br>&gt=3B Then gstoraster is not used any more b=
ut always pdftoraster instead.<br>&gt=3B <br>&gt=3B There is also an imaget=
oraster filter which converts many image formats<br>&gt=3B into CUPS Raster=
=2C but this does not work with multi-page jobs.<br>&gt=3B <br>&gt=3B    Ti=
ll<br>&gt=3B <br>&gt=3B _______________________________________________<br>=
&gt=3B Printing-architecture mailing list<br>&gt=3B Printing-architecture@l=
ists.linux-foundation.org<br>&gt=3B https://lists.linuxfoundation.org/mailm=
an/listinfo/printing-architecture<br></div></div> 		 	   		  </div></body>
</html>=

--_90b75b01-5bbe-44cf-b272-3809a2c5e187_--
