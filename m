Return-Path: <korobkin@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=Q2FLmSjjroosOOwTAEwdRGFrLFvVC6B+uQNecAt8sdY=;
	b=U4URz9LLzdtrtF1HQTxJQqhVb/ClOUwGbEX0/TxT1mCh2Z+wRXJROTT6RrbAS6w9+P
	wqRTFgBBnAoWkn/qvrv/udbJzX3K9LIJ9ORYTF4XzMztXaEI7QV8aXBclWoRKRkqH2PQ
	tWEt02KI/bCvcwEpB3PhaIsCYaEL1aiPk2UT6UjcYYehdAmm/F9zlIocK3sRDNXkWx7i
	JP7MO1mARODIjTqk1NDgamOCl2Fk+yxbZZ/JnUNB5FVbH4ejoz+evsh1m5HOnUknEflv
	x3LcQU9x+miIzJtx9MmK+6GxbIcCgnU7kKRpuLMz+OLtuJykCtFyml7hF+9uQjQNYw5X
	qJxA==
MIME-Version: 1.0
Sender: korobkin@gmail.com
In-Reply-To: <54354CDA.50401@thax.hardliners.org>
References: <CA+3RNfiMXAVRKoFH8XD+YyWatt-Fc+mKMGkAQyQPJ=8_SX9T3g@mail.gmail.com>
	<5B66FA40-ED1E-461E-B00F-D5CD6C7DBC30@apple.com>
	<CA+3RNfgR9Ucx+mQezWVwi8XMCF-4EBtFV5bukKOsTfZsTBZURw@mail.gmail.com>
	<34701921-5F04-411C-B35C-78CED619AAC3@apple.com>
	<5432910A.4030500@gmail.com>
	<CA+3RNfj6twoEN9y0k+dfxeQ+14jVyE_Tz9Fe5fdQSmOKcbg=_Q@mail.gmail.com>
	<54344707.4080604@gmail.com>
	<CA+3RNfj8JFdQHekjs0gQ_z8_dxPFk-qL-dGzzJtp8ACBB0KhHg@mail.gmail.com>
	<54345EF9.5010405@thax.hardliners.org> <54350A8E.1010406@gmail.com>
	<54354CDA.50401@thax.hardliners.org>
From: Alex Korobkin <korobkin+op@gmail.com>
Date: Wed, 8 Oct 2014 15:41:22 -0400
Message-ID: <CA+3RNfjSMOmxf89XPW2vMf2SBXo7aJE+CREG99ACd0Kz0LQ3tQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=089e0122a5c25f272f0504ee8154
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
To: Tobias Hoffmann <lprint-list@thax.hardliners.org>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Till Kamppeter <till.kamppeter@gmail.com>

--089e0122a5c25f272f0504ee8154
Content-Type: text/plain; charset=UTF-8

Making a "Number of Copies" dialog doesn't seem to be a great idea, because
users will never notice that. They will keep setting the number of copies
in the usual place in GUI.

What is this pdftopdfJCLCopies keyword, will it allow to inject PJL SET
COPIES command into the job?
If pdftopdf is capable of inserting a comment about the number of copies
requested, it should be able to insert this command as well, what do you
think?

2014-10-08 10:40 GMT-04:00 Tobias Hoffmann <lprint-list@thax.hardliners.org>
:

