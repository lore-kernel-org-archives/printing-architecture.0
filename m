Return-Path: <blueroofmusic@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wYBKsQlYENKJgaYLrOs6TDSJ1OV84Jpo9mUS/Dff+Gg=;
 b=bwcqJaOqf5O8OtC1B46ud0/p8fKFxgqMJqKe4RnYTjqAphio6ZVgbTBw6b+Xn4h6Tv
 hcM2XJ2uYC0Mewh52HZ6VT/d5Hc0L5UbyaKQ25G7NPZis9cXAgAsxkSJJFZ4jskwq9QI
 uhGMCgTCrsuJyrCBUDrwHNGR3YDCNUKGpWHNGruoJhRj+UJ1FoKIe7SfOn3sMkSOz3YY
 /KG86trWHZQ6lyV2N6BFB4MDvFk4AUNNKy22Fq4fCZt5I91y9Rymeu93nsDns8O+/N8+
 p8GcVFuYZuktb1EMChQHcDf7dfAAiRY2cZmdKxzWc6H/GHXD0PXUqji2q8vk3sOUb/SP
 50zA==
MIME-Version: 1.0
References: <f46bf16f-d469-cd4e-698e-525481cc98f6@redhat.com>
 <90443F3C-FBAE-4CF6-B34B-55887A90F11D@msweet.org>
 <CAN40gSuSTBfPHichG9Qi4fCRyG+DSgdxK1f8Q73c5-FrxvM8_Q@mail.gmail.com>
 <45c31246-2eb2-0dff-142f-4bc91837e6f8@redhat.com>
In-Reply-To: <45c31246-2eb2-0dff-142f-4bc91837e6f8@redhat.com>
From: Ira McDonald <blueroofmusic@gmail.com>
Date: Thu, 22 Oct 2020 06:57:19 -0400
Message-ID: <CAN40gSuzUJpGGx8FEf8rTUONZvTkbD03XnR72GxUUj+CX3C2kg@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000d5b01105b24054ef"
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

--000000000000d5b01105b24054ef
Content-Type: text/plain; charset="UTF-8"

Hi Zdenek,

A major update of IPP/2.0 is one of the primary projects for 2021 for the
IPP WG,
to align with the major revisions of Driverless, Enterprise, and Production.

We hope to move away from long internal lists of attributes and operations
and
instead move to a higher-level of named specs.

Cheers,
- Ira

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


On Thu, Oct 22, 2020 at 2:08 AM Zdenek Dohnal <zdohnal@redhat.com> wrote:

> Hi Ira,
>
> thanks for the heads-up! I only checked IPP 2.0 standard and didn't follow
> documents created later, which is a mistake...
>
> Zdenek
> On 10/22/20 2:48 AM, Ira McDonald wrote:
>
> Hi,
>
> Note that IPP/2.0 reducing Validate-Job from REQUIRED is a known technical
> error.
>
> IPP/2.0 (or any other later IPP spec) CANNOT reduce any REQUIRED operation
> conformance from IETF Standard IPP/1.1 (STD92/RFC 8010/RFC 8011).
>
> Cheers,
> - Ira
>
> *Ira McDonald (Musician / Software Architect)*
>
> *Chair - SAE Trust Anchors and Authentication TF *
> *Co-Chair - TCG Trusted Mobility Solutions WG*
>
> *Co-Chair - TCG Metadata Access Protocol SG *
>
>
>
>
>
>
>
>
> *Chair - Linux Foundation Open Printing WG Secretary - IEEE-ISTO Printer
> Working Group Co-Chair - IEEE-ISTO PWG Internet Printing Protocol WG IETF
> Designated Expert - IPP & Printer MIB Blue Roof Music / High North Inc
> http://sites.google.com/site/blueroofmusic
> <http://sites.google.com/site/blueroofmusic>
> http://sites.google.com/site/highnorthinc
> <http://sites.google.com/site/highnorthinc> mailto: blueroofmusic@gmail.com
> <blueroofmusic@gmail.com> (permanent) PO Box 221  Grand Marais, MI 49839
> 906-494-2434*
>
>
> On Wed, Oct 21, 2020 at 4:49 PM Michael Sweet <msweet@msweet.org> wrote:
>
>> Zdenek,
>>
>> > On Oct 21, 2020, at 9:18 AM, Zdenek Dohnal <zdohnal@redhat.com> wrote:
>> > ...
>> > In this email I would like to ask if there can be a way how to work
>> around such printer issues within CUPS, which can be aligned with RFC and
>> PWG standards, and can be merged into OpenPrinting/cups project.
>>
>> Aside from maybe retrying the Validate-Job request if it fails the first
>> time, I'm not sure
>>
>> > I have several ideas:
>> >
>> > 1) Validate-Job operation is 'only' recommended since IPP 2.0, so the
>> backend would have printed only warning if Validate-Job failed and the IPP
>> protocol used for communication is 2.0 or newer
>>
>> Actually, while Validate-Job was listed as RECOMMENDED in IPP 2.0, IPP
>> Everywhere restores it to REQUIRED, just as STD 92 has required it going
>> all the way back to the IPP/1.0 experimental version.
>>
>> > 2) configurable retries for Validate-Job operation - this idea came up
>> from printer behavior (Validate-Job works after N retries) and from
>> knowledge there are already configurable variables in backends via device
>> uri
>>
>> I'd rather it be automatic - either retry the Validate-Job operation or
>> just move on to printing without validation.
>>
>> > 3) define a specific IPP_STATUS_* enum variable for failing
>> Validate-Job, let the backend fail if ipp_status is that variable and let
>> error-policy handle the possible retry
>>
>> I'm not keen on "supporting" broken behavior.  Usually I've tried to
>> "gracefully degrade" in these situations, which would basically mean option
>> 2 without the retry (just attempt to validate and continue if we don't get
>> a valid response.
>>
>> ________________________
>> Michael Sweet
>>
>>
>>
>> _______________________________________________
>> Printing-architecture mailing list
>> Printing-architecture@lists.linux-foundation.org
>> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>>
> --
> Zdenek Dohnal
> Software Engineer
> Red Hat Czech - Brno TPB-C
>
>

--000000000000d5b01105b24054ef
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Zdenek,</div><div><br></div><div>A major update of=
 IPP/2.0 is one of the primary projects for 2021 for the IPP WG,</div><div>=
to align with the major revisions of Driverless, Enterprise, and Production=
.</div><div><br></div><div>We hope to move away from long internal lists of=
 attributes and operations and</div><div>instead move to a higher-level of =
named specs.<br></div><div><br></div><div>Cheers,</div><div>- Ira</div><div=
><br></div><div><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartm=
ail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div di=
r=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"=
><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><i><font=
 size=3D"1">Ira McDonald (Musician / Software Architect)</font></i></div><d=
iv><i><font size=3D"1">Chair - SAE Trust Anchors and Authentication TF<br><=
/font></i></div><div dir=3D"ltr"><i><font size=3D"1">Co-Chair - TCG Trusted=
 Mobility Solutions WG</font></i></div><div><i><font size=3D"1">Co-Chair - =
TCG Metadata Access Protocol SG<br></font></i></div><div dir=3D"ltr"><i><fo=
nt size=3D"1">Chair - Linux Foundation Open Printing WG<br>Secretary - IEEE=
-ISTO Printer Working Group<br>Co-Chair - IEEE-ISTO PWG Internet Printing P=
rotocol WG<br>IETF Designated Expert - IPP &amp; Printer MIB<br>Blue Roof M=
usic / High North Inc<br><a style=3D"color:rgb(51,51,255)" href=3D"http://s=
ites.google.com/site/blueroofmusic" target=3D"_blank">http://sites.google.c=
om/site/blueroofmusic</a><br><a style=3D"color:rgb(102,0,204)" href=3D"http=
://sites.google.com/site/highnorthinc" target=3D"_blank">http://sites.googl=
e.com/site/highnorthinc</a><br>mailto: <a href=3D"mailto:blueroofmusic@gmai=
l.com" target=3D"_blank">blueroofmusic@gmail.com</a><br>(permanent) PO Box =
221=C2=A0 Grand Marais, MI 49839=C2=A0 906-494-2434</font></i></div></div><=
/div></div></div></div></div></div></div></div></div></div></div></div></di=
v></div></div></div></div><br></div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Thu, Oct 22, 2020 at 2:08 AM Zdenek =
Dohnal &lt;<a href=3D"mailto:zdohnal@redhat.com">zdohnal@redhat.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <p>Hi Ira,</p>
    <p>thanks for the heads-up! I only checked IPP 2.0 standard and
      didn&#39;t follow documents created later, which is a mistake...</p>
    <p>Zdenek<br>
    </p>
    <div>On 10/22/20 2:48 AM, Ira McDonald
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div>Hi,</div>
        <div><br>
        </div>
        <div>Note that IPP/2.0 reducing Validate-Job from REQUIRED is a
          known technical error.</div>
        <div><br>
        </div>
        <div>IPP/2.0 (or any other later IPP spec) CANNOT reduce any
          REQUIRED operation</div>
        <div>conformance from IETF Standard IPP/1.1 (STD92/RFC 8010/RFC
          8011).</div>
        <div><br>
        </div>
        <div>Cheers,</div>
        <div>- Ira</div>
        <div><br>
        </div>
        <div>
          <div>
            <div dir=3D"ltr">
              <div dir=3D"ltr">
                <div>
                  <div dir=3D"ltr">
                    <div>
                      <div dir=3D"ltr">
                        <div>
                          <div dir=3D"ltr">
                            <div>
                              <div dir=3D"ltr">
                                <div>
                                  <div dir=3D"ltr">
                                    <div>
                                      <div dir=3D"ltr">
                                        <div>
                                          <div dir=3D"ltr">
                                            <div>
                                              <div dir=3D"ltr"><i><font siz=
e=3D"1">Ira
                                                    McDonald (Musician /
                                                    Software Architect)</fo=
nt></i></div>
                                              <div><i><font size=3D"1">Chai=
r
                                                    - SAE Trust Anchors
                                                    and Authentication
                                                    TF<br>
                                                  </font></i></div>
                                              <div dir=3D"ltr"><i><font siz=
e=3D"1">Co-Chair -
                                                    TCG Trusted Mobility
                                                    Solutions WG</font></i>=
</div>
                                              <div><i><font size=3D"1">Co-C=
hair
                                                    - TCG Metadata
                                                    Access Protocol SG<br>
                                                  </font></i></div>
                                              <div dir=3D"ltr"><i><font siz=
e=3D"1">Chair -
                                                    Linux Foundation
                                                    Open Printing WG<br>
                                                    Secretary -
                                                    IEEE-ISTO Printer
                                                    Working Group<br>
                                                    Co-Chair - IEEE-ISTO
                                                    PWG Internet
                                                    Printing Protocol WG<br=
>
                                                    IETF Designated
                                                    Expert - IPP &amp;
                                                    Printer MIB<br>
                                                    Blue Roof Music /
                                                    High North Inc<br>
                                                    <a style=3D"color:rgb(5=
1,51,255)" href=3D"http://sites.google.com/site/blueroofmusic" target=3D"_b=
lank">http://sites.google.com/site/blueroofmusic</a><br>
                                                    <a style=3D"color:rgb(1=
