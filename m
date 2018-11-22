Return-Path: <pascal@obry.net>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=obry-net.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=d/MfrK4jB+tW4oJ6ayaml4mDCu6KKBslw75+RN0Cbe8=;
	b=Wz+Ahi0rvrvUG7I4Zv5apfkU5gkdY0vFf/1y0CtRKd2JcUhhkkQCrfsXcHXfxhC4SY
	z3RebyIOf8BHWCB3mTT96aQqnXqxWvpoamJEYy+Obu43XCuPD/bdR15fXbw49JOy4k+j
	m1rgkFIhWffKuYNuV1kbPWtEY8Cc9jFtmp88uIaUZKsLqJaSWhoeDuk8H4oq4K/p4T+/
	MgmdMQofBNwxsT5ij3uCDEhz3zJh7cS2hsO9Iq57gBhdZOTeJmf9UNM+boHDOpURoIkn
	F4QXviCW+apPfWXLL160vUsts21ZI901htj2Qo0OIlFrINlhhUxFljlNeAs8HrvBb2Rc
	Pcpw==
MIME-Version: 1.0
From: Pascal Obry <pascal@obry.net>
Date: Thu, 22 Nov 2018 14:19:39 +0100
Message-ID: <CA+9ZNifwCYYZn0Fe2JNBSRenfb8iK6q_E_Vigh6rFgWy2viyXQ@mail.gmail.com>
Content-Type: multipart/mixed; boundary="000000000000bd8282057b40b828"
Subject: [Printing-architecture] human readable media-type
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org

--000000000000bd8282057b40b828
Content-Type: multipart/alternative; boundary="000000000000bd8280057b40b826"

--000000000000bd8280057b40b826
Content-Type: text/plain; charset="UTF-8"

Hello !

I have contacted you about this issue on year ago! Made no progress and
waited for a new CUPS version to be out. With 2.2.9 on Debian the PPD API
is deprecated for good! So I'm back on this issue.

With the following attached program I get:

