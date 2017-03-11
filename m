Return-Path: <blueroofmusic@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=/t7j7BNvM+ZDLk8n7Iqfp/QtjykLfpMB9JjfHZSY76o=;
	b=MW8AB6ac6j3DvXVRvMpS23nYcEY5usM/6dfpTqTl3l1k5I9TigU4WVQ+TLaiDI8H+U
	2SS++QIcF5BfqDV/732wQ0FfRNDwmLBRJ2aet6fUhXQR9259OOiAzo+MfQ4Z9G2MaAzD
	djeUSCjFj3gL9d9G98kMmb4T6s8KmqV2L/e2Q4FhjdseC41YwCF7OEfFVFiBTltab523
	ce4eIPQ2vJGbBP2k7Grg2rIqEO3ffP/1bMqc/iYCA4XHJ6sP7uxbW30oK1AIXB1XbYNe
	UiwhMipIFXU0R/qJ0jVs4EDHQvPSFuu1uvWd7v/NCYiLafKsXVqjKprFkNEocCBKMLne
	jTUA==
MIME-Version: 1.0
In-Reply-To: <CABcZeBOZQQPSJFZJZe_a5LSe63BjLg+_argPTuexXzwPW04nig@mail.gmail.com>
References: <CABcZeBOZQQPSJFZJZe_a5LSe63BjLg+_argPTuexXzwPW04nig@mail.gmail.com>
From: Ira McDonald <blueroofmusic@gmail.com>
Date: Sat, 11 Mar 2017 11:55:25 -0500
Message-ID: <CAN40gSucQrB2fHZWTod_8bzTrcssfMpJG9qfgpqe8QN-X=CynQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1142326e7c96c5054a775984
Subject: [Printing-architecture] Fwd: [TLS] draft-ietf-tls-tls13-19 posted
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "ipp@pwg.org" <ipp@pwg.org>, "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Ira McDonald <blueroofmusic@gmail.com>

--001a1142326e7c96c5054a775984
Content-Type: text/plain; charset=UTF-8

Hi,

FYI - this is the technical content complete new draft of TLS/1.3 (see
details
in change log below).

Cheers,
- Ira


---------- Forwarded message ----------
From: Eric Rescorla <ekr@rtfm.com>
Date: Fri, Mar 10, 2017 at 6:34 PM
Subject: [TLS] draft-ietf-tls-tls13-19 posted
To: "tls@ietf.org" <tls@ietf.org>


I just posted draft-19 at:

  https://tools.ietf.org/html/draft-ietf-tls-tls13-19

This draft includes all the outstanding wire format changes that I believe
we are going
to make before publication (changelog below). There are three remaining
issues that
we need to address somehow. I've listed them and proposed resolutions.

1. DH Key Reuse Considerations (https://github.com/tlswg/tls13-spec/pull/768
)
I'm not entirely confident of the analysis here and I'm not that excited
about encouraging
people to re-use, so I propose that we simply drop this PR.

