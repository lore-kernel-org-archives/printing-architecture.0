Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01C8C591.2CC5C6A8"
Date: Tue, 3 Jun 2008 08:47:49 -0700
Message-ID: <ED4094DE5E8ACD4BBDACA6AD398E608F02412B@EEAEX03.us.epson.net>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Subject: Re: [Printing-architecture] Suggestion for a small change in
	yourdesign for the Common Printing Dialog
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Alex Wauck <alex.wauck@gmail.com>, Ira McDonald <blueroofmusic@gmail.com>
Cc: printing-architecture@lists.linux-foundation.org, Celeste Lyn Paul <celeste@kde.org>, Henrik Nilsen Omma <henrik@ubuntu.com>, Jonathan Riddell <jriddell@ubuntu.com>, Till Kamppeter <till.kamppeter@gmail.com>

This is a multi-part message in MIME format.


------_=_NextPart_001_01C8C591.2CC5C6A8
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Can we consider using the 80-20 rule.  In 80% (95%) of the time a user
will "print the entire document", "print the current page" or "print a
single range".   More complex "range of page selections" could be
handled in special tab (or what ever method is currently being used for
advanced feature selection).  Now the input interface in the preview
area can be reduced to a single edit box for the end page along with
back/forward page arrows.  For "print all pages" the preview shows the
first page of the document and the edit field has the last page number.
For "print a single range" the user uses the arrow keys to get the first
page of the range they want to print and enters the end page numbering
the edit field.  An advanced mode of the edit field is that the user can
enter the page range as "5-70".  And finally, for "print the current
page", the user uses the arrow keys to get the page they wants and
enters the same page number in the edit field.  Again, the edit field
could accept "75" so that only page "75" is printed.  One could also
have a simple button to "print this page".

=20

glen=20

=20

________________________________

From: printing-architecture-bounces@lists.linux-foundation.org
[mailto:printing-architecture-bounces@lists.linux-foundation.org] On
Behalf Of Alex Wauck
Sent: Monday, June 02, 2008 4:04 PM
To: Ira McDonald
Cc: printing-architecture@lists.linux-foundation.org; Celeste Lyn Paul;
Henrik Nilsen Omma; Jonathan Riddell; Till Kamppeter
Subject: Re: [Printing-architecture] Suggestion for a small change in
yourdesign for the Common Printing Dialog

=20

Could you describe that in more detail?  I don't really like the current
way (i.e. entering something like "1,2,5-70,75" to get pages 1, 2, 5
through 70, and 75).  It's quick and easy for people like me who feel
hobbled without a command line, but I don't think it's particularly
intuitive or easy for others.

Alex

On Mon, Jun 2, 2008 at 5:55 PM, Ira McDonald <blueroofmusic@gmail.com>
wrote:

Hi Alex and Till,

FWIW - In IPP/1.1 Production Printing, Open Printing Job Ticket API, and
PWG Semantic Model, we have a common "pages" attribute defined as
'(1setOf rangeOfInteger(1:MAX))' (i.e., a set of page ranges).

I suggest we give the user a set of boxes like ordinary page range that
can
be filled in for a discontiguous set of pages.

Cheers,
- Ira


On Mon, Jun 2, 2008 at 6:41 PM, Alex Wauck <alex.wauck@gmail.com> wrote:
> I like it.  I'm using a custom widget for the preview instead of the
Qt
> preview widget, so it won't be too difficult to implement.  We just
need to
> figure out how to specify ranges.  People don't want to go through and
mark
> every page in a 100-page range.
>
> Alex
>
> On Mon, Jun 2, 2008 at 3:22 PM, Till Kamppeter
<till.kamppeter@gmail.com>
> wrote:
>>
>> Hi,
>>
>> on the Ubuntu Developer Summit (UDS) in Prague we have discussed your
>> design for the Common Printing Dialog. During the discussion doubts
came
>> up about how to print only selected pages of a document. A suggestion
>> was then that one can add buttons to the preview to (de)select the
page
>> currently visible (like implemented in multi-function printers where
one
>> can print photos from a memory card selecting them on the printer's
>> display, or like on digital cameras with PictBridge).
>>
>> WDYT about this feature? Or what were your ideas about selecting the
>> pages to be printed?
>>
>>    Till
>> _______________________________________________
>> Printing-architecture mailing list
>> Printing-architecture@lists.linux-foundation.org
>>
https://lists.linux-foundation.org/mailman/listinfo/printing-architectur
e
>
>
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
>
https://lists.linux-foundation.org/mailman/listinfo/printing-architectur
e
>
>




--
Ira McDonald (Musician / Software Architect)
Chair - Linux Foundation Open Printing WG
Blue Roof Music/High North Inc
email: blueroofmusic@gmail.com
winter:
 579 Park Place Saline, MI 48176
 734-944-0094
summer:
 PO Box 221 Grand Marais, MI 49839
 906-494-2434

=20


