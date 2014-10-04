Return-Path: <korobkin@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=aZCak3QPo0Prz3LLS8qN6mBJFvXRS1sX5tXkqbGItug=;
	b=k1pAx5IfEQO2TK3w+vEZyHomQrfFcKwl3ZL5sFUZe5aoaI3DHYNatVY0JbudcNc7QP
	f3PeDz+AV3XI3rFa8Ko7WQ9b9h1cS3qmyM0m5t9YSyG9WtgtxgJwQ4sSf8++B5D2zu1G
	gjup2ZGX24os4u69YfjPOzYVrTbgmgj7gWR4412FJOXR0aZEOz1QOYUwqG6vrZS7w/wV
	7tiQDXQ3nF6OFVhGWE+PBoFO/6t7ynopUkFYnTLjkNWEir29UqiwWdOR0M9Ni+sNcM7u
	xi5aiGlbNdpkhlT20aQ/wbCrUepFBkxkPCA4xDYEFgT95vszA9WEqJFDYAcdy+LCgHMh
	dieQ==
MIME-Version: 1.0
Sender: korobkin@gmail.com
In-Reply-To: <5B66FA40-ED1E-461E-B00F-D5CD6C7DBC30@apple.com>
References: <CA+3RNfiMXAVRKoFH8XD+YyWatt-Fc+mKMGkAQyQPJ=8_SX9T3g@mail.gmail.com>
	<5B66FA40-ED1E-461E-B00F-D5CD6C7DBC30@apple.com>
From: Alex Korobkin <korobkin+op@gmail.com>
Date: Sat, 4 Oct 2014 13:36:23 -0400
Message-ID: <CA+3RNfgR9Ucx+mQezWVwi8XMCF-4EBtFV5bukKOsTfZsTBZURw@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1133352604d22f05049c4b96
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
To: Michael Sweet <msweet@apple.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

--001a1133352604d22f05049c4b96
Content-Type: text/plain; charset=UTF-8

Hi Michael,

Sorry, I should have been more clear with my question. I'm asking about
OpenPrinting PDF workflow [1], where client sends a PDF, and CUPS uses just
two filters for the job: pdftopdf and a socket/ipp to send the PDF directly
to the printer. No conversion to raster is happening: client sends a PDF,
printer receives a PDF.

cups-filters package ships with a couple of sample PPDs [2], [3] that
basically allow for inserting PJL commands into the job to change its most
common options: tray, duplex, etc.

I'm trying to find out whether making manual copies via cupsManualCopies is
the only way to handle the number of copies. Can pdftopdf or CUPS insert
PJL SET COPIES=X into the job? Can CUPS set the number of copies via IPP
commands? There is also some code in pdftopdf_jcl.cc [4] that is dealing
with a Copies directive in a PPD, but I don't quite understand what it
does.

[1]
http://www.linuxfoundation.org/collaborate/workgroups/openprinting/pdf_as_standard_print_job_format
[2]
http://bzr.linuxfoundation.org/loggerhead/openprinting/cups-filters/annotate/head:/ppd/HP-Color_LaserJet_CM3530_MFP-PDF.ppd
[3]
http://bzr.linuxfoundation.org/loggerhead/openprinting/cups-filters/annotate/head:/ppd/Fuji_Xerox-DocuPrint_CM305_df-PDF.ppd
[4]
http://bzr.linuxfoundation.org/loggerhead/openprinting/cups-filters/annotate/head:/filter/pdftopdf/pdftopdf_jcl.cc#L35

2014-10-04 11:40 GMT-04:00 Michael Sweet <msweet@apple.com>:

> Alex,
>
> > On Oct 3, 2014, at 3:28 PM, Alex Korobkin <korobkin+op@gmail.com> wrote:
> >
> > Hi all,
> >
> > I'm looking at example PPDs for pure PDF workflow, and all of them have
> > cupsManualCopies: true
> >
> > Why is that? Is it impossible to tell printer to print a number of
> copies with pure PDF workflow?
> > Maybe pdftopdf can inject @PJL SET COPIES=X into the file?
>
> No, that wouldn't work since the PDF-to-raster filters don't support PJL
> and (for that matter) most PDF printers do not support PJL.
>
> cupsManualCopies is there because the destination doesn't support
> generating copies of its own.  If it does, then cupsManualCopies won't be
> in the PPD - in the case of IPP Everywhere printers the copy count is
> passed in the job ticket when we create the job from the IPP backend.
>
> _________________________________________________________
> Michael Sweet, Senior Printing System Engineer, PWG Chair
>
>


