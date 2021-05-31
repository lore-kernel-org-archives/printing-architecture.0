Return-Path: <msweet@msweet.org>
Content-Type: multipart/alternative;
 boundary="Apple-Mail=_E093D87A-76F2-4B61-B2B4-EF53DFD4DE64"
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <8592364a-15e6-41c3-ab0e-757b3aedfed7@gmail.com>
Date: Sun, 30 May 2021 23:12:27 -0400
Message-Id: <BCD48324-66DA-4F55-8FCD-154C8FC0E49D@msweet.org>
References: <8c101e3b-2f80-666c-db86-05b7dd170a7c@gmail.com>
 <FC123AED-25FA-4E37-9957-29565F89DC1D@msweet.org>
 <e8060298-8b2b-94d9-3eaf-1386cbc9543c@gmail.com>
 <29E8A83D-5BBB-49AA-83A6-4B3EB765828A@msweet.org>
 <9db67beb-7ca2-249c-88e4-ead29d19ce63@gmail.com>
 <FC95906E-6085-4121-AEA8-9E53613872AD@msweet.org>
 <54eda145-936b-a920-b645-66a104b23ad4@gmail.com>
 <YJc9BYPyXoSyi8X/@shaftnet.org>
 <46c7d30c-b28d-1585-e4b6-49aa22b9efc2@gmail.com>
 <2427DA0B-9BB7-462B-A29E-0A3366E504A3@msweet.org>
 <aae2e939-01a4-bdee-ddc7-940e93351eec@gmail.com>
 <4FDD96B5-A0D7-4CF7-A0E4-4D116FE73607@msweet.org>
 <320a8f00-338a-8ec8-8019-22f6ecd1d4ec@gmail.com>
 <15F0BA1D-9205-4659-A1D7-EB41F9F6F110@msweet.org>
 <b9219a65-4bcd-2e7c-56e2-31a5c2c9be3e@gmail.com>
 <63629EAE-235A-4FB9-8721-884E9E163036@msweet.org>
 <8592364a-15e6-41c3-ab0e-757b3aedfed7@gmail.com>
Subject: Re: [Printing-architecture] Make use of extended color spaces on
 IPP printers
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Jay Berkenbilt <ejb@ql.org>, Vikrant Malik <vikrant@iitk.ac.in>


--Apple-Mail=_E093D87A-76F2-4B61-B2B4-EF53DFD4DE64
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Till,

> On May 30, 2021, at 5:50 PM, Till Kamppeter <till.kamppeter@gmail.com> =
wrote:
>=20
> On 30/05/2021 22:53, Michael Sweet wrote:
>> Yes, and there is a mechanism for that - the printer will add the =
document-unprintable-error value in job-state-reasons or return =
client-error-document-unprintable-error from the Print-Job/Send-Document =
request. Then CUPS will re-print as raster.
>=20
> Is this already implemented in CUPS?

Yes, it has been in CUPS for many years now...

> So if I send a JPEG to CUPS and the printer which supports JPEG chokes =
on my JPEG then CUPS sees the error and retries the job in raster (which =
probably lets the imagetoraster filter being used)?
>=20
> Is this only implemented for JPEG? Or does CUPS go from one =
*cupsfilter(2): line in the PPD to the next until the printer does not =
error any more?

This happens for PDF, JPEG, and PNG, and it gets retried once as =
PWG/Apple raster.

>> ...
>> You will never see "AdobeRGB" or "sRGB" in the PDF file, you will see =
an ICC based color space or a calibrated color space (/CalRGB or =
/CalGray) with suitable parameters.
>=20
> Which parameters? Ids it documented somewhere how I can identify PDFs =
(or elements in them) as sRGB or AdobeRGB?

The PDF will contain color resources.  AdobeRGB:

