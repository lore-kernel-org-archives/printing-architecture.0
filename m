Message-ID: <2F7D63A21DB2C74EB8EB8C09AF667DB04A34E8@eitc220.eitc.epson.com>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Date: Mon, 19 Apr 2004 10:35:36 -0700
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01C42634.B986CA70"
Subject: [Printing-architecture] Questions on the Vector Driver API
List-Id: Printing architecture under linux
	<printing-architecture.mail.freestandards.org>
List-Unsubscribe: <http://mail.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@mail.freestandards.org?subject=unsubscribe>
List-Archive: <http://mail.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@mail.freestandards.org>
List-Help: <mailto:printing-architecture-request@mail.freestandards.org?subject=help>
List-Subscribe: <http://mail.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@mail.freestandards.org?subject=subscribe>
To: printing-japan@freestandards.org, printing-architecture@freestandards.org, printing-driver@freestandards.org
Cc: "Petrie, Glen" <glen.petrie@eitc.epson.com>

This message is in MIME format. Since your mail reader does not understand
this format, some or all of this message may not be legible.

------_=_NextPart_001_01C42634.B986CA70
Content-Type: text/plain

Hello,

 

I have reviewed the vector driver specification in detail and have some
questions.

 

General Comments

 

1.        All API specifications must work on/from Mobile/IA Devices,
Desktop, Office and/to Production printing solutions.  Mobile/IA solutions
places memory constraints not considered in higher-end solution; however, I
believe and it has been the general consensus that APIs should take
Mobile/IA memory constraints into consideration in their design.

2.        To avoid the overhead associated with floating point; it has
generally been accepted that the API's not contain floating point numbers. 

 

Specific comments

 

1.        It appears that the API comprehends only a single job at a time.
This means the higher level systems must hold and manage jobs or you are
instantiating a new instance of the driver for each job. This bring ups the
issue of . . . 

a.    Based on general comment 1. above, multiple instantiations is not
advisable.  I believe the solution is to have the driver API support
multiple Job across the API with a single instantiation of the driver.  To
do this, the first argument of each function call is not printerContext but
JobId.   A JobId structure (i.e. the job) would then contain the
printerContext for the job.  There would be an API call to set and get the
printerContext for the job.

2.        Again based on the general comment 1. above, the issue of memory
does not really support an API that "only" has string transfer of job,
document and page key/value attributes.  This even more significant since
the Steering Committee has asked that the driver key/value be aligned the
with Job-Ticket list which is richer that the current Driver API list.

a.    I suggest that the US driver group investigate this as we extend the
Japanese Vector Driver API for Raster support.

3.        There appears to be some inconsistency between the Color Spaces
listed on Page 9 and Page 45.

a.    Shouldn't there be just one Color Space list

4.        What is the "Fix" data type?

5.        Based on general comment 2. above, I would like to suggest
changing the SetAlphaConstant and GetAlphaConstant from using a float value
to an integer that is 10 times or 100 times the need alpha constant.  For
example Alpha of 0.89 would be 89 in the API.

6.        Several of the US teams have adopted a stricter data sizing by
using a data type naming convention for simple types; for example, do not
use "int" since it has no specific size and in API's where data size may
matter, the use of "int" in not recommended.  I would like to suggest the
#define be made for the following basic types which are resolved at
development time.

a.    BIT8

b.    INT8

c.    BIT16

d.    INT16

e.    BIT32

f.    INT32

g.    BIT64

h.    INT64

7.        In the TransferRasterData call the data to be transferred is typed
as "unsigned char".  The size of "char" is not technically defined in C
(most people take it to be 8 bits) and I have worked on platforms where a
char is 32-bit in length - not 8-bit.   I suggest the type for "data" be
changed to BIT8.

8.        There appears to be some inconsistency in naming convention.
Sometime two word variable names have the second work capitalized and
sometimes not.  Sometime arguments that are pointers start with a "p" and
sometimes not. 

 

 

 

Rgds, 
Glen W. Petrie 
Epson Imaging Technology Center 
150 River Oaks Parkway, Suite 200 
San Jose, CA, 95134 
Voice: 408.576.4131  Fax: 408.474.0511 

 


------_=_NextPart_001_01C42634.B986CA70
Content-Type: text/html
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:st1=3D"urn:schemas-microsoft-com:office:smarttags" =
xmlns=3D"http://www.w3.org/TR/REC-html40">

