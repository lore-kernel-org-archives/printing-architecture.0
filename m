Return-Path: <ku.b-list@gmx.de>
Message-ID: <538DB6C0.60507@gmx.de>
Date: Tue, 03 Jun 2014 13:51:28 +0200
From: Kai-Uwe Behrmann <ku.b-list@gmx.de>
MIME-Version: 1.0
References: <m3wqd2b8h7.fsf@carbon.jhcloos.org>	<m3oayc85fp.fsf@carbon.jhcloos.org>	<750B2F70-F6EC-42C6-93A9-C552193EFE8E@apple.com>	<m361kj88z0.fsf@carbon.jhcloos.org>	<3E7B815C-6CBE-4A7C-91B7-6212130BA254@apple.com>	<m3zjhv6sle.fsf@carbon.jhcloos.org>
	<m38upe4ya7.fsf@carbon.jhcloos.org>
In-Reply-To: <m38upe4ya7.fsf@carbon.jhcloos.org>
Content-Type: multipart/alternative;
	boundary="------------030406000103050005010505"
Subject: Re: [Printing-architecture] pwgtoraster vs calibrated spaces
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: James Cloos <cloos@jhcloos.com>, printing-architecture@lists.linux-foundation.org

This is a multi-part message in MIME format.
--------------030406000103050005010505
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Am 03.06.2014 02:44, schrieb James Cloos:
> This is an attempt at an sGray icc Based on Argyll's sRGB.
>
> Corrections or verifications welcome.
>
> If valid, or once fixed, rastertopdf should embed it when dealing with
> sGray pages.
>
>
>
>

Color space is not standard.
Data Color Space should be GRAY.

$ iccDumpProfile -v /tmp/sGray.icc
Profile:          '/tmp/sGray.icc'
Profile ID:       Profile ID not calculated.
Size:             2596(0xa24) bytes

Header
------
Attributes:       Reflective | Glossy
Cmm:              Little CMS
Creation Date:    6/2/2014  23:47:17
Creator:          'lcms' = 6C636D73
Data Color Space: Unknown 'sGra' = 73477261
Flags             EmbeddedProfileFalse | UseAnywhere
PCS Color Space:  XYZData
Platform:         Macintosh
Rendering Intent: Perceptual
Type:             DisplayClass
Version:          3.40
Illuminant:       X=0.9642, Y=1.0000, Z=0.8249

Profile Tags
------------
                      Tag    ID      Offset         Size
                     ----  ------    ------         ----
    profileDescriptionTag  'desc'       240           95
             copyrightTag  'cprt'       336           53
            technologyTag  'tech'       392           12
     viewingConditionsTag  'view'       404           36
             luminanceTag  'lumi'       440           20
           measurementTag  'meas'       460           36
       mediaWhitePointTag  'wtpt'       496           20
       mediaBlackPointTag  'bkpt'       516           20
               grayTRCTag  'kTRC'       536         2060

Validation Report
-----------------
Profile has Critical Error(s) that violate ICC specificaiton.

Error! -  - Unknown 'sGra' = 73477261: Unknown color space!
Error! - Critical tag(s) missing.

kind regards
Kai-Uwe

--------------030406000103050005010505
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <div class="moz-cite-prefix">Am 03.06.2014 02:44, schrieb James
      Cloos:<br>
    </div>
    <blockquote cite="mid:m38upe4ya7.fsf@carbon.jhcloos.org" type="cite">
      <pre wrap="">This is an attempt at an sGray icc Based on Argyll's sRGB.

Corrections or verifications welcome.

If valid, or once fixed, rastertopdf should embed it when dealing with
sGray pages.

</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
      <br>
    </blockquote>
    <br>
    Color space is not standard.<br>
    Data Color Space should be GRAY.<br>
    <br>
    $ iccDumpProfile -v /tmp/sGray.icc <br>
    Profile:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; '/tmp/sGray.icc'<br>
    Profile ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Profile ID not calculated.<br>
    Size:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2596(0xa24) bytes<br>
    <br>
    Header<br>
    ------<br>
    Attributes:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Reflective | Glossy<br>
    Cmm:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Little CMS<br>
    Creation Date:&nbsp;&nbsp;&nbsp; 6/2/2014&nbsp; 23:47:17<br>
    Creator:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 'lcms' = 6C636D73<br>
    Data Color Space: Unknown 'sGra' = 73477261<br>
    Flags&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; EmbeddedProfileFalse | UseAnywhere<br>
    PCS Color Space:&nbsp; XYZData<br>
    Platform:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Macintosh<br>
    Rendering Intent: Perceptual<br>
    Type:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DisplayClass<br>
    Version:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3.40<br>
    Illuminant:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; X=0.9642, Y=1.0000, Z=0.8249<br>
    <br>
    Profile Tags<br>
    ------------<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tag&nbsp;&nbsp;&nbsp; ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Offset&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Size<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ----&nbsp; ------&nbsp;&nbsp;&nbsp; ------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ----<br>
    &nbsp;&nbsp;&nbsp; profileDescriptionTag&nbsp; 'desc'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 240&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 95<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; copyrightTag&nbsp; 'cprt'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 336&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 53<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; technologyTag&nbsp; 'tech'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 392&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 12<br>
    &nbsp;&nbsp;&nbsp;&nbsp; viewingConditionsTag&nbsp; 'view'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 404&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 36<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; luminanceTag&nbsp; 'lumi'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 440&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 20<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; measurementTag&nbsp; 'meas'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 460&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 36<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mediaWhitePointTag&nbsp; 'wtpt'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 496&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 20<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mediaBlackPointTag&nbsp; 'bkpt'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 516&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 20<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; grayTRCTag&nbsp; 'kTRC'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 536&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2060<br>
    <br>
    Validation Report<br>
    -----------------<br>
    Profile has Critical Error(s) that violate ICC specificaiton.<br>
    <br>
    Error! -&nbsp; - Unknown 'sGra' = 73477261: Unknown color space!<br>
    Error! - Critical tag(s) missing.<br>
    <br>
    kind regards<br>
    Kai-Uwe<br>
  </body>
</html>

--------------030406000103050005010505--
