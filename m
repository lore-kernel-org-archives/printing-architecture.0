Return-Path: <blueroofmusic@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lrlXuvnWm2KxhTOw2AUcnGGFZCnVRHk8Hu3gA+A347w=;
 b=Ls9fEN7cy09Y1lqw0D1zS5FXqqhi8SBcUSLzBKFSDBzrnpJNGMutMmcNZuxugXNHhz
 HN4G1Uq/6x/vhMWt21/kuYqmF3XDPZAS2TUJFTXbJV1W1R7xPlTyyxv9dA26vwutpC7Z
 Ke9xJG9cut0JXq+m8Cg3hJwbbODbJ4oFXPVO3Duq8G9HEyG1vlnx9u64rvc6PJIA1tKn
 7nPyrD3X52qp/DwAI+Y98FHJtB35lq2Cn2w5UFAOl3i/jRRqFSG9GADY6sgnqBeYKVw0
 i3IuNMK9V3UMADg1jk7K+4N5fwgcX5+ubedS65o8DuLZG8RTvd6K3sz4YewnISQXFIvj
 cEww==
MIME-Version: 1.0
References: <bee7f14d-6869-2496-36ac-773a73822b47@gmail.com>
In-Reply-To: <bee7f14d-6869-2496-36ac-773a73822b47@gmail.com>
From: Ira McDonald <blueroofmusic@gmail.com>
Date: Sun, 15 Dec 2019 19:53:59 -0500
Message-ID: <CAN40gSsTjaS+tNcTPN=t=EAxUnRxZsxCuXnZXj06tn085rwHww@mail.gmail.com>
Content-Type: multipart/alternative; boundary="0000000000005fad470599c7a66d"
Subject: Re: [Printing-architecture] Driverless scanning: eSCL
 (HTTP/XML-based) has something to do with PWG?
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>, Ira McDonald <blueroofmusic@gmail.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>

--0000000000005fad470599c7a66d
Content-Type: text/plain; charset="UTF-8"

Hi Till,

Hopefully someone from Apple can comment here about AirScan.

eSCL is *not* a PWG protocol and I can't find any public info about
it in a quick search.  The acronym has apparently been used in the
past for other proprietary protocols, according to Google search,
for example this 10-year-old reference:

https://www.applied-motion.com/sites/default/files/hardware-manuals/eSCL_Comm_Reference.pdf

Cheers,
- Ira

Ira McDonald (Musician / Software Architect)
Co-Chair - TCG Trusted Mobility Solutions WG
Co-Chair - TCG Metadata Access Protocol SG
Chair - Linux Foundation Open Printing WG
Secretary - IEEE-ISTO Printer Working Group
Co-Chair - IEEE-ISTO PWG Internet Printing Protocol WG
IETF Designated Expert - IPP & Printer MIB
Blue Roof Music / High North Inc
http://sites.google.com/site/blueroofmusic
http://sites.google.com/site/highnorthinc
mailto: blueroofmusic@gmail.com
PO Box 221  Grand Marais, MI 49839  906-494-2434



On Sun, Dec 15, 2019 at 5:55 PM Till Kamppeter <till.kamppeter@gmail.com>
wrote:

