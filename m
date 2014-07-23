Return-Path: <pzaan@us.ibm.com>
In-Reply-To: <53CFCE94.8060605@gmail.com>
References: <53CFCE94.8060605@gmail.com>
Message-ID: <OFDDBE3CC1.163D26FA-ON85257D1E.00540427-86257D1E.0054ED45@us.ibm.com>
From: Pete Zannucci <pzaan@us.ibm.com>
Date: Wed, 23 Jul 2014 10:27:38 -0500
MIME-Version: 1.0
Content-type: multipart/related; 
	Boundary="0__=0ABBF78DDFC782B78f9e8a93df938690918c0ABBF78DDFC782B7"
Subject: Re: [Printing-architecture] SLP (Service Location Protocol)
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
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, printing-architecture-bounces@lists.linux-foundation.org

--0__=0ABBF78DDFC782B78f9e8a93df938690918c0ABBF78DDFC782B7
Content-type: multipart/alternative; 
	Boundary="1__=0ABBF78DDFC782B78f9e8a93df938690918c0ABBF78DDFC782B7"

--1__=0ABBF78DDFC782B78f9e8a93df938690918c0ABBF78DDFC782B7
Content-type: text/plain; charset=US-ASCII
Content-transfer-encoding: quoted-printable


Hello Till,

You can replicate the code used in slptool to find specific services,
locations, and attributes.  Make sure the registration with the slp ser=
ver
is defined for the printer properties you wish to utilize along with be=
ing
able to provide the appropriate internet addresses, IPv4 and IPv6.

SLP can help you with the discovery, location, and management of proper=
ties
via slp attributes.  This link may be helpful.
https://publib.boulder.ibm.com/infocenter/tivihelp/v4r1/index.jsp?topic=
=3D%2Fcom.ibm.tpc_V332.doc%2Ffqz0_t_configuration_slp_registration_and_=
slptool.html

You will have to run slpd to track device registrations someplace on yo=
ur
network and also possibly implement an slp DA for additional performanc=
e
and tracking.


Peter Zannucci

IBM Linux Technology Center
Austin, TX - Tel. 512-286-9386 (t/l 363) pzaan@us.ibm.com



|------------>
| From:      |
|------------>
  >--------------------------------------------------------------------=
-----------------------------------------------------------------------=
-------|
  |Till Kamppeter <till.kamppeter@gmail.com>                           =
                                                                       =
       |
  >--------------------------------------------------------------------=
-----------------------------------------------------------------------=
-------|
|------------>
| To:        |
|------------>
  >--------------------------------------------------------------------=
-----------------------------------------------------------------------=
-------|
  |Open Printing <printing-architecture@lists.linux-foundation.org>,   =
                                                                       =
       |
  >--------------------------------------------------------------------=
-----------------------------------------------------------------------=
-------|
|------------>
| Date:      |
|------------>
  >--------------------------------------------------------------------=
-----------------------------------------------------------------------=
-------|
  |07/23/2014 10:02 AM                                                 =
                                                                       =
       |
  >--------------------------------------------------------------------=
-----------------------------------------------------------------------=
-------|
|------------>
| Subject:   |
|------------>
  >--------------------------------------------------------------------=
-----------------------------------------------------------------------=
-------|
  |[Printing-architecture] SLP (Service Location Protocol)             =
                                                                       =
       |
  >--------------------------------------------------------------------=
-----------------------------------------------------------------------=
-------|
|------------>
| Sent by:   |
|------------>
  >--------------------------------------------------------------------=
-----------------------------------------------------------------------=
-------|
  |printing-architecture-bounces@lists.linux-foundation.org            =
                                                                       =
       |
  >--------------------------------------------------------------------=
-----------------------------------------------------------------------=
-------|





Hi,

as talked about in the last OP conference call I want to make use of SL=
P
to discover printers in the network and especially to discover their
capabilities. Unfortunately documentation about using SLP, especially
with Ubuntu Linux, on the internet is sparse.

I want to let cups-browsed do this automatically, so that I can set up
driver-less print queues for printers with known languages (PDF,
PostScript, PCL, ...) but without polling the printer directly to not
wake up the printer from power save mode.

What I would like to know is:

1. How do I scan the network for SLP services without knowing service
names and types and without knowing which hosts in the network provide
services or are SLP directory agents?

2. In a typical SoHo network, are there SLP services or directory
agents? Are the usual SoHo routers directory agents? Or do I need to
to run an SLP server daemon on the local machine to be able to make use=

of SLP?

3. How can I test my environment with command line tools?

I am very grateful for any help towards this.

   Till
_______________________________________________
Printing-architecture mailing list
Printing-architecture@lists.linux-foundation.org
https://lists.linuxfoundation.org/mailman/listinfo/printing-architectur=
e


=