------_=_NextPart_001_01C8C591.2CC5C6A8
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:st1=3D"urn:schemas-microsoft-com:office:smarttags" =
xmlns=3D"http://www.w3.org/TR/REC-html40">

<head>
<META HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Dus-ascii">
<meta name=3DGenerator content=3D"Microsoft Word 11 (filtered medium)">
<!--[if !mso]>
<style>
v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style>
<![endif]--><o:SmartTagType
 namespaceuri=3D"urn:schemas-microsoft-com:office:smarttags" =
name=3D"Street"/>
<o:SmartTagType =
namespaceuri=3D"urn:schemas-microsoft-com:office:smarttags"
 name=3D"PostalCode"/>
<o:SmartTagType =
namespaceuri=3D"urn:schemas-microsoft-com:office:smarttags"
 name=3D"address"/>
<o:SmartTagType =
namespaceuri=3D"urn:schemas-microsoft-com:office:smarttags"
 name=3D"State"/>
<o:SmartTagType =
namespaceuri=3D"urn:schemas-microsoft-com:office:smarttags"
 name=3D"City"/>
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
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
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
	{color:blue;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-reply;
	font-family:Arial;
	color:navy;}
@page Section1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;}
div.Section1
	{page:Section1;}
-->
</style>

</head>

<body lang=3DEN-US link=3Dblue vlink=3Dblue>

<div class=3DSection1>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'>Can we consider using the 80-20 =
rule.&nbsp; In
80% (95%) of the time a user will &#8220;print the entire =
document&#8221;, &#8220;print
the current page&#8221; or &#8220;print a single =
range&#8221;.&nbsp;&nbsp; More complex &#8220;range
of page selections&#8221; could be handled in special tab (or what ever =
method
is currently being used for advanced feature selection).&nbsp; Now the =
input
interface in the preview area can be reduced to a single edit box for =
the end
page along with back/forward page arrows.&nbsp; For &#8220;print all =
pages&#8221;
the preview shows the first page of the document and the edit field has =
the
last page number.&nbsp; For &#8220;print a single range&#8221; the user =
uses the
arrow keys to get the first page of the range they want to print and =
enters the
end page numbering the edit field.&nbsp; An advanced mode of the edit =
field is that
the user can enter the page range as &#8220;5-70&#8221;.&nbsp; And =
finally, for &#8220;print
the current page&#8221;, the user uses the arrow keys to get the page =
they wants
and enters the same page number in the edit field.&nbsp; Again, the edit =
field could
accept &#8220;75&#8221; so that only page &#8220;75&#8221; is =
printed.&nbsp; One
could also have a simple button to &#8220;print this =
page&#8221;.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'>glen <o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'><o:p>&nbsp;</o:p></span></font></p>

<div>

<div class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><font =
size=3D3
face=3D"Times New Roman"><span style=3D'font-size:12.0pt'>

<hr size=3D2 width=3D"100%" align=3Dcenter tabindex=3D-1>

</span></font></div>

<p class=3DMsoNormal><b><font size=3D2 face=3DTahoma><span =
style=3D'font-size:10.0pt;
font-family:Tahoma;font-weight:bold'>From:</span></font></b><font =
size=3D2
face=3DTahoma><span style=3D'font-size:10.0pt;font-family:Tahoma'>
printing-architecture-bounces@lists.linux-foundation.org
[mailto:printing-architecture-bounces@lists.linux-foundation.org] =
<b><span
style=3D'font-weight:bold'>On Behalf Of </span></b>Alex Wauck<br>
<b><span style=3D'font-weight:bold'>Sent:</span></b> Monday, June 02, =
2008 4:04
PM<br>
<b><span style=3D'font-weight:bold'>To:</span></b> Ira McDonald<br>
<b><span style=3D'font-weight:bold'>Cc:</span></b>
printing-architecture@lists.linux-foundation.org; Celeste Lyn Paul; =
Henrik
Nilsen Omma; Jonathan Riddell; Till Kamppeter<br>
<b><span style=3D'font-weight:bold'>Subject:</span></b> Re:
[Printing-architecture] Suggestion for a small change in yourdesign for =
the
Common Printing Dialog</span></font><o:p></o:p></p>

</div>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-bottom:12.0pt'><font size=3D3
face=3D"Times New Roman"><span style=3D'font-size:12.0pt'>Could you =
describe that
in more detail?&nbsp; I don't really like the current way (i.e. entering
something like &quot;1,2,5-70,75&quot; to get pages 1, 2, 5 through 70, =
and
75).&nbsp; It's quick and easy for people like me who feel hobbled =
without a
command line, but I don't think it's particularly intuitive or easy for =
others.<br>
<br>
Alex<o:p></o:p></span></font></p>

