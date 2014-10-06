Return-Path: <korobkin@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=qcCegVFuzXaK0aF9IRx/z38XuebjS7/6zXvrY+ubWJg=;
	b=CCRUHI8zxCddgLktOAGz5IYTMmOdNWdR8+Q7phSM8bn61dRnM1CyzkHxrd5kvO1hwc
	3MvoZRqAYiw8Jnv3cWyXVNSnaqm6/oq74tikNH1tiic/f06cW6mxjhKmVogsjb1mCWLz
	zouN6n+eIioc6dTWCrkpYizIegJWPOq0ajG2cUxwfcQn7WKXInAuJdvhm0MbJo1EyYsV
	A4C78Qy5xXBX5+3VpqoTuOKt2IrzWz+OC02aKR6kPzZMp62LjMPF3afJo6k68yshmeFR
	tmkeAYFxMlhvYtp7UZYtPWQVIbziOLq3n4L5dDsmriQOTjBIMfvJdnQrpS+HYo2emCle
	HjFg==
MIME-Version: 1.0
Sender: korobkin@gmail.com
In-Reply-To: <23226792-DB2B-467B-A3F3-015D81C6A31B@apple.com>
References: <CA+3RNfiMXAVRKoFH8XD+YyWatt-Fc+mKMGkAQyQPJ=8_SX9T3g@mail.gmail.com>
	<5B66FA40-ED1E-461E-B00F-D5CD6C7DBC30@apple.com>
	<CA+3RNfgR9Ucx+mQezWVwi8XMCF-4EBtFV5bukKOsTfZsTBZURw@mail.gmail.com>
	<34701921-5F04-411C-B35C-78CED619AAC3@apple.com>
	<CA+3RNfgzaD28Gcy4N=k_=jJMsQ9Ao1i8fSiRpeU3VHvXoxx4fw@mail.gmail.com>
	<23226792-DB2B-467B-A3F3-015D81C6A31B@apple.com>
From: Alex Korobkin <korobkin+op@gmail.com>
Date: Mon, 6 Oct 2014 11:07:38 -0400
Message-ID: <CA+3RNfgwqWxqc6D4Fe1fC8--xy0pV_c4SDHukwpwrC+N=G=WpA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=20cf300e5071b565f70504c272d0
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

--20cf300e5071b565f70504c272d0
Content-Type: text/plain; charset=UTF-8

Thanks, I had no clue cupsFilter2 keyword would have such effect. But
weirdly, after changing cupsFilter to cupsFilter2 the job is now benig
converted to postscript.

I mean, i had this in the PPD:
*cupsFilter: "application/vnd.cups-pdf 0 -"

And these filters were run:

[Job 12] 2 filters for job:
[Job 12] pdftopdf (application/pdf to application/vnd.cups-pdf, cost 66)
[Job 12] - (application/vnd.cups-pdf to printer/tiefighter-color, cost 0)

I changed it to
*cupsFilter2: "application/vnd.cups-pdf 0 -"

And now pdftops is somehow invoked:

[Job 13] 3 filters for job:
[Job 13] pdftopdf (application/pdf to application/vnd.cups-pdf, cost 66)
[Job 13] pdftops (application/vnd.cups-pdf to
application/vnd.cups-postscript, cost 100)
[Job 13] - (application/vnd.cups-postscript to printer/tiefighter-color,
cost 0)

This is CUPS 1.7.5 with cups-filers 1.0.58. Why would that happen?

2014-10-06 10:12 GMT-04:00 Michael Sweet <msweet@apple.com>:

> Alex,
>
> The PPD needs to use the cupsFilter2 keyword that specifies and output
> format of application/pdf, application/vnd.cups-pdf, or and image/* format.
>
>
> > On Oct 5, 2014, at 1:03 AM, Alex Korobkin <korobkin+op@gmail.com> wrote:
> >
> > Michael,
> >
> > I had tested this workflow with ipp backend, and it didn't communicate
> the number of copies to the printer. What conditions must be met for ipp
> backend to be able to specify the number of copies?
> >
> > Should printer reply over IPP with "copies-supported"?
> >
> > 2014-10-04 15:48 GMT-04:00 Michael Sweet <msweet@apple.com>:
> > Alex,
> >
> > You'll have to confirm with Till, but AFAIK the pdftopdf filter doesn't
> support PJL options.
> >
> > Naturally the socket backend cannot provide out-of-band job ticket
> information, but the IPP backend *can*.  (that goes back to my comment
> about IPP Everywhere)
> >
> > > On Oct 4, 2014, at 1:36 PM, Alex Korobkin <korobkin+op@gmail.com>
> wrote:
> > >
> > > Hi Michael,
> > >
> > > Sorry, I should have been more clear with my question. I'm asking
> about OpenPrinting PDF workflow [1], where client sends a PDF, and CUPS
> uses just two filters for the job: pdftopdf and a socket/ipp to send the
> PDF directly to the printer. No conversion to raster is happening: client
> sends a PDF, printer receives a PDF.
> > >
> > > cups-filters package ships with a couple of sample PPDs [2], [3] that
> basically allow for inserting PJL commands into the job to change its most
> common options: tray, duplex, etc.
> > >
> > > I'm trying to find out whether making manual copies via
> cupsManualCopies is the only way to handle the number of copies. Can
> pdftopdf or CUPS insert PJL SET COPIES=X into the job? Can CUPS set the
> number of copies via IPP commands? There is also some code in
> pdftopdf_jcl.cc [4] that is dealing with a Copies directive in a PPD, but I
> don't quite understand what it does.
> > >
> > > [1]
> http://www.linuxfoundation.org/collaborate/workgroups/openprinting/pdf_as_standard_print_job_format
> > > [2]
> http://bzr.linuxfoundation.org/loggerhead/openprinting/cups-filters/annotate/head:/ppd/HP-Color_LaserJet_CM3530_MFP-PDF.ppd
> > > [3]
> http://bzr.linuxfoundation.org/loggerhead/openprinting/cups-filters/annotate/head:/ppd/Fuji_Xerox-DocuPrint_CM305_df-PDF.ppd
> > > [4]
> http://bzr.linuxfoundation.org/loggerhead/openprinting/cups-filters/annotate/head:/filter/pdftopdf/pdftopdf_jcl.cc#L35
> > >
> > > 2014-10-04 11:40 GMT-04:00 Michael Sweet <msweet@apple.com>:
> > > Alex,
> > >
> > > > On Oct 3, 2014, at 3:28 PM, Alex Korobkin <korobkin+op@gmail.com>
> wrote:
> > > >
> > > > Hi all,
> > > >
> > > > I'm looking at example PPDs for pure PDF workflow, and all of them
> have
> > > > cupsManualCopies: true
> > > >
> > > > Why is that? Is it impossible to tell printer to print a number of
> copies with pure PDF workflow?
> > > > Maybe pdftopdf can inject @PJL SET COPIES=X into the file?
> > >
> > > No, that wouldn't work since the PDF-to-raster filters don't support
> PJL and (for that matter) most PDF printers do not support PJL.
> > >
> > > cupsManualCopies is there because the destination doesn't support
> generating copies of its own.  If it does, then cupsManualCopies won't be
> in the PPD - in the case of IPP Everywhere printers the copy count is
> passed in the job ticket when we create the job from the IPP backend.
> > >
> > > _________________________________________________________
> > > Michael Sweet, Senior Printing System Engineer, PWG Chair
> > >
> > >
> > >
> > >
> > > --
> > > -Alex
> >
> > _________________________________________________________
> > Michael Sweet, Senior Printing System Engineer, PWG Chair
> >
> >
> >
> >
> > --
> > -Alex
>
> _________________________________________________________
> Michael Sweet, Senior Printing System Engineer, PWG Chair
>
>


-- 
-Alex

--20cf300e5071b565f70504c272d0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks, I had no clue cupsFilter2 keyword would have such =
effect. But weirdly, after changing cupsFilter to cupsFilter2 the job is no=
w benig converted to postscript.=C2=A0<div><br></div><div>I mean, i had thi=
s in the PPD:</div><div>*cupsFilter: &quot;application/vnd.cups-pdf 0 -&quo=
t;<br></div><div><br></div><div>And these filters were run:=C2=A0</div><div=
><br></div><div><div>[Job 12] 2 filters for job:</div><div>[Job 12] pdftopd=
f (application/pdf to application/vnd.cups-pdf, cost 66)</div><div>[Job 12]=
 - (application/vnd.cups-pdf to printer/tiefighter-color, cost 0)</div></di=
v><div><br></div><div>I changed it to=C2=A0<br></div><div><div>*cupsFilter2=
: &quot;application/vnd.cups-pdf 0 -&quot;</div></div><div><br></div><div>A=
nd now pdftops is somehow invoked:</div><div><br></div><div><div>[Job 13] 3=
 filters for job:</div><div>[Job 13] pdftopdf (application/pdf to applicati=
on/vnd.cups-pdf, cost 66)</div><div>[Job 13] pdftops (application/vnd.cups-=
pdf to application/vnd.cups-postscript, cost 100)</div><div>[Job 13] - (app=
lication/vnd.cups-postscript to printer/tiefighter-color, cost 0)</div></di=
v><div><br></div><div>This is CUPS 1.7.5 with cups-filers 1.0.58. Why would=
 that happen?</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail=
_quote">2014-10-06 10:12 GMT-04:00 Michael Sweet <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:msweet@apple.com" target=3D"_blank">msweet@apple.com</a>&gt;<=
/span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex">Alex,<br>
<br>
The PPD needs to use the cupsFilter2 keyword that specifies and output form=
at of application/pdf, application/vnd.cups-pdf, or and image/* format.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
&gt; On Oct 5, 2014, at 1:03 AM, Alex Korobkin &lt;<a href=3D"mailto:korobk=
in%2Bop@gmail.com">korobkin+op@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Michael,<br>
&gt;<br>
&gt; I had tested this workflow with ipp backend, and it didn&#39;t communi=
cate the number of copies to the printer. What conditions must be met for i=
pp backend to be able to specify the number of copies?<br>
&gt;<br>
&gt; Should printer reply over IPP with &quot;copies-supported&quot;?<br>
&gt;<br>
&gt; 2014-10-04 15:48 GMT-04:00 Michael Sweet &lt;<a href=3D"mailto:msweet@=
apple.com">msweet@apple.com</a>&gt;:<br>
&gt; Alex,<br>
&gt;<br>
&gt; You&#39;ll have to confirm with Till, but AFAIK the pdftopdf filter do=
esn&#39;t support PJL options.<br>
&gt;<br>
&gt; Naturally the socket backend cannot provide out-of-band job ticket inf=
ormation, but the IPP backend *can*.=C2=A0 (that goes back to my comment ab=
out IPP Everywhere)<br>
&gt;<br>
&gt; &gt; On Oct 4, 2014, at 1:36 PM, Alex Korobkin &lt;<a href=3D"mailto:k=
orobkin%2Bop@gmail.com">korobkin+op@gmail.com</a>&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt; Hi Michael,<br>
&gt; &gt;<br>
&gt; &gt; Sorry, I should have been more clear with my question. I&#39;m as=
king about OpenPrinting PDF workflow [1], where client sends a PDF, and CUP=
S uses just two filters for the job: pdftopdf and a socket/ipp to send the =
PDF directly to the printer. No conversion to raster is happening: client s=
ends a PDF, printer receives a PDF.<br>
&gt; &gt;<br>
&gt; &gt; cups-filters package ships with a couple of sample PPDs [2], [3] =
that basically allow for inserting PJL commands into the job to change its =
most common options: tray, duplex, etc.<br>
&gt; &gt;<br>
&gt; &gt; I&#39;m trying to find out whether making manual copies via cupsM=
anualCopies is the only way to handle the number of copies. Can pdftopdf or=
 CUPS insert PJL SET COPIES=3DX into the job? Can CUPS set the number of co=
pies via IPP commands? There is also some code in pdftopdf_jcl.cc [4] that =
is dealing with a Copies directive in a PPD, but I don&#39;t quite understa=
nd what it does.<br>
&gt; &gt;<br>
&gt; &gt; [1] <a href=3D"http://www.linuxfoundation.org/collaborate/workgro=
ups/openprinting/pdf_as_standard_print_job_format" target=3D"_blank">http:/=
/www.linuxfoundation.org/collaborate/workgroups/openprinting/pdf_as_standar=
d_print_job_format</a><br>
&gt; &gt; [2] <a href=3D"http://bzr.linuxfoundation.org/loggerhead/openprin=
ting/cups-filters/annotate/head:/ppd/HP-Color_LaserJet_CM3530_MFP-PDF.ppd" =
target=3D"_blank">http://bzr.linuxfoundation.org/loggerhead/openprinting/cu=
ps-filters/annotate/head:/ppd/HP-Color_LaserJet_CM3530_MFP-PDF.ppd</a><br>
&gt; &gt; [3] <a href=3D"http://bzr.linuxfoundation.org/loggerhead/openprin=
ting/cups-filters/annotate/head:/ppd/Fuji_Xerox-DocuPrint_CM305_df-PDF.ppd"=
 target=3D"_blank">http://bzr.linuxfoundation.org/loggerhead/openprinting/c=
ups-filters/annotate/head:/ppd/Fuji_Xerox-DocuPrint_CM305_df-PDF.ppd</a><br=
>
&gt; &gt; [4] <a href=3D"http://bzr.linuxfoundation.org/loggerhead/openprin=
ting/cups-filters/annotate/head:/filter/pdftopdf/pdftopdf_jcl.cc#L35" targe=
t=3D"_blank">http://bzr.linuxfoundation.org/loggerhead/openprinting/cups-fi=
lters/annotate/head:/filter/pdftopdf/pdftopdf_jcl.cc#L35</a><br>
&gt; &gt;<br>
&gt; &gt; 2014-10-04 11:40 GMT-04:00 Michael Sweet &lt;<a href=3D"mailto:ms=
weet@apple.com">msweet@apple.com</a>&gt;:<br>
&gt; &gt; Alex,<br>
&gt; &gt;<br>
&gt; &gt; &gt; On Oct 3, 2014, at 3:28 PM, Alex Korobkin &lt;<a href=3D"mai=
lto:korobkin%2Bop@gmail.com">korobkin+op@gmail.com</a>&gt; wrote:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Hi all,<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; I&#39;m looking at example PPDs for pure PDF workflow, and a=
ll of them have<br>
&gt; &gt; &gt; cupsManualCopies: true<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Why is that? Is it impossible to tell printer to print a num=
ber of copies with pure PDF workflow?<br>
&gt; &gt; &gt; Maybe pdftopdf can inject @PJL SET COPIES=3DX into the file?=
<br>
&gt; &gt;<br>
&gt; &gt; No, that wouldn&#39;t work since the PDF-to-raster filters don&#3=
9;t support PJL and (for that matter) most PDF printers do not support PJL.=
<br>
&gt; &gt;<br>
&gt; &gt; cupsManualCopies is there because the destination doesn&#39;t sup=
port generating copies of its own.=C2=A0 If it does, then cupsManualCopies =
won&#39;t be in the PPD - in the case of IPP Everywhere printers the copy c=
ount is passed in the job ticket when we create the job from the IPP backen=
d.<br>
&gt; &gt;<br>
&gt; &gt; _________________________________________________________<br>
&gt; &gt; Michael Sweet, Senior Printing System Engineer, PWG Chair<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; --<br>
&gt; &gt; -Alex<br>
&gt;<br>
&gt; _________________________________________________________<br>
&gt; Michael Sweet, Senior Printing System Engineer, PWG Chair<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; -Alex<br>
<br>
_________________________________________________________<br>
Michael Sweet, Senior Printing System Engineer, PWG Chair<br>
<br>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
<div dir=3D"ltr">-Alex</div>
</div>

--20cf300e5071b565f70504c272d0--
