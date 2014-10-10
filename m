Return-Path: <korobkin@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=vIl8V+LRVaFmWYsJmIR/D+zGKPAPivq+en7qAnKgRwE=;
	b=ZiFic6LU7RnM3ePP22ScqTYTBM5C42Npa/dGN4ccYZVT4gWJM/+uElaM6UmFIepckW
	veE/2v8T/eywW+IZSo4LgcFMJJvOEdCghU4v01uSF+NXwfj69nxDSEgOWAd6HuQpgjs0
	iq/CqYFQJwR7AvG4S2YwyFCGOZrJ6Jyv/GgChiY+InnQVautH1xN0oc96+u7F2nepgMk
	iiv7VnZMG2TWqo0tCqpRLVkBe/DGT3/aGL9G6q4WxWopspxpBKN1bMHefwrx2uCHvJRJ
	+A7XP1IwsSFioM9YqYQsntHHZqbE8FHa5NN8z4Z+f7454B3aRfp40TPRxT0JcuzOKFUS
	T/EA==
MIME-Version: 1.0
Sender: korobkin@gmail.com
In-Reply-To: <5435A44F.7080504@thax.hardliners.org>
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
	<CA+3RNfjSMOmxf89XPW2vMf2SBXo7aJE+CREG99ACd0Kz0LQ3tQ@mail.gmail.com>
	<5435A44F.7080504@thax.hardliners.org>
From: Alex Korobkin <korobkin+op@gmail.com>
Date: Fri, 10 Oct 2014 14:38:43 -0400
Message-ID: <CA+3RNfiAna118VGc=zLoRsyNTc5oGcynhMNy3UJRG7dNrHmWWw@mail.gmail.com>
Content-Type: multipart/alternative; boundary=20cf303b4407031dd5050515dd14
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

--20cf303b4407031dd5050515dd14
Content-Type: text/plain; charset=UTF-8

2014-10-08 16:53 GMT-04:00 Tobias Hoffmann <lprint-list@thax.hardliners.org>
:

>
>  What is this pdftopdfJCLCopies keyword, will it allow to inject PJL SET
> COPIES command into the job?
>
>     if ((attr = ppdFindAttr(ppd,"pdftopdfJCLCopies",buf)) != NULL) {
>       fputs(attr->value,fp);
>       datawritten = 1;
>     } else if (withJCL) {
>       fprintf(fp,"Copies=%d;",deviceCopies);
>       datawritten = 1;
>     }
>
> AFAIUI yes. It will write the value that corresponds to the
> *pdftopdfJCLCopies attribute which has the number of copies as specifier
> string, i.e. something along these lines:
>
> *pdftopdfJCLCopies 1: "@PJL SET COPIES=1"
> *pdftopdfJCLCopies 2: "@PJL SET COPIES=2"
> *pdftopdfJCLCopies 3: "@PJL SET COPIES=3"
>
>
Does it mean that I need to have 300 lines of this if a customer wants to
be able to print up to 300 copies? Is there a better way to specify a
keyword for arbitrary number of copies?

Also, it doesn't really work as expected. If I add these lines to the PPD,
"@PJL SET COPIES=3" is added after @PJL ENTER LANGUAGE = PDF statement and
becomes a part of PDF (and ignored). Why is it added there?

if it were a UI element, I'd add OrderDependency keyword, but it is not and
the keyword doesn't work.

 If pdftopdf is capable of inserting a comment about the number of copies
> requested, it should be able to insert this command as well, what do you
> think?
>
>
> It obviously is able. And *Copies seems to be usual way to handle
> Hardware-Copies for PS based printers. pdftopdf (and imagetopdf !) allows
> you to use this mechanism even for PDF based printers, too.
> I'm not sure about the "Number of Copies" dialog you were talking about
> ... I have not tried it myself ... but if you are correct, it will either
> also appear for PS based PPDs which allow hardware copies, or they are
> somehow able to reuse the existing GUI field for that (you might have to
> ask someone more familiar with PPDs about that) ... or your printing dialog
> fails to handle the *Copies attribute in a sensible way?
>
> Either way, pdftopdf has little to do with your issue.
>

I would disagree here. in a PDF to PS workflow hardware copies code is
added by the last filter, pstops. Now that pdftopdf is the only filter in
the chain, it needs to insert hardware copies code into the chain,
otherwise this whole idea of the pure PDF workflow is futile: everyone
would be forced to use cupsManualCopies and won't be able to use stapling
or punching correctly, for example.