--1__=0ABBF78DDFC782B78f9e8a93df938690918c0ABBF78DDFC782B7
Content-type: text/html; charset=US-ASCII
Content-Disposition: inline
Content-transfer-encoding: quoted-printable

<html><body>
<p><font size=3D"2" face=3D"sans-serif">Hello Till,</font><br>
<br>
<font size=3D"2" face=3D"sans-serif">You can replicate the code used in=
 slptool to find specific services, locations, and attributes. &nbsp;Ma=
ke sure the registration with the slp server is defined for the printer=
 properties you wish to utilize along with being able to provide the ap=
propriate internet addresses, IPv4 and IPv6.</font><br>
<br>
<font size=3D"2" face=3D"sans-serif">SLP can help you with the discover=
y, location, and management of properties via slp attributes. &nbsp;Thi=
s link may be helpful. &nbsp;<a href=3D"https://publib.boulder.ibm.com/=
infocenter/tivihelp/v4r1/index.jsp?topic=3D%2Fcom.ibm.tpc_V332.doc%2Ffq=
z0_t_configuration_slp_registration_and_slptool.html">https://publib.bo=
ulder.ibm.com/infocenter/tivihelp/v4r1/index.jsp?topic=3D%2Fcom.ibm.tpc=
_V332.doc%2Ffqz0_t_configuration_slp_registration_and_slptool.html</a><=
/font><br>
<br>
<font size=3D"2" face=3D"sans-serif">You will have to run slpd to track=
 device registrations someplace on your network and also possibly imple=
ment an slp DA for additional performance and tracking.</font><br>
<font size=3D"2" face=3D"sans-serif"><br>
<br>
Peter Zannucci<br>
 &nbsp;<br>
IBM Linux Technology Center<br>
Austin, TX - Tel. 512-286-9386 (t/l 363) pzaan@us.ibm.com<br>
</font><br>
<br>
<img width=3D"16" height=3D"16" src=3D"cid:1__=3D0ABBF78DDFC782B78f9e8a=
93df938@us.ibm.com" border=3D"0" alt=3D"Inactive hide details for Till =
Kamppeter ---07/23/2014 10:02:42 AM---Hi, as talked about in the last O=
P conference call I want "><font size=3D"2" color=3D"#424282" face=3D"s=
ans-serif">Till Kamppeter ---07/23/2014 10:02:42 AM---Hi, as talked abo=
ut in the last OP conference call I want to make use of SLP</font><br>
<br>

<table width=3D"100%" border=3D"0" cellspacing=3D"0" cellpadding=3D"0">=

<tr valign=3D"top"><td width=3D"1%"><img width=3D"96" height=3D"1" src=3D=
"cid:2__=3D0ABBF78DDFC782B78f9e8a93df938@us.ibm.com" border=3D"0" alt=3D=
""><br>

<ul style=3D"padding-left: 4pt"><font size=3D"1" color=3D"#5F5F5F" face=
=3D"sans-serif">From:</font></ul>
</td><td width=3D"100%"><img width=3D"1" height=3D"1" src=3D"cid:2__=3D=
0ABBF78DDFC782B78f9e8a93df938@us.ibm.com" border=3D"0" alt=3D""><br>
<font size=3D"1" face=3D"sans-serif">Till Kamppeter &lt;till.kamppeter@=
gmail.com&gt;</font></td></tr>

<tr valign=3D"top"><td width=3D"1%"><img width=3D"96" height=3D"1" src=3D=
"cid:2__=3D0ABBF78DDFC782B78f9e8a93df938@us.ibm.com" border=3D"0" alt=3D=
""><br>

<ul style=3D"padding-left: 4pt"><font size=3D"1" color=3D"#5F5F5F" face=
=3D"sans-serif">To:</font></ul>
</td><td width=3D"100%"><img width=3D"1" height=3D"1" src=3D"cid:2__=3D=
0ABBF78DDFC782B78f9e8a93df938@us.ibm.com" border=3D"0" alt=3D""><br>
<font size=3D"1" face=3D"sans-serif">Open Printing &lt;printing-archite=
cture@lists.linux-foundation.org&gt;, </font></td></tr>

<tr valign=3D"top"><td width=3D"1%"><img width=3D"96" height=3D"1" src=3D=
"cid:2__=3D0ABBF78DDFC782B78f9e8a93df938@us.ibm.com" border=3D"0" alt=3D=
""><br>

<ul style=3D"padding-left: 4pt"><font size=3D"1" color=3D"#5F5F5F" face=
=3D"sans-serif">Date:</font></ul>
</td><td width=3D"100%"><img width=3D"1" height=3D"1" src=3D"cid:2__=3D=
0ABBF78DDFC782B78f9e8a93df938@us.ibm.com" border=3D"0" alt=3D""><br>
<font size=3D"1" face=3D"sans-serif">07/23/2014 10:02 AM</font></td></t=
r>

