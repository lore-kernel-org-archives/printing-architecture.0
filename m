Return-Path: <blueroofmusic@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hhU/a8NwNFSDJOfykhv7FYlWUwUll9LhiM55wR/J7lE=;
 b=F4x6tfK86gEeXOalk1gLlUrAU5yvj1VjmC+GzQ8jevZ4jGhgBrU+LNWOAG2NSfJ1sI
 HORU5j5TQ3Zj84wvPh1xQTkal3tsoBT5Zlc9jF3RcK4RIoY/1IjypAT2fZB14dxkXerD
 cjRR38LqKWvm6iR1RYHK5lcPEu0TyiL41fzOdLobCj2YOowApbK+qLMXTDMAmC1qSVn4
 mFe4tk0KhoqC1mFCaKh0hs35rHa9X6UKoh1UJMjiI+ny2zdEGolABVqlqcQQpqyLM867
 lT+bCAmw8PWLDtlS57UzmaSDMpTF3rYnhZFIE4oWnKGsYHetC+OONvxG3ZJGZT5AzRkC
 wN7Q==
MIME-Version: 1.0
References: <f46bf16f-d469-cd4e-698e-525481cc98f6@redhat.com>
In-Reply-To: <f46bf16f-d469-cd4e-698e-525481cc98f6@redhat.com>
From: Ira McDonald <blueroofmusic@gmail.com>
Date: Wed, 21 Oct 2020 10:40:31 -0400
Message-ID: <CAN40gStwoxTy0xRz75SUHW_ofuBsnK0dBFrBv1gYGbVeqLsk1w@mail.gmail.com>
Content-Type: multipart/alternative; boundary="0000000000000bc12c05b22f552a"
Subject: Re: [Printing-architecture] IPP Validate-Job operation and its
 implementation in CUPS
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Zdenek Dohnal <zdohnal@redhat.com>, Ira McDonald <blueroofmusic@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, "The CUPS developer list." <cups-devel@cups.org>, "The CUPS user discussion list." <cups@cups.org>

--0000000000000bc12c05b22f552a
Content-Type: text/plain; charset="UTF-8"

Hi,

Commenting just on one point in your note.

Validate-Job has been REQUIRED for all IPP implementations since
original IPP/1.1 (RFC 2911) and is REQUIRED in IETF Standard IPP/1.1
(RFC 8011).  It is NOT optional to support.

Cheers,
- Ira (co-chair of IPP WG)

*Ira McDonald (Musician / Software Architect)*

*Chair - SAE Trust Anchors and Authentication TF*
*Co-Chair - TCG Trusted Mobility Solutions WG*

*Co-Chair - TCG Metadata Access Protocol SG*








*Chair - Linux Foundation Open Printing WGSecretary - IEEE-ISTO Printer
Working GroupCo-Chair - IEEE-ISTO PWG Internet Printing Protocol WGIETF
Designated Expert - IPP & Printer MIBBlue Roof Music / High North
Inchttp://sites.google.com/site/blueroofmusic
<http://sites.google.com/site/blueroofmusic>http://sites.google.com/site/highnorthinc
<http://sites.google.com/site/highnorthinc>mailto: blueroofmusic@gmail.com
<blueroofmusic@gmail.com>(permanent) PO Box 221  Grand Marais, MI 49839
906-494-2434*


On Wed, Oct 21, 2020 at 9:19 AM Zdenek Dohnal <zdohnal@redhat.com> wrote:

> Hi all,
>
> one of our RHEL customers hit an issue with IPP Validate-Job operation
> when using Lexmark CX727de printer.
>
> A print job occasionally fails after IPP backend sends IPP Validate-Job
> request to the printer, but the printer only sends TCP ACK packet after
> receiving the request, and doesn't send 'HTTP/1.1 100 Continue' or full
> response. When an user resubmits the job later, the printer sends the
> correct response and the print job ends successfully.
>
> I came to the conclusion it is a printer firmware bug and recommended
> reporting it to printer vendor, because the printer reports it is capable
> of Validate-Job operation (checked via ipptool), but it occasionally fails.
>
> In this email I would like to ask if there can be a way how to work around
> such printer issues within CUPS, which can be aligned with RFC and PWG
> standards, and can be merged into OpenPrinting/cups project.
>
> I have several ideas:
>
> 1) Validate-Job operation is 'only' recommended since IPP 2.0, so the
> backend would have printed only warning if Validate-Job failed and the IPP
> protocol used for communication is 2.0 or newer
>
> 2) configurable retries for Validate-Job operation - this idea came up
> from printer behavior (Validate-Job works after N retries) and from
> knowledge there are already configurable variables in backends via device
> uri
>
> 3) define a specific IPP_STATUS_* enum variable for failing Validate-Job,
> let the backend fail if ipp_status is that variable and let error-policy
> handle the possible retry
>
> Is some of them acceptable to implement it in CUPS?
>
> Thank you in advance for any suggestions!
>
> Have a nice day,
>
>
> Zdenek
>
> --
> Zdenek Dohnal
> Software Engineer
> Red Hat Czech - Brno TPB-C
>
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>

