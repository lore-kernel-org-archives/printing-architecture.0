Return-Path: <korobkin@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=Z4oQGDVth34wYrbH08KSMktb3JRcBL0p33wwvGOnA+A=;
	b=f+XOQtuqegYnHT+W/aReiQBjZa2y8eDxRUhFMg30WbGRhpih7a5F345a/ZbH3rxwVd
	dRzG3RW9EkhPSxIQIfToiGEeGuvWqQnzXurAUCyVhWFDi+jCI5OI7xMTAU8UuPUJI+ZY
	Xv6uNRfcmraXD7Je+0QUDJZ3E+bzK/5qVmEfh9dm1QLdAxdUKhZ8zSQwp2bW6c6IAImE
	ltWRZPl1BVfuI+BgeJTk1tMZsSalu5o8Ago2eGVMm20ZJPTNRQVJmhbafPnnQLSA0olC
	P6RNTu4vP3bQtfNU79QgDaxQgR0dkdS2XVF5HHgKU6qyhmsDTPlqTdMSNrsl36Tp8bXo
	GixA==
MIME-Version: 1.0
Sender: korobkin@gmail.com
In-Reply-To: <54344707.4080604@gmail.com>
References: <CA+3RNfiMXAVRKoFH8XD+YyWatt-Fc+mKMGkAQyQPJ=8_SX9T3g@mail.gmail.com>
	<5B66FA40-ED1E-461E-B00F-D5CD6C7DBC30@apple.com>
	<CA+3RNfgR9Ucx+mQezWVwi8XMCF-4EBtFV5bukKOsTfZsTBZURw@mail.gmail.com>
	<34701921-5F04-411C-B35C-78CED619AAC3@apple.com>
	<5432910A.4030500@gmail.com>
	<CA+3RNfj6twoEN9y0k+dfxeQ+14jVyE_Tz9Fe5fdQSmOKcbg=_Q@mail.gmail.com>
	<54344707.4080604@gmail.com>
From: Alex Korobkin <korobkin+op@gmail.com>
Date: Tue, 7 Oct 2014 17:18:48 -0400
Message-ID: <CA+3RNfj8JFdQHekjs0gQ_z8_dxPFk-qL-dGzzJtp8ACBB0KhHg@mail.gmail.com>
Content-Type: multipart/alternative; boundary=20cf303b4407f666af0504dbbfc6
Subject: Re: [Printing-architecture] Number of copies in pure PDF workflow
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

--20cf303b4407f666af0504dbbfc6
Content-Type: text/plain; charset=UTF-8

2014-10-07 16:03 GMT-04:00 Till Kamppeter <till.kamppeter@gmail.com>:

> On 10/06/2014 04:06 PM, Alex Korobkin wrote:
> > Hi Till,
> >
> > You're right, JCLToPDFInterpreter is already set in the example PPDs
> > shipped with cups-filters [1].
> > But what needs to be added to those PPDs to have printers make copies in
> > hardware instead of cupsManualCopies?
>
> pdftopdf uses cupsManualCopies. If cupsManualCopies is set in the PPD
> software copies are done, otherwise hardware copies. If the printer
> supports PJL, an appropriate command to generate the copies is added to
> the PJL header.
>

Till, I've just tested it again on my PDF printer and PJL-based PPD, and
pdftopdf creates software copies regardless of the value of
cupsManualCopies. Shouldn't it insert PJL SET COPIES=X when
cupsManualCopies is False or not present?

How can I make pdftopdf add an IPP attribute to the job which generates
> the copies with the attribute being passed on to the printer by the IPP
> backend (when output format is set to PDF or PWG Raster by a cupsFilter2
> keyword in the PPD.
>
> And for PPD-less printing, how do I set the FINAL_CONTENT_TYPE there? Is
> it possible to do it out of a System V interface script?
>
>


-- 
-Alex

--20cf303b4407f666af0504dbbfc6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">2014-10-07 16:03 GMT-04:00 Till Kamppeter <span dir=3D"ltr">&lt;<a href=
=3D"mailto:till.kamppeter@gmail.com" target=3D"_blank">till.kamppeter@gmail=
.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On =
10/06/2014 04:06 PM, Alex Korobkin wrote:<br>
&gt; Hi Till,<br>
&gt;<br>
&gt; You&#39;re right, JCLToPDFInterpreter is already set in the example PP=
Ds<br>
&gt; shipped with cups-filters [1].<br>
&gt; But what needs to be added to those PPDs to have printers make copies =
in<br>
&gt; hardware instead of cupsManualCopies?<br>
<br>
</span>pdftopdf uses cupsManualCopies. If cupsManualCopies is set in the PP=
D<br>
software copies are done, otherwise hardware copies. If the printer<br>
supports PJL, an appropriate command to generate the copies is added to<br>
the PJL header.<br></blockquote><div><br></div><div>Till, I&#39;ve just tes=
ted it again on my PDF printer and PJL-based PPD, and pdftopdf creates soft=
ware copies regardless of the value of cupsManualCopies. Shouldn&#39;t it i=
nsert PJL SET COPIES=3DX when cupsManualCopies is False or not present?</di=
v><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex">
How can I make pdftopdf add an IPP attribute to the job which generates<br>
the copies with the attribute being passed on to the printer by the IPP<br>
backend (when output format is set to PDF or PWG Raster by a cupsFilter2<br=
>
keyword in the PPD.<br>
<br>
And for PPD-less printing, how do I set the FINAL_CONTENT_TYPE there? Is<br=
>
it possible to do it out of a System V interface script?<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br></font></span></blockquo=
te><div><br></div></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D=
"ltr">-Alex</div>
</div></div>

--20cf303b4407f666af0504dbbfc6--
