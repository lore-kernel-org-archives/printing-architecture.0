Message-ID: <2F7D63A21DB2C74EB8EB8C09AF667DB04A33DC@eitc220.eitc.epson.com>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Date: Fri, 2 Apr 2004 08:26:56 -0800 
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01C418CF.50B6F140"
Subject: [Printing-architecture] Security and Malloc
List-Id: Printing architecture under linux
	<printing-architecture.mail.freestandards.org>
List-Unsubscribe: <http://mail.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@mail.freestandards.org?subject=unsubscribe>
List-Archive: <http://mail.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@mail.freestandards.org>
List-Help: <mailto:printing-architecture-request@mail.freestandards.org?subject=help>
List-Subscribe: <http://mail.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@mail.freestandards.org?subject=subscribe>
To: printing-architecture@freestandards.org

This message is in MIME format. Since your mail reader does not understand
this format, some or all of this message may not be legible.

------_=_NextPart_001_01C418CF.50B6F140
Content-Type: text/plain

Norm and Ira,

 

Thanks for the discussion on external supplied malloc, realloc and free
yesterday.   The use of supplied memory functions was only intended for the
case of static/dynamic libraries since the client/service and application
would internal solve the memory function issue.  I believe your security
case was that someone could send "harmful" memory function pointers (pointer
to function) that would allow "break into" or cause a security breach.  I
understand this to a point but would like to understand more.  Since in
either case the library must be used with a main application and if the
intent of the main application was to implement a security breach or have
"harmful code"; then I contend that the main application could do this
independent of any FSG library.  Or they could modify the source that we
supply for our libraries (we are an open-source activity) or they created
their own library (with "harmful code") based on the API.   I don't believe
you could ever protect against this; so there is no solution to this
specific security risk.  So this only leaves the situation of proprietary
library instantiation in which source is "never" supplied.  That is, the
main wants to send "harmful code" to a proprietary library instantiation.
But again since the main can contain the "harmful code" is this case (of
proprietary library instantiation) really a risk case?

 

A compromise to this situation is to use #defines for the memory function in
the open source distributions. For example,

 

#define fsgMalloc    malloc  

#define fsgRemalloc  realloc

#define  . . . . 

 

Now before compiling the developer could change the malloc, realloc, etc to
there specific memory functions.  If this is more agreeable that sending
pointers to functions; then what is the complete list of memory functions
needed?

 

I not think this can be optional; we need to make it mandatory or not
implement it at all. 

 

-----------------------

 

Although I am still in favor of the InitializeAPI and ReleaseAPI, I believe
that for open-source versions of the API libraries, this capability can be
integrated independent of the any FSG specification.   The problem arises
for proprietary library implementations or in services where it would not be
possible to integration the additional control.  If you truly want or it is
a requirement for a library to be stateless (i.e. no check if it has been
initialized or other state conditions) then I see no way to implement these
two functions.  The solution using proprietary library implementations and
needing this functionality is to not use static libraries, load/remove dlls
went needed and/or start/kill services.  More restrictive but would "meet
the need".

 

I not think this can be optional; we need to make it mandatory or not
implement it at all. 

 

 

Rgds, 
Glen W. Petrie 
Epson Imaging Technology Center 
150 River Oaks Parkway, Suite 200 
San Jose, CA, 95134 
Voice: 408.576.4131  Fax: 408.474.0511 

 


------_=_NextPart_001_01C418CF.50B6F140
Content-Type: text/html
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns=3D"http://www.w3.org/TR/REC-html40">

<head>
<META HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3DUS-ASCII">


