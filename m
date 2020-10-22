Return-Path: <zdohnal@redhat.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1603346883;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=1SPkD5RVWDpyooULZlu2nn2E2/4C7iERnQMvBiH1te8=;
 b=bkFIawNQ/0gbAZHzw8iW6wTkvuzIXYp7ZhcCCqvSQfEUncU1v1T7F5tjx2Wv9n/ccNUPkM
 XjwTwZ+nhDsX5laFVMI+BXObKP/jurmawkayczcasGB2cE1tEF2OZSMseeXj4kIp+xIIVG
 S5eIFs5/NfJKHYTWDgZD+T9/4q2IDYA=
References: <f46bf16f-d469-cd4e-698e-525481cc98f6@redhat.com>
 <90443F3C-FBAE-4CF6-B34B-55887A90F11D@msweet.org>
 <CAN40gSuSTBfPHichG9Qi4fCRyG+DSgdxK1f8Q73c5-FrxvM8_Q@mail.gmail.com>
From: Zdenek Dohnal <zdohnal@redhat.com>
Message-ID: <45c31246-2eb2-0dff-142f-4bc91837e6f8@redhat.com>
Date: Thu, 22 Oct 2020 08:07:53 +0200
MIME-Version: 1.0
In-Reply-To: <CAN40gSuSTBfPHichG9Qi4fCRyG+DSgdxK1f8Q73c5-FrxvM8_Q@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="O7NJKgowqbRTut8viYSQSWB6p0tQl7m0I"
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
To: Ira McDonald <blueroofmusic@gmail.com>, Michael Sweet <msweet@msweet.org>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, "The CUPS developer list." <cups-devel@cups.org>, "The CUPS user discussion list." <cups@cups.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--O7NJKgowqbRTut8viYSQSWB6p0tQl7m0I
Content-Type: multipart/mixed; boundary="7OkFmVK5Qs7iLSEcsQrEO9AT0waHPem4t";
 protected-headers="v1"
From: Zdenek Dohnal <zdohnal@redhat.com>
To: Ira McDonald <blueroofmusic@gmail.com>, Michael Sweet <msweet@msweet.org>
Cc: "printing-architecture@lists.linux-foundation.org"
 <printing-architecture@lists.linux-foundation.org>,
 "The CUPS developer list." <cups-devel@cups.org>,
 "The CUPS user discussion list." <cups@cups.org>
Message-ID: <45c31246-2eb2-0dff-142f-4bc91837e6f8@redhat.com>
Subject: Re: [Printing-architecture] IPP Validate-Job operation and its
 implementation in CUPS
References: <f46bf16f-d469-cd4e-698e-525481cc98f6@redhat.com>
 <90443F3C-FBAE-4CF6-B34B-55887A90F11D@msweet.org>
 <CAN40gSuSTBfPHichG9Qi4fCRyG+DSgdxK1f8Q73c5-FrxvM8_Q@mail.gmail.com>
In-Reply-To: <CAN40gSuSTBfPHichG9Qi4fCRyG+DSgdxK1f8Q73c5-FrxvM8_Q@mail.gmail.com>

--7OkFmVK5Qs7iLSEcsQrEO9AT0waHPem4t
Content-Type: multipart/mixed;
 boundary="------------F1A7146CA7DC72BE50A7947B"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------F1A7146CA7DC72BE50A7947B
Content-Type: multipart/alternative;
 boundary="------------CFE0BAB0439F209B88ECD7ED"

--------------CFE0BAB0439F209B88ECD7ED
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Ira,

thanks for the heads-up! I only checked IPP 2.0 standard and didn't
follow documents created later, which is a mistake...

Zdenek

