Return-Path: <lprint-list@thax.hardliners.org>
Message-ID: <5435A44F.7080504@thax.hardliners.org>
Date: Wed, 08 Oct 2014 22:53:35 +0200
From: Tobias Hoffmann <lprint-list@thax.hardliners.org>
MIME-Version: 1.0
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
In-Reply-To: <CA+3RNfjSMOmxf89XPW2vMf2SBXo7aJE+CREG99ACd0Kz0LQ3tQ@mail.gmail.com>
Content-Type: multipart/alternative;
	boundary="------------090306050704040109090009"
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
To: Alex Korobkin <korobkin+op@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Till Kamppeter <till.kamppeter@gmail.com>

This is a multi-part message in MIME format.
--------------090306050704040109090009
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 08/10/14 21:41, Alex Korobkin wrote:
> Making a "Number of Copies" dialog doesn't seem to be a great idea, 
> because users will never notice that. They will keep setting the 
> number of copies in the usual place in GUI.
I don't know exactly how PPDs work.
I just found out that Foomatic-based PPDs make Hardware-Copies work 
similar to what I wrote; this might have to do with the ability of PPDs 
to specify constraints like "Hardware copies only work when Collate is 
set to XY".

Also I've seen
*JCLOpenUI
*JCL....

instead of just *OpenUI. Maybe this also makes a difference.

> What is this pdftopdfJCLCopies keyword, will it allow to inject PJL 
> SET COPIES command into the job?
     if ((attr = ppdFindAttr(ppd,"pdftopdfJCLCopies",buf)) != NULL) {
       fputs(attr->value,fp);
       datawritten = 1;
     } else if (withJCL) {
       fprintf(fp,"Copies=%d;",deviceCopies);
       datawritten = 1;
     }

AFAIUI yes. It will write the value that corresponds to the 
*pdftopdfJCLCopies attribute which has the number of copies as specifier 
string, i.e. something along these lines:

*pdftopdfJCLCopies 1: "@PJL SET COPIES=1"
*pdftopdfJCLCopies 2: "@PJL SET COPIES=2"
*pdftopdfJCLCopies 3: "@PJL SET COPIES=3"

> If pdftopdf is capable of inserting a comment about the number of 
> copies requested, it should be able to insert this command as well, 
> what do you think?

It obviously is able. And *Copies seems to be usual way to handle 
Hardware-Copies for PS based printers. pdftopdf (and imagetopdf !) 
allows you to use this mechanism even for PDF based printers, too.
I'm not sure about the "Number of Copies" dialog you were talking about 
... I have not tried it myself ... but if you are correct, it will 
either also appear for PS based PPDs which allow hardware copies, or 
they are somehow able to reuse the existing GUI field for that (you 
might have to ask someone more familiar with PPDs about that) ... or 
your printing dialog fails to handle the *Copies attribute in a sensible 
way?

Either way, pdftopdf has little to do with your issue. imagetopdf uses 
the same code. Foomatic and PS based PPDs work similarly.
That's not to say that PPDs don't have shortcomings; in fact, CUPS has 
deprecated it's PPD API in favor of the Job Ticket API (JTAPI), which, 
AFAIUI, has IPP options (Mike also mentioned them) for hw copy generation.

   Tobias


