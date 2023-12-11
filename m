Return-Path: <korobkin@gmail.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6D68C418C7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 926AE4189F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1702311149; x=1702915949;
 darn=lists.linux-foundation.org; 
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :from:to:cc:subject:date:message-id:reply-to;
 bh=icndicamMuq5em/H9P6PiayVceMtYdialBUcBV4uzCs=;
 b=kMDwGiPM7MpazNaZd41kbun17UkyX6yBwudts0kW4qpgCYKGqJQue4n6Bxs83yypXM
 OmTS2X21tZuYL9SCa+54XOTyZv8wU0RvxuIzmjI5X75HluFTMt0xOEpDcQ6uFnBzltDh
 b9xgAz8sEqt5QSkSzxoPZ6FbVabWQkjrr6D2DBmBT3nJhqJlzXM9FxfRgrRE/Ue5hsIZ
 4SRN5UZGFcUg6KYJkPEJgM5BYndgtNmhdorfJKJ6VX38tfal8Y5zg4A0iR2YJ52kPyo0
 HDvJ7jaDV0qLHiR3ft/HJt7CXKPHCsXkjdHk7qcESHGVokxZf4fvzdKzEqPb5bigpsHn
 0T5A==
MIME-Version: 1.0
References: <c7a55ce9-b1a0-49f9-869a-b3c021fc51fb@gmail.com>
In-Reply-To: <c7a55ce9-b1a0-49f9-869a-b3c021fc51fb@gmail.com>
From: Alex Korobkin <korobkin+op@gmail.com>
Date: Mon, 11 Dec 2023 11:12:12 -0500
Message-ID: <CA+3RNfgm8TtZFAoJP5+WZuH698VsDvgBMx1XV=DciLdTiswFrQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000588a5a060c3e33c0"
Subject: Re: [Printing-architecture] PDFio: Replaced QPDF by PDFio in
 libcupsfilters as GSoC project?
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Open Printing <printing-architecture@lists.linux-foundation.org>

--000000000000588a5a060c3e33c0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello printing folks,

If you don't mind, may I chime in from the user's perspective? As you know,
there are lots of bad PDFs out there, and even if they represent only 0.1%
of the total number of all PDFs that people print, one million print jobs
turns into 1000 tickets about unprintable files. QPDF is extremely
accommodating about it: no matter how bad a PDF is, it will try to recover
and proceed. Over the last few years I filed numerous requests about
handling some despicable PDFs, and all of them were accepted.

How is PDFio with regards to handling bad PDFs? Is there any testing tool
with PDFio compiled in that I can run against my corpus of bad PDFs to see
how it would treat them?



On Thu, Dec 7, 2023 at 8:58=E2=80=AFAM Till Kamppeter <till.kamppeter@gmail=
.com>
wrote:

> Hi,
>
> Michael Sweet has closed the PDFio issue in which I ask for support of
> PDF forms and annotations, telling that inside PDFio nothing further
> needs to be done, that everything can be solved outside PDFio, by the
> calling application.
>
> As we want to get rid of C++ in libcupsfilters I plan to let it use
> PDFio where it is currently using QPDF.
>
> Mike, as you tell that PDFio is OK for handling PDF files with filled
> forms/annotations, I want to post a GSoC project idea to switch over
> libcupsfilters from using QPDF to PDFio. WDYT? Is this possible already?
> Or are there still any features missing in PDFio?
>
>     Till
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>


--=20
-Alex

--000000000000588a5a060c3e33c0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello printing folks,=C2=A0</div><div><br></div>If yo=
u don&#39;t mind, may I chime in from the user&#39;s perspective? As you kn=
ow, there are lots of bad PDFs out there, and even if they represent only 0=
.1% of the total number of all PDFs that people print, one million print jo=
bs turns into 1000 tickets about unprintable files. QPDF is extremely accom=
modating about it: no matter how bad a PDF is, it will try to recover and p=
roceed. Over the last few years I filed numerous requests about handling so=
me despicable=C2=A0PDFs, and all of them were accepted.<div><br></div><div>=
How is PDFio with regards to handling bad PDFs? Is there any testing tool w=
ith PDFio compiled in that I can run against my corpus of bad PDFs to see h=
ow it would treat them?<br><div><br></div><div><br></div></div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Dec =
7, 2023 at 8:58=E2=80=AFAM Till Kamppeter &lt;<a href=3D"mailto:till.kamppe=
ter@gmail.com">till.kamppeter@gmail.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex">Hi,<br>
<br>
Michael Sweet has closed the PDFio issue in which I ask for support of <br>
PDF forms and annotations, telling that inside PDFio nothing further <br>
needs to be done, that everything can be solved outside PDFio, by the <br>
calling application.<br>
<br>
As we want to get rid of C++ in libcupsfilters I plan to let it use <br>
PDFio where it is currently using QPDF.<br>
<br>
Mike, as you tell that PDFio is OK for handling PDF files with filled <br>
forms/annotations, I want to post a GSoC project idea to switch over <br>
libcupsfilters from using QPDF to PDFio. WDYT? Is this possible already? <b=
r>
Or are there still any features missing in PDFio?<br>
<br>
=C2=A0 =C2=A0 Till<br>
_______________________________________________<br>
Printing-architecture mailing list<br>
<a href=3D"mailto:Printing-architecture@lists.linux-foundation.org" target=
=3D"_blank">Printing-architecture@lists.linux-foundation.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/printing-arch=
itecture" rel=3D"noreferrer" target=3D"_blank">https://lists.linuxfoundatio=
n.org/mailman/listinfo/printing-architecture</a><br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr">-Alex</div></div>

--000000000000588a5a060c3e33c0--
