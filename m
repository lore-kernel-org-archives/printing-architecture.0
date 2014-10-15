Return-Path: <lprint-list@thax.hardliners.org>
Message-ID: <543E5168.9010108@thax.hardliners.org>
Date: Wed, 15 Oct 2014 12:50:16 +0200
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
	<5435A44F.7080504@thax.hardliners.org>
	<CA+3RNfiAna118VGc=zLoRsyNTc5oGcynhMNy3UJRG7dNrHmWWw@mail.gmail.com>
	<54383C34.6020108@thax.hardliners.org> <5438486E.9050201@gmail.com>
	<CA+3RNfgZtn64UZZEX5uYRK=CyDEoS3Ly+gvkQCL20TMys6XKnA@mail.gmail.com>
	<543D9108.6050307@thax.hardliners.org>
In-Reply-To: <543D9108.6050307@thax.hardliners.org>
Content-Type: multipart/alternative;
	boundary="------------080108070909010402040202"
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
--------------080108070909010402040202
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 14/10/14 23:09, Tobias Hoffmann wrote:
> On 14/10/14 21:17, Alex Korobkin wrote:
>> Shouldn't pdftopdf just insert PJL SET COPIES=X without any related 
>> code in PPD? PJL SET COPIES seems to be a standard PJL command.
>

Hmm, the biggest problem seems to be that everything from ppd->jcl_begin 
(i.e. for PCL: "\033%-12345X@") until ppd->jcl_ps (set to 
*JCLToPDFInterpreter in pdftopdf, i.e."ENTER LANGUAGE") is written by 
cups's ppdEmitJCL() function.
As far as I understand it, this are the options:

a) stick to what cups provides in terms of PPD settings (and probably 
move the Copies replacement code before ppdEmitJCL),

b) patch cups, namely ppdEmitJCL() in emit.c.
   As cups does detect PCL as JCL here and sets "JOB NAME", "DISPLAY" or 
"RDYMSG DISPLAY" that would be the best place to add PJL SET COPIES.
   But this will affect all PPDs with JCL, e.g. when pure PostScript is 
used... and, in case the patch is not accepted upstream, cups-filters 
has to ship it(?)

c) do not use ppdEmitJCL at all. We would loose e.g. JOB NAME, but have 
better control over the output...
   If you don't set *JCLToPDFInterpreter, and use *pdftopdfJCLBegin, 
together with more pdftopdfJCL* keywords, this could work. The current 
emitJCLOptions implementation does not insert newlines, though. I'm not 
sure if the PPD value could instead contain it, instead...
   I think Koji Otani only used the pdftopdfJCL* insertion to pass stuff 
to pdftoopvp, in a format that only used one line, separated by ";".
   One of his examples is:
>   *OpenUI *PageSize/Page Size: PickOne
>   *DefaultPageSize: A4
>   *PageSize A4/A4:
>   *pdftopdfJCLPageSize A4/A4: "PS=A4;"
>   *PageSize Letter/US Letter:
>   *pdftopdfJCLPageSize Letter/US Letter: "PS=LT;"
>   *CloseUI: *PageSize
   I do not understand his original design fully, yet.

d) We can try a hacky workaround: In pdftopdf_jcl.c, emitPreamble(), set 
ppd->jcl_ps to an empty string. Then ppdEmitJCL will not skip JCL 
processing all together, but it also will not write ENTER LANGUAGE at 
the end. But it will result in an empty line. Would that be a problem in 
PCL? After that we can write SET COPIES and ENTER LANGUAGE ourselves.
Or something like ppd->jcl_ps=concat("...SET COPIES...\n", 
JCLToPDFInterpreter->value) ?

And yes, Till basically has to decide how to proceed.

   Tobias

--------------080108070909010402040202
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    On 14/10/14 23:09, Tobias Hoffmann wrote:
    <blockquote cite="mid:543D9108.6050307@thax.hardliners.org"
      type="cite">
      <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
      On 14/10/14 21:17, Alex Korobkin wrote:
      <blockquote
cite="mid:CA+3RNfgZtn64UZZEX5uYRK=CyDEoS3Ly+gvkQCL20TMys6XKnA@mail.gmail.com"
        type="cite">
        <div dir="ltr">
          <div class="gmail_extra">
            <div class="gmail_quote"> </div>
            Shouldn't pdftopdf just insert PJL SET COPIES=X without any
            related code in PPD? PJL SET COPIES seems to be a standard
            PJL command. <br>
          </div>
        </div>
      </blockquote>
      <br>
    </blockquote>
    <br>
    Hmm, the biggest problem seems to be that everything from
    ppd-&gt;jcl_begin (i.e. for PCL: "\033%-12345X@") until
    ppd-&gt;jcl_ps (set to *JCLToPDFInterpreter in pdftopdf, i.e."ENTER
    LANGUAGE") is written by cups's ppdEmitJCL() function.<br>
    As far as I understand it, this are the options:<br>
    <br>
    a) stick to what cups provides in terms of PPD settings (and
    probably move the Copies replacement code before ppdEmitJCL),<br>
    <br>
    b) patch cups, namely ppdEmitJCL() in emit.c.<br>
      As cups does detect PCL as JCL here and sets "JOB NAME", "DISPLAY"
    or "RDYMSG DISPLAY" that would be the best place to add PJL SET
    COPIES.<br>
      But this will affect all PPDs with JCL, e.g. when pure PostScript
    is used... and, in case the patch is not accepted upstream,
    cups-filters has to ship it(?)<br>
    <br>
    c) do not use ppdEmitJCL at all. We would loose e.g. JOB NAME, but
    have better control over the output...<br>
      If you don't set *JCLToPDFInterpreter, and use *pdftopdfJCLBegin,
    together with more pdftopdfJCL* keywords, this could work. The
    current emitJCLOptions implementation does not insert newlines,
    though. I'm not sure if the PPD value could instead contain it,
    instead...<br>
      I think Koji Otani only used the pdftopdfJCL* insertion to pass
    stuff to pdftoopvp, in a format that only used one line, separated
    by ";".<br>
      One of his examples is:<br>
    <blockquote type="cite">  *OpenUI *PageSize/Page Size: PickOne<br>
        *DefaultPageSize: A4<br>
        *PageSize A4/A4:<br>
        *pdftopdfJCLPageSize A4/A4: "PS=A4;"<br>
        *PageSize Letter/US Letter:<br>
        *pdftopdfJCLPageSize Letter/US Letter: "PS=LT;"<br>
        *CloseUI: *PageSize<br>
    </blockquote>
      I do not understand his original design fully, yet.<br>
    <br>
    d) We can try a hacky workaround: In pdftopdf_jcl.c, emitPreamble(),
    set ppd-&gt;jcl_ps to an empty string. Then ppdEmitJCL will not skip
    JCL processing all together, but it also will not write ENTER
    LANGUAGE at the end. But it will result in an empty line. Would that
    be a problem in PCL? After that we can write SET COPIES and ENTER
    LANGUAGE ourselves. <br>
    Or something like ppd-&gt;jcl_ps=concat("...SET COPIES...\n",
    JCLToPDFInterpreter-&gt;value) ?<br>
      <br>
    And yes, Till basically has to decide how to proceed. <br>
    <br>
      Tobias<br>
  </body>
</html>

--------------080108070909010402040202--