On 10/22/20 2:48 AM, Ira McDonald wrote:
> Hi,
>
> Note that IPP/2.0 reducing Validate-Job from REQUIRED is a known
> technical error.
>
> IPP/2.0 (or any other later IPP spec) CANNOT reduce any REQUIRED operatio=
n
> conformance from IETF Standard IPP/1.1 (STD92/RFC 8010/RFC 8011).
>
> Cheers,
> - Ira
>
> /Ira McDonald (Musician / Software Architect)/
> /Chair - SAE Trust Anchors and Authentication TF
> /
> /Co-Chair - TCG Trusted Mobility Solutions WG/
> /Co-Chair - TCG Metadata Access Protocol SG
> /
> /Chair - Linux Foundation Open Printing WG
> Secretary - IEEE-ISTO Printer Working Group
> Co-Chair - IEEE-ISTO PWG Internet Printing Protocol WG
> IETF Designated Expert - IPP & Printer MIB
> Blue Roof Music / High North Inc
> http://sites.google.com/site/blueroofmusic
> <http://sites.google.com/site/blueroofmusic>
> http://sites.google.com/site/highnorthinc
> <http://sites.google.com/site/highnorthinc>
> mailto: blueroofmusic@gmail.com <mailto:blueroofmusic@gmail.com>
> (permanent) PO Box 221=C2=A0 Grand Marais, MI 49839=C2=A0 906-494-2434/
>
>
> On Wed, Oct 21, 2020 at 4:49 PM Michael Sweet <msweet@msweet.org
> <mailto:msweet@msweet.org>> wrote:
>
>     Zdenek,
>
>     > On Oct 21, 2020, at 9:18 AM, Zdenek Dohnal <zdohnal@redhat.com
>     <mailto:zdohnal@redhat.com>> wrote:
>     > ...
>     > In this email I would like to ask if there can be a way how to
>     work around such printer issues within CUPS, which can be aligned
>     with RFC and PWG standards, and can be merged into
>     OpenPrinting/cups project.
>
>     Aside from maybe retrying the Validate-Job request if it fails the
>     first time, I'm not sure
>
>     > I have several ideas:
>     >
>     > 1) Validate-Job operation is 'only' recommended since IPP 2.0,
>     so the backend would have printed only warning if Validate-Job
>     failed and the IPP protocol used for communication is 2.0 or newer
>
>     Actually, while Validate-Job was listed as RECOMMENDED in IPP 2.0,
>     IPP Everywhere restores it to REQUIRED, just as STD 92 has
>     required it going all the way back to the IPP/1.0 experimental
>     version.
>
>     > 2) configurable retries for Validate-Job operation - this idea
>     came up from printer behavior (Validate-Job works after N retries)
>     and from knowledge there are already configurable variables in
>     backends via device uri
>
>     I'd rather it be automatic - either retry the Validate-Job
>     operation or just move on to printing without validation.
>
>     > 3) define a specific IPP_STATUS_* enum variable for failing
>     Validate-Job, let the backend fail if ipp_status is that variable
>     and let error-policy handle the possible retry
>
>     I'm not keen on "supporting" broken behavior.=C2=A0 Usually I've trie=
d
>     to "gracefully degrade" in these situations, which would basically
>     mean option 2 without the retry (just attempt to validate and
>     continue if we don't get a valid response.
>
>     ________________________
>     Michael Sweet
>
>
>
>     _______________________________________________
>     Printing-architecture mailing list
>     Printing-architecture@lists.linux-foundation.org
>     <mailto:Printing-architecture@lists.linux-foundation.org>
>     https://lists.linuxfoundation.org/mailman/listinfo/printing-architect=
ure
>     <https://lists.linuxfoundation.org/mailman/listinfo/printing-architec=
ture>
>
--=20
Zdenek Dohnal
Software Engineer
Red Hat Czech - Brno TPB-C


--------------CFE0BAB0439F209B88ECD7ED
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8=
">
  </head>
  <body>
    <p>Hi Ira,</p>
    <p>thanks for the heads-up! I only checked IPP 2.0 standard and
      didn't follow documents created later, which is a mistake...</p>
    <p>Zdenek<br>
    </p>
    <div class=3D"moz-cite-prefix">On 10/22/20 2:48 AM, Ira McDonald
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAN40gSuSTBfPHichG9Qi4fCRyG+DSgdxK1f8Q73c5-FrxvM8_Q@mail.gmail.=
com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF=
-8">
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
            <div dir=3D"ltr" class=3D"gmail_signature"
              data-smartmail=3D"gmail_signature">
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
                                              <div dir=3D"ltr"><i><font
                                                    size=3D"1">Ira
                                                    McDonald (Musician /
                                                    Software Architect)</fo=
nt></i></div>
                                              <div><i><font size=3D"1">Chai=
r
                                                    - SAE Trust Anchors
                                                    and Authentication
                                                    TF<br>
                                                  </font></i></div>
                                              <div dir=3D"ltr"><i><font
                                                    size=3D"1">Co-Chair -
                                                    TCG Trusted Mobility
                                                    Solutions WG</font></i>=
</div>
                                              <div><i><font size=3D"1">Co-C=
hair
                                                    - TCG Metadata
                                                    Access Protocol SG<br>
                                                  </font></i></div>
                                              <div dir=3D"ltr"><i><font
                                                    size=3D"1">Chair -
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
                                                    <a
                                                      style=3D"color:rgb(51=
,51,255)"
href=3D"http://sites.google.com/site/blueroofmusic" target=3D"_blank"
                                                      moz-do-not-send=3D"tr=