/CalRGB<</Gamma[2.2 2.2 2.2]/Matrix[0.7667 0.29734 0.02703 0.18556 =
0.62736 0.07069 0.18823 0.07529 0.99134]/WhitePoint[0.9505 1 1.089]>>]

Display P3:

[/CalRGB<</Gamma[2.2 2.2 2.2]/Matrix[0.48657 0.2297 0 0.26567 0.69174 =
0.04511 0.19822 0.07929 1.04394]/WhitePoint[0.9505 1 1.089>>]

sRGB:

[/CalRGB<</Gamma[2.2 2.2 2.2]/Matrix[0.4124 0.2126 0.0193 0.3576 0.715 =
0.1192 0.1805 0.0722 0.9505]/WhitePoint[0.9505 1 1.089]>>]

As you can see, the only difference is the Matrix value.

>>> ...
>>> Do you know how I can get appropriate PDF files for testing? Are =
there somewhere sample files for download? Is there a recipe how to turn =
an AdobeRGB JPEG into an AdobeRGB PDF under Linux?
>> I will shortly have the necessary changes in pdfio =
(https://www.msweet.org/pdfio) to be able to embed a JPEG or PNG file in =
a PDF file with the expected calibrated color spaces.
>=20
> This is new as of today? What are the differences to QPDF? QPDF I use =
heavily in cups-filters and I have got some students adding features to =
it.

They can do similar things, but PDFio is both general-purpose (reading, =
"rewriting", and writing) and also won't be implementing useless writing =
features such as linearization and encryption.  I'm also targeting PDFio =
for enbedded usage.

________________________
Michael Sweet




--Apple-Mail=_E093D87A-76F2-4B61-B2B4-EF53DFD4DE64
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><body style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
line-break: after-white-space;" class=3D"">Till,<br class=3D""><br =
class=3D""><blockquote type=3D"cite" class=3D"">On May 30, 2021, at 5:50 =
PM, Till Kamppeter &lt;<a href=3D"mailto:till.kamppeter@gmail.com" =
class=3D"">till.kamppeter@gmail.com</a>&gt; wrote:<br class=3D""><br =
class=3D"">On 30/05/2021 22:53, Michael Sweet wrote:<br =
class=3D""><blockquote type=3D"cite" class=3D"">Yes, and there is a =
mechanism for that - the printer will add the document-unprintable-error =
value in job-state-reasons or return =
client-error-document-unprintable-error from the Print-Job/Send-Document =
request.&nbsp;Then CUPS will re-print as raster.<br =
class=3D""></blockquote><br class=3D"">Is this already implemented in =
CUPS?</blockquote><div class=3D""><br class=3D""></div>Yes, it has been =
in CUPS for many years now...<div class=3D""><br class=3D""><blockquote =
type=3D"cite" class=3D""> So if I send a JPEG to CUPS and the printer =
which supports JPEG chokes&nbsp;on my JPEG then CUPS sees the error and =
retries the job in raster (which probably lets the =
imagetoraster&nbsp;filter being used)?<br class=3D""><br class=3D"">Is =
this only implemented for JPEG? Or does CUPS go from one *cupsfilter(2): =
line in the PPD to the next&nbsp;until the printer does not error any =
more?<br class=3D""></blockquote><div class=3D""><br class=3D""></div>This=
 happens for PDF, JPEG, and PNG, and it gets retried once as PWG/Apple =
raster.</div><div class=3D""><br class=3D""><blockquote type=3D"cite" =
class=3D""><blockquote type=3D"cite" class=3D""><font color=3D"#12c00e" =
class=3D""><span style=3D"caret-color: rgb(18, 192, 14);" =
class=3D"">...</span></font></blockquote></blockquote><blockquote =
type=3D"cite" class=3D""><blockquote type=3D"cite" class=3D"">You will =
never see "AdobeRGB" or "sRGB" in the PDF file, you will see an ICC =
based color space or a&nbsp;calibrated color space (/CalRGB or /CalGray) =
with suitable parameters.<br class=3D""></blockquote><br class=3D"">Which =
parameters? Ids it documented somewhere how I can identify PDFs (or =
elements in them) as sRGB or&nbsp;AdobeRGB?<br =
class=3D""></blockquote><div class=3D""><br class=3D""></div>The PDF =
will contain color resources. &nbsp;AdobeRGB:</div><div class=3D""><br =
class=3D""></div><blockquote style=3D"margin: 0 0 0 40px; border: none; =
padding: 0px;" class=3D""><div class=3D"">/CalRGB&lt;&lt;/Gamma[2.2 2.2 =
2.2]/Matrix[0.7667 0.29734 0.02703 0.18556 0.62736 0.07069 0.18823 =
0.07529 0.99134]/WhitePoint[0.9505 1 =
1.089]&gt;&gt;]</div></blockquote><div class=3D""><br =
class=3D""></div><div class=3D"">Display P3:</div><div class=3D""><br =
class=3D""></div><blockquote style=3D"margin: 0 0 0 40px; border: none; =
padding: 0px;" class=3D""><div class=3D"">[/CalRGB&lt;&lt;/Gamma[2.2 2.2 =
2.2]/Matrix[0.48657 0.2297 0 0.26567 0.69174 0.04511 0.19822 0.07929 =
1.04394]/WhitePoint[0.9505 1 1.089&gt;&gt;]</div></blockquote><div =
class=3D""><br class=3D""></div><div class=3D"">sRGB:<br class=3D""><br =
class=3D""></div><blockquote style=3D"margin: 0 0 0 40px; border: none; =
padding: 0px;" class=3D""><div class=3D"">[/CalRGB&lt;&lt;/Gamma[2.2 2.2 =
2.2]/Matrix[0.4124 0.2126 0.0193 0.3576 0.715 0.1192 0.1805 0.0722 =
0.9505]/WhitePoint[0.9505 1 1.089]&gt;&gt;]</div></blockquote><div =
class=3D""><br class=3D""></div><div class=3D"">As you can see, the only =
difference is the Matrix value.</div><div class=3D""><br =
class=3D""></div><div class=3D""><blockquote type=3D"cite" =
class=3D""><blockquote type=3D"cite" class=3D""><blockquote type=3D"cite" =
class=3D"">...</blockquote></blockquote></blockquote><blockquote =
type=3D"cite" class=3D""><blockquote type=3D"cite" class=3D""><blockquote =
type=3D"cite" class=3D"">Do you know how I can get appropriate PDF files =
for testing? Are there somewhere sample files for&nbsp;download? Is =
there a recipe how to turn an AdobeRGB JPEG into an AdobeRGB PDF under =
Linux?</blockquote></blockquote><blockquote type=3D"cite" class=3D"">I =
will shortly have the necessary changes in pdfio (<a =
href=3D"https://www.msweet.org/pdfio" =
class=3D"">https://www.msweet.org/pdfio</a>) to be able to embed =
a&nbsp;JPEG or PNG file in a PDF file with the expected calibrated color =
spaces.<br class=3D""></blockquote><br class=3D"">This is new as of =
today? What are the differences to QPDF? QPDF I use heavily in =
cups-filters and I have got&nbsp;some students adding features to it.<br =
class=3D""></blockquote><div class=3D""><br class=3D""></div>They can do =
similar things, but PDFio is both general-purpose (reading, "rewriting", =
and writing) and also won't be implementing useless writing features =
such as linearization and encryption. &nbsp;I'm also targeting PDFio for =
enbedded usage.</div><div class=3D""><br class=3D""></div><div =
class=3D""><div class=3D"">________________________<br class=3D"">Michael =
Sweet<br class=3D""><br class=3D""><br class=3D""></div><br =
class=3D""></div></body></html>=

--Apple-Mail=_E093D87A-76F2-4B61-B2B4-EF53DFD4DE64--