$ gcc -g -o cupsmed cupsmed.c -lcups && ./cupsmed Epson3880
**** PRINTER [Epson3880]    URI:[ipp://localhost/printers/Epson3880]
count: 20
localized option: media-type

   format:           stationery      stationery
   format:             postcard      postcard
   format:  photographic-glossy      photographic-glossy
   format:         transparency      transparency
   format:             envelope      envelope
   format:            back-film      back-film
   format:   photographic-matte      photographic-matte
   format:          matte-heavy      matte-heavy
   format:    stationery-inkjet      stationery-inkjet
   format:    stationery-coated      stationery-coated
   format:                photo      photo
   format:  photographic-glossy      photographic-glossy
   format:            semigloss      semigloss
   format:               luster      luster
   format:       archival-matte      archival-matte
   format:  water-color-radiant      water-color-radiant
   format:  photographic-glossy      photographic-glossy
   format:               ilford      ilford
   format:           color-life      color-life
   format:                other      other

The first column if the media-type reported by ippGetString(attr, i, NULL)
and the second column is a try to get the human-readable localized value
using cupsLocalizeDestValue(). As you can see, in both case I have the same
value.

On my Debian box using CUPS local server (http://localhost:631) I get 20
media-type too, but the names are human readable:

- Plain Paper
- Postcard
- Glossy Film
...
- Premium Glossy Photo Paper
- Premium Semigloss Photo Paper
...
- ColorLife Paper
- Others

And up to now, with everything I tried I have not found the way to get
those names.

Can someone help? Put me on the right track? I must be missing something
but I see nothing in the CUPS API to do so.

Thanks in advance,

-- 
  Pascal Obry /  Magny Les Hameaux (78)

  The best way to travel is by means of imagination

  http://photos.obry.net
  http://www.obry.net

  gpg --keyserver keys.gnupg.net --recv-key F949BD3B

--000000000000bd8280057b40b826
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hello !=
<br><div><br></div><div>I have contacted you about this issue on year ago! =
Made no progress and waited for a new CUPS version to be out. With 2.2.9 on=
 Debian the PPD API is deprecated for good! So I&#39;m back on this issue.<=
br></div><div> <br></div><div>With the following attached program I get:</d=
iv><div><br></div><div><span style=3D"font-family:monospace,monospace">$ gc=
c -g -o cupsmed cupsmed.c -lcups &amp;&amp; ./cupsmed Epson3880<br>**** PRI=
NTER [Epson3880]=C2=A0=C2=A0=C2=A0 URI:[ipp://localhost/printers/Epson3880]=
<br>count: 20<br>localized option: media-type<br><br>=C2=A0=C2=A0 format:=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 stationery =C2=
=A0=C2=A0=C2=A0 =C2=A0stationery<br>=C2=A0=C2=A0 format:=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 postcard =C2=A0=C2=
=A0=C2=A0 =C2=A0postcard<br>=C2=A0=C2=A0 format:=C2=A0 photographic-glossy =
=C2=A0=C2=A0=C2=A0 =C2=A0photographic-glossy<br>=C2=A0=C2=A0 format:=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 transparency =C2=A0=C2=A0=C2=A0 =
=C2=A0transparency<br>=C2=A0=C2=A0 format:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 envelope =C2=A0=C2=A0=C2=A0 =C2=A0e=
nvelope<br>=C2=A0=C2=A0 format:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 back-film =C2=A0=C2=A0=C2=A0 =C2=A0back-film<br>=
=C2=A0=C2=A0 format:=C2=A0=C2=A0 photographic-matte =C2=A0=C2=A0=C2=A0 =C2=
=A0photographic-matte<br>=C2=A0=C2=A0 format:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 matte-heavy =C2=A0=C2=A0=C2=A0 =C2=A0matte-heavy<b=
r>=C2=A0=C2=A0 format:=C2=A0=C2=A0=C2=A0 stationery-inkjet =C2=A0=C2=A0=C2=
=A0 =C2=A0stationery-inkjet<br>=C2=A0=C2=A0 format:=C2=A0=C2=A0=C2=A0 stati=
onery-coated =C2=A0=C2=A0=C2=A0 =C2=A0stationery-coated<br>=C2=A0=C2=A0 for=
mat:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 photo =C2=A0=C2=A0=C2=A0 =C2=A0photo<br>=C2=A0=C2=A0 =
format:=C2=A0 photographic-glossy =C2=A0=C2=A0=C2=A0 =C2=A0photographic-glo=
ssy<br>=C2=A0=C2=A0 format:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 semigloss =C2=A0=C2=A0=C2=A0 =C2=A0semigloss<br>=C2=A0=
=C2=A0 format:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 luster =C2=A0=C2=A0=C2=A0 =C2=A0luster<br>=C2=A0=
=C2=A0 format:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 archival-matte =C2=A0=C2=
=A0=C2=A0 =C2=A0archival-matte<br>=C2=A0=C2=A0 format:=C2=A0 water-color-ra=
diant =C2=A0=C2=A0=C2=A0 =C2=A0water-color-radiant<br>=C2=A0=C2=A0 format:=
=C2=A0 photographic-glossy =C2=A0=C2=A0=C2=A0 =C2=A0photographic-glossy<br>=
=C2=A0=C2=A0 format:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ilford =C2=A0=C2=A0=C2=A0 =C2=A0ilford<br>=
=C2=A0=C2=A0 format:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 color-life =C2=A0=C2=A0=C2=A0 =C2=A0color-life<br>=C2=A0=C2=A0 forma=
t:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 other =C2=A0=C2=A0=C2=A0 =C2=A0other</span><br><br></div=
>The first column if the media-type reported by ippGetString(attr, i, NULL)=
 and the second column is a try to get the human-readable localized value u=
sing cupsLocalizeDestValue(). As you can see, in both case I have the same =
value.</div><div dir=3D"ltr"><br></div><div>On my Debian box using CUPS loc=
al server (<a href=3D"http://localhost:631">http://localhost:631</a>) I get=
 20 media-type too, but the names are human readable:</div><div><br></div><=
div>- Plain Paper</div><div>- Postcard</div><div>- Glossy Film</div><div>..=
.</div><div>- Premium Glossy Photo Paper</div><div><div>- Premium  Semiglos=
s Photo Paper</div><div>...</div><div>- ColorLife Paper</div><div>- Others<=
/div><div><br></div><div>And up to now, with everything I tried I have not =
found the way to get those names.</div><div><br></div><div>Can someone help=
? Put me on the right track? I must be missing something but I see nothing =
in the CUPS API to do so.</div><div><br></div><div>Thanks in advance,<br></=
div><div><br></div></div><div dir=3D"ltr">-- <br><div dir=3D"ltr" class=3D"=
gmail_signature">=C2=A0 Pascal Obry / =C2=A0Magny Les Hameaux (78)<br><br>=
=C2=A0 The best way to travel is by means of imagination<br><br>=C2=A0 <a h=
ref=3D"http://photos.obry.net" target=3D"_blank">http://photos.obry.net</a>=
<br>=C2=A0 <a href=3D"http://www.obry.net" target=3D"_blank">http://www.obr=
y.net</a><br><br>=C2=A0 gpg --keyserver <a href=3D"http://keys.gnupg.net" t=
arget=3D"_blank">keys.gnupg.net</a> --recv-key F949BD3B</div></div></div></=
div></div>

--000000000000bd8280057b40b826--

--000000000000bd8282057b40b828
Content-Type: text/x-csrc; charset="US-ASCII"; name="cupsmed.c"
Content-Disposition: attachment; filename="cupsmed.c"
Content-Transfer-Encoding: base64
Content-ID: <f_josmfn9d0>
X-Attachment-Id: f_josmfn9d0

LyoKICAkIGdjYyAtZyAtbyBjdXBzbWVkIGN1cHNtZWQuYyAtbGN1cHMgJiYgLi9jdXBzbWVkIFBE
RgoqLwoKI2luY2x1ZGUgPHN0ZGlvLmg+CiNpbmNsdWRlIDxjdXBzL2N1cHMuaD4KCnZvaWQgbWFp
bihpbnQgYXJnYywgY2hhciAqYXJndltdKQp7CiAgaWYoYXJnYz09MSkKICB7CiAgICBwcmludGYo
InVzYWdlOiAlcyA8cHJpbnRlci1uYW1lPlxuIiwgYXJndlswXSk7CiAgICByZXR1cm47CiAgfQoK
ICBjb25zdCBjaGFyICpwcmludGVyX25hbWUgPSBhcmd2WzFdOwoKICBjdXBzX2Rlc3RfdCAqZGVz
dHM7CiAgaW50IG51bV9kZXN0cyA9IGN1cHNHZXREZXN0cygmZGVzdHMpOwogIGN1cHNfZGVzdF90
ICpkZXN0ID0gY3Vwc0dldERlc3QocHJpbnRlcl9uYW1lLCBOVUxMLCBudW1fZGVzdHMsIGRlc3Rz
KTsKCiAgaWYgKCFkZXN0KQogIHsKICAgIHByaW50ZigiY2Fubm90IGdldCBkZXN0IHByaW50ZXJc
biIpOwogICAgcmV0dXJuOwogIH0KCiAgY29uc3QgY2hhciAqdXJpID0gY3Vwc0dldE9wdGlvbigi
cHJpbnRlci11cmktc3VwcG9ydGVkIiwgZGVzdC0+bnVtX29wdGlvbnMsIGRlc3QtPm9wdGlvbnMp
OwoKICBwcmludGYoIioqKiogUFJJTlRFUiBbJXNdICAgIFVSSTpbJXNdXG4iLCBwcmludGVyX25h
bWUsIHVyaSk7CgogIGRlc3QgPSBjdXBzR2V0RGVzdFdpdGhVUkkoTlVMTCwgdXJpKTsKCiAgaWYg
KGRlc3QpCiAgewogICAgaHR0cF90ICpodHRwID0gY3Vwc0Nvbm5lY3REZXN0KGRlc3QsIENVUFNf
REVTVF9GTEFHU19OT05FLypOT05FfERFVklDRSovLCAzMDAwMCwgTlVMTCwgTlVMTCwgMCwgTlVM
TCwgTlVMTCk7CgogICAgaWYgKGh0dHApCiAgICB7CiAgICAgIGNvbnN0IGNoYXIgKm9wdGlvbl9u
YW1lID0gIm1lZGlhLXR5cGUiOwogICAgICBjdXBzX2RpbmZvX3QgKmRpbmZvID0gY3Vwc0NvcHlE
ZXN0SW5mbyAoaHR0cCwgZGVzdCk7CiAgICAgIGlwcF9hdHRyaWJ1dGVfdCAqYXR0ciA9IGN1cHNG
aW5kRGVzdFN1cHBvcnRlZChodHRwLCBkZXN0LCBkaW5mbywgb3B0aW9uX25hbWUpOwoKICAgICAg
aWYgKGF0dHIpCiAgICAgIHsKICAgICAgICBjb25zdCBpbnQgY291bnQgPSBpcHBHZXRDb3VudChh
dHRyKTsKICAgICAgICBwcmludGYoImNvdW50OiAlZFxuIiwgY291bnQpOwogICAgICAgIHByaW50
ZigibG9jYWxpemVkIG9wdGlvbjogJXNcblxuIiwgY3Vwc0xvY2FsaXplRGVzdE9wdGlvbihodHRw
LCBkZXN0LCBkaW5mbywgb3B0aW9uX25hbWUpKTsKCiAgICAgICAgZm9yIChpbnQgaSA9IDA7IGkg
PCBjb3VudDsgaSArKykKICAgICAgICB7CiAgICAgICAgICBjb25zdCBjaGFyICpvcHRpb25fdmFs
dWUgPSBpcHBHZXRTdHJpbmcoYXR0ciwgaSwgTlVMTCk7CiAgICAgICAgICBwcmludGYoIiAgIGZv
cm1hdDogJTIwcyBcdCAlc1xuIiwgb3B0aW9uX3ZhbHVlLAogICAgICAgICAgICAgICAgIGN1cHNM
b2NhbGl6ZURlc3RWYWx1ZShodHRwLCBkZXN0LCBkaW5mbywgb3B0aW9uX25hbWUsIG9wdGlvbl92
YWx1ZSkpOwogICAgICAgIH0KICAgICAgfQogICAgICBlbHNlCiAgICAgICAgcHJpbnRmKCJubyBt
ZWRpYS10eXBlIGZvdW5kXG4iKTsKICAgIH0KICAgIGVsc2UKICAgICAgcHJpbnRmKCJjYW5ub3Qg
Y29ubmVjdCB0byBkZXN0IHByaW50ZXJcbiIpOwogIH0KfQo=
--000000000000bd8282057b40b828--