<div>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'>On Mon, Jun 2, 2008 at 5:55 PM, Ira McDonald &lt;<a
href=3D"mailto:blueroofmusic@gmail.com">blueroofmusic@gmail.com</a>&gt; =
wrote:<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'>Hi Alex and Till,<br>
<br>
FWIW - In IPP/1.1 Production Printing, Open Printing Job Ticket API, =
and<br>
PWG Semantic Model, we have a common &quot;pages&quot; attribute defined =
as<br>
'(1setOf rangeOfInteger(1:MAX))' (i.e., a set of page ranges).<br>
<br>
I suggest we give the user a set of boxes like ordinary page range that =
can<br>
be filled in for a discontiguous set of pages.<br>
<br>
Cheers,<br>
- Ira<o:p></o:p></span></font></p>

<div>

<div>

<p class=3DMsoNormal style=3D'margin-bottom:12.0pt'><font size=3D3
face=3D"Times New Roman"><span style=3D'font-size:12.0pt'><br>
On Mon, Jun 2, 2008 at 6:41 PM, Alex Wauck &lt;<a
href=3D"mailto:alex.wauck@gmail.com">alex.wauck@gmail.com</a>&gt; =
wrote:<br>
&gt; I like it. &nbsp;I'm using a custom widget for the preview instead =
of the
Qt<br>
&gt; preview widget, so it won't be too difficult to implement. &nbsp;We =
just
need to<br>
&gt; figure out how to specify ranges. &nbsp;People don't want to go =
through
and mark<br>
&gt; every page in a 100-page range.<br>
&gt;<br>
&gt; Alex<br>
&gt;<br>
&gt; On Mon, Jun 2, 2008 at 3:22 PM, Till Kamppeter &lt;<a
href=3D"mailto:till.kamppeter@gmail.com">till.kamppeter@gmail.com</a>&gt;=
<br>
&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Hi,<br>
&gt;&gt;<br>
&gt;&gt; on the Ubuntu Developer Summit (UDS) in <st1:City =
w:st=3D"on"><st1:place
 w:st=3D"on">Prague</st1:place></st1:City> we have discussed your<br>
&gt;&gt; design for the Common Printing Dialog. During the discussion =
doubts
came<br>
&gt;&gt; up about how to print only selected pages of a document. A =
suggestion<br>
&gt;&gt; was then that one can add buttons to the preview to (de)select =
the
page<br>
&gt;&gt; currently visible (like implemented in multi-function printers =
where
one<br>
&gt;&gt; can print photos from a memory card selecting them on the =
printer's<br>
&gt;&gt; display, or like on digital cameras with PictBridge).<br>
&gt;&gt;<br>
&gt;&gt; WDYT about this feature? Or what were your ideas about =
selecting the<br>
&gt;&gt; pages to be printed?<br>
&gt;&gt;<br>
&gt;&gt; &nbsp; &nbsp;Till<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; Printing-architecture mailing list<br>
&gt;&gt; <a =
href=3D"mailto:Printing-architecture@lists.linux-foundation.org">Printing=
-architecture@lists.linux-foundation.org</a><br>
&gt;&gt; <a
href=3D"https://lists.linux-foundation.org/mailman/listinfo/printing-arch=
itecture"
target=3D"_blank">https://lists.linux-foundation.org/mailman/listinfo/pri=
nting-architecture</a><br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; Printing-architecture mailing list<br>
&gt; <a =
href=3D"mailto:Printing-architecture@lists.linux-foundation.org">Printing=
-architecture@lists.linux-foundation.org</a><br>
&gt; <a
href=3D"https://lists.linux-foundation.org/mailman/listinfo/printing-arch=
itecture"
target=3D"_blank">https://lists.linux-foundation.org/mailman/listinfo/pri=
nting-architecture</a><br>
&gt;<br>
&gt;<br>
<br>
<br>
<o:p></o:p></span></font></p>

</div>

</div>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'>--<br>
Ira McDonald (Musician / Software Architect)<br>
Chair - Linux Foundation Open Printing WG<br>
Blue Roof Music/High North Inc<br>
email: <a =
href=3D"mailto:blueroofmusic@gmail.com">blueroofmusic@gmail.com</a><br>
winter:<br>
&nbsp;<st1:address w:st=3D"on"><st1:Street w:st=3D"on">579 Park =
Place</st1:Street> <st1:City
 w:st=3D"on">Saline</st1:City>, <st1:State w:st=3D"on">MI</st1:State> =
<st1:PostalCode
 w:st=3D"on">48176</st1:PostalCode></st1:address><br>
&nbsp;734-944-0094<br>
summer:<br>
&nbsp;<st1:address w:st=3D"on"><st1:Street w:st=3D"on">PO =
Box</st1:Street> 221</st1:address>
Grand <st1:place w:st=3D"on"><st1:City w:st=3D"on">Marais</st1:City>, =
<st1:State
 w:st=3D"on">MI</st1:State> <st1:PostalCode =
w:st=3D"on">49839</st1:PostalCode></st1:place><br>
&nbsp;906-494-2434<o:p></o:p></span></font></p>

</div>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'><o:p>&nbsp;</o:p></span></font></p>

</div>

</body>

</html>

------_=_NextPart_001_01C8C591.2CC5C6A8--