> imagetopdf uses the same code. Foomatic and PS based PPDs work similarly.
> That's not to say that PPDs don't have shortcomings; in fact, CUPS has
> deprecated it's PPD API in favor of the Job Ticket API (JTAPI), which,
> AFAIUI, has IPP options (Mike also mentioned them) for hw copy generation.
>
>   Tobias
>
>
>
>  2014-10-08 10:40 GMT-04:00 Tobias Hoffmann <
> lprint-list@thax.hardliners.org>:
>
>>  On 08/10/14 11:57, Till Kamppeter wrote:
>>
>> On 10/07/2014 11:45 PM, Tobias Hoffmann wrote:
>>
>>  I'm not sure what exactly is happening in your setup.
>> Maybe your PPD is missing something (- and I'm not an expert for PPD/PJL)?
>> Maybe you don't have a recent cups-filters (>= 1.0.34)?
>> Maybe you're hitting some edge-cases that are not handled correctly in
>> the current code?
>>
>> AFAIK no-one else has reported a problem with PJL in a pure pdf
>> workflow, and I can't find an obvious flaw in the code which deals with
>> PJL in pdftopdf. The code is also basically copied over from the old
>> pdftopdf implementation (cups-filters <=1.0.20); if your PPD does hw
>> copy with the old implementation, but not with >=1.0.34, I will probably
>> be able to fix that.
>>
>>
>>  Tobias, do you know for what the call
>>
>> emitJCLOptions(stdout,ppd,param.deviceCopies);
>>
>> in the emitPreamble() function in pdftopdf_jcl.cc is good for? For me it
>> looks like that it serves for inserting JCL options, but inserting JCL
>> options is already done by
>>
>> ppdEmitJCL(ppd,stdout,param.jobId,param.user,param.title);
>>
>>
>>  The code basically comes from the old pdftopdf implementation by Koji
>> Otani. The same code is also present in imagetopdf.c .
>> There is also a section in cups-filter's README about that:
>>
>> if (Copies option is specified in the PPD file) {
>>     mark Number of copies specified
>> } else if (pdftopdfJCLCopies is specified in the PPD file) {
>>     output JCL specified with JCLCopies
>> }
>>
>> for (each marked options) {
>>     if (pdftopdfJCL<marked option's name> is specified in the PPD file) {
>>         output it's value as a JCL
>>     } else if (pdftopdfJCLBegin attributes is specified in the PPD file) {
>>         output "<option's name>=<marked choice>;" as a JCL
>>     }
>> }
>>
>>
>> AFAIUI Koji had to "invent" new pdftopdfJCL* keywords for the PJL + PDF
>> case;
>> and for some reason ppdEmitJCL could not be used for them, so he added
>> emitJCLOptions.
>>
>>
>>  I can even comment out
>>
>> emitJCLOptions(stdout,ppd,param.deviceCopies);
>>
>> and the output stays the same.
>>
>>
>>  Probably because the PPD neither contain *Copies nor *pdftopdfJCLCopies?
>>
>>  What I want to have is that if param.deviceCopies is not 1 (= multiple
>> hardware copies) that
>>
>> @PJL SET COPIES=...
>>
>> is added.
>>
>>
>>  Have you tried adding something along this lines:
>>
>> *OpenUI *Copies/Number of Copies: PickOne
>> *OrderDependency: 100 AnySetup *Copies
>> *DefaultCopies: 1
>> *Copies 1/1: "@PJL SET COPIES=1"
>> *Copies 2/2: "@PJL SET COPIES=2"
>> *Copies 3/3: "@PJL SET COPIES=3"
>> *Copies 4/4: "@PJL SET COPIES=4"
>> ...
>> *CloseUI: *Copies
>>
>> similar to how Foomatic-based work?
>>
>> A real PPD also has to take other settings into account here (e.g.
>> collate, staple, ...), if the printer-hardware does not support all
>> combinations /  has staple-limits / ...
>>
>>  Currently all works fine for PPDs with "*cupsManualCopies: True" as
>> pdftopdf generates software copies then. Without this entry pdftopdf
>> sends only one copy of the PDF content and adds only a comment for
>> subsequent filters. It does not add anything to generate the copies on a
>> PDF printer.
>>
>>  The PPD author (printer manufacturer, ...) chooses to EITHER set
>> "*cupsManualCopes: True" OR add *Copies / *pdftopdfJCLCopies / ... (i.e.
>> whatever is required to generate correct JCL output for their printer
>> model).
>>
>>   Tobias
>>
>>
>>
>>
>
>
>  --
> -Alex
>
>
>


-- 
-Alex

--20cf303b4407031dd5050515dd14
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">2014-10-08 16:53 GMT-04:00 Tobias Hoffmann <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:lprint-list@thax.hardliners.org" target=3D"_blank">lprint-list@=
thax.hardliners.org</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb=
(204,204,204);border-left-style:solid;padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF" text=3D"#000000"><span class=3D""><br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>What is this=C2=A0pdftopdfJCLCopies keyword, will it allow to
          inject PJL SET COPIES command into the job?</div>
      </div>
    </blockquote></span>
    =C2=A0=C2=A0=C2=A0 if ((attr =3D ppdFindAttr(ppd,&quot;pdftopdfJCLCopie=
s&quot;,buf)) !=3D NULL) {<br>
    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fputs(attr-&gt;value,fp);<br>
    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 datawritten =3D 1;<br>
    =C2=A0=C2=A0=C2=A0 } else if (withJCL) {<br>
    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fprintf(fp,&quot;Copies=3D%d;&quot;,devi=
ceCopies);<br>
    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 datawritten =3D 1;<br>
    =C2=A0=C2=A0=C2=A0 }<br>
    <br>
    AFAIUI yes. It will write the value that corresponds to the
    *pdftopdfJCLCopies attribute which has the number of copies as
    specifier string, i.e. something along these lines:<br>
    <br>
    *pdftopdfJCLCopies 1: &quot;@PJL SET COPIES=3D1&quot;<br>
    *pdftopdfJCLCopies 2: &quot;@PJL SET COPIES=3D2&quot;<br>
    *pdftopdfJCLCopies 3: &quot;@PJL SET COPIES=3D3&quot;<span class=3D""><=
br>
    <br></span></div></blockquote><div><br></div><div>Does it mean that I n=
eed to have 300 lines of this if a customer wants to be able to print up to=
 300 copies? Is there a better way to specify a keyword for arbitrary numbe=
r of copies?</div><div><br></div><div>Also, it doesn&#39;t really work as e=
xpected. If I add these lines to the PPD, &quot;@PJL SET COPIES=3D3&quot; i=
s added after @PJL ENTER LANGUAGE =3D PDF statement and becomes a part of P=
DF (and ignored). Why is it added there?</div><div><br></div><div>if it wer=
e a UI element, I&#39;d add OrderDependency keyword, but it is not and the =
keyword doesn&#39;t work.=C2=A0</div><div><br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-l=
eft-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex"><div b=
gcolor=3D"#FFFFFF" text=3D"#000000"><span class=3D"">
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>If pdftopdf is capable of inserting a comment about the
          number of copies requested, it should be able to insert this
          command as well, what do you think?</div>
      </div>
    </blockquote>
    <br></span>
    It obviously is able. And *Copies seems to be usual way to handle
    Hardware-Copies for PS based printers. pdftopdf (and imagetopdf !)
    allows you to use this mechanism even for PDF based printers, too.<br>
    I&#39;m not sure about the &quot;Number of Copies&quot; dialog you were=
 talking
    about ... I have not tried it myself ... but if you are correct, it
    will either also appear for PS based PPDs which allow hardware
    copies, or they are somehow able to reuse the existing GUI field for
    that (you might have to ask someone more familiar with PPDs about
    that) ... or your printing dialog fails to handle the *Copies
    attribute in a sensible way?<br>
    <br>
    Either way, pdftopdf has little to do with your issue.</div></blockquot=
e><div><br></div><div>I would disagree here. in a PDF to PS workflow hardwa=
re copies code is added by the last filter, pstops. Now that pdftopdf is th=
e only filter in the chain, it needs to insert hardware copies code into th=
e chain, otherwise this whole idea of the pure PDF workflow is futile: ever=
yone would be forced to use cupsManualCopies and won&#39;t be able to use s=
tapling or punching correctly, for example.=C2=A0</div><div>=C2=A0</div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padd=
ing-left:1ex"><div bgcolor=3D"#FFFFFF" text=3D"#000000"> imagetopdf
    uses the same code. Foomatic and PS based PPDs work similarly. <br>
    That&#39;s not to say that PPDs don&#39;t have shortcomings; in fact, C=
UPS
    has deprecated it&#39;s PPD API in favor of the Job Ticket API (JTAPI),
    which, AFAIUI, has IPP options (Mike also mentioned them) for hw
    copy generation.<span class=3D""><font color=3D"#888888"><br>
    <br>
    =C2=A0 Tobias</font></span><div><div class=3D"h5"><br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div class=3D"gmail_extra">2014-10-08 10:40 GMT-04:00 Tobias
        Hoffmann <span dir=3D"ltr">&lt;<a href=3D"mailto:lprint-list@thax.h=
ardliners.org" target=3D"_blank">lprint-list@thax.hardliners.org</a>&gt;</s=
pan>:<br>
        <div class=3D"gmail_quote">
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-sty=
le:solid;padding-left:1ex">
            <div bgcolor=3D"#FFFFFF" text=3D"#000000"><span> On
                08/10/14 11:57, Till Kamppeter wrote:
                <blockquote type=3D"cite">
                  <pre>On 10/07/2014 11:45 PM, Tobias Hoffmann wrote:
</pre>
                  <blockquote type=3D"cite">
                    <pre>I&#39;m not sure what exactly is happening in your=
 setup.
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
                <br>
              </span> The code basically comes from the old pdftopdf
              implementation by Koji Otani. The same code is also
              present in imagetopdf.c .<br>
              There is also a section in cups-filter&#39;s README about
              that:<br>
              <br>
              <blockquote type=3D"cite">if (Copies option is specified in
                the PPD file) {<br>
                =C2=A0=C2=A0=C2=A0 mark Number of copies specified<br>
                } else if (pdftopdfJCLCopies is specified in the PPD
                file) {<br>
                =C2=A0=C2=A0=C2=A0 output JCL specified with JCLCopies<br>
                }<br>
                <br>
                for (each marked options) {<br>
                =C2=A0=C2=A0=C2=A0 if (pdftopdfJCL&lt;marked option&#39;s n=
ame&gt; is
                specified in the PPD file) {<br>
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 output it&#39;s =
value as a JCL<br>
                =C2=A0=C2=A0=C2=A0 } else if (pdftopdfJCLBegin attributes i=
s specified
                in the PPD file) {<br>
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 output &quot;&lt=
;option&#39;s name&gt;=3D&lt;marked
                choice&gt;;&quot; as a JCL<br>
                =C2=A0=C2=A0=C2=A0 }<br>
                }<br>
              </blockquote>
              <br>
              AFAIUI Koji had to &quot;invent&quot; new pdftopdfJCL* keywor=
ds for
              the PJL + PDF case;<br>
              and for some reason ppdEmitJCL could not be used for them,
              so he added emitJCLOptions.<span><br>
                <br>
                <br>
                <blockquote type=3D"cite">
                  <pre>I can even comment out

emitJCLOptions(stdout,ppd,param.deviceCopies);

and the output stays the same.</pre>
                </blockquote>
                <br>
              </span> Probably because the PPD neither contain *Copies
              nor *pdftopdfJCLCopies?<span><br>
                <br>
                <blockquote type=3D"cite">
                  <pre>What I want to have is that if param.deviceCopies is=
 not 1 (=3D multiple
hardware copies) that

@PJL SET COPIES=3D...

is added.</pre>
                </blockquote>
                <br>
              </span> Have you tried adding something along this lines:
              <br>
              <pre style=3D"color:rgb(0,0,0);font-style:normal;font-variant=
:normal;font-weight:normal;letter-spacing:normal;line-height:normal;text-al=
ign:start;text-indent:0px;text-transform:none;word-spacing:0px;word-wrap:br=
eak-word;white-space:pre-wrap">*OpenUI *Copies/Number of Copies: PickOne
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
              A real PPD also has to take other settings into account
              here (e.g. collate, staple, ...), if the printer-hardware
              does not support all combinations /=C2=A0 has staple-limits /
              ...<span><br>
                <br>
                <blockquote type=3D"cite">
                  <pre>Currently all works fine for PPDs with &quot;*cupsMa=
nualCopies: True&quot; as
pdftopdf generates software copies then. Without this entry pdftopdf
sends only one copy of the PDF content and adds only a comment for
subsequent filters. It does not add anything to generate the copies on a
PDF printer.</pre>
                </blockquote>
              </span> The PPD author (printer manufacturer, ...) chooses
              to EITHER set &quot;*cupsManualCopes: True&quot; OR add *Copi=
es /
              *pdftopdfJCLCopies / ... (i.e. whatever is required to
              generate correct JCL output for their printer model).<span><f=
ont color=3D"#888888"><br>
                  <br>
                  =C2=A0 Tobias<br>
                  <br>
                  <br>
                  <br>
                </font></span></div>
          </blockquote>
        </div>
        <br>
        <br clear=3D"all">
        <div><br>
        </div>
        -- <br>
        <div dir=3D"ltr">-Alex</div>
      </div>
    </blockquote>
    <br>
  </div></div></div>

</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div dir=3D"=
ltr">-Alex</div>
</div></div>

--20cf303b4407031dd5050515dd14--