02,0,204)" href=3D"http://sites.google.com/site/highnorthinc" target=3D"_bl=
ank">http://sites.google.com/site/highnorthinc</a><br>
                                                    mailto: <a href=3D"mail=
to:blueroofmusic@gmail.com" target=3D"_blank">blueroofmusic@gmail.com</a><b=
r>
                                                    (permanent) PO Box
                                                    221=C2=A0 Grand Marais,
                                                    MI 49839=C2=A0
                                                    906-494-2434</font></i>=
</div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Oct 21, 2020 at 4:49
          PM Michael Sweet &lt;<a href=3D"mailto:msweet@msweet.org" target=
=3D"_blank">msweet@msweet.org</a>&gt; wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">Zdenek,<br>
          <br>
          &gt; On Oct 21, 2020, at 9:18 AM, Zdenek Dohnal &lt;<a href=3D"ma=
ilto:zdohnal@redhat.com" target=3D"_blank">zdohnal@redhat.com</a>&gt; wrote=
:<br>
          &gt; ...<br>
          &gt; In this email I would like to ask if there can be a way
          how to work around such printer issues within CUPS, which can
          be aligned with RFC and PWG standards, and can be merged into
          OpenPrinting/cups project.<br>
          <br>
          Aside from maybe retrying the Validate-Job request if it fails
          the first time, I&#39;m not sure <br>
          <br>
          &gt; I have several ideas:<br>
          &gt; <br>
          &gt; 1) Validate-Job operation is &#39;only&#39; recommended sinc=
e IPP
          2.0, so the backend would have printed only warning if
          Validate-Job failed and the IPP protocol used for
          communication is 2.0 or newer<br>
          <br>
          Actually, while Validate-Job was listed as RECOMMENDED in IPP
          2.0, IPP Everywhere restores it to REQUIRED, just as STD 92
          has required it going all the way back to the IPP/1.0
          experimental version.<br>
          <br>
          &gt; 2) configurable retries for Validate-Job operation - this
          idea came up from printer behavior (Validate-Job works after N
          retries) and from knowledge there are already configurable
          variables in backends via device uri<br>
          <br>
          I&#39;d rather it be automatic - either retry the Validate-Job
          operation or just move on to printing without validation.<br>
          <br>
          &gt; 3) define a specific IPP_STATUS_* enum variable for
          failing Validate-Job, let the backend fail if ipp_status is
          that variable and let error-policy handle the possible retry<br>
          <br>
          I&#39;m not keen on &quot;supporting&quot; broken behavior.=C2=A0=
 Usually I&#39;ve
          tried to &quot;gracefully degrade&quot; in these situations, whic=
h would
          basically mean option 2 without the retry (just attempt to
          validate and continue if we don&#39;t get a valid response.<br>
          <br>
          ________________________<br>
          Michael Sweet<br>
          <br>
          <br>
          <br>
          _______________________________________________<br>
          Printing-architecture mailing list<br>
          <a href=3D"mailto:Printing-architecture@lists.linux-foundation.or=
g" target=3D"_blank">Printing-architecture@lists.linux-foundation.org</a><b=
r>
          <a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/pri=
nting-architecture" rel=3D"noreferrer" target=3D"_blank">https://lists.linu=
xfoundation.org/mailman/listinfo/printing-architecture</a><br>
        </blockquote>
      </div>
    </blockquote>
    <pre cols=3D"72">--=20
Zdenek Dohnal
Software Engineer
Red Hat Czech - Brno TPB-C
</pre>
  </div>

</blockquote></div>

--000000000000d5b01105b24054ef--