--0000000000000bc12c05b22f552a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>Commenting just on one p=
oint in your note.</div><div><br></div><div>Validate-Job has been REQUIRED =
for all IPP implementations since</div><div>original IPP/1.1 (RFC 2911) and=
 is REQUIRED in IETF Standard IPP/1.1</div><div>(RFC 8011).=C2=A0 It is NOT=
 optional to support.</div><div><br></div><div>Cheers,</div><div>- Ira (co-=
chair of IPP WG)</div><div><br></div><div><div><div dir=3D"ltr" class=3D"gm=
ail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><di=
v dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"=
ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div=
><div dir=3D"ltr"><i><font size=3D"1">Ira McDonald (Musician / Software Arc=
hitect)</font></i></div><div><i><font size=3D"1">Chair - SAE Trust Anchors =
and Authentication TF<br></font></i></div><div dir=3D"ltr"><i><font size=3D=
"1">Co-Chair - TCG Trusted Mobility Solutions WG</font></i></div><div><i><f=
ont size=3D"1">Co-Chair - TCG Metadata Access Protocol SG<br></font></i></d=
iv><div dir=3D"ltr"><i><font size=3D"1">Chair - Linux Foundation Open Print=
ing WG<br>Secretary - IEEE-ISTO Printer Working Group<br>Co-Chair - IEEE-IS=
TO PWG Internet Printing Protocol WG<br>IETF Designated Expert - IPP &amp; =
Printer MIB<br>Blue Roof Music / High North Inc<br><a style=3D"color:rgb(51=
,51,255)" href=3D"http://sites.google.com/site/blueroofmusic" target=3D"_bl=
ank">http://sites.google.com/site/blueroofmusic</a><br><a style=3D"color:rg=
b(102,0,204)" href=3D"http://sites.google.com/site/highnorthinc" target=3D"=
_blank">http://sites.google.com/site/highnorthinc</a><br>mailto: <a href=3D=
"mailto:blueroofmusic@gmail.com" target=3D"_blank">blueroofmusic@gmail.com<=
/a><br>(permanent) PO Box 221=C2=A0 Grand Marais, MI 49839=C2=A0 906-494-24=
34</font></i></div></div></div></div></div></div></div></div></div></div></=
div></div></div></div></div></div></div></div></div><br></div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Oct 2=
1, 2020 at 9:19 AM Zdenek Dohnal &lt;<a href=3D"mailto:zdohnal@redhat.com">=
zdohnal@redhat.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
 =20

   =20
 =20
  <div>
    <p>Hi all,</p>
    <p id=3D"gmail-m_-2676176822346431070comment_text_2">one of our RHEL
      customers hit an issue with IPP Validate-Job operation when using
      Lexmark CX727de printer.</p>
    <p>A print job occasionally fails after IPP
      backend sends IPP Validate-Job request to the printer, but the
      printer only sends TCP ACK packet after receiving the request, and
      doesn&#39;t send &#39;HTTP/1.1 100 Continue&#39; or full response. Wh=
en an
      user resubmits the job later, the printer sends the correct
      response and the print job ends successfully.</p>
    <p>I came to the conclusion it is a printer
      firmware bug and recommended reporting it to printer vendor,
      because the printer reports it is capable of Validate-Job
      operation (checked via ipptool), but it occasionally fails. <br>
    </p>
    <p>In this email I would like to ask if
      there can be a way how to work around such printer issues within
      CUPS, which can be aligned with RFC and PWG standards, and can be
      merged into OpenPrinting/cups project.</p>
    <p>I have several ideas:</p>
    <p>1) Validate-Job operation is &#39;only&#39;
      recommended since IPP 2.0, so the backend would have printed only
      warning if Validate-Job failed and the IPP protocol used for
      communication is 2.0 or newer</p>
    <p>2) configurable retries for Validate-Job
      operation - this idea came up from printer behavior (Validate-Job
      works after N retries) and from knowledge there are already
      configurable variables in backends via device uri</p>
    <p>3) define a specific IPP_STATUS_* enum
      variable for failing Validate-Job, let the backend fail if
      ipp_status is that variable and let error-policy handle the
      possible retry</p>
    <p>Is some of them acceptable to implement
      it in CUPS?</p>
    <p>Thank you in advance for any suggestions!</p>
    <p>Have a nice day,</p>
    <p><br>
    </p>
    <p>Zdenek<br>
    </p>
    <pre cols=3D"72">--=20
Zdenek Dohnal
Software Engineer
Red Hat Czech - Brno TPB-C
</pre>
  </div>

_______________________________________________<br>
Printing-architecture mailing list<br>
<a href=3D"mailto:Printing-architecture@lists.linux-foundation.org" target=
=3D"_blank">Printing-architecture@lists.linux-foundation.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/printing-arch=
itecture" rel=3D"noreferrer" target=3D"_blank">https://lists.linuxfoundatio=
n.org/mailman/listinfo/printing-architecture</a><br>
</blockquote></div>

--0000000000000bc12c05b22f552a--