<head>
<META HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Dus-ascii">


<meta name=3DGenerator content=3D"Microsoft Word 11 (filtered medium)">
<o:SmartTagType =
namespaceuri=3D"urn:schemas-microsoft-com:office:smarttags"
 name=3D"country-region"/>
<o:SmartTagType =
namespaceuri=3D"urn:schemas-microsoft-com:office:smarttags"
 name=3D"place"/>
<!--[if !mso]>
<style>
st1\:*{behavior:url(#default#ieooui) }
</style>
<![endif]-->
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:"MS Mincho";
	panose-1:2 2 6 9 4 2 5 8 3 4;}
@font-face
	{font-family:"Comic Sans MS";
	panose-1:3 15 7 2 3 3 2 2 2 4;}
@font-face
	{font-family:"\@MS Mincho";
	panose-1:2 2 6 9 4 2 5 8 3 4;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman";}
a:link, span.MsoHyperlink
	{color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{color:purple;
	text-decoration:underline;}
p
	{mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Courier New";
	color:windowtext;}
@page Section1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;}
div.Section1
	{page:Section1;}
 /* List Definitions */
 @list l0
	{mso-list-id:571937464;
	mso-list-template-ids:-1098627204;}
@list l0:level1
	{mso-level-tab-stop:42.0pt;
	mso-level-number-position:left;
	margin-left:42.0pt;
	text-indent:-24.0pt;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1
	{mso-list-id:849877854;
	mso-list-type:hybrid;
	mso-list-template-ids:-1098627204 1919980800 67698713 67698715 =
67698703 67698713 67698715 67698703 67698713 67698715;}
@list l1:level1
	{mso-level-tab-stop:42.0pt;
	mso-level-number-position:left;
	margin-left:42.0pt;
	text-indent:-24.0pt;}
@list l1:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l2
	{mso-list-id:1282805803;
	mso-list-type:hybrid;
	mso-list-template-ids:-900199826 1919980800 67698713 67698715 67698703 =
67698713 67698715 67698703 67698713 67698715;}
@list l2:level1
	{mso-level-tab-stop:42.0pt;
	mso-level-number-position:left;
	margin-left:42.0pt;
	text-indent:-24.0pt;}
@list l2:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
-->
</style>

</head>

<body lang=3DEN-US link=3Dblue vlink=3Dpurple>

<div class=3DSection1>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'>Hello,<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'>I have reviewed the vector driver =
specification in detail
and have some questions.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'>General =
Comments<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:42.0pt;text-indent:-24.0pt;mso-list:l1 level1 =
lfo1'><![if !supportLists]><font
size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'><span
style=3D'mso-list:Ignore'>1.<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></font></span></span></font><![endif]><font size=3D2 =
face=3D"Courier New"><span
style=3D'font-size:10.0pt;font-family:"Courier New"'>All API =
specifications must
work on/from Mobile/IA Devices, Desktop, Office and/to Production =
printing
solutions.&nbsp; Mobile/IA solutions places memory constraints not =
considered in
higher-end solution; however, I believe and it has been the general =
consensus
that APIs should take Mobile/IA memory constraints into consideration =
in their
design.<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:42.0pt;text-indent:-24.0pt;mso-list:l1 level1 =
lfo1'><![if !supportLists]><font
size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'><span
style=3D'mso-list:Ignore'>2.<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></font></span></span></font><![endif]><font size=3D2 =
face=3D"Courier New"><span
style=3D'font-size:10.0pt;font-family:"Courier New"'>To avoid the =
overhead associated
with floating point; it has generally been accepted that the =
API&#8217;s not
contain floating point numbers. <o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'>Specific =
comments<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:42.0pt;text-indent:-24.0pt;mso-list:l2 level1 =
lfo3'><![if !supportLists]><font
size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'><span
style=3D'mso-list:Ignore'>1.<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></font></span></span></font><![endif]><font size=3D2 =
face=3D"Courier New"><span
style=3D'font-size:10.0pt;font-family:"Courier New"'>It appears that =
the API
comprehends only a single job at a time. &nbsp;&nbsp;This means the =
higher
level systems must hold and manage jobs or you are instantiating a new =
instance
of the driver for each job. This bring ups the issue of . . . =
<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in;text-indent:-.25in;mso-l=
ist:l2 level2 lfo3'><![if !supportLists]><font
size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'><span
style=3D'mso-list:Ignore'>a.<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'>Based
on general comment 1. above, multiple instantiations is not advisable. =
&nbsp;I
believe the solution is to have the driver API support multiple Job =
across the
API with a single instantiation of the driver. &nbsp;To do this, the =
first argument
of each function call is not printerContext but JobId. &nbsp;&nbsp;A =
JobId structure
(i.e. the job) would then contain the printerContext for the job.&nbsp; =
There
would be an API call to set and get the printerContext for the =
job.<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:42.0pt;text-indent:-24.0pt;mso-list:l2 level1 =
lfo3'><![if !supportLists]><font
size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'><span
style=3D'mso-list:Ignore'>2.<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></font></span></span></font><![endif]><font size=3D2 =
face=3D"Courier New"><span
style=3D'font-size:10.0pt;font-family:"Courier New"'>Again based on the =
general
comment 1. above, the issue of memory does not really support an API =
that &#8220;only&#8221;
has string transfer of job, document and page key/value attributes. =
&nbsp;This
even more significant since the Steering Committee has asked that the =
driver key/value
be aligned the with Job-Ticket list which is richer that the current =
Driver API
list.<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.0in;text-indent:-.25in;mso-list:l2 level2 =
lfo3'><![if !supportLists]><font
size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'><span
style=3D'mso-list:Ignore'>a.<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'>I
suggest that the <st1:place w:st=3D"on"><st1:country-region =
w:st=3D"on">US</st1:country-region></st1:place>
driver group investigate this as we extend the Japanese Vector Driver =
API for
Raster support.<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:42.0pt;text-indent:-24.0pt;mso-list:l2 level1 =
lfo3'><![if !supportLists]><font
size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'><span
style=3D'mso-list:Ignore'>3.<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></font></span></span></font><![endif]><font size=3D2 =
face=3D"Courier New"><span
style=3D'font-size:10.0pt;font-family:"Courier New"'>There appears to =
be some
inconsistency between the Color Spaces listed on Page 9 and Page =
45.<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.0in;text-indent:-.25in;mso-list:l2 level2 =
lfo3'><![if !supportLists]><font
size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'><span
style=3D'mso-list:Ignore'>a.<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'>Shouldn&#8217;t
there be just one Color Space list<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:42.0pt;text-indent:-24.0pt;mso-list:l2 level1 =
lfo3'><![if !supportLists]><font
size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'><span
style=3D'mso-list:Ignore'>4.<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></font></span></span></font><![endif]><font size=3D2 =
face=3D"Courier New"><span
style=3D'font-size:10.0pt;font-family:"Courier New"'>What is the =
&#8220;Fix&#8221;
data type?<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:42.0pt;text-indent:-24.0pt;mso-list:l2 level1 =
lfo3'><![if !supportLists]><font
size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'><span
style=3D'mso-list:Ignore'>5.<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></font></span></span></font><![endif]><font size=3D2 =
face=3D"Courier New"><span
style=3D'font-size:10.0pt;font-family:"Courier New"'>Based on general =
comment 2.
above, I would like to suggest changing the SetAlphaConstant and
GetAlphaConstant from using a float value to an integer that is 10 =
times or 100
times the need alpha constant.&nbsp; For example Alpha of 0.89 would be =
89 in
the API.<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:42.0pt;text-indent:-24.0pt;mso-list:l2 level1 =
lfo3'><![if !supportLists]><font
size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'><span
style=3D'mso-list:Ignore'>6.<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></font></span></span></font><![endif]><font size=3D2 =
face=3D"Courier New"><span
style=3D'font-size:10.0pt;font-family:"Courier New"'>Several of the =
<st1:country-region
w:st=3D"on"><st1:place w:st=3D"on">US</st1:place></st1:country-region> =
teams have adopted
a stricter data sizing by using a data type naming convention for =
simple types;
for example, do not use &#8220;int&#8221; since it has no specific size =
and in
API&#8217;s where data size may matter, the use of &#8220;int&#8221; in =
not
recommended.&nbsp; I would like to suggest the #define be made for the =
following
basic types which are resolved at development =
time.<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.0in;text-indent:-.25in;mso-list:l2 level2 =
lfo3'><![if !supportLists]><font
size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'><span
style=3D'mso-list:Ignore'>a.<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier =
New"'>BIT8<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.0in;text-indent:-.25in;mso-list:l2 level2 =
lfo3'><![if !supportLists]><font
size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'><span
style=3D'mso-list:Ignore'>b.<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier =
New"'>INT8<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.0in;text-indent:-.25in;mso-list:l2 level2 =
lfo3'><![if !supportLists]><font
size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'><span
style=3D'mso-list:Ignore'>c.<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier =
New"'>BIT16<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.0in;text-indent:-.25in;mso-list:l2 level2 =
lfo3'><![if !supportLists]><font
size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'><span
style=3D'mso-list:Ignore'>d.<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier =
New"'>INT16<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.0in;text-indent:-.25in;mso-list:l2 level2 =
lfo3'><![if !supportLists]><font
size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'><span
style=3D'mso-list:Ignore'>e.<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier =
New"'>BIT32<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.0in;text-indent:-.25in;mso-list:l2 level2 =
lfo3'><![if !supportLists]><font
size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'><span
style=3D'mso-list:Ignore'>f.<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier =
New"'>INT32<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.0in;text-indent:-.25in;mso-list:l2 level2 =
lfo3'><![if !supportLists]><font
size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'><span
style=3D'mso-list:Ignore'>g.<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier =
New"'>BIT64<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.0in;text-indent:-.25in;mso-list:l2 level2 =
lfo3'><![if !supportLists]><font
size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'><span
style=3D'mso-list:Ignore'>h.<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier =
New"'>INT64<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:42.0pt;text-indent:-24.0pt;mso-list:l2 level1 =
lfo3'><![if !supportLists]><font
size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'><span
style=3D'mso-list:Ignore'>7.<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></font></span></span></font><![endif]><font size=3D2 =
face=3D"Courier New"><span
style=3D'font-size:10.0pt;font-family:"Courier New"'>In the =
TransferRasterData
call the data to be transferred is typed as &#8220;unsigned =
char&#8221;.&nbsp; The
size of &#8220;char&#8221; is not technically defined in C (most people =
take it
to be 8 bits) and I have worked on platforms where a char is 32-bit in =
length &#8211;
not 8-bit.&nbsp; &nbsp;I suggest the type for &#8220;data&#8221; be =
changed to
BIT8.<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:42.0pt;text-indent:-24.0pt;mso-list:l2 level1 =
lfo3'><![if !supportLists]><font
size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'><span
style=3D'mso-list:Ignore'>8.<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></font></span></span></font><![endif]><font size=3D2 =
face=3D"Courier New"><span
style=3D'font-size:10.0pt;font-family:"Courier New"'>There appears to =
be some
inconsistency in naming convention. &nbsp;Sometime two word variable =
names have
the second work capitalized and sometimes not. &nbsp;Sometime arguments =
that are
pointers start with a &#8220;p&#8221; and sometimes not. =
<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'><o:p>&nbsp;</o:p></span></font></p>

<p><i><font size=3D2 face=3D"Comic Sans MS"><span =
style=3D'font-size:10.0pt;
font-family:"Comic Sans MS";font-style:italic'>Rgds, =
</span></font></i><br>
<b><i><font color=3D"#333399" face=3D"Comic Sans MS"><span =
style=3D'font-family:"Comic Sans MS";
color:#333399;font-weight:bold;font-style:italic'>Glen W. =
Petrie</span></font></i></b>
<br>
<i><font size=3D2 face=3D"Comic Sans MS"><span =
style=3D'font-size:10.0pt;font-family:
"Comic Sans MS";font-style:italic'>Epson Imaging Technology Center =
</span></font></i><br>
<i><font size=3D2 face=3D"Comic Sans MS"><span =
style=3D'font-size:10.0pt;font-family:
"Comic Sans MS";font-style:italic'>150 River Oaks Parkway, Suite 200 =
</span></font></i><br>
<i><font size=3D2 face=3D"Comic Sans MS"><span =
style=3D'font-size:10.0pt;font-family:
"Comic Sans MS";font-style:italic'>San Jose, CA, 95134 =
</span></font></i><br>
<i><font size=3D2 face=3D"Comic Sans MS"><span =
style=3D'font-size:10.0pt;font-family:
"Comic Sans MS";font-style:italic'>Voice: 408.576.4131&nbsp; Fax: =
408.474.0511</span></font></i>
<o:p></o:p></p>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'><o:p>&nbsp;</o:p></span></font></p>

</div>

</body>

</html>

------_=_NextPart_001_01C42634.B986CA70--