> 2014-10-08 10:40 GMT-04:00 Tobias Hoffmann 
> <lprint-list@thax.hardliners.org 
> <mailto:lprint-list@thax.hardliners.org>>:
>
>     On 08/10/14 11:57, Till Kamppeter wrote:
>>     On 10/07/2014 11:45 PM, Tobias Hoffmann wrote:
>>>     I'm not sure what exactly is happening in your setup.
>>>     Maybe your PPD is missing something (- and I'm not an expert for PPD/PJL)?
>>>     Maybe you don't have a recent cups-filters (>= 1.0.34)?
>>>     Maybe you're hitting some edge-cases that are not handled correctly in
>>>     the current code?
>>>
>>>     AFAIK no-one else has reported a problem with PJL in a pure pdf
>>>     workflow, and I can't find an obvious flaw in the code which deals with
>>>     PJL in pdftopdf. The code is also basically copied over from the old
>>>     pdftopdf implementation (cups-filters<=1.0.20); if your PPD does hw
>>>     copy with the old implementation, but not with>=1.0.34, I will probably
>>>     be able to fix that.
>>>
>>     Tobias, do you know for what the call
>>
>>     emitJCLOptions(stdout,ppd,param.deviceCopies);
>>
>>     in the emitPreamble() function in pdftopdf_jcl.cc is good for? For me it
>>     looks like that it serves for inserting JCL options, but inserting JCL
>>     options is already done by
>>
>>     ppdEmitJCL(ppd,stdout,param.jobId,param.user,param.title);
>
>     The code basically comes from the old pdftopdf implementation by
>     Koji Otani. The same code is also present in imagetopdf.c .
>     There is also a section in cups-filter's README about that:
>
>>     if (Copies option is specified in the PPD file) {
>>         mark Number of copies specified
>>     } else if (pdftopdfJCLCopies is specified in the PPD file) {
>>         output JCL specified with JCLCopies
>>     }
>>
>>     for (each marked options) {
>>         if (pdftopdfJCL<marked option's name> is specified in the PPD
>>     file) {
>>             output it's value as a JCL
>>         } else if (pdftopdfJCLBegin attributes is specified in the
>>     PPD file) {
>>             output "<option's name>=<marked choice>;" as a JCL
>>         }
>>     }
>
>     AFAIUI Koji had to "invent" new pdftopdfJCL* keywords for the PJL
>     + PDF case;
>     and for some reason ppdEmitJCL could not be used for them, so he
>     added emitJCLOptions.
>
>
>>     I can even comment out
>>
>>     emitJCLOptions(stdout,ppd,param.deviceCopies);
>>
>>     and the output stays the same.
>
>     Probably because the PPD neither contain *Copies nor
>     *pdftopdfJCLCopies?
>
>>     What I want to have is that if param.deviceCopies is not 1 (= multiple
>>     hardware copies) that
>>
>>     @PJL SET COPIES=...
>>
>>     is added.
>
>     Have you tried adding something along this lines:
>
>     *OpenUI *Copies/Number of Copies: PickOne
>     *OrderDependency: 100 AnySetup *Copies
>     *DefaultCopies: 1
>     *Copies 1/1: "@PJL SET COPIES=1"
>     *Copies 2/2: "@PJL SET COPIES=2"
>     *Copies 3/3: "@PJL SET COPIES=3"
>     *Copies 4/4: "@PJL SET COPIES=4"
>     ...
>     *CloseUI: *Copies
>
>     similar to how Foomatic-based work?
>
>     A real PPD also has to take other settings into account here (e.g.
>     collate, staple, ...), if the printer-hardware does not support
>     all combinations /  has staple-limits / ...
>
>>     Currently all works fine for PPDs with "*cupsManualCopies: True" as
>>     pdftopdf generates software copies then. Without this entry pdftopdf
>>     sends only one copy of the PDF content and adds only a comment for
>>     subsequent filters. It does not add anything to generate the copies on a
>>     PDF printer.
>     The PPD author (printer manufacturer, ...) chooses to EITHER set
>     "*cupsManualCopes: True" OR add *Copies / *pdftopdfJCLCopies / ...
>     (i.e. whatever is required to generate correct JCL output for
>     their printer model).
>
>       Tobias
>
>
>
>
>
>
> -- 
> -Alex


--------------090306050704040109090009
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    On 08/10/14 21:41, Alex Korobkin wrote:
    <blockquote
cite="mid:CA+3RNfjSMOmxf89XPW2vMf2SBXo7aJE+CREG99ACd0Kz0LQ3tQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">Making a "Number of Copies" dialog doesn't seem to
        be a great idea, because users will never notice that. They will
        keep setting the number of copies in the usual place in GUI. <br>
      </div>
    </blockquote>
    I don't know exactly how PPDs work.<br>
    I just found out that Foomatic-based PPDs make Hardware-Copies work
    similar to what I wrote; this might have to do with the ability of
    PPDs to specify constraints like "Hardware copies only work when
    Collate is set to XY".<br>
    <br>
    Also I've seen  <br>
    *JCLOpenUI<br>
    *JCL....<br>
    <br>
    instead of just *OpenUI. Maybe this also makes a difference.<br>
    <br>
    <blockquote
cite="mid:CA+3RNfjSMOmxf89XPW2vMf2SBXo7aJE+CREG99ACd0Kz0LQ3tQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>What is this pdftopdfJCLCopies keyword, will it allow to
          inject PJL SET COPIES command into the job?</div>
      </div>
    </blockquote>
        if ((attr = ppdFindAttr(ppd,"pdftopdfJCLCopies",buf)) != NULL) {<br>
          fputs(attr-&gt;value,fp);<br>
          datawritten = 1;<br>
        } else if (withJCL) {<br>
          fprintf(fp,"Copies=%d;",deviceCopies);<br>
          datawritten = 1;<br>
        }<br>
    <br>
    AFAIUI yes. It will write the value that corresponds to the
    *pdftopdfJCLCopies attribute which has the number of copies as
    specifier string, i.e. something along these lines:<br>
    <br>
    *pdftopdfJCLCopies 1: "@PJL SET COPIES=1"<br>
    *pdftopdfJCLCopies 2: "@PJL SET COPIES=2"<br>
    *pdftopdfJCLCopies 3: "@PJL SET COPIES=3"<br>
    <br>
    <blockquote
cite="mid:CA+3RNfjSMOmxf89XPW2vMf2SBXo7aJE+CREG99ACd0Kz0LQ3tQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>If pdftopdf is capable of inserting a comment about the
          number of copies requested, it should be able to insert this
          command as well, what do you think?</div>
      </div>
    </blockquote>
    <br>
    It obviously is able. And *Copies seems to be usual way to handle
    Hardware-Copies for PS based printers. pdftopdf (and imagetopdf !)
    allows you to use this mechanism even for PDF based printers, too.<br>
    I'm not sure about the "Number of Copies" dialog you were talking
    about ... I have not tried it myself ... but if you are correct, it
    will either also appear for PS based PPDs which allow hardware
    copies, or they are somehow able to reuse the existing GUI field for
    that (you might have to ask someone more familiar with PPDs about
    that) ... or your printing dialog fails to handle the *Copies
    attribute in a sensible way?<br>
    <br>
    Either way, pdftopdf has little to do with your issue. imagetopdf
    uses the same code. Foomatic and PS based PPDs work similarly. <br>
    That's not to say that PPDs don't have shortcomings; in fact, CUPS
    has deprecated it's PPD API in favor of the Job Ticket API (JTAPI),
    which, AFAIUI, has IPP options (Mike also mentioned them) for hw
    copy generation.<br>
    <br>
      Tobias<br>
    <br>
    <br>
    <blockquote
cite="mid:CA+3RNfjSMOmxf89XPW2vMf2SBXo7aJE+CREG99ACd0Kz0LQ3tQ@mail.gmail.com"
      type="cite">
      <div class="gmail_extra">2014-10-08 10:40 GMT-04:00 Tobias
        Hoffmann <span dir="ltr">&lt;<a moz-do-not-send="true"
            href="mailto:lprint-list@thax.hardliners.org"
            target="_blank">lprint-list@thax.hardliners.org</a>&gt;</span>:<br>
        <div class="gmail_quote">
          <blockquote class="gmail_quote" style="margin:0 0 0
            .8ex;border-left:1px #ccc solid;padding-left:1ex">
            <div bgcolor="#FFFFFF" text="#000000"><span class=""> On
                08/10/14 11:57, Till Kamppeter wrote:
                <blockquote type="cite">
                  <pre>On 10/07/2014 11:45 PM, Tobias Hoffmann wrote:
</pre>
                  <blockquote type="cite">
                    <pre>I'm not sure what exactly is happening in your setup.
Maybe your PPD is missing something (- and I'm not an expert for PPD/PJL)?
Maybe you don't have a recent cups-filters (&gt;= 1.0.34)?
Maybe you're hitting some edge-cases that are not handled correctly in
the current code?

AFAIK no-one else has reported a problem with PJL in a pure pdf
workflow, and I can't find an obvious flaw in the code which deals with
PJL in pdftopdf. The code is also basically copied over from the old
pdftopdf implementation (cups-filters &lt;=1.0.20); if your PPD does hw
copy with the old implementation, but not with &gt;=1.0.34, I will probably
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
              There is also a section in cups-filter's README about
              that:<br>
              <br>
              <blockquote type="cite">if (Copies option is specified in
                the PPD file) {<br>
                    mark Number of copies specified<br>
                } else if (pdftopdfJCLCopies is specified in the PPD
                file) {<br>
                    output JCL specified with JCLCopies<br>
                }<br>
                <br>
                for (each marked options) {<br>
                    if (pdftopdfJCL&lt;marked option's name&gt; is
                specified in the PPD file) {<br>
                        output it's value as a JCL<br>
                    } else if (pdftopdfJCLBegin attributes is specified
                in the PPD file) {<br>
                        output "&lt;option's name&gt;=&lt;marked
                choice&gt;;" as a JCL<br>
                    }<br>
                }<br>
              </blockquote>
              <br>
              AFAIUI Koji had to "invent" new pdftopdfJCL* keywords for
              the PJL + PDF case;<br>
              and for some reason ppdEmitJCL could not be used for them,
              so he added emitJCLOptions.<span class=""><br>
                <br>
                <br>
                <blockquote type="cite">
                  <pre>I can even comment out

emitJCLOptions(stdout,ppd,param.deviceCopies);

and the output stays the same.</pre>
                </blockquote>
                <br>
              </span> Probably because the PPD neither contain *Copies
              nor *pdftopdfJCLCopies?<span class=""><br>
                <br>
                <blockquote type="cite">
                  <pre>What I want to have is that if param.deviceCopies is not 1 (= multiple
hardware copies) that

@PJL SET COPIES=...

is added.</pre>
                </blockquote>
                <br>
              </span> Have you tried adding something along this lines:
              <br>
              <pre style="color:rgb(0,0,0);font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:normal;text-align:start;text-indent:0px;text-transform:none;word-spacing:0px;word-wrap:break-word;white-space:pre-wrap">*OpenUI *Copies/Number of Copies: PickOne
*OrderDependency: 100 AnySetup *Copies
*DefaultCopies: 1
*Copies 1/1: "@PJL SET COPIES=1"
*Copies 2/2: "@PJL SET COPIES=2"
*Copies 3/3: "@PJL SET COPIES=3"
*Copies 4/4: "@PJL SET COPIES=4"
...
*CloseUI: *Copies</pre>
              similar to how Foomatic-based work?<br>
              <br>
              A real PPD also has to take other settings into account
              here (e.g. collate, staple, ...), if the printer-hardware
              does not support all combinations /  has staple-limits /
              ...<span class=""><br>
                <br>
                <blockquote type="cite">
                  <pre>Currently all works fine for PPDs with "*cupsManualCopies: True" as
pdftopdf generates software copies then. Without this entry pdftopdf
sends only one copy of the PDF content and adds only a comment for
subsequent filters. It does not add anything to generate the copies on a
PDF printer.</pre>
                </blockquote>
              </span> The PPD author (printer manufacturer, ...) chooses
              to EITHER set "*cupsManualCopes: True" OR add *Copies /
              *pdftopdfJCLCopies / ... (i.e. whatever is required to
              generate correct JCL output for their printer model).<span
                class="HOEnZb"><font color="#888888"><br>
                  <br>
                    Tobias<br>
                  <br>
                  <br>
                  <br>
                </font></span></div>
          </blockquote>
        </div>
        <br>
        <br clear="all">
        <div><br>
        </div>
        -- <br>
        <div dir="ltr">-Alex</div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------090306050704040109090009--
