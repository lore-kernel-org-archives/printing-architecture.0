Message-ID: <4084EB55.4060404@fxpsc.co.jp>
Date: Tue, 20 Apr 2004 18:20:21 +0900
From: Osamu MIHARA <mihara.osamu@fxpsc.co.jp>
MIME-Version: 1.0
References: <2F7D63A21DB2C74EB8EB8C09AF667DB04A34E8@eitc220.eitc.epson.com>
In-Reply-To: <2F7D63A21DB2C74EB8EB8C09AF667DB04A34E8@eitc220.eitc.epson.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: quoted-printable
Subject: [Printing-architecture] Re: [printing-japan] Questions on the
	Vector Driver API
List-Id: Printing architecture under linux
	<printing-architecture.mail.freestandards.org>
List-Unsubscribe: <http://mail.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@mail.freestandards.org?subject=unsubscribe>
List-Archive: <http://mail.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@mail.freestandards.org>
List-Help: <mailto:printing-architecture-request@mail.freestandards.org?subject=help>
List-Subscribe: <http://mail.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@mail.freestandards.org?subject=subscribe>
To: "Japanese discussions on printing under Linux." <printing-japan@mail.freestandards.org>
Cc: "Petrie, Glen" <glen.petrie@eitc.epson.com>, printing-driver@freestandards.org, printing-japan@freestandards.org, printing-architecture@freestandards.org

Thank you, Glen!

I will invesitage your comments and reply later.

on 2004/04/20 2:35 Petrie, Glen said the following:
> Hello,
>=20
> =20
>=20
> I have reviewed the vector driver specification in detail and have some=
=20
> questions.
>=20
> =20
>=20
> General Comments
>=20
> =20
>=20
> 1.        All API specifications must work on/from Mobile/IA Devices,=20
> Desktop, Office and/to Production printing solutions.  Mobile/IA=20
> solutions places memory constraints not considered in higher-end=20
> solution; however, I believe and it has been the general consensus that=
=20
> APIs should take Mobile/IA memory constraints into consideration in=20
> their design.
>=20
> 2.        To avoid the overhead associated with floating point; it has=20
> generally been accepted that the API=92s not contain floating point num=
bers.
>=20
> =20
>=20
> Specific comments
>=20
> =20
>=20
> 1.        It appears that the API comprehends only a single job at a=20
> time.   This means the higher level systems must hold and manage jobs o=
r=20
> you are instantiating a new instance of the driver for each job. This=20
> bring ups the issue of . . .
>=20
> a.    Based on general comment 1. above, multiple instantiations is not=
=20
> advisable.  I believe the solution is to have the driver API support=20
> multiple Job across the API with a single instantiation of the driver.=20
>  To do this, the first argument of each function call is not=20
> printerContext but JobId.   A JobId structure (i.e. the job) would then=
=20
> contain the printerContext for the job.  There would be an API call to=20
> set and get the printerContext for the job.
>=20
> 2.        Again based on the general comment 1. above, the issue of=20
> memory does not really support an API that =93only=94 has string transf=
er of=20
> job, document and page key/value attributes.  This even more significan=
t=20
> since the Steering Committee has asked that the driver key/value be=20
> aligned the with Job-Ticket list which is richer that the current Drive=
r=20
> API list.
>=20
> a.    I suggest that the US driver group investigate this as we extend=20
> the Japanese Vector Driver API for Raster support.
>=20
> 3.        There appears to be some inconsistency between the Color=20
> Spaces listed on Page 9 and Page 45.
>=20
> a.    Shouldn=92t there be just one Color Space list
>=20
> 4.        What is the =93Fix=94 data type?
>=20
> 5.        Based on general comment 2. above, I would like to suggest=20
> changing the SetAlphaConstant and GetAlphaConstant from using a float=20
> value to an integer that is 10 times or 100 times the need alpha=20
> constant.  For example Alpha of 0.89 would be 89 in the API.
>=20
> 6.        Several of the US teams have adopted a stricter data sizing b=
y=20
> using a data type naming convention for simple types; for example, do=20
> not use =93int=94 since it has no specific size and in API=92s where da=
ta size=20
> may matter, the use of =93int=94 in not recommended.  I would like to=20
> suggest the #define be made for the following basic types which are=20
> resolved at development time.
>=20
> a.    BIT8
>=20
> b.    INT8
>=20
> c.    BIT16
>=20
> d.    INT16
>=20
> e.    BIT32
>=20
> f.    INT32
>=20
> g.    BIT64
>=20
> h.    INT64
>=20
> 7.        In the TransferRasterData call the data to be transferred is=20
> typed as =93unsigned char=94.  The size of =93char=94 is not technicall=
y defined=20
> in C (most people take it to be 8 bits) and I have worked on platforms=20
> where a char is 32-bit in length =96 not 8-bit.   I suggest the type fo=
r=20
> =93data=94 be changed to BIT8.
>=20
> 8.        There appears to be some inconsistency in naming convention.=20
>  Sometime two word variable names have the second work capitalized and=20
> sometimes not.  Sometime arguments that are pointers start with a =93p=94=
=20
> and sometimes not.
>=20
> =20
>=20
> =20
>=20
> =20
>=20
> /Rgds, /
> */Glen W. Petrie/*
> /Epson Imaging Technology Center /
> /150 River Oaks Parkway, Suite 200 /
> /San Jose, CA, 95134 /
> /Voice: 408.576.4131  Fax: 408.474.0511/
>=20
> =20
>=20
>=20
> -----------------------------------------------------------------------=
-
>=20
> _______________________________________________
> printing-japan mailing list
> printing-japan@mail.freestandards.org
> http://mail.freestandards.org/mailman/listinfo/printing-japan