-- 
-Alex

--001a1133352604d22f05049c4b96
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Michael,=C2=A0<div><br></div><div>Sorry, I should have =
been more clear with my question. I&#39;m asking about OpenPrinting PDF wor=
kflow [1], where client sends a PDF, and CUPS uses just two filters for the=
 job: pdftopdf and a socket/ipp to send the PDF directly to the printer. No=
 conversion to raster is happening: client sends a PDF, printer receives a =
PDF.=C2=A0</div><div><br></div><div>cups-filters package ships with a coupl=
e of sample PPDs [2], [3] that basically allow for inserting PJL commands i=
nto the job to change its most common options: tray, duplex, etc.=C2=A0</di=
v><div><br></div><div>I&#39;m trying to find out whether making manual copi=
es via cupsManualCopies is the only way to handle the number of copies. Can=
 pdftopdf or CUPS insert PJL SET COPIES=3DX into the job? Can CUPS set the =
number of copies via IPP commands? There is also some code in pdftopdf_jcl.=
cc [4] that is dealing with a Copies directive in a PPD, but I don&#39;t qu=
ite understand what it does.=C2=A0</div><div><br></div><div>[1]=C2=A0<a hre=
f=3D"http://www.linuxfoundation.org/collaborate/workgroups/openprinting/pdf=
_as_standard_print_job_format">http://www.linuxfoundation.org/collaborate/w=
orkgroups/openprinting/pdf_as_standard_print_job_format</a></div><div>[2]=
=C2=A0<a href=3D"http://bzr.linuxfoundation.org/loggerhead/openprinting/cup=
s-filters/annotate/head:/ppd/HP-Color_LaserJet_CM3530_MFP-PDF.ppd">http://b=
zr.linuxfoundation.org/loggerhead/openprinting/cups-filters/annotate/head:/=
ppd/HP-Color_LaserJet_CM3530_MFP-PDF.ppd</a></div><div>[3]=C2=A0<a href=3D"=
http://bzr.linuxfoundation.org/loggerhead/openprinting/cups-filters/annotat=
e/head:/ppd/Fuji_Xerox-DocuPrint_CM305_df-PDF.ppd">http://bzr.linuxfoundati=
on.org/loggerhead/openprinting/cups-filters/annotate/head:/ppd/Fuji_Xerox-D=
ocuPrint_CM305_df-PDF.ppd</a></div><div>[4]=C2=A0<a href=3D"http://bzr.linu=
xfoundation.org/loggerhead/openprinting/cups-filters/annotate/head:/filter/=
pdftopdf/pdftopdf_jcl.cc#L35">http://bzr.linuxfoundation.org/loggerhead/ope=
nprinting/cups-filters/annotate/head:/filter/pdftopdf/pdftopdf_jcl.cc#L35</=
a></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">201=
4-10-04 11:40 GMT-04:00 Michael Sweet <span dir=3D"ltr">&lt;<a href=3D"mail=
to:msweet@apple.com" target=3D"_blank">msweet@apple.com</a>&gt;</span>:<br>=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Alex,<br>
<div><div class=3D"h5"><br>
&gt; On Oct 3, 2014, at 3:28 PM, Alex Korobkin &lt;<a href=3D"mailto:korobk=
in%2Bop@gmail.com">korobkin+op@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi all,<br>
&gt;<br>
&gt; I&#39;m looking at example PPDs for pure PDF workflow, and all of them=
 have<br>
&gt; cupsManualCopies: true<br>
&gt;<br>
&gt; Why is that? Is it impossible to tell printer to print a number of cop=
ies with pure PDF workflow?<br>
&gt; Maybe pdftopdf can inject @PJL SET COPIES=3DX into the file?<br>
<br>
</div></div>No, that wouldn&#39;t work since the PDF-to-raster filters don&=
#39;t support PJL and (for that matter) most PDF printers do not support PJ=
L.<br>
<br>
cupsManualCopies is there because the destination doesn&#39;t support gener=
ating copies of its own.=C2=A0 If it does, then cupsManualCopies won&#39;t =
be in the PPD - in the case of IPP Everywhere printers the copy count is pa=
ssed in the job ticket when we create the job from the IPP backend.<br>
<br>
_________________________________________________________<br>
Michael Sweet, Senior Printing System Engineer, PWG Chair<br>
<br>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div dir=3D"=
ltr">-Alex</div>
</div>

--001a1133352604d22f05049c4b96--