ue">http://sites.google.com/site/blueroofmusic</a><br>
                                                    <a
                                                      style=3D"color:rgb(10=
2,0,204)"
href=3D"http://sites.google.com/site/highnorthinc" target=3D"_blank"
                                                      moz-do-not-send=3D"tr=
ue">http://sites.google.com/site/highnorthinc</a><br>
                                                    mailto: <a
                                                      href=3D"mailto:bluero=
ofmusic@gmail.com"
                                                      target=3D"_blank"
                                                      moz-do-not-send=3D"tr=
ue">blueroofmusic@gmail.com</a><br>
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
          PM Michael Sweet &lt;<a href=3D"mailto:msweet@msweet.org"
            moz-do-not-send=3D"true">msweet@msweet.org</a>&gt; wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Zd=
enek,<br>
          <br>
          &gt; On Oct 21, 2020, at 9:18 AM, Zdenek Dohnal &lt;<a
            href=3D"mailto:zdohnal@redhat.com" target=3D"_blank"
            moz-do-not-send=3D"true">zdohnal@redhat.com</a>&gt; wrote:<br>
          &gt; ...<br>
          &gt; In this email I would like to ask if there can be a way
          how to work around such printer issues within CUPS, which can
          be aligned with RFC and PWG standards, and can be merged into
          OpenPrinting/cups project.<br>
          <br>
          Aside from maybe retrying the Validate-Job request if it fails
          the first time, I'm not sure <br>
          <br>
          &gt; I have several ideas:<br>
          &gt; <br>
          &gt; 1) Validate-Job operation is 'only' recommended since IPP
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
          I'd rather it be automatic - either retry the Validate-Job
          operation or just move on to printing without validation.<br>
          <br>
          &gt; 3) define a specific IPP_STATUS_* enum variable for
          failing Validate-Job, let the backend fail if ipp_status is
          that variable and let error-policy handle the possible retry<br>
          <br>
          I'm not keen on "supporting" broken behavior.=C2=A0 Usually I've
          tried to "gracefully degrade" in these situations, which would
          basically mean option 2 without the retry (just attempt to
          validate and continue if we don't get a valid response.<br>
          <br>
          ________________________<br>
          Michael Sweet<br>
          <br>
          <br>
          <br>
          _______________________________________________<br>
          Printing-architecture mailing list<br>
          <a
            href=3D"mailto:Printing-architecture@lists.linux-foundation.org=
"
            target=3D"_blank" moz-do-not-send=3D"true">Printing-architectur=
e@lists.linux-foundation.org</a><br>
          <a
href=3D"https://lists.linuxfoundation.org/mailman/listinfo/printing-archite=
cture"
            rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"true">h=
ttps://lists.linuxfoundation.org/mailman/listinfo/printing-architecture</a>=
<br>
        </blockquote>
      </div>
    </blockquote>
    <pre class=3D"moz-signature" cols=3D"72">--=20
Zdenek Dohnal
Software Engineer
Red Hat Czech - Brno TPB-C
</pre>
  </body>
</html>

--------------CFE0BAB0439F209B88ECD7ED--

--------------F1A7146CA7DC72BE50A7947B
Content-Type: application/pgp-keys;
 name="OpenPGP_0x15AA6A7F4D4227D7.asc"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="OpenPGP_0x15AA6A7F4D4227D7.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----

xsBNBFbZeMIBCADLGScYlbdbhspY7PL46UYJ1GGROaK887NCRJUU4IhHcLWxp7RIURUVT6yrEY0=
L
dRck5GzzF5M/VovU/9IAdEdDk5MaPT/K2MELK4fdLTyNAGfJjSzYLVdPac6JyxUg4CRPjqtfBcC=
2
k7ddQ+cxNJN1Fk2dokApST+0yzLwRmdZQAhky3pQZBStfNlXxHQ4XRTGOhiDZkNar5DB8Fakb2P=
/
wUDSZX2J1eE4uVb3xZAyVAgzYkeOMCuU8aEqDZCWeKh+pWfdYU4ZOkS6f/P+svIocv13Xz1Fzsp=
X
i/0bp0mgjz5bLkSzNnMvX6LXR8tbMj/D82O+RSH0eNYvMazkTM0pABEBAAHNQFpkZW5layBEb2h=
u
YWwgKEFzc29jaWF0ZSBTb2Z0d2FyZSBFbmdpbmVlcikgPHpkb2huYWxAcmVkaGF0LmNvbT7CwHg=
E
EwECACICGwMGCwkIBwMCBhUIAgkKCwQWAgMBAh4BAheABQJbs4XwAAoJEBWqan9NQifXPpUH/3S=
O
LxBbeMtt5BYIKZFKeKzdd1zK0On1ng92frPlxlshYkC/aZwiqPDz8sB9Y14QmeiGI2Esdtw1she=
N
hsqT+FIkhqCU0GevFv30uHpdZLEwyIXasTmm7M/mahEON8pLhYTpc4UVL9S5j0/nO8c8GAGARHY=
5
0zjNhnqAauKR8CzCWIi8L6apdlF3RBxIya/+bezvqfhMN3gZmyCMhU17ZStL1Pg4g9mQjHYDo0v=
x
RHP2O9xnXTJenoY6edg/0+brIypUu6K70J7dTHySsZxd03vRECZq4ZVRxUyrgjWemdd7D92Yaw1=
t
9Z8FiCB3K6osTjUv2ZLhEeHbpt6r46KYHNnCRgQTEQIABgUCWEAQzQAKCRBf8G8puh4BOzS/AJ9=
b
6dI4Bv7r4Wo9Kk+pAG6sg89H/wCdGWfCjRdw2nxGf4wp9eukeZzOHvfCwFwEEAECAAYFAlg+79k=
A
CgkQ2OHADgduhAviqggAnWdENr/s9CCsvHIanpruqC8zHKX2Pdpan5A8pgtIz2I3ANcI1eHh4ZK=
y
s04MbK/dmyaUGZGpdPSi7OPsSN3PexxE7vsHV0KFCoFvPVdMEpVetwbQyyt5Du7aLHXRXn/hUyF=
R
mt4/yfLay3kTn4lgg4Xnx1AyybK5Bt3Xk6q95/Yrnu6i06XeK4sgQTOuHU/RKGx9y7K6ZhDkTqZ=
W
wRY/BY9F5tUyyuIm6weeUIedz2AU7Fvzqzp0aW35J72ucIfkCJTtDhQJJikWilqnjw4eZikTM/K=
V
HNh+jTKHl3CD1+lKgouEWTMU5OYNYVZedFrh3GkBcLVLuw/FqJY88X4Cn8LAXAQQAQgABgUCWFQ=
W
UAAKCRC5NrdHJYkzWP8QCACa9nADVSXUlT8zrA5ecVxx33LvVPk+Muapw+FgfIXSJQarYkrzf1S=
n
hDUE7FBxfS6RZY57fhEYfkEnka2sg34t5CCRFwzrez3Sy70cSWLsWVHl3l7zfypAESQ9zHvvFft=
p
+G8Zkj7BRv8b9zZSIaef0zhAQOUCmUhzUIQBCypyBCr1QZxvv+vFxUgTjBbDHDRwiwMq0LkHyEN=
r
w2vPA5uOkMBoskXuRPS5UEbRZrRyqwX1UuuK+OK+Y07YiFJVZ8VeQuXrsub8w9XyH1VSGPO6UuD=
P
HxoprDGFzvdpBMNjzI4TtpmjDlVTBWQNLYSSyhKMMGmu1VfTVhe+z8x1YIutwsBcBBMBCAAGBQJ=
Y
V9WbAAoJEMWIetUdnzwtO5cH+QHSLvp0NSQm4F3UhJ5qftORq8FDI5Aha49EH7auLq/hV3N7cGn=
m
ZKJKcrsr/EAopBDZt3MvUp37q1eqaeVJ7osMndNhPG1QSksa1Wn5X/NIQtBHkp+tRx9OnhkF/Fe=
P
gNT9RELJW0DH94ai5IE6QzRbdgWMJIXFpFrj5A4SbSDt8+P4b97nJnidRaDw957RW4vaQQYss0k=
o
0dQeNuvRn4WvFfszP0bn2kEy2cmmg5QBH1G0H4UfPGcidpica0PfRxIDwA1lAtTxNmS1NrwiBbC=
R
NJv5UqDTirmb/Y/l3ZogY3VZsuDexhgjbaZYiQxjuY3jaawPG9DMab7nSJZrdW7CwVwEEwEIAAY=
F
AlhAG/oACgkQXgo6wF/WSvVJUBAAiRHwfI5hQG5NK8jtJ0+YVJ6hfSMiBlnPuv9sU31B0QiU1KT=
b
yGoeKwWN824TMvSuwIN4KK4+09AM7FuAK/IYBLNddznnQ9odSZ1mG5Ht7TaxSjz/3mWyuQ7BM03=
O
rcucpziFpf2OI8qsU3SX6Dkw80l4U7puyIoxPymsrUvCRhqhP6S3yZjb4i8yhVjNfEuJeFERDS9=
2
Un9LXrYPuvsImo6V/b5A7k98Wm3yWpjHjGgGZZsgzDp1bqmxOJbHnZr3uXLstwjMNy/KNCMRDYE=
4
jNl0bT8NP058IubCvuUjk9efEMMTvszFZKXlWDdRHqvAzuwiboJrma5SH2scwLX3051KzPNRLFo=
g
pv9/L1ATCnpHAkTav/wnfyWh10pAW+M11KEABrbwCf916hsebRZv2ea6uF/gpXrh90FVupXdM7G=
o
Xmo0LvBQHnN44GHUl6lcqJdKnOJLQDQ050cK2logMAZVKbUX34KOuGfvgMR+PPoPP1BCa+HC78Y=
v
oOvzuvxbvm3UShnbcHGXBNxNhcxYJbP4EfKy0Qjb1HqOXrjBT19dDuPtn/lqgyGfYkcoar4eyzK=
M
DyueIUgFrg4QA74R54mrvW/IYlu5+mZKqO38IVmASBz2DtD2DRqtrxA/BvnZUGEv4h/TxBxFzEA=
F
AtHCiysOacTXnvpgW6q4sBlfQgfCwHoEEAEIACQFAlg+9s8DBQJ4GYY8W14+XStbQC5dcmVkaGF=
0
XC5jb20+JAAACgkQjH07+2XGyXMvKAf/RX5iJERSS0mKJe4lp4hsdwfbZAoShueJdk+/Obvpu5+=
1
DKqCFs9Nl5LFcsNxV1QYeWrvNgKmJoOL5g/ro1yXZzgdcIXUtTlKO6LS0stxpFKYDZl8hfmMAYp=
w
s1CktDCiSdbgTsRzXWwgP2Gg6vpLaxd8eyBHaJ+FqiP7mzqW+7oa0rbA3GANc6r+Bxa/gDIfeh5=
L
zT39VdhEdS9MnjRKp6Ua5VgjCk1Up18INAU4gYcBzIcBOtnYYPWRGIGHVJ2AayQgRGG83POsO+K=
8
F7dBMAvevFBOfmlieU8wW7aySza5Zmg4iWbBZ4icJmtPf+9LBeSSs5CwVkCWhJoU4ro77cLAfgQ=
T
AQIAKAUCVtl4wgIbAwUJAeEzgAYLCQgHAwIGFQgCCQoLBBYCAwECHgECF4AACgkQFapqf01CJ9f=
N
mAf+JDEF4AsAH1+0UEhUkaH1hM4FPWKr3nw4kfSfy8Pwlfro1idg4YgkNsyIWMw7MSycxnz/fNe=
p
7Nx8orPOipzRK49nJNPdl265JsXBHQmKTizawsUPqwMWyLbkW30bYdbKCqeEjzl1CdHdQuMf/ru=
a
HbS4vzRiADNyKVS0fz8EBPbrv/goIfOmTzfa8yJEsef8UYNryk5dc+no2HXcy3Pe2XyDmb+FdUr=
J
+OA9vJpadMpKNoOgTSyR9ZmQvj6CC20iJYWKQxsqXdfdmWmqzAn9AaKZF2umdwyD5uzbigH40hm=
r
3qAue4VZ0xh89P7LmHL8PeXIhwl19yZ8EVLRGKAfxsLAeAQTAQIAIgIbAwYLCQgHAwIGFQgCCQo=
L
BBYCAwECHgECF4AFAlhrm+EACgkQFapqf01CJ9eeDwf/eTK6jK4/AzzEizPXqBCFis9gG+yh2vO=
L
1gvXeMkpjqB/4X8hEXKOCpSIGhziZ3F0Nt6XTOkLrBvya9szlS4xBafsqePGsAQCdbdrykkrQmU=
v
s7Er8OkbYG4dnHwLKnb+q0/orLmII6Qu99cEqRICGdHTdTmYR4Pqf9y1IxyxONAjWUBIanphZns=
M
R8r6eAgbn7Ky5B+KyxZ+U5+aFRElDhPFtiuNQ33KNIVwSS+vcJDOB2PA7c77bKl0PIq5fs7I9vO=
N
hxMJL6At9IHhyNSGcX7/ecFoVeHO2466nsIlEybTD+A8O8662FDXbaT71ZfyNWay4121MfW/JQu=
3
hDJ8k87ATQRW2XjCAQgArdEQCzfbASdoA1+WEQGmL3KT6mQYIKTWOtly6SyruQZ1kTZOKlqN0z4=
w
o+1ntPDK6wDPZ/Xqy7zB0VbakZq6KRxQVnRyFzMIeXyuBCKEbomWkQGwjbvzDcNfDZnAL8Jt4me=
S
/OhXiX/cKZEwFyvmkY3bXyUeb9GFVcvsDUMOmetxrww73yd7UEOXi6xiRR51srTdpQnNpGAWcby=
m
Oy9OvuKXvKBpwk5diuZfhW4J13EhIxIDW1lQd2Va/F5Ng/SlkyI+tYTYPpZtMSBZgLgbmXuZdXW=
z
MCQw5Pf8bThDnX4xl5XWLTJE4F2Y1NS8tVJGsJmiJJfzmjWGLdzWksE7bQARAQABwsBfBBgBAgA=
J
AhsMBQJYa5vhAAoJEBWqan9NQifXkPMH/2X2ZY+mqZpGQ3NKlFwTWAMLnWtLWuMBYaz3zVdHKfK=
O
45b+aZ40AOVR72thEjbdQ8oDE6q9G4Bwzw3iWQsYfNHQX3TRFcFqWsngRp0HSZpkhRSyrnOw76j=
f
yKrHycVJ6OKwUdll4Km3fTk7YbqYT/sXkkbH1IA33iZoClvHClEAwsK7fhTFJRPMe2Ah0gzKQOH=
/
XNMLP+9WUuvdMZZyi0HFrT2UkDBnp8U2ZsxVWWgmxAfoMImH18oDCqBYhHXDkX5mQfnTaGdanKe=
9
peO53ul5Eb8zavTdtyOUdgKhUwt7OvS0onRNv+QZurdmYaerzmNW70p2KVGfzf4gCwaOK70=3D
=3D2Huw
-----END PGP PUBLIC KEY BLOCK-----

--------------F1A7146CA7DC72BE50A7947B--

--7OkFmVK5Qs7iLSEcsQrEO9AT0waHPem4t--

--O7NJKgowqbRTut8viYSQSWB6p0tQl7m0I
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEEettYIDyl8EbygCWyFapqf01CJ9cFAl+RIbkFAwAAAAAACgkQFapqf01CJ9e8
kwf/ZsEoHxeSDvMglRJ3EkFxmYs9GfNXA1OloyaSRY/NMRu0GXiJrUBjEsukWKYTVwSNu8rg6aqF
OjueRokpifU1CAp1m5GbI5Qt0tsEKFgr5wpzlO46hn1mqQjgJVmQb0xJEbah29GH3yENv9xQ/Kb+
diVakUSBT90ekwZlDNf5iOeGBzI+x8U+8PXNGAAsJ9i5ngC/Tl31YwBLhgza4FMOjQ2YMBa3imGF
3z7neT/rjlc3Ly2JZdWauw1RyiRjnBazYGnGhgYbm48ZvcbjjpHNswLcqFz8brX06TlxsX6CnTi9
4RKqRtPUusnZKysZ7nJTxe1+Q482lMg4cwaKJ5Cp6w==
=nBvB
-----END PGP SIGNATURE-----

--O7NJKgowqbRTut8viYSQSWB6p0tQl7m0I--

