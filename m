Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=Bq3CXnAwLyl3+eyxBfCjJ9vXunnamgZhXqDE0VAEz04=;
 b=bVRlA++aI3DQHbJmahqT7UoJrafPW20AGghVXqYdAmiGmpeQUDTwRFwc3yqkZLcSHV
 zGxh2GU2XvxfswIuyW+7ITaHY8eVoPc2GTNtVUl4T1S6j1LrL3SCvg4v/EmRqsufhClo
 yqF8S1qhkNOB51FG5jQ4QJL/E4JzkYTuIdJkPwlnS5XivyZeYlKHgoR0DN3sOXEZcjEI
 K0DJfXX/thHuvyILOKuOO10LB7iZNHu7vUXgqbIIU/CHKSzEylN8r72ngt3KfPUIyvqP
 lRM5vdcT1hgy6Jgm5Uvdrq3w8ZJ72kiHXNSDxFmI7KR1tN4pOw9l6coHiyhpqkUs9Dd0
 ZDbA==
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <bee7f14d-6869-2496-36ac-773a73822b47@gmail.com>
Date: Sun, 15 Dec 2019 19:55:45 -0300
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Driverless scanning: eSCL (HTTP/XML-based)
 has something to do with PWG?
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Open Printing <printing-architecture@lists.linux-foundation.org>

Hi,

on the SANE developer mailing list is currently discussion about the eSCL 
scanning protocol as they are adding an eSCL scanning backend from a contributor.

They found out that all multi-function devices which print via Apple AirPrint 
support the eSCL scanning protocol, as part of AirScan. The protocol works with 
communication vis HTTP(S) and in XML format. To be driverless (no 
device-model-specific code or data) one can poll the capabilities of the scanner 
and then set scan options and scan. Image data is returned in JPEG, PNG, or PDF, 
depending on the model.

Devices advertise themselves via DNS-SD with registration type _uscan._tcp and 
in the TXT record having a "rs=/eSCL" entry.

This all works principally on the network, but it also works on devices 
connected by USB when they support IPP-over-USB and ippusbxd is running for 
them. So this way one can for the first time print and scan through ippusbxd.

When I see the output of a capabilities poll (see below) one sees a lot of 
"pwg". Is ESCL an (older) PWG standard or has it generally something to do with 
the PWG?

    Till

----------

Full DNS-SD record:

----------
Found service 'Deskjet 2540 series [E7DDC7]' of type '_uscan._tcp' in domain 
'local' on 3.1.
Service data for service 'Deskjet 2540 series [E7DDC7]' of type '_uscan._tcp' in 
domain 'local' on 3.0:
     Host HP5CB901E7DDC7.local (192.168.223.1), port 8080, TXT data: 
['duplex=F', 'is=platen', 'cs=binary,color,grayscale', 'rs=/eSCL', 
'representation=', 'UUID=1c852a4d-b800-1f08-abcd-5cb901e7ddc7', 'note=', 
'adminurl=http://HP5CB901E7DDC7.local.', 'ty=HP Deskjet 2540 series', 
'pdl=application/octet-stream,application/pdf,image/jpeg', 'vers=2.0', 'txtvers=1']
----------

Get capabilities:

wget http://192.168.223.1:8080/eSCL/ScannerCapabilities

or with ippusbxd running ia USB:

wget http://localhost:60000/eSCL/ScannerCapabilities

This results in:

----------
<!--  -->
<scan:ScannerCapabilities 
xmlns:scan="http://schemas.hp.com/imaging/escl/2011/05/03" 
xmlns:pwg="http://www.pwg.org/schemas/2010/12/sm" 
xmlns:dest="http://schemas.hp.com/imaging/destination/2011/06/06" 
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
xsi:schemaLocation="http://schemas.hp.com/imaging/escl/2011/05/03 
../../schemas/eSCL-1_92.xsd">
<pwg:Version>2.0</pwg:Version>
<pwg:MakeAndModel>xxxx</pwg:MakeAndModel>
<pwg:SerialNumber>25</pwg:SerialNumber>
<scan:Platen>
<scan:PlatenInputCaps>
<scan:MinWidth>8</scan:MinWidth>
<scan:MaxWidth>2550</scan:MaxWidth>
<scan:MinHeight>8</scan:MinHeight>
<scan:MaxHeight>3508</scan:MaxHeight>
<scan:MaxScanRegions>1</scan:MaxScanRegions>
<scan:SettingProfiles>
<scan:SettingProfile>
<scan:ColorModes>
<scan:ColorMode>Grayscale8</scan:ColorMode>
<scan:ColorMode>RGB24</scan:ColorMode>
</scan:ColorModes>
<scan:ContentTypes>
<pwg:ContentType>Photo</pwg:ContentType>
<pwg:ContentType>Text</pwg:ContentType>
<pwg:ContentType>TextAndPhoto</pwg:ContentType>
</scan:ContentTypes>
<scan:DocumentFormats>
<pwg:DocumentFormat>application/octet-stream</pwg:DocumentFormat>
<pwg:DocumentFormat>image/jpeg</pwg:DocumentFormat>
<pwg:DocumentFormat>application/pdf</pwg:DocumentFormat>
</scan:DocumentFormats>
<scan:SupportedResolutions>
<scan:DiscreteResolutions>
<scan:DiscreteResolution>
<scan:XResolution>75</scan:XResolution>
<scan:YResolution>75</scan:YResolution>
</scan:DiscreteResolution>
<scan:DiscreteResolution>
<scan:XResolution>100</scan:XResolution>
<scan:YResolution>100</scan:YResolution>
</scan:DiscreteResolution>
<scan:DiscreteResolution>
<scan:XResolution>200</scan:XResolution>
<scan:YResolution>200</scan:YResolution>
</scan:DiscreteResolution>
<scan:DiscreteResolution>
<scan:XResolution>300</scan:XResolution>
<scan:YResolution>300</scan:YResolution>
</scan:DiscreteResolution>
<scan:DiscreteResolution>
<scan:XResolution>600</scan:XResolution>
<scan:YResolution>600</scan:YResolution>
</scan:DiscreteResolution>
<scan:DiscreteResolution>
<scan:XResolution>1200</scan:XResolution>
<scan:YResolution>1200</scan:YResolution>
</scan:DiscreteResolution>
<scan:DiscreteResolution>
<scan:XResolution>2400</scan:XResolution>
<scan:YResolution>2400</scan:YResolution>
</scan:DiscreteResolution>
</scan:DiscreteResolutions>
</scan:SupportedResolutions>
<scan:ColorSpaces>
<scan:ColorSpace>YCC</scan:ColorSpace>
<scan:ColorSpace>RGB</scan:ColorSpace>
<scan:ColorSpace>sRGB</scan:ColorSpace>
</scan:ColorSpaces>
</scan:SettingProfile>
</scan:SettingProfiles>
<scan:SupportedIntents>
<scan:Intent>Document</scan:Intent>
<scan:Intent>Photo</scan:Intent>
<scan:Intent>Preview</scan:Intent>
<scan:Intent>TextAndGraphic</scan:Intent>
</scan:SupportedIntents>
<scan:MaxOpticalXResolution>2400</scan:MaxOpticalXResolution>
<scan:MaxOpticalYResolution>2400</scan:MaxOpticalYResolution>
<scan:RiskyLeftMargin>34</scan:RiskyLeftMargin>
<scan:RiskyRightMargin>33</scan:RiskyRightMargin>
<scan:RiskyTopMargin>34</scan:RiskyTopMargin>
<scan:RiskyBottomMargin>46</scan:RiskyBottomMargin>
</scan:PlatenInputCaps>
</scan:Platen>
<scan:BrightnessSupport>
<scan:Min>0</scan:Min>
<scan:Max>2000</scan:Max>
<scan:Step>1</scan:Step>
</scan:BrightnessSupport>
<scan:ContrastSupport>
<scan:Min>0</scan:Min>
<scan:Max>2000</scan:Max>
<scan:Step>1</scan:Step>
</scan:ContrastSupport>
<scan:HighlightSupport>
<scan:Min>0</scan:Min>
<scan:Max>255</scan:Max>
<scan:Normal>179</scan:Normal>
<scan:Step>1</scan:Step>
</scan:HighlightSupport>
<scan:ShadowSupport>
<scan:Min>0</scan:Min>
<scan:Max>255</scan:Max>
<scan:Normal>25</scan:Normal>
<scan:Step>1</scan:Step>
</scan:ShadowSupport>
<scan:SharpenSupport>
<scan:Min>0</scan:Min>
<scan:Max>255</scan:Max>
<scan:Step>1</scan:Step>
</scan:SharpenSupport>
<scan:ThresholdSupport>
<scan:Min>0</scan:Min>
<scan:Max>255</scan:Max>
<scan:Normal>128</scan:Normal>
<scan:Step>1</scan:Step>
</scan:ThresholdSupport>
</scan:ScannerCapabilities>