2. Short headers (https://github.com/tlswg/tls13-spec/pull/762)
Both the Chrome team and the Firefox team have concerns about the middlebox
compatibility impact of this change, and I believe if necessary we can add
it as
an extension later. Thus, I propose we defer it. We can make this change
directly
in DTLS 1.3, however.

3. The various non-X509 cert RFCs (no PR).
As Ilari points out, there is significant incompatibility between these
RFCs and
TLS 1.3, so we'll probably need new versions of them if people want this
functionality.
Absent objection, I'll pull them out of the "usable with TLS 1.3 list" in S
4.2
and then add some handwaving about how we can support them with new
drafts (though, as Ilari indicates, we may be able to keep cached-info with
some
small text changes here).

In terms of implementation, we will probably try to have something for NSS
by IETF, but I doubt it will be actually in Firefox.

As usual, comments welcome, including anything I missed.
-Ekr


ChangeLog:
   -  Hash context_value input to Exporters (*)

   -  Add an additional Derive-Secret stage to Exporters (*).

   -  Hash ClientHello1 in the transcript when HRR is used.  This
      reduces the state that needs to be carried in cookies. (*)

   -  Restructure CertificateRequest to have the selectors in
      extensions.  This also allowed defining a
      "certificate_authorities" extension which can be used by the
      client instead of trusted_ca_keys (*).

   -  Tighten record framing requirements and require checking of them
      (*).

   -  Consolidate "ticket_early_data_info" and "early_data" into a
      single extension (*).

   -  Change end_of_early_data to be a handshake message (*).

   -  Add pre-extract Derive-Secret stages to key schedule (*).

   -  Remove spurious requirement to implement "pre_shared_key".

   -  Clarify location of "early_data" from server (it goes in EE, as
      indicated by the table in S 10).

   -  Require peer public key validation

   -  Add state machine diagram.






_______________________________________________
TLS mailing list
TLS@ietf.org
https://www.ietf.org/mailman/listinfo/tls

--001a1142326e7c96c5054a775984
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,<br><br></div><div>FYI - this is the technical con=
tent complete new draft of TLS/1.3 (see details<br></div><div>in change log=
 below).<br><br></div><div>Cheers,<br></div><div>- Ira<br></div><div><div c=
lass=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><br><div st=
yle=3D"display:inline"></div><div style=3D"display:inline"></div><div style=
=3D"display:inline"></div><div></div><div></div><div></div><div></div></div=
></div></div></div></div>
<br><div class=3D"gmail_quote">---------- Forwarded message ----------<br>F=
rom: <b class=3D"gmail_sendername">Eric Rescorla</b> <span dir=3D"ltr">&lt;=
<a href=3D"mailto:ekr@rtfm.com">ekr@rtfm.com</a>&gt;</span><br>Date: Fri, M=
ar 10, 2017 at 6:34 PM<br>Subject: [TLS] draft-ietf-tls-tls13-19 posted<br>=
To: &quot;<a href=3D"mailto:tls@ietf.org">tls@ietf.org</a>&quot; &lt;<a hre=
f=3D"mailto:tls@ietf.org">tls@ietf.org</a>&gt;<br><br><br><div dir=3D"ltr">=
I just posted draft-19 at:<div><br><div><div>=C2=A0 <a href=3D"https://tool=
s.ietf.org/html/draft-ietf-tls-tls13-19" target=3D"_blank">https://tools.ie=
tf.org/html/dr<wbr>aft-ietf-tls-tls13-19</a><br></div></div><div><br></div>=
<div>This draft includes all the outstanding wire format changes that I bel=
ieve we are going</div></div><div>to make before publication (changelog bel=
ow). There are three remaining issues that</div><div>we need to address som=
ehow. I&#39;ve listed them and proposed resolutions.</div><div><br></div><d=
iv>1. DH Key Reuse Considerations (<a href=3D"https://github.com/tlswg/tls1=
3-spec/pull/768" target=3D"_blank">https://github.com/tlswg/tls1<wbr>3-spec=
/pull/768</a>)</div><div>I&#39;m not entirely confident of the analysis her=
e and I&#39;m not that excited about encouraging<br></div><div>people to re=
-use, so I propose that we simply drop this PR.</div><div><br></div><div>2.=
 Short headers (<a href=3D"https://github.com/tlswg/tls13-spec/pull/762" ta=
rget=3D"_blank">https://github.com/tlswg/tls1<wbr>3-spec/pull/762</a>)<br><=
/div><div>Both the Chrome team and the Firefox team have concerns about the=
 middlebox<br></div><div>compatibility impact of this change, and I believe=
 if necessary we can add it as</div><div>an extension later. Thus, I propos=
e we defer it. We can make this change directly</div><div>in DTLS 1.3, howe=
ver.</div><div><br></div><div>3. The various non-X509 cert RFCs (no PR).</d=
iv><div>As Ilari points out, there is significant incompatibility between t=
hese RFCs and</div><div>TLS 1.3, so we&#39;ll probably need new versions of=
 them if people want this functionality.</div><div>Absent objection, I&#39;=
ll pull them out of the &quot;usable with TLS 1.3 list&quot; in S 4.2</div>=
<div>and then add some handwaving about how we can support them with new</d=
iv><div>drafts (though, as Ilari indicates, we may be able to keep cached-i=
nfo with some</div><div>small text changes here).</div><div><br></div><div>=
In terms of implementation, we will probably try to have something for NSS<=
/div><div>by IETF, but I doubt it will be actually in Firefox.</div><div><b=
r></div><div>As usual, comments welcome, including anything I missed.</div>=
<div>-Ekr</div><div><br></div><div><br></div><div>ChangeLog:<br></div><div>=
<div>=C2=A0 =C2=A0- =C2=A0Hash context_value input to Exporters (*)</div><d=
iv><br></div><div>=C2=A0 =C2=A0- =C2=A0Add an additional Derive-Secret stag=
e to Exporters (*).</div><div><br></div><div>=C2=A0 =C2=A0- =C2=A0Hash Clie=
ntHello1 in the transcript when HRR is used.=C2=A0 This</div><div>=C2=A0 =
=C2=A0 =C2=A0 reduces the state that needs to be carried in cookies. (*)</d=
iv><div><br></div><div>=C2=A0 =C2=A0- =C2=A0Restructure CertificateRequest =
to have the selectors in</div><div>=C2=A0 =C2=A0 =C2=A0 extensions.=C2=A0 T=
his also allowed defining a</div><div>=C2=A0 =C2=A0 =C2=A0 &quot;certificat=
e_authorities&quot; extension which can be used by the</div><div>=C2=A0 =C2=
=A0 =C2=A0 client instead of trusted_ca_keys (*).</div><div><br></div><div>=
=C2=A0 =C2=A0- =C2=A0Tighten record framing requirements and require checki=
ng of them</div><div>=C2=A0 =C2=A0 =C2=A0 (*).</div><div><br></div><div>=C2=
=A0 =C2=A0- =C2=A0Consolidate &quot;ticket_early_data_info&quot; and &quot;=
early_data&quot; into a</div><div>=C2=A0 =C2=A0 =C2=A0 single extension (*)=
.</div><div><br></div><div>=C2=A0 =C2=A0- =C2=A0Change end_of_early_data to=
 be a handshake message (*).</div><div><br></div><div>=C2=A0 =C2=A0- =C2=A0=
Add pre-extract Derive-Secret stages to key schedule (*).</div><div><br></d=
iv><div>=C2=A0 =C2=A0- =C2=A0Remove spurious requirement to implement &quot=
;pre_shared_key&quot;.</div><div><br></div><div>=C2=A0 =C2=A0- =C2=A0Clarif=
y location of &quot;early_data&quot; from server (it goes in EE, as</div><d=
iv>=C2=A0 =C2=A0 =C2=A0 indicated by the table in S 10).</div><div><br></di=
v><div>=C2=A0 =C2=A0- =C2=A0Require peer public key validation</div><div><b=
r></div><div>=C2=A0 =C2=A0- =C2=A0Add state machine diagram.</div></div><di=
v><br></div><div><br></div><div><br></div><div><br></div><div><br></div></d=
iv>
<br>______________________________<wbr>_________________<br>
TLS mailing list<br>
<a href=3D"mailto:TLS@ietf.org">TLS@ietf.org</a><br>
<a href=3D"https://www.ietf.org/mailman/listinfo/tls" rel=3D"noreferrer" ta=
rget=3D"_blank">https://www.ietf.org/mailman/<wbr>listinfo/tls</a><br>
<br></div><br></div>

--001a1142326e7c96c5054a775984--