> Hi,
>
> on the SANE developer mailing list is currently discussion about the eSCL
> scanning protocol as they are adding an eSCL scanning backend from a
> contributor.
>
> They found out that all multi-function devices which print via Apple
> AirPrint
> support the eSCL scanning protocol, as part of AirScan. The protocol works
> with
> communication vis HTTP(S) and in XML format. To be driverless (no
> device-model-specific code or data) one can poll the capabilities of the
> scanner
> and then set scan options and scan. Image data is returned in JPEG, PNG,
> or PDF,
> depending on the model.
>
> Devices advertise themselves via DNS-SD with registration type _uscan._tcp
> and
> in the TXT record having a "rs=/eSCL" entry.
>
> This all works principally on the network, but it also works on devices
> connected by USB when they support IPP-over-USB and ippusbxd is running
> for
> them. So this way one can for the first time print and scan through
> ippusbxd.
>
> When I see the output of a capabilities poll (see below) one sees a lot of
> "pwg". Is ESCL an (older) PWG standard or has it generally something to do
> with
> the PWG?
>
>     Till
>
> ----------
>
> Full DNS-SD record:
>
> ----------
> Found service 'Deskjet 2540 series [E7DDC7]' of type '_uscan._tcp' in
> domain
> 'local' on 3.1.
> Service data for service 'Deskjet 2540 series [E7DDC7]' of type
> '_uscan._tcp' in
> domain 'local' on 3.0:
>      Host HP5CB901E7DDC7.local (192.168.223.1), port 8080, TXT data:
> ['duplex=F', 'is=platen', 'cs=binary,color,grayscale', 'rs=/eSCL',
> 'representation=', 'UUID=1c852a4d-b800-1f08-abcd-5cb901e7ddc7', 'note=',
> 'adminurl=http://HP5CB901E7DDC7.local.', 'ty=HP Deskjet 2540 series',
> 'pdl=application/octet-stream,application/pdf,image/jpeg', 'vers=2.0',
> 'txtvers=1']
> ----------
>
> Get capabilities:
>
> wget http://192.168.223.1:8080/eSCL/ScannerCapabilities
>
> or with ippusbxd running ia USB:
>
> wget http://localhost:60000/eSCL/ScannerCapabilities
>
> This results in:
>
> ----------
> <!--  -->
> <scan:ScannerCapabilities
> xmlns:scan="http://schemas.hp.com/imaging/escl/2011/05/03"
> xmlns:pwg="http://www.pwg.org/schemas/2010/12/sm"
> xmlns:dest="http://schemas.hp.com/imaging/destination/2011/06/06"
> xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
> xsi:schemaLocation="http://schemas.hp.com/imaging/escl/2011/05/03
> ../../schemas/eSCL-1_92.xsd">
> <pwg:Version>2.0</pwg:Version>
> <pwg:MakeAndModel>xxxx</pwg:MakeAndModel>
> <pwg:SerialNumber>25</pwg:SerialNumber>
> <scan:Platen>
> <scan:PlatenInputCaps>
> <scan:MinWidth>8</scan:MinWidth>
> <scan:MaxWidth>2550</scan:MaxWidth>
> <scan:MinHeight>8</scan:MinHeight>
> <scan:MaxHeight>3508</scan:MaxHeight>
> <scan:MaxScanRegions>1</scan:MaxScanRegions>
> <scan:SettingProfiles>
> <scan:SettingProfile>
> <scan:ColorModes>
> <scan:ColorMode>Grayscale8</scan:ColorMode>
> <scan:ColorMode>RGB24</scan:ColorMode>
> </scan:ColorModes>
> <scan:ContentTypes>
> <pwg:ContentType>Photo</pwg:ContentType>
> <pwg:ContentType>Text</pwg:ContentType>
> <pwg:ContentType>TextAndPhoto</pwg:ContentType>
> </scan:ContentTypes>
> <scan:DocumentFormats>
> <pwg:DocumentFormat>application/octet-stream</pwg:DocumentFormat>
> <pwg:DocumentFormat>image/jpeg</pwg:DocumentFormat>
> <pwg:DocumentFormat>application/pdf</pwg:DocumentFormat>
> </scan:DocumentFormats>
> <scan:SupportedResolutions>
> <scan:DiscreteResolutions>
> <scan:DiscreteResolution>
> <scan:XResolution>75</scan:XResolution>
> <scan:YResolution>75</scan:YResolution>
> </scan:DiscreteResolution>
> <scan:DiscreteResolution>
> <scan:XResolution>100</scan:XResolution>
> <scan:YResolution>100</scan:YResolution>
> </scan:DiscreteResolution>
> <scan:DiscreteResolution>
> <scan:XResolution>200</scan:XResolution>
> <scan:YResolution>200</scan:YResolution>
> </scan:DiscreteResolution>
> <scan:DiscreteResolution>
> <scan:XResolution>300</scan:XResolution>
> <scan:YResolution>300</scan:YResolution>
> </scan:DiscreteResolution>
> <scan:DiscreteResolution>
> <scan:XResolution>600</scan:XResolution>
> <scan:YResolution>600</scan:YResolution>
> </scan:DiscreteResolution>
> <scan:DiscreteResolution>
> <scan:XResolution>1200</scan:XResolution>
> <scan:YResolution>1200</scan:YResolution>
> </scan:DiscreteResolution>
> <scan:DiscreteResolution>
> <scan:XResolution>2400</scan:XResolution>
> <scan:YResolution>2400</scan:YResolution>
> </scan:DiscreteResolution>
> </scan:DiscreteResolutions>
> </scan:SupportedResolutions>
> <scan:ColorSpaces>
> <scan:ColorSpace>YCC</scan:ColorSpace>
> <scan:ColorSpace>RGB</scan:ColorSpace>
> <scan:ColorSpace>sRGB</scan:ColorSpace>
> </scan:ColorSpaces>
> </scan:SettingProfile>
> </scan:SettingProfiles>
> <scan:SupportedIntents>
> <scan:Intent>Document</scan:Intent>
> <scan:Intent>Photo</scan:Intent>
> <scan:Intent>Preview</scan:Intent>
> <scan:Intent>TextAndGraphic</scan:Intent>
> </scan:SupportedIntents>
> <scan:MaxOpticalXResolution>2400</scan:MaxOpticalXResolution>
> <scan:MaxOpticalYResolution>2400</scan:MaxOpticalYResolution>
> <scan:RiskyLeftMargin>34</scan:RiskyLeftMargin>
> <scan:RiskyRightMargin>33</scan:RiskyRightMargin>
> <scan:RiskyTopMargin>34</scan:RiskyTopMargin>
> <scan:RiskyBottomMargin>46</scan:RiskyBottomMargin>
> </scan:PlatenInputCaps>
> </scan:Platen>
> <scan:BrightnessSupport>
> <scan:Min>0</scan:Min>
> <scan:Max>2000</scan:Max>
> <scan:Step>1</scan:Step>
> </scan:BrightnessSupport>
> <scan:ContrastSupport>
> <scan:Min>0</scan:Min>
> <scan:Max>2000</scan:Max>
> <scan:Step>1</scan:Step>
> </scan:ContrastSupport>
> <scan:HighlightSupport>
> <scan:Min>0</scan:Min>
> <scan:Max>255</scan:Max>
> <scan:Normal>179</scan:Normal>
> <scan:Step>1</scan:Step>
> </scan:HighlightSupport>
> <scan:ShadowSupport>
> <scan:Min>0</scan:Min>
> <scan:Max>255</scan:Max>
> <scan:Normal>25</scan:Normal>
> <scan:Step>1</scan:Step>
> </scan:ShadowSupport>
> <scan:SharpenSupport>
> <scan:Min>0</scan:Min>
> <scan:Max>255</scan:Max>
> <scan:Step>1</scan:Step>
> </scan:SharpenSupport>
> <scan:ThresholdSupport>
> <scan:Min>0</scan:Min>
> <scan:Max>255</scan:Max>
> <scan:Normal>128</scan:Normal>
> <scan:Step>1</scan:Step>
> </scan:ThresholdSupport>
> </scan:ScannerCapabilities>
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>