<meta name=3DGenerator content=3D"Microsoft Word 11 (filtered medium)">
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
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
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
	{mso-list-id:649821427;
	mso-list-type:hybrid;
	mso-list-template-ids:1855079502 67698703 67698713 67698715 67698703 =
67698713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:.5in;
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
font-family:"Courier New"'>Norm and Ira,<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'>Thanks for the discussion on external =
supplied malloc,
realloc and free yesterday. &nbsp;&nbsp;The use of supplied memory =
functions was
only intended for the case of static/dynamic libraries since the =
client/service
and application would internal solve the memory function issue. &nbsp;I =
believe
your security case was that someone could send &#8220;harmful&#8221; =
memory
function pointers (pointer to function) that would allow &#8220;break =
into&#8221;
or cause a security breach.&nbsp; I understand this to a point but =
would like
to understand more.&nbsp; Since in either case the library must be used =
with a
main application and if the intent of the main application was to =
implement a
security breach or have &#8220;harmful code&#8221;; then I contend that =
the
main application could do this independent of any FSG library.&nbsp; Or =
they
could modify the source that we supply for our libraries (we are an =
open-source
activity) or they created their own library (with &#8220;harmful =
code&#8221;)
based on the API.&nbsp; &nbsp;I don&#8217;t believe you could ever =
protect
against this; so there is no solution to this specific security risk. =
&nbsp;So this
only leaves the situation of proprietary library instantiation in which =
source
is &#8220;never&#8221; supplied.&nbsp; That is, the main wants to send =
&#8220;harmful
code&#8221; to a proprietary library instantiation. &nbsp;But again =
since the
main can contain the &#8220;harmful code&#8221; is this case (of =
proprietary
library instantiation) really a risk case?<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'>A compromise to this situation is to use =
#defines
for the memory function in the open source distributions. For =
example,<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'>#define fsgMalloc&nbsp;&nbsp;&nbsp; =
malloc&nbsp; <o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'>#define fsgRemalloc&nbsp; =
realloc<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'>#define&nbsp; . . . . =
<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'>Now before compiling the developer could =
change the
malloc, realloc, etc to there specific memory functions.&nbsp; If this =
is more
agreeable that sending pointers to functions; then what is the complete =
list of
memory functions needed?<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'>I not think this can be optional; we need to =
make it
mandatory or not implement it at all. <o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier =
New"'>-----------------------<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'>Although I am still in favor of the =
InitializeAPI
and ReleaseAPI, I believe that for open-source versions of the API =
libraries,
this capability can be integrated independent of the any FSG =
specification. &nbsp;&nbsp;The
problem arises for proprietary library implementations or in services =
where it
would not be possible to integration the additional control. &nbsp;If =
you truly
want or it is a requirement for a library to be stateless (i.e. no =
check if it
has been initialized or other state conditions) then I see no way to =
implement
these two functions.&nbsp; The solution using proprietary library =
implementations
and needing this functionality is to not use static libraries, =
load/remove dlls
went needed and/or start/kill services. &nbsp;More restrictive but =
would &#8220;meet
the need&#8221;.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'>I not think this can be optional; we need to =
make it
mandatory or not implement it at all. <o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><i><font size=3D2 face=3D"Comic Sans MS"><span
style=3D'font-size:10.0pt;font-family:"Comic Sans =
MS";font-style:italic'>Rgds, </span></font></i><br>
<b><i><font color=3D"#333399" face=3D"Comic Sans MS"><span =
style=3D'font-family:"Comic Sans MS";
color:#333399;font-weight:bold;font-style:italic'>Glen W. =
Petrie</span></font></i></b>
<br>
<i><font face=3D"Comic Sans MS"><span style=3D'font-family:"Comic Sans =
MS";
font-style:italic'>Epson Imaging Technology Center =
</span></font></i><br>
<i><font face=3D"Comic Sans MS"><span style=3D'font-family:"Comic Sans =
MS";
font-style:italic'>150 River Oaks Parkway, Suite 200 =
</span></font></i><br>
<i><font face=3D"Comic Sans MS"><span style=3D'font-family:"Comic Sans =
MS";
font-style:italic'>San Jose, CA, 95134 </span></font></i><br>
<i><font face=3D"Comic Sans MS"><span style=3D'font-family:"Comic Sans =
MS";
font-style:italic'>Voice: 408.576.4131&nbsp; Fax: =
408.474.0511</span></font></i>
<o:p></o:p></p>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'><o:p>&nbsp;</o:p></span></font></p>

</div>

</body>

</html>

------_=_NextPart_001_01C418CF.50B6F140--

