Return-Path: <korobkin@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=D3CW0cfi5AB+5+ApoOTSPwdU+BELxZt3z7yXcFlVECo=;
	b=biFrJ0xFCXOHAxv6vzE85YcYQrVHfugNoMaQzPBp79sCvHlqv1ZYGR3QF9X4Hs8h8F
	iy2wuBfvQUuWZ+hhhrRck54mSnSfgEOAlgil61T6gKaKLmClBnSFUrDqM8vxFJy4Nkwg
	zFZg1eHS2U4wnWJ4PXbWJ6JhaaBxY45r89O1ArUVaPk2ta3ulo9nw6PZYoZmIQkEM2Yk
	GQ9YvTN3X6V4i1xe1eOBVljQeWgs8DpWPRXvppm7cCOPeFyn5RKm6laSVXosMj37/kXS
	j8qoj3KSQSyJOupOnp0ExFyIDl13b++hcYcgnIWujYngKNJZBEnNfg1Sjs/ARF3ZsewC
	yVNg==
MIME-Version: 1.0
Sender: korobkin@gmail.com
In-Reply-To: <0392028E-75B3-45B1-8826-3886A5EEC7E9@apple.com>
References: <CA+3RNfiMXAVRKoFH8XD+YyWatt-Fc+mKMGkAQyQPJ=8_SX9T3g@mail.gmail.com>
	<5B66FA40-ED1E-461E-B00F-D5CD6C7DBC30@apple.com>
	<CA+3RNfgR9Ucx+mQezWVwi8XMCF-4EBtFV5bukKOsTfZsTBZURw@mail.gmail.com>
	<34701921-5F04-411C-B35C-78CED619AAC3@apple.com>
	<CA+3RNfgzaD28Gcy4N=k_=jJMsQ9Ao1i8fSiRpeU3VHvXoxx4fw@mail.gmail.com>
	<23226792-DB2B-467B-A3F3-015D81C6A31B@apple.com>
	<CA+3RNfgwqWxqc6D4Fe1fC8--xy0pV_c4SDHukwpwrC+N=G=WpA@mail.gmail.com>
	<0392028E-75B3-45B1-8826-3886A5EEC7E9@apple.com>
From: Alex Korobkin <korobkin+op@gmail.com>
Date: Mon, 6 Oct 2014 11:55:36 -0400
Message-ID: <CA+3RNfhSbghH4q2znb9fDpuu-O_v4tUmndxGY-xs9_t1h3OYng@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11c2d8d04695100504c31e08
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

--001a11c2d8d04695100504c31e08
Content-Type: text/plain; charset=UTF-8

Thank you, I didn't notice that. With this change it's back to using just
two filters for the job, but still prints only one copy.
The only line in the output that seems to be relevant to copies is this one:

[Job 14] Getting supported attributes...
[Job 14] Get-Printer-Attributes:
successful-ok-ignored-or-substituted-attributes
(successful-ok-ignored-or-substituted-attributes)
[Job 14] copies-supported=1-1

Am I missing any other step to make it pass the number of copies to the ipp
backend?

2014-10-06 11:32 GMT-04:00 Michael Sweet <msweet@apple.com>:

> Alex,
>
> The cupsFilter2 keyword has a different value syntax:
>
>     *cupsFilter2: "src/type dst/type cost filter"
>
> For a PDF printer you want:
>
>     *cupsFilter2: "application/pdf application/vnd.cups-pdf 10 pdftopdf"
>
>
> > On Oct 6, 2014, at 11:07 AM, Alex Korobkin <korobkin+op@gmail.com>
> wrote:
> >
> > Thanks, I had no clue cupsFilter2 keyword would have such effect. But
> weirdly, after changing cupsFilter to cupsFilter2 the job is now benig
> converted to postscript.
> >
> > I mean, i had this in the PPD:
> > *cupsFilter: "application/vnd.cups-pdf 0 -"
> >
> > And these filters were run:
> >
> > [Job 12] 2 filters for job:
> > [Job 12] pdftopdf (application/pdf to application/vnd.cups-pdf, cost 66)
> > [Job 12] - (application/vnd.cups-pdf to printer/tiefighter-color, cost 0)
> >
> > I changed it to
> > *cupsFilter2: "application/vnd.cups-pdf 0 -"
> >
> > And now pdftops is somehow invoked:
> >
> > [Job 13] 3 filters for job:
> > [Job 13] pdftopdf (application/pdf to application/vnd.cups-pdf, cost 66)
> > [Job 13] pdftops (application/vnd.cups-pdf to
> application/vnd.cups-postscript, cost 100)
> > [Job 13] - (application/vnd.cups-postscript to printer/tiefighter-color,
> cost 0)
> >
> > This is CUPS 1.7.5 with cups-filers 1.0.58. Why would that happen?
> >
> > 2014-10-06 10:12 GMT-04:00 Michael Sweet <msweet@apple.com>:
> > Alex,
> >
> > The PPD needs to use the cupsFilter2 keyword that specifies and output
> format of application/pdf, application/vnd.cups-pdf, or and image/* format.
> >
> >
> > > On Oct 5, 2014, at 1:03 AM, Alex Korobkin <korobkin+op@gmail.com>
> wrote:
> > >
> > > Michael,
> > >
> > > I had tested this workflow with ipp backend, and it didn't communicate
> the number of copies to the printer. What conditions must be met for ipp
> backend to be able to specify the number of copies?
> > >
> > > Should printer reply over IPP with "copies-supported"?
> > >
> > > 2014-10-04 15:48 GMT-04:00 Michael Sweet <msweet@apple.com>:
> > > Alex,
> > >
> > > You'll have to confirm with Till, but AFAIK the pdftopdf filter
> doesn't support PJL options.
> > >
> > > Naturally the socket backend cannot provide out-of-band job ticket
> information, but the IPP backend *can*.  (that goes back to my comment
> about IPP Everywhere)
> > >
> > > > On Oct 4, 2014, at 1:36 PM, Alex Korobkin <korobkin+op@gmail.com>
> wrote:
> > > >
> > > > Hi Michael,
> > > >
> > > > Sorry, I should have been more clear with my question. I'm asking
> about OpenPrinting PDF workflow [1], where client sends a PDF, and CUPS
> uses just two filters for the job: pdftopdf and a socket/ipp to send the
> PDF directly to the printer. No conversion to raster is happening: client
> sends a PDF, printer receives a PDF.
> > > >
> > > > cups-filters package ships with a couple of sample PPDs [2], [3]
> that basically allow for inserting PJL commands into the job to change its
> most common options: tray, duplex, etc.
> > > >
> > > > I'm trying to find out whether making manual copies via
> cupsManualCopies is the only way to handle the number of copies. Can
> pdftopdf or CUPS insert PJL SET COPIES=X into the job? Can CUPS set the
> number of copies via IPP commands? There is also some code in
> pdftopdf_jcl.cc [4] that is dealing with a Copies directive in a PPD, but I
> don't quite understand what it does.
> > > >
> > > > [1]
> http://www.linuxfoundation.org/collaborate/workgroups/openprinting/pdf_as_standard_print_job_format
> > > > [2]
> http://bzr.linuxfoundation.org/loggerhead/openprinting/cups-filters/annotate/head:/ppd/HP-Color_LaserJet_CM3530_MFP-PDF.ppd
> > > > [3]
> http://bzr.linuxfoundation.org/loggerhead/openprinting/cups-filters/annotate/head:/ppd/Fuji_Xerox-DocuPrint_CM305_df-PDF.ppd
> > > > [4]
> http://bzr.linuxfoundation.org/loggerhead/openprinting/cups-filters/annotate/head:/filter/pdftopdf/pdftopdf_jcl.cc#L35
> > > >
> > > > 2014-10-04 11:40 GMT-04:00 Michael Sweet <msweet@apple.com>:
> > > > Alex,
> > > >
> > > > > On Oct 3, 2014, at 3:28 PM, Alex Korobkin <korobkin+op@gmail.com>
> wrote:
> > > > >
> > > > > Hi all,
> > > > >
> > > > > I'm looking at example PPDs for pure PDF workflow, and all of them
> have
> > > > > cupsManualCopies: true
> > > > >
> > > > > Why is that? Is it impossible to tell printer to print a number of
> copies with pure PDF workflow?
> > > > > Maybe pdftopdf can inject @PJL SET COPIES=X into the file?
> > > >
> > > > No, that wouldn't work since the PDF-to-raster filters don't support
> PJL and (for that matter) most PDF printers do not support PJL.
> > > >
> > > > cupsManualCopies is there because the destination doesn't support
> generating copies of its own.  If it does, then cupsManualCopies won't be
> in the PPD - in the case of IPP Everywhere printers the copy count is
> passed in the job ticket when we create the job from the IPP backend.
> > > >
> > > > _________________________________________________________
> > > > Michael Sweet, Senior Printing System Engineer, PWG Chair
> > > >
> > > >
> > > >
> > > >
> > > > --
> > > > -Alex
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

--001a11c2d8d04695100504c31e08
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you, I didn&#39;t notice that. With this change it&#=
39;s back to using just two filters for the job, but still prints only one =
copy.=C2=A0<div>The only line in the output that seems to be relevant to co=
pies is this one:</div><div><div><br></div><div>[Job 14] Getting supported =
attributes...</div><div>[Job 14] Get-Printer-Attributes: successful-ok-igno=
red-or-substituted-attributes (successful-ok-ignored-or-substituted-attribu=
tes)</div><div>[Job 14] copies-supported=3D1-1</div></div><div><br></div><d=
iv>Am I missing any other step to make it pass the number of copies to the =
ipp backend?</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_=
quote">2014-10-06 11:32 GMT-04:00 Michael Sweet <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:msweet@apple.com" target=3D"_blank">msweet@apple.com</a>&gt;</=
span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex">Alex,<br>
<br>
The cupsFilter2 keyword has a different value syntax:<br>
<br>
=C2=A0 =C2=A0 *cupsFilter2: &quot;src/type dst/type cost filter&quot;<br>
<br>
For a PDF printer you want:<br>
<br>
=C2=A0 =C2=A0 *cupsFilter2: &quot;application/pdf application/vnd.cups-pdf =
10 pdftopdf&quot;<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
&gt; On Oct 6, 2014, at 11:07 AM, Alex Korobkin &lt;<a href=3D"mailto:korob=
kin%2Bop@gmail.com">korobkin+op@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Thanks, I had no clue cupsFilter2 keyword would have such effect. But =
weirdly, after changing cupsFilter to cupsFilter2 the job is now benig conv=
erted to postscript.<br>
&gt;<br>
&gt; I mean, i had this in the PPD:<br>
&gt; *cupsFilter: &quot;application/vnd.cups-pdf 0 -&quot;<br>
&gt;<br>
&gt; And these filters were run:<br>
&gt;<br>
&gt; [Job 12] 2 filters for job:<br>
&gt; [Job 12] pdftopdf (application/pdf to application/vnd.cups-pdf, cost 6=
6)<br>
&gt; [Job 12] - (application/vnd.cups-pdf to printer/tiefighter-color, cost=
 0)<br>
&gt;<br>
&gt; I changed it to<br>
&gt; *cupsFilter2: &quot;application/vnd.cups-pdf 0 -&quot;<br>
&gt;<br>
&gt; And now pdftops is somehow invoked:<br>
&gt;<br>
&gt; [Job 13] 3 filters for job:<br>
&gt; [Job 13] pdftopdf (application/pdf to application/vnd.cups-pdf, cost 6=
6)<br>
&gt; [Job 13] pdftops (application/vnd.cups-pdf to application/vnd.cups-pos=
tscript, cost 100)<br>
&gt; [Job 13] - (application/vnd.cups-postscript to printer/tiefighter-colo=
r, cost 0)<br>
&gt;<br>
&gt; This is CUPS 1.7.5 with cups-filers 1.0.58. Why would that happen?<br>
&gt;<br>
&gt; 2014-10-06 10:12 GMT-04:00 Michael Sweet &lt;<a href=3D"mailto:msweet@=
apple.com">msweet@apple.com</a>&gt;:<br>
&gt; Alex,<br>
&gt;<br>
&gt; The PPD needs to use the cupsFilter2 keyword that specifies and output=
 format of application/pdf, application/vnd.cups-pdf, or and image/* format=
.<br>
&gt;<br>
&gt;<br>
&gt; &gt; On Oct 5, 2014, at 1:03 AM, Alex Korobkin &lt;<a href=3D"mailto:k=
orobkin%2Bop@gmail.com">korobkin+op@gmail.com</a>&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt; Michael,<br>
&gt; &gt;<br>
&gt; &gt; I had tested this workflow with ipp backend, and it didn&#39;t co=
mmunicate the number of copies to the printer. What conditions must be met =
for ipp backend to be able to specify the number of copies?<br>
&gt; &gt;<br>
&gt; &gt; Should printer reply over IPP with &quot;copies-supported&quot;?<=
br>
&gt; &gt;<br>
&gt; &gt; 2014-10-04 15:48 GMT-04:00 Michael Sweet &lt;<a href=3D"mailto:ms=
weet@apple.com">msweet@apple.com</a>&gt;:<br>
&gt; &gt; Alex,<br>
&gt; &gt;<br>
&gt; &gt; You&#39;ll have to confirm with Till, but AFAIK the pdftopdf filt=
er doesn&#39;t support PJL options.<br>
&gt; &gt;<br>
&gt; &gt; Naturally the socket backend cannot provide out-of-band job ticke=
t information, but the IPP backend *can*.=C2=A0 (that goes back to my comme=
nt about IPP Everywhere)<br>
&gt; &gt;<br>
&gt; &gt; &gt; On Oct 4, 2014, at 1:36 PM, Alex Korobkin &lt;<a href=3D"mai=
lto:korobkin%2Bop@gmail.com">korobkin+op@gmail.com</a>&gt; wrote:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Hi Michael,<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Sorry, I should have been more clear with my question. I&#39=
;m asking about OpenPrinting PDF workflow [1], where client sends a PDF, an=
d CUPS uses just two filters for the job: pdftopdf and a socket/ipp to send=
 the PDF directly to the printer. No conversion to raster is happening: cli=
ent sends a PDF, printer receives a PDF.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; cups-filters package ships with a couple of sample PPDs [2],=
 [3] that basically allow for inserting PJL commands into the job to change=
 its most common options: tray, duplex, etc.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; I&#39;m trying to find out whether making manual copies via =
cupsManualCopies is the only way to handle the number of copies. Can pdftop=
df or CUPS insert PJL SET COPIES=3DX into the job? Can CUPS set the number =
of copies via IPP commands? There is also some code in pdftopdf_jcl.cc [4] =
that is dealing with a Copies directive in a PPD, but I don&#39;t quite und=
erstand what it does.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; [1] <a href=3D"http://www.linuxfoundation.org/collaborate/wo=
rkgroups/openprinting/pdf_as_standard_print_job_format" target=3D"_blank">h=
ttp://www.linuxfoundation.org/collaborate/workgroups/openprinting/pdf_as_st=
andard_print_job_format</a><br>
&gt; &gt; &gt; [2] <a href=3D"http://bzr.linuxfoundation.org/loggerhead/ope=
nprinting/cups-filters/annotate/head:/ppd/HP-Color_LaserJet_CM3530_MFP-PDF.=
ppd" target=3D"_blank">http://bzr.linuxfoundation.org/loggerhead/openprinti=
ng/cups-filters/annotate/head:/ppd/HP-Color_LaserJet_CM3530_MFP-PDF.ppd</a>=
<br>
&gt; &gt; &gt; [3] <a href=3D"http://bzr.linuxfoundation.org/loggerhead/ope=
nprinting/cups-filters/annotate/head:/ppd/Fuji_Xerox-DocuPrint_CM305_df-PDF=
.ppd" target=3D"_blank">http://bzr.linuxfoundation.org/loggerhead/openprint=
ing/cups-filters/annotate/head:/ppd/Fuji_Xerox-DocuPrint_CM305_df-PDF.ppd</=
a><br>
&gt; &gt; &gt; [4] <a href=3D"http://bzr.linuxfoundation.org/loggerhead/ope=
nprinting/cups-filters/annotate/head:/filter/pdftopdf/pdftopdf_jcl.cc#L35" =
target=3D"_blank">http://bzr.linuxfoundation.org/loggerhead/openprinting/cu=
ps-filters/annotate/head:/filter/pdftopdf/pdftopdf_jcl.cc#L35</a><br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; 2014-10-04 11:40 GMT-04:00 Michael Sweet &lt;<a href=3D"mail=
to:msweet@apple.com">msweet@apple.com</a>&gt;:<br>
&gt; &gt; &gt; Alex,<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; On Oct 3, 2014, at 3:28 PM, Alex Korobkin &lt;<a href=
=3D"mailto:korobkin%2Bop@gmail.com">korobkin+op@gmail.com</a>&gt; wrote:<br=
>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; Hi all,<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; I&#39;m looking at example PPDs for pure PDF workflow, =
and all of them have<br>
&gt; &gt; &gt; &gt; cupsManualCopies: true<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; Why is that? Is it impossible to tell printer to print =
a number of copies with pure PDF workflow?<br>
&gt; &gt; &gt; &gt; Maybe pdftopdf can inject @PJL SET COPIES=3DX into the =
file?<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; No, that wouldn&#39;t work since the PDF-to-raster filters d=
on&#39;t support PJL and (for that matter) most PDF printers do not support=
 PJL.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; cupsManualCopies is there because the destination doesn&#39;=
t support generating copies of its own.=C2=A0 If it does, then cupsManualCo=
pies won&#39;t be in the PPD - in the case of IPP Everywhere printers the c=
opy count is passed in the job ticket when we create the job from the IPP b=
ackend.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; _________________________________________________________<br=
>
&gt; &gt; &gt; Michael Sweet, Senior Printing System Engineer, PWG Chair<br=
>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; --<br>
&gt; &gt; &gt; -Alex<br>
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

--001a11c2d8d04695100504c31e08--