<tr valign=3D"top"><td width=3D"1%"><img width=3D"96" height=3D"1" src=3D=
"cid:2__=3D0ABBF78DDFC782B78f9e8a93df938@us.ibm.com" border=3D"0" alt=3D=
""><br>

<ul style=3D"padding-left: 4pt"><font size=3D"1" color=3D"#5F5F5F" face=
=3D"sans-serif">Subject:</font></ul>
</td><td width=3D"100%"><img width=3D"1" height=3D"1" src=3D"cid:2__=3D=
0ABBF78DDFC782B78f9e8a93df938@us.ibm.com" border=3D"0" alt=3D""><br>
<font size=3D"1" face=3D"sans-serif">[Printing-architecture] SLP (Servi=
ce Location Protocol)</font></td></tr>

<tr valign=3D"top"><td width=3D"1%"><img width=3D"96" height=3D"1" src=3D=
"cid:2__=3D0ABBF78DDFC782B78f9e8a93df938@us.ibm.com" border=3D"0" alt=3D=
""><br>

<ul style=3D"padding-left: 4pt"><font size=3D"1" color=3D"#5F5F5F" face=
=3D"sans-serif">Sent by:</font></ul>
</td><td width=3D"100%"><img width=3D"1" height=3D"1" src=3D"cid:2__=3D=
0ABBF78DDFC782B78f9e8a93df938@us.ibm.com" border=3D"0" alt=3D""><br>
<font size=3D"1" face=3D"sans-serif">printing-architecture-bounces@list=
s.linux-foundation.org</font></td></tr>
</table>
<hr width=3D"100%" size=3D"2" align=3D"left" noshade style=3D"color:#80=
91A5; "><br>
<br>
<br>
<tt><font size=3D"2">Hi,<br>
<br>
as talked about in the last OP conference call I want to make use of SL=
P<br>
to discover printers in the network and especially to discover their<br=
>
capabilities. Unfortunately documentation about using SLP, especially<b=
r>
with Ubuntu Linux, on the internet is sparse.<br>
<br>
I want to let cups-browsed do this automatically, so that I can set up<=
br>
driver-less print queues for printers with known languages (PDF,<br>
PostScript, PCL, ...) but without polling the printer directly to not<b=
r>
wake up the printer from power save mode.<br>
<br>
What I would like to know is:<br>
<br>
1. How do I scan the network for SLP services without knowing service<b=
r>
names and types and without knowing which hosts in the network provide<=
br>
services or are SLP directory agents?<br>
<br>
2. In a typical SoHo network, are there SLP services or directory<br>
agents? Are the usual SoHo routers directory agents? Or do I need to<br=
>
to run an SLP server daemon on the local machine to be able to make use=
<br>
of SLP?<br>
<br>
3. How can I test my environment with command line tools?<br>
<br>
I am very grateful for any help towards this.<br>
<br>
 &nbsp; Till<br>
_______________________________________________<br>
Printing-architecture mailing list<br>
Printing-architecture@lists.linux-foundation.org<br>
</font></tt><tt><font size=3D"2"><a href=3D"https://lists.linuxfoundati=
on.org/mailman/listinfo/printing-architecture">https://lists.linuxfound=
ation.org/mailman/listinfo/printing-architecture</a></font></tt><tt><fo=
nt size=3D"2"><br>
<br>
</font></tt><br>
<br>
</body></html>=


--1__=0ABBF78DDFC782B78f9e8a93df938690918c0ABBF78DDFC782B7--


--0__=0ABBF78DDFC782B78f9e8a93df938690918c0ABBF78DDFC782B7
Content-type: image/gif; 
	name="graycol.gif"
Content-Disposition: inline; filename="graycol.gif"
Content-ID: <1__=0ABBF78DDFC782B78f9e8a93df938@us.ibm.com>
Content-transfer-encoding: base64

R0lGODlhEAAQAKECAMzMzAAAAP///wAAACH5BAEAAAIALAAAAAAQABAAAAIXlI+py+0PopwxUbpu
ZRfKZ2zgSJbmSRYAIf4fT3B0aW1pemVkIGJ5IFVsZWFkIFNtYXJ0U2F2ZXIhAAA7

--0__=0ABBF78DDFC782B78f9e8a93df938690918c0ABBF78DDFC782B7
Content-type: image/gif; 
	name="ecblank.gif"
Content-Disposition: inline; filename="ecblank.gif"
Content-ID: <2__=0ABBF78DDFC782B78f9e8a93df938@us.ibm.com>
Content-transfer-encoding: base64

R0lGODlhEAABAIAAAAAAAP///yH5BAEAAAEALAAAAAAQAAEAAAIEjI8ZBQA7

--0__=0ABBF78DDFC782B78f9e8a93df938690918c0ABBF78DDFC782B7--

