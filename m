Return-Path: <korobkin@gmail.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F3A51818BE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2F00A818A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1702314540; x=1702919340;
 darn=lists.linux-foundation.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=XxSw8zrMidX3t7oVObtANz+SmkQMykhEjmVB8BLu6U0=;
 b=jR/JlYO/zk908ofibqUSlLqVKZLXOpVlcCKH4SN36Q0VwNorKsVGsYLJNanjYIrGPp
 oqK02ykWfQJ6PheoPCvgfOW6nzbZgefdBVmZFqhpsB1yZhOwem9zjB+Xx0xFJE0+FCZl
 ZvRL2W4PaL7mk0Zfl93Dr/offkkNVrx6ppo0Q1AWEDKdkU5UdBCrTi2xGyUYKHwVBH0h
 oaKAUMuZJIjXF1Vfytr/zBZzwW4t78+2I8mQncMhk1RAhT9oGbPjbswfLTFFROHYJ2xK
 PBKdWoR/VD61vPgaxAZutebeLd8Lqj82YAn1lGrbo2b8aDpa/Ugy2mKA/0Fa0wsK1ZV1
 0fkA==
MIME-Version: 1.0
References: <c7a55ce9-b1a0-49f9-869a-b3c021fc51fb@gmail.com>
 <CA+3RNfgm8TtZFAoJP5+WZuH698VsDvgBMx1XV=DciLdTiswFrQ@mail.gmail.com>
 <233C4113-5BD2-494F-A342-30C4A2607452@msweet.org>
In-Reply-To: <233C4113-5BD2-494F-A342-30C4A2607452@msweet.org>
From: Alex Korobkin <korobkin+op@gmail.com>
Date: Mon, 11 Dec 2023 12:08:43 -0500
Message-ID: <CA+3RNfhzN+BB_OiO12B62pGh1H4EJXsZpsFBwYK5eiH+5+Ra=w@mail.gmail.com>
Content-Type: multipart/mixed; boundary="000000000000776db1060c3efda1"
Subject: Re: [Printing-architecture] PDFio: Replaced QPDF by PDFio in
 libcupsfilters as GSoC project?
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@msweet.org>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

--000000000000776db1060c3efda1
Content-Type: multipart/alternative; boundary="000000000000776dae060c3efd9f"

--000000000000776dae060c3efd9f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you, that's exactly what I needed.
I ran it against my collection of bad PDFs, and 10% of them failed with "
Malformed xref table entry '0000000000 65536 f'."
I suppose that's the #1 point from your reply, so perhaps it's not too
bad of an idea to reconstruct the xref table when possible?

It also reported "Too many object streams." for one file with 7000 pages,
and "Unexpected 'startxref' token seen." on this file created by Till in
2013 to test various page sizes in a single PDF.


On Mon, Dec 11, 2023 at 11:24=E2=80=AFAM Michael Sweet <msweet@msweet.org> =
wrote:

> Alex,
>
> > On Dec 11, 2023, at 11:12=E2=80=AFAM, Alex Korobkin <korobkin+op@gmail.=
com>
> wrote:
> >
> > Hello printing folks,
> >
> > If you don't mind, may I chime in from the user's perspective? As you
> know, there are lots of bad PDFs out there, and even if they represent on=
ly
> 0.1% of the total number of all PDFs that people print, one million print
> jobs turns into 1000 tickets about unprintable files. QPDF is extremely
> accommodating about it: no matter how bad a PDF is, it will try to recove=
r
> and proceed. Over the last few years I filed numerous requests about
> handling some despicable PDFs, and all of them were accepted.
> >
> > How is PDFio with regards to handling bad PDFs? Is there any testing
> tool with PDFio compiled in that I can run against my corpus of bad PDFs =
to
> see how it would treat them?
>
> The "testpdfio" program specifically does this.  With no arguments it run=
s
> PDFio's unit tests, but if you pass in a filename you'll get a list of
> pages/objects:
>
>     ./testpdfio FILENAME.pdf
>
>     ./testpdfio --verbose FILENAME.pdf
>
>     ./testpdfio FILENAME.pdf OBJECT-NUMBER >OBJ.dat
>
> I also have a large corpus I test with (which includes the PDF
> Association's Stressful PDF Corpus) and the only two open issues I have a=
re:
>
> 1. Currently PDFio will not reconstruct a missing/broken xref table, and
> 2. I have one file that uses two different encryption keys for different
> parts of the file (this looks to be an encrypted file that was later edit=
ed
> with Acrobat, with the changes written with a separate key...)
>
> I have my concerns about enabling #1 by default, as it could open up
> security issues (denial-of-service for sure, possibly data corruption).
> For #2 I'll come up with a fix but this is the first time I've ever seen =
a
> PDF file with multiple encryption keys (the spec doesn't disallow it but
> also doesn't talk about needing to support it...) so I'm not sure how
> common they are...
>
> ________________________
> Michael Sweet
>
>

--=20
-Alex

--000000000000776dae060c3efd9f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you, that&#39;s exactly=C2=A0what I needed.=C2=A0<di=
v>I ran it against my collection=C2=A0of bad PDFs, and 10% of them failed w=
ith &quot; Malformed xref table entry &#39;0000000000 65536 f&#39;.&quot;</=
div>I suppose that&#39;s the #1 point from your reply, so perhaps it&#39;s =
not too bad=C2=A0of an idea to reconstruct the xref table when possible?<di=
v><br></div><div>It also reported &quot;Too many object streams.&quot; for =
one file with 7000 pages, and &quot;Unexpected &#39;startxref&#39; token se=
en.&quot; on this file created by Till in 2013 to test various page sizes i=
n a single PDF.=C2=A0</div><br></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Mon, Dec 11, 2023 at 11:24=E2=80=AFAM Mic=
hael Sweet &lt;<a href=3D"mailto:msweet@msweet.org">msweet@msweet.org</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Alex,<=
br>
<br>
&gt; On Dec 11, 2023, at 11:12=E2=80=AFAM, Alex Korobkin &lt;<a href=3D"mai=
lto:korobkin%2Bop@gmail.com" target=3D"_blank">korobkin+op@gmail.com</a>&gt=
; wrote:<br>
&gt; <br>
&gt; Hello printing folks, <br>
&gt; <br>
&gt; If you don&#39;t mind, may I chime in from the user&#39;s perspective?=
 As you know, there are lots of bad PDFs out there, and even if they repres=
ent only 0.1% of the total number of all PDFs that people print, one millio=
n print jobs turns into 1000 tickets about unprintable files. QPDF is extre=
mely accommodating about it: no matter how bad a PDF is, it will try to rec=
over and proceed. Over the last few years I filed numerous requests about h=
andling some despicable PDFs, and all of them were accepted.<br>
&gt; <br>
&gt; How is PDFio with regards to handling bad PDFs? Is there any testing t=
ool with PDFio compiled in that I can run against my corpus of bad PDFs to =
see how it would treat them?<br>
<br>
The &quot;testpdfio&quot; program specifically does this.=C2=A0 With no arg=
uments it runs PDFio&#39;s unit tests, but if you pass in a filename you&#3=
9;ll get a list of pages/objects:<br>
<br>
=C2=A0 =C2=A0 ./testpdfio FILENAME.pdf<br>
<br>
=C2=A0 =C2=A0 ./testpdfio --verbose FILENAME.pdf<br>
<br>
=C2=A0 =C2=A0 ./testpdfio FILENAME.pdf OBJECT-NUMBER &gt;OBJ.dat<br>
<br>
I also have a large corpus I test with (which includes the PDF Association&=
#39;s Stressful PDF Corpus) and the only two open issues I have are:<br>
<br>
1. Currently PDFio will not reconstruct a missing/broken xref table, and<br=
>
2. I have one file that uses two different encryption keys for different pa=
rts of the file (this looks to be an encrypted file that was later edited w=
ith Acrobat, with the changes written with a separate key...)<br>
<br>
I have my concerns about enabling #1 by default, as it could open up securi=
ty issues (denial-of-service for sure, possibly data corruption). <br>
For #2 I&#39;ll come up with a fix but this is the first time I&#39;ve ever=
 seen a PDF file with multiple encryption keys (the spec doesn&#39;t disall=
ow it but also doesn&#39;t talk about needing to support it...) so I&#39;m =
not sure how common they are...<br>
<br>
________________________<br>
Michael Sweet<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr">-Alex</div></div>

--000000000000776dae060c3efd9f--

--000000000000776db1060c3efda1
Content-Type: application/pdf; name="tillA4-A3-A4-3-pdftopdf.pdf"
Content-Disposition: attachment; filename="tillA4-A3-A4-3-pdftopdf.pdf"
Content-Transfer-Encoding: base64
Content-ID: <f_lq15stzg0>
X-Attachment-Id: f_lq15stzg0

JVBERi0xLjQKJb/3ov4KJSBUaGlzIGZpbGUgd2FzIGdlbmVyYXRlZCBieSBwZGZ0b3BkZgolJVBE
RlRPUERGTnVtQ29waWVzIDogMQolJVBERlRPUERGQ29sbGF0ZSA6IGZhbHNlCjEgMCBvYmoKPDwg
L0xhbmcgKGVuLVVTKSAvUGFnZXMgMyAwIFIgL1R5cGUgL0NhdGFsb2cgPj4KZW5kb2JqCjIgMCBv
YmoKPDwgL0F1dGhvciA8ZmVmZjAwNTQwMDY5MDA2YzAwNmMwMDIwMDA0YjAwNjEwMDZkMDA3MDAw
NzAwMDY1MDA3NDAwNjUwMDcyPiAvQ3JlYXRpb25EYXRlIChEOjIwMTMxMjAyMTYyNjA3KzAxJzAw
JykgL0NyZWF0b3IgPGZlZmYwMDU3MDA3MjAwNjkwMDc0MDA2NTAwNzI+IC9Qcm9kdWNlciA8ZmVm
ZjAwNGMwMDY5MDA2MjAwNzIwMDY1MDA0ZjAwNjYwMDY2MDA2OTAwNjMwMDY1MDAyMDAwMzQwMDJl
MDAzMT4gPj4KZW5kb2JqCjMgMCBvYmoKPDwgL0NvdW50IDMgL0tpZHMgWyA0IDAgUiA1IDAgUiA2
IDAgUiBdIC9UeXBlIC9QYWdlcyA+PgplbmRvYmoKNCAwIG9iago8PCAvQ29udGVudHMgNyAwIFIg
L0dyb3VwIDw8IC9DUyAvRGV2aWNlUkdCIC9JIHRydWUgL1MgL1RyYW5zcGFyZW5jeSA+PiAvTWVk
aWFCb3ggWyAwIDAgNTk1IDg0MiBdIC9QYXJlbnQgMyAwIFIgL1Jlc291cmNlcyA4IDAgUiAvVHlw
ZSAvUGFnZSA+PgplbmRvYmoKNSAwIG9iago8PCAvQ29udGVudHMgOSAwIFIgL0dyb3VwIDw8IC9D
UyAvRGV2aWNlUkdCIC9JIHRydWUgL1MgL1RyYW5zcGFyZW5jeSA+PiAvTWVkaWFCb3ggWyAwIDAg
MTE5MSA4NDIgXSAvUGFyZW50IDMgMCBSIC9SZXNvdXJjZXMgOCAwIFIgL1JvdGF0ZSA5MCAvVHlw
ZSAvUGFnZSA+PgplbmRvYmoKNiAwIG9iago8PCAvQ29udGVudHMgMTAgMCBSIC9Hcm91cCA8PCAv
Q1MgL0RldmljZVJHQiAvSSB0cnVlIC9TIC9UcmFuc3BhcmVuY3kgPj4gL01lZGlhQm94IFsgMCAw
IDU5NSA4NDIgXSAvUGFyZW50IDMgMCBSIC9SZXNvdXJjZXMgOCAwIFIgL1R5cGUgL1BhZ2UgPj4K
ZW5kb2JqCjcgMCBvYmoKPDwgL0ZpbHRlciAvRmxhdGVEZWNvZGUgL0xlbmd0aCAyMDEgPj4Kc3Ry
ZWFtCnicldI9C8IwEAbgPb/inYWm+bq0hRKoWAW3YsBB3NRuSuvg3zeoiyJtwhEIdxzPDa/gEg82
QECEH1XEFUojeYnxzPYLXN+zUGPPlp5ZywmF1fAn5GsJZeAvh1pIl8laKKGdqoURFN5PuczUXx36
9F4rn3139FvWetb9Yy3JcN00bCNgmwqTrriZgYsIuEiFjSq4nYFVBKxSYS0pRGAaLiPgMhUOl86w
VQRbJUfLzCariXCbSbfDgLzd7Aj9HbkfDVY3dOwJGJu8w2VuZHN0cmVhbQplbmRvYmoKOCAwIG9i
ago8PCAvRXh0R1N0YXRlIDw8IC9FR1MxMCAxMSAwIFIgL0VHUzE1IDEyIDAgUiAvRUdTNSAxMyAw
IFIgPj4gL0ZvbnQgMTQgMCBSIC9Qcm9jU2V0IFsgL1BERiAvVGV4dCAvSW1hZ2VDIC9JbWFnZUkg
L0ltYWdlQiBdIC9YT2JqZWN0IDw8IC9UcjE0IDE1IDAgUiAvVHI0IDE2IDAgUiAvVHI5IDE3IDAg
UiA+PiA+PgplbmRvYmoKOSAwIG9iago8PCAvRmlsdGVyIC9GbGF0ZURlY29kZSAvTGVuZ3RoIDIw
NiA+PgpzdHJlYW0KeJy108EKwjAMANB7vyJnYV3SdmsLYzBxCt6GBQ/iTd1N2Tz4+3bOo1qKlJA2
EGgetEVO8GADIKCviCzyAowibmA8s/0CrnPTx9izpWOEgmvQSvvVnSBfEwgF7nKokOqMKtQoX7vC
wuePqDNV/dWbzp9nvSfXR7dlrWPdR3MpC25D5jKxuYwzF0L5awmYdWKzjjMrElyGzCKxWcSZJU7v
PmA2ic0mzkzGhP+gTWy2cWZtQuAmMbj5Du5ggLzd7Aihv0PuRgurG3TsCUGRDnplbmRzdHJlYW0K
ZW5kb2JqCjEwIDAgb2JqCjw8IC9GaWx0ZXIgL0ZsYXRlRGVjb2RlIC9MZW5ndGggMjAyID4+CnN0
cmVhbQp4nJXSsQrCMBAG4D1P8c9C01yaS1sohYpVcCsGHMRN7aa0Dr6+QV0UaROOQLjj+G74lSQ8
xAAF5X9cstQoDMkC41nsF7i+Z77GXiydsFYycpvBnZCuCdrAXQ6VojqhSmmV1bpSRrF/P1Unpvrq
8Kf3Wvns10e3Fa0T3T/WMvnrpmEbANtYmLNSmhk4D4DzWNjoXNoZWAfAOhbOiH0EpuEiAC5iYX/p
DFsGsGV0tMxsspoAt5l0OwxI282OGP0dqRvJYHVDJ56Rsb0lZW5kc3RyZWFtCmVuZG9iagoxMSAw
IG9iago8PCAvQ0EgMC41IC9jYSAwLjUgPj4KZW5kb2JqCjEyIDAgb2JqCjw8IC9DQSAwLjUgL2Nh
IDAuNSA+PgplbmRvYmoKMTMgMCBvYmoKPDwgL0NBIDAuNSAvY2EgMC41ID4+CmVuZG9iagoxNCAw
IG9iago8PCAvRjEgMTggMCBSID4+CmVuZG9iagoxNSAwIG9iago8PCAvQkJveCBbIC05IDQyMCA2
MDQgNDIwLjEgXSAvRmlsdGVyIC9GbGF0ZURlY29kZSAvR3JvdXAgPDwgL0NTIC9EZXZpY2VSR0Ig
L0sgdHJ1ZSAvUyAvVHJhbnNwYXJlbmN5ID4+IC9TdWJ0eXBlIC9Gb3JtIC9UeXBlIC9YT2JqZWN0
IC9MZW5ndGggOCA+PgpzdHJlYW0KeJwDAAAAAAFlbmRzdHJlYW0KZW5kb2JqCjE2IDAgb2JqCjw8
IC9CQm94IFsgLTkgNDIwIDYwNCA0MjAuMSBdIC9GaWx0ZXIgL0ZsYXRlRGVjb2RlIC9Hcm91cCA8
PCAvQ1MgL0RldmljZVJHQiAvSyB0cnVlIC9TIC9UcmFuc3BhcmVuY3kgPj4gL1N1YnR5cGUgL0Zv
cm0gL1R5cGUgL1hPYmplY3QgL0xlbmd0aCA4ID4+CnN0cmVhbQp4nAMAAAAAAWVuZHN0cmVhbQpl
bmRvYmoKMTcgMCBvYmoKPDwgL0JCb3ggWyA1OTUgMTE1IDU5NSA3MjguMSBdIC9GaWx0ZXIgL0Zs
YXRlRGVjb2RlIC9Hcm91cCA8PCAvQ1MgL0RldmljZVJHQiAvSyB0cnVlIC9TIC9UcmFuc3BhcmVu
Y3kgPj4gL1N1YnR5cGUgL0Zvcm0gL1R5cGUgL1hPYmplY3QgL0xlbmd0aCA4ID4+CnN0cmVhbQp4
nAMAAAAAAWVuZHN0cmVhbQplbmRvYmoKMTggMCBvYmoKPDwgL0Jhc2VGb250IC9CQUFBQUErRGVq
YVZ1U2Fucy1Cb2xkIC9GaXJzdENoYXIgMCAvRm9udERlc2NyaXB0b3IgMTkgMCBSIC9MYXN0Q2hh
ciAxMCAvU3VidHlwZSAvVHJ1ZVR5cGUgL1RvVW5pY29kZSAyMCAwIFIgL1R5cGUgL0ZvbnQgL1dp
ZHRocyBbIDYwMCA3NzMgNjk1IDM0OCA4MzcgNjk1IDY5NSA2OTUgNjk1IDY5NSA2OTUgXSA+Pgpl
bmRvYmoKMTkgMCBvYmoKPDwgL0FzY2VudCA5MjggL0NhcEhlaWdodCAxMTc0IC9EZXNjZW50IC0y
MzUgL0ZsYWdzIDQgL0ZvbnRCQm94IFsgLTEwNjkgLTQxNSAxOTc0IDExNzQgXSAvRm9udEZpbGUy
IDIxIDAgUiAvRm9udE5hbWUgL0JBQUFBQStEZWphVnVTYW5zLUJvbGQgL0l0YWxpY0FuZ2xlIDAg
L1N0ZW1WIDgwIC9UeXBlIC9Gb250RGVzY3JpcHRvciA+PgplbmRvYmoKMjAgMCBvYmoKPDwgL0Zp
bHRlciAvRmxhdGVEZWNvZGUgL0xlbmd0aCAyNjcgPj4Kc3RyZWFtCnicXZHNasQgFIX3PoXL6WLQ
JPPTgRAYZhjIoj807QMYvUmFRsWYRd6+Xp220IXyXe89co6yS3ttjQ7s1VvZQaCDNsrDbBcvgfYw
akOKkiotw71Ku5yEIyxqu3UOMLVmsHVN2FvszcGvdHNWtocHwl68Aq/NSDcfly7W3eLcF0xgAuWk
aaiCId7zJNyzmIAl1bZVsa3Duo2Sv4H31QEtU11kK9IqmJ2Q4IUZgdScN7S+3RoCRv3rFTxL+kF+
Ch9HizjK+a5oIpeJqx1ylbjkyLt8fkXeZ07zh8wl8jFzhfyYeY98ynxAPmc+JmN3B2gR3/AnOpWL
9zF2euiUF5NqA79/4axDVVrffkuCXWVuZHN0cmVhbQplbmRvYmoKMjEgMCBvYmoKPDwgL0ZpbHRl
ciAvRmxhdGVEZWNvZGUgL0xlbmd0aDEgMjA2MTIgL0xlbmd0aCA3NTEzID4+CnN0cmVhbQp4nO08
C2BU1ZX3vvPeJLn5MAP5AgkvwUGQIYEgdMFPZ0gmYSAkMRm+imUy85IMJjPTmUkQWATrtlusrnVb
KU2tbbWr7m5KKdttqdCKlVat0q4V7FJ1W7awbreRZV3r2hEfe+59b34hUAT87GcevLmf8z/nnnvm
+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
Djac23SwBmBckVUZNwHGHZCLrFC0TS7EncIEFNRDPqqWXwr522RWCMwp5+mQq0OODhaFKRYdFAaK
U5YTAAGQEEvSMXsVKtQGpBDoXhr45N105v+OD/mgBXgPP5XkvwHtxg0nZW5kc3RyZWFtCmVuZG9i
agp4cmVmCjAgMjIKMDAwMDAwMDAwMCA2NTUzNSBmIAowMDAwMDAwMTAzIDAwMDAwIG4gCjAwMDAw
MDAxNjYgMDAwMDAgbiAKMDAwMDAwMDQxNSAwMDAwMCBuIAowMDAwMDAwNDg2IDAwMDAwIG4gCjAw
MDAwMDA2NDUgMDAwMDAgbiAKMDAwMDAwMDgxNiAwMDAwMCBuIAowMDAwMDAwOTc2IDAwMDAwIG4g
CjAwMDAwMDEyNDggMDAwMDAgbiAKMDAwMDAwMTQ0MCAwMDAwMCBuIAowMDAwMDAxNzE3IDAwMDAw
IG4gCjAwMDAwMDE5OTEgMDAwMDAgbiAKMDAwMDAwMjAyOSAwMDAwMCBuIAowMDAwMDAyMDY3IDAw
MDAwIG4gCjAwMDAwMDIxMDUgMDAwMDAgbiAKMDAwMDAwMjEzOCAwMDAwMCBuIAowMDAwMDAyMzI2
IDAwMDAwIG4gCjAwMDAwMDI1MTQgMDAwMDAgbiAKMDAwMDAwMjcwMyAwMDAwMCBuIAowMDAwMDAy
OTEzIDAwMDAwIG4gCjAwMDAwMDMxMjAgMDAwMDAgbiAKMDAwMDAwMzQ1OSAwMDAwMCBuIAp0cmFp
bGVyIDw8IC9Eb2NDaGVja3N1bSAvNTFENjIxQkQ2Qzk5MjBDREQxOERENUZDOEJFNjI2Q0UgL0lu
Zm8gMiAwIFIgL1Jvb3QgMSAwIFIgL1NpemUgMjIgL0lEIFs8NTg2ZDIxNTEzN2Y3MGRmYWE5ZGQy
NDJlNzYzYWFiNjk+PDcyY2MzMmU5MGI5ODI5ZTU0ZWE0OTU2OTMyMmMyMTIxPl0gPj4Kc3RhcnR4
cmVmCjExMDYwCiUlRU9GCg==
--000000000000776db1060c3efda1--