--0000000000005fad470599c7a66d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Till,</div><div><br></div><div>Hopefully someone f=
rom Apple can comment here about AirScan.</div><div><br></div><div>eSCL is =
*not* a PWG protocol and I can&#39;t find any public info about</div><div>i=
t in a quick search.=C2=A0 The acronym has apparently been used in the</div=
><div>past for other proprietary protocols, according to Google search,</di=
v><div>for example this 10-year-old reference:</div><div><br></div><div><a =
href=3D"https://www.applied-motion.com/sites/default/files/hardware-manuals=
/eSCL_Comm_Reference.pdf">https://www.applied-motion.com/sites/default/file=
s/hardware-manuals/eSCL_Comm_Reference.pdf</a></div><div><br></div><div></d=
iv><div>Cheers,</div><div>- Ira</div><div><br></div><div><div><div dir=3D"l=
tr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=
=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr">=
Ira McDonald (Musician / Software Architect)<br>Co-Chair - TCG Trusted Mobi=
lity Solutions WG</div><div>Co-Chair - TCG Metadata Access Protocol SG<br><=
/div><div dir=3D"ltr">Chair - Linux Foundation Open Printing WG<br>Secretar=
y - IEEE-ISTO Printer Working Group<br>Co-Chair - IEEE-ISTO PWG Internet Pr=
inting Protocol WG<br>IETF Designated Expert - IPP &amp; Printer MIB<br>Blu=
e Roof Music / High North Inc<br><a style=3D"color:rgb(51,51,255)" href=3D"=
http://sites.google.com/site/blueroofmusic" target=3D"_blank">http://sites.=
google.com/site/blueroofmusic</a><br><a style=3D"color:rgb(102,0,204)" href=
=3D"http://sites.google.com/site/highnorthinc" target=3D"_blank">http://sit=
es.google.com/site/highnorthinc</a><br>mailto: <a href=3D"mailto:blueroofmu=
sic@gmail.com" target=3D"_blank">blueroofmusic@gmail.com</a><br>PO Box 221=
=C2=A0 Grand Marais, MI 49839=C2=A0 906-494-2434<br><br><div style=3D"displ=
ay:inline"></div><div style=3D"display:inline"></div><div style=3D"display:=
inline"></div><div></div><div></div><div></div><div></div></div></div></div=
></div></div></div></div></div></div><br></div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Dec 15, 2019 at 5:55=
 PM Till Kamppeter &lt;<a href=3D"mailto:till.kamppeter@gmail.com">till.kam=