>  On 08/10/14 11:57, Till Kamppeter wrote:
>
> On 10/07/2014 11:45 PM, Tobias Hoffmann wrote:
>
>  I'm not sure what exactly is happening in your setup.
> Maybe your PPD is missing something (- and I'm not an expert for PPD/PJL)?
> Maybe you don't have a recent cups-filters (>= 1.0.34)?
> Maybe you're hitting some edge-cases that are not handled correctly in
> the current code?
>
> AFAIK no-one else has reported a problem with PJL in a pure pdf
> workflow, and I can't find an obvious flaw in the code which deals with
> PJL in pdftopdf. The code is also basically copied over from the old
> pdftopdf implementation (cups-filters <=1.0.20); if your PPD does hw
> copy with the old implementation, but not with >=1.0.34, I will probably
> be able to fix that.
>
>
>  Tobias, do you know for what the call
>
> emitJCLOptions(stdout,ppd,param.deviceCopies);
>
> in the emitPreamble() function in pdftopdf_jcl.cc is good for? For me it
> looks like that it serves for inserting JCL options, but inserting JCL
> options is already done by
>
> ppdEmitJCL(ppd,stdout,param.jobId,param.user,param.title);
>
>
> The code basically comes from the old pdftopdf implementation by Koji
> Otani. The same code is also present in imagetopdf.c .
> There is also a section in cups-filter's README about that:
>
> if (Copies option is specified in the PPD file) {
>     mark Number of copies specified
> } else if (pdftopdfJCLCopies is specified in the PPD file) {
>     output JCL specified with JCLCopies
> }
>
> for (each marked options) {
>     if (pdftopdfJCL<marked option's name> is specified in the PPD file) {
>         output it's value as a JCL
>     } else if (pdftopdfJCLBegin attributes is specified in the PPD file) {
>         output "<option's name>=<marked choice>;" as a JCL
>     }
> }
>
>
> AFAIUI Koji had to "invent" new pdftopdfJCL* keywords for the PJL + PDF
> case;
> and for some reason ppdEmitJCL could not be used for them, so he added
> emitJCLOptions.
>
>
>  I can even comment out
>
> emitJCLOptions(stdout,ppd,param.deviceCopies);
>
> and the output stays the same.
>
>
> Probably because the PPD neither contain *Copies nor *pdftopdfJCLCopies?
>
>  What I want to have is that if param.deviceCopies is not 1 (= multiple
> hardware copies) that
>
> @PJL SET COPIES=...
>
> is added.
>
>
> Have you tried adding something along this lines:
>
> *OpenUI *Copies/Number of Copies: PickOne
> *OrderDependency: 100 AnySetup *Copies
> *DefaultCopies: 1
> *Copies 1/1: "@PJL SET COPIES=1"
> *Copies 2/2: "@PJL SET COPIES=2"
> *Copies 3/3: "@PJL SET COPIES=3"
> *Copies 4/4: "@PJL SET COPIES=4"
> ...
> *CloseUI: *Copies
>
> similar to how Foomatic-based work?
>
> A real PPD also has to take other settings into account here (e.g.
> collate, staple, ...), if the printer-hardware does not support all
> combinations /  has staple-limits / ...
>
>  Currently all works fine for PPDs with "*cupsManualCopies: True" as
> pdftopdf generates software copies then. Without this entry pdftopdf
> sends only one copy of the PDF content and adds only a comment for
> subsequent filters. It does not add anything to generate the copies on a
> PDF printer.
>
>  The PPD author (printer manufacturer, ...) chooses to EITHER set
> "*cupsManualCopes: True" OR add *Copies / *pdftopdfJCLCopies / ... (i.e.
> whatever is required to generate correct JCL output for their printer
> model).
>
>   Tobias
>
>
>
>


-- 
-Alex

--089e0122a5c25f272f0504ee8154
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Making a &quot;Number of Copies&quot; dialog doesn&#39;t s=
eem to be a great idea, because users will never notice that. They will kee=
p setting the number of copies in the usual place in GUI.=C2=A0<div><br></d=
iv><div>What is this=C2=A0pdftopdfJCLCopies keyword, will it allow to injec=
t PJL SET COPIES command into the job?</div><div>If pdftopdf is capable of =
inserting a comment about the number of copies requested, it should be able=
 to insert this command as well, what do you think?</div></div><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">2014-10-08 10:40 GMT-04:00 =
Tobias Hoffmann <span dir=3D"ltr">&lt;<a href=3D"mailto:lprint-list@thax.ha=
rdliners.org" target=3D"_blank">lprint-list@thax.hardliners.org</a>&gt;</sp=
an>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF" text=3D"#000000"><span class=3D"">
    On 08/10/14 11:57, Till Kamppeter wrote:
    <blockquote type=3D"cite">
      <pre>On 10/07/2014 11:45 PM, Tobias Hoffmann wrote:
</pre>
      <blockquote type=3D"cite">
        <pre>I&#39;m not sure what exactly is happening in your setup.
Maybe your PPD is missing something (- and I&#39;m not an expert for PPD/PJ=
L)?
Maybe you don&#39;t have a recent cups-filters (&gt;=3D 1.0.34)?
Maybe you&#39;re hitting some edge-cases that are not handled correctly in
the current code?

AFAIK no-one else has reported a problem with PJL in a pure pdf
workflow, and I can&#39;t find an obvious flaw in the code which deals with
PJL in pdftopdf. The code is also basically copied over from the old
pdftopdf implementation (cups-filters &lt;=3D1.0.20); if your PPD does hw
copy with the old implementation, but not with &gt;=3D1.0.34, I will probab=
ly
be able to fix that.

</pre>
      </blockquote>
      <pre>Tobias, do you know for what the call

emitJCLOptions(stdout,ppd,param.deviceCopies);

in the emitPreamble() function in pdftopdf_jcl.cc is good for? For me it
looks like that it serves for inserting JCL options, but inserting JCL
options is already done by

ppdEmitJCL(ppd,stdout,param.jobId,param.user,param.title);</pre>
    </blockquote>
    <br></span>
    The code basically comes from the old pdftopdf implementation by
    Koji Otani. The same code is also present in imagetopdf.c .<br>
    There is also a section in cups-filter&#39;s README about that:<br>
    <br>
    <blockquote type=3D"cite">if (Copies option is specified in the PPD
      file) {<br>
      =C2=A0=C2=A0=C2=A0 mark Number of copies specified<br>
      } else if (pdftopdfJCLCopies is specified in the PPD file) {<br>
      =C2=A0=C2=A0=C2=A0 output JCL specified with JCLCopies<br>
      }<br>
      <br>
      for (each marked options) {<br>
      =C2=A0=C2=A0=C2=A0 if (pdftopdfJCL&lt;marked option&#39;s name&gt; is=
 specified in
      the PPD file) {<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 output it&#39;s value as a=
 JCL<br>
      =C2=A0=C2=A0=C2=A0 } else if (pdftopdfJCLBegin attributes is specifie=
d in the PPD
      file) {<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 output &quot;&lt;option&#3=
9;s name&gt;=3D&lt;marked choice&gt;;&quot; as a
      JCL<br>
      =C2=A0=C2=A0=C2=A0 }<br>
      }<br>
    </blockquote>
    <br>
    AFAIUI Koji had to &quot;invent&quot; new pdftopdfJCL* keywords for the=
 PJL +
    PDF case;<br>
    and for some reason ppdEmitJCL could not be used for them, so he
    added emitJCLOptions.<span class=3D""><br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <pre>I can even comment out

emitJCLOptions(stdout,ppd,param.deviceCopies);

and the output stays the same.</pre>
    </blockquote>
    <br></span>
    Probably because the PPD neither contain *Copies nor
    *pdftopdfJCLCopies?<span class=3D""><br>
    <br>
    <blockquote type=3D"cite">
      <pre>What I want to have is that if param.deviceCopies is not 1 (=3D =
multiple
hardware copies) that

@PJL SET COPIES=3D...

is added.</pre>
    </blockquote>
    <br></span>
    Have you tried adding something along this lines: <br>
   =20
    <pre style=3D"color:rgb(0,0,0);font-style:normal;font-variant:normal;fo=
nt-weight:normal;letter-spacing:normal;line-height:normal;text-align:start;=
text-indent:0px;text-transform:none;word-spacing:0px;word-wrap:break-word;w=
hite-space:pre-wrap">*OpenUI *Copies/Number of Copies: PickOne
*OrderDependency: 100 AnySetup *Copies
*DefaultCopies: 1
*Copies 1/1: &quot;@PJL SET COPIES=3D1&quot;
*Copies 2/2: &quot;@PJL SET COPIES=3D2&quot;
*Copies 3/3: &quot;@PJL SET COPIES=3D3&quot;
*Copies 4/4: &quot;@PJL SET COPIES=3D4&quot;
...
*CloseUI: *Copies</pre>
    similar to how Foomatic-based work?<br>
    <br>
    A real PPD also has to take other settings into account here (e.g.
    collate, staple, ...), if the printer-hardware does not support all
    combinations /=C2=A0 has staple-limits / ...<span class=3D""><br>
    <br>
    <blockquote type=3D"cite">
      <pre>Currently all works fine for PPDs with &quot;*cupsManualCopies: =
True&quot; as
pdftopdf generates software copies then. Without this entry pdftopdf
sends only one copy of the PDF content and adds only a comment for
subsequent filters. It does not add anything to generate the copies on a
PDF printer.</pre>
    </blockquote></span>
    The PPD author (printer manufacturer, ...) chooses to EITHER set
    &quot;*cupsManualCopes: True&quot; OR add *Copies / *pdftopdfJCLCopies =
/ ...
    (i.e. whatever is required to generate correct JCL output for their
    printer model).<span class=3D"HOEnZb"><font color=3D"#888888"><br>
    <br>
    =C2=A0 Tobias<br>
    <br>
    <br>
    <br>
  </font></span></div>

</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div dir=3D"=
ltr">-Alex</div>
</div>

--089e0122a5c25f272f0504ee8154--