ppeter@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">Hi,<br>
<br>
on the SANE developer mailing list is currently discussion about the eSCL <=
br>
scanning protocol as they are adding an eSCL scanning backend from a contri=
butor.<br>
<br>
They found out that all multi-function devices which print via Apple AirPri=
nt <br>
support the eSCL scanning protocol, as part of AirScan. The protocol works =
with <br>
communication vis HTTP(S) and in XML format. To be driverless (no <br>
device-model-specific code or data) one can poll the capabilities of the sc=
anner <br>
and then set scan options and scan. Image data is returned in JPEG, PNG, or=
 PDF, <br>
depending on the model.<br>
<br>
Devices advertise themselves via DNS-SD with registration type _uscan._tcp =
and <br>
in the TXT record having a &quot;rs=3D/eSCL&quot; entry.<br>
<br>
This all works principally on the network, but it also works on devices <br=
>
connected by USB when they support IPP-over-USB and ippusbxd is running for=
 <br>
them. So this way one can for the first time print and scan through ippusbx=
d.<br>
<br>
When I see the output of a capabilities poll (see below) one sees a lot of =
<br>
&quot;pwg&quot;. Is ESCL an (older) PWG standard or has it generally someth=
ing to do with <br>
the PWG?<br>
<br>
=C2=A0 =C2=A0 Till<br>
<br>
----------<br>
<br>
Full DNS-SD record:<br>
<br>
----------<br>
Found service &#39;Deskjet 2540 series [E7DDC7]&#39; of type &#39;_uscan._t=
cp&#39; in domain <br>
&#39;local&#39; on 3.1.<br>
Service data for service &#39;Deskjet 2540 series [E7DDC7]&#39; of type &#3=
9;_uscan._tcp&#39; in <br>
domain &#39;local&#39; on 3.0:<br>
=C2=A0 =C2=A0 =C2=A0Host HP5CB901E7DDC7.local (192.168.223.1), port 8080, T=
XT data: <br>
[&#39;duplex=3DF&#39;, &#39;is=3Dplaten&#39;, &#39;cs=3Dbinary,color,graysc=
ale&#39;, &#39;rs=3D/eSCL&#39;, <br>
&#39;representation=3D&#39;, &#39;UUID=3D1c852a4d-b800-1f08-abcd-5cb901e7dd=
c7&#39;, &#39;note=3D&#39;, <br>
&#39;adminurl=3D<a href=3D"http://HP5CB901E7DDC7.local." rel=3D"noreferrer"=
 target=3D"_blank">http://HP5CB901E7DDC7.local.</a>&#39;, &#39;ty=3DHP Desk=
jet 2540 series&#39;, <br>
&#39;pdl=3Dapplication/octet-stream,application/pdf,image/jpeg&#39;, &#39;v=
ers=3D2.0&#39;, &#39;txtvers=3D1&#39;]<br>
----------<br>
<br>
Get capabilities:<br>
<br>
wget <a href=3D"http://192.168.223.1:8080/eSCL/ScannerCapabilities" rel=3D"=
noreferrer" target=3D"_blank">http://192.168.223.1:8080/eSCL/ScannerCapabil=
ities</a><br>
<br>
or with ippusbxd running ia USB:<br>
<br>
wget <a href=3D"http://localhost:60000/eSCL/ScannerCapabilities" rel=3D"nor=
eferrer" target=3D"_blank">http://localhost:60000/eSCL/ScannerCapabilities<=
/a><br>
<br>
This results in:<br>
<br>
----------<br>
&lt;!--=C2=A0 --&gt;<br>
&lt;scan:ScannerCapabilities <br>
xmlns:scan=3D&quot;<a href=3D"http://schemas.hp.com/imaging/escl/2011/05/03=
" rel=3D"noreferrer" target=3D"_blank">http://schemas.hp.com/imaging/escl/2=
011/05/03</a>&quot; <br>
xmlns:pwg=3D&quot;<a href=3D"http://www.pwg.org/schemas/2010/12/sm" rel=3D"=
noreferrer" target=3D"_blank">http://www.pwg.org/schemas/2010/12/sm</a>&quo=
t; <br>
xmlns:dest=3D&quot;<a href=3D"http://schemas.hp.com/imaging/destination/201=
1/06/06" rel=3D"noreferrer" target=3D"_blank">http://schemas.hp.com/imaging=
/destination/2011/06/06</a>&quot; <br>
xmlns:xsi=3D&quot;<a href=3D"http://www.w3.org/2001/XMLSchema-instance" rel=
=3D"noreferrer" target=3D"_blank">http://www.w3.org/2001/XMLSchema-instance=
</a>&quot; <br>
xsi:schemaLocation=3D&quot;<a href=3D"http://schemas.hp.com/imaging/escl/20=
11/05/03" rel=3D"noreferrer" target=3D"_blank">http://schemas.hp.com/imagin=
g/escl/2011/05/03</a> <br>
../../schemas/eSCL-1_92.xsd&quot;&gt;<br>
&lt;pwg:Version&gt;2.0&lt;/pwg:Version&gt;<br>
&lt;pwg:MakeAndModel&gt;xxxx&lt;/pwg:MakeAndModel&gt;<br>
&lt;pwg:SerialNumber&gt;25&lt;/pwg:SerialNumber&gt;<br>
&lt;scan:Platen&gt;<br>
&lt;scan:PlatenInputCaps&gt;<br>
&lt;scan:MinWidth&gt;8&lt;/scan:MinWidth&gt;<br>
&lt;scan:MaxWidth&gt;2550&lt;/scan:MaxWidth&gt;<br>
&lt;scan:MinHeight&gt;8&lt;/scan:MinHeight&gt;<br>
&lt;scan:MaxHeight&gt;3508&lt;/scan:MaxHeight&gt;<br>
&lt;scan:MaxScanRegions&gt;1&lt;/scan:MaxScanRegions&gt;<br>
&lt;scan:SettingProfiles&gt;<br>
&lt;scan:SettingProfile&gt;<br>
&lt;scan:ColorModes&gt;<br>
&lt;scan:ColorMode&gt;Grayscale8&lt;/scan:ColorMode&gt;<br>
&lt;scan:ColorMode&gt;RGB24&lt;/scan:ColorMode&gt;<br>
&lt;/scan:ColorModes&gt;<br>
&lt;scan:ContentTypes&gt;<br>
&lt;pwg:ContentType&gt;Photo&lt;/pwg:ContentType&gt;<br>
&lt;pwg:ContentType&gt;Text&lt;/pwg:ContentType&gt;<br>
&lt;pwg:ContentType&gt;TextAndPhoto&lt;/pwg:ContentType&gt;<br>
&lt;/scan:ContentTypes&gt;<br>
&lt;scan:DocumentFormats&gt;<br>
&lt;pwg:DocumentFormat&gt;application/octet-stream&lt;/pwg:DocumentFormat&g=
t;<br>
&lt;pwg:DocumentFormat&gt;image/jpeg&lt;/pwg:DocumentFormat&gt;<br>
&lt;pwg:DocumentFormat&gt;application/pdf&lt;/pwg:DocumentFormat&gt;<br>
&lt;/scan:DocumentFormats&gt;<br>
&lt;scan:SupportedResolutions&gt;<br>
&lt;scan:DiscreteResolutions&gt;<br>
&lt;scan:DiscreteResolution&gt;<br>
&lt;scan:XResolution&gt;75&lt;/scan:XResolution&gt;<br>
&lt;scan:YResolution&gt;75&lt;/scan:YResolution&gt;<br>
&lt;/scan:DiscreteResolution&gt;<br>
&lt;scan:DiscreteResolution&gt;<br>
&lt;scan:XResolution&gt;100&lt;/scan:XResolution&gt;<br>
&lt;scan:YResolution&gt;100&lt;/scan:YResolution&gt;<br>
&lt;/scan:DiscreteResolution&gt;<br>
&lt;scan:DiscreteResolution&gt;<br>
&lt;scan:XResolution&gt;200&lt;/scan:XResolution&gt;<br>
&lt;scan:YResolution&gt;200&lt;/scan:YResolution&gt;<br>
&lt;/scan:DiscreteResolution&gt;<br>
&lt;scan:DiscreteResolution&gt;<br>
&lt;scan:XResolution&gt;300&lt;/scan:XResolution&gt;<br>
&lt;scan:YResolution&gt;300&lt;/scan:YResolution&gt;<br>
&lt;/scan:DiscreteResolution&gt;<br>
&lt;scan:DiscreteResolution&gt;<br>
&lt;scan:XResolution&gt;600&lt;/scan:XResolution&gt;<br>
&lt;scan:YResolution&gt;600&lt;/scan:YResolution&gt;<br>
&lt;/scan:DiscreteResolution&gt;<br>
&lt;scan:DiscreteResolution&gt;<br>
&lt;scan:XResolution&gt;1200&lt;/scan:XResolution&gt;<br>
&lt;scan:YResolution&gt;1200&lt;/scan:YResolution&gt;<br>
&lt;/scan:DiscreteResolution&gt;<br>
&lt;scan:DiscreteResolution&gt;<br>
&lt;scan:XResolution&gt;2400&lt;/scan:XResolution&gt;<br>
&lt;scan:YResolution&gt;2400&lt;/scan:YResolution&gt;<br>
&lt;/scan:DiscreteResolution&gt;<br>
&lt;/scan:DiscreteResolutions&gt;<br>
&lt;/scan:SupportedResolutions&gt;<br>
&lt;scan:ColorSpaces&gt;<br>
&lt;scan:ColorSpace&gt;YCC&lt;/scan:ColorSpace&gt;<br>
&lt;scan:ColorSpace&gt;RGB&lt;/scan:ColorSpace&gt;<br>
&lt;scan:ColorSpace&gt;sRGB&lt;/scan:ColorSpace&gt;<br>
&lt;/scan:ColorSpaces&gt;<br>
&lt;/scan:SettingProfile&gt;<br>
&lt;/scan:SettingProfiles&gt;<br>
&lt;scan:SupportedIntents&gt;<br>
&lt;scan:Intent&gt;Document&lt;/scan:Intent&gt;<br>
&lt;scan:Intent&gt;Photo&lt;/scan:Intent&gt;<br>
&lt;scan:Intent&gt;Preview&lt;/scan:Intent&gt;<br>
&lt;scan:Intent&gt;TextAndGraphic&lt;/scan:Intent&gt;<br>
&lt;/scan:SupportedIntents&gt;<br>
&lt;scan:MaxOpticalXResolution&gt;2400&lt;/scan:MaxOpticalXResolution&gt;<b=
r>
&lt;scan:MaxOpticalYResolution&gt;2400&lt;/scan:MaxOpticalYResolution&gt;<b=
r>
&lt;scan:RiskyLeftMargin&gt;34&lt;/scan:RiskyLeftMargin&gt;<br>
&lt;scan:RiskyRightMargin&gt;33&lt;/scan:RiskyRightMargin&gt;<br>
&lt;scan:RiskyTopMargin&gt;34&lt;/scan:RiskyTopMargin&gt;<br>
&lt;scan:RiskyBottomMargin&gt;46&lt;/scan:RiskyBottomMargin&gt;<br>
&lt;/scan:PlatenInputCaps&gt;<br>
&lt;/scan:Platen&gt;<br>
&lt;scan:BrightnessSupport&gt;<br>
&lt;scan:Min&gt;0&lt;/scan:Min&gt;<br>
&lt;scan:Max&gt;2000&lt;/scan:Max&gt;<br>
&lt;scan:Step&gt;1&lt;/scan:Step&gt;<br>
&lt;/scan:BrightnessSupport&gt;<br>
&lt;scan:ContrastSupport&gt;<br>
&lt;scan:Min&gt;0&lt;/scan:Min&gt;<br>
&lt;scan:Max&gt;2000&lt;/scan:Max&gt;<br>
&lt;scan:Step&gt;1&lt;/scan:Step&gt;<br>
&lt;/scan:ContrastSupport&gt;<br>
&lt;scan:HighlightSupport&gt;<br>
&lt;scan:Min&gt;0&lt;/scan:Min&gt;<br>
&lt;scan:Max&gt;255&lt;/scan:Max&gt;<br>
&lt;scan:Normal&gt;179&lt;/scan:Normal&gt;<br>
&lt;scan:Step&gt;1&lt;/scan:Step&gt;<br>
&lt;/scan:HighlightSupport&gt;<br>
&lt;scan:ShadowSupport&gt;<br>
&lt;scan:Min&gt;0&lt;/scan:Min&gt;<br>
&lt;scan:Max&gt;255&lt;/scan:Max&gt;<br>
&lt;scan:Normal&gt;25&lt;/scan:Normal&gt;<br>
&lt;scan:Step&gt;1&lt;/scan:Step&gt;<br>
&lt;/scan:ShadowSupport&gt;<br>
&lt;scan:SharpenSupport&gt;<br>
&lt;scan:Min&gt;0&lt;/scan:Min&gt;<br>
&lt;scan:Max&gt;255&lt;/scan:Max&gt;<br>
&lt;scan:Step&gt;1&lt;/scan:Step&gt;<br>
&lt;/scan:SharpenSupport&gt;<br>
&lt;scan:ThresholdSupport&gt;<br>
&lt;scan:Min&gt;0&lt;/scan:Min&gt;<br>
&lt;scan:Max&gt;255&lt;/scan:Max&gt;<br>
&lt;scan:Normal&gt;128&lt;/scan:Normal&gt;<br>
&lt;scan:Step&gt;1&lt;/scan:Step&gt;<br>
&lt;/scan:ThresholdSupport&gt;<br>
&lt;/scan:ScannerCapabilities&gt;<br>
_______________________________________________<br>
Printing-architecture mailing list<br>
<a href=3D"mailto:Printing-architecture@lists.linux-foundation.org" target=
=3D"_blank">Printing-architecture@lists.linux-foundation.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/printing-arch=
itecture" rel=3D"noreferrer" target=3D"_blank">https://lists.linuxfoundatio=
n.org/mailman/listinfo/printing-architecture</a><br>
</blockquote></div>

--0000000000005fad470599c7a66d--
