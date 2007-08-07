Message-ID: <2F7D63A21DB2C74EB8EB8C09AF667DB00559CBCE@eitc220.eitc.epson.com>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Date: Tue, 7 Aug 2007 07:11:49 -0700 
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01C7D8FC.E52D55C8"
Subject: [Printing-architecture] opJTAPI Header File
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.freestandards.org

This message is in MIME format. Since your mail reader does not understand
this format, some or all of this message may not be legible.

------_=_NextPart_001_01C7D8FC.E52D55C8
Content-Type: text/plain

Hello All,

During yesterdays SC meeting there was general agreement with the change and
solution details I am implementing for the OPEP. However, (why is there
always a "however", anyway) there is the concern for capability with the
existing fsgJTAPI version 1.0.  (I will call the new api opjtapi and the
existing one fsgjtapi for discussion).  There were several great ideas
discussed for resolving the differences between the two api's.  After some
consideration, I like the ideas of providing macros or in the worst case
functions to go between the opjtapi and fsgjtapi.   

So, what is needed?

1.	A parser developer who uses the opjtapi's and has an fsgjtapi lib.
2.	A parser developer who uses the fsgjtpai's and has an opjtapi lib.

My first plan will be continue the opjtapi coding (the opJTAPI.c file) to
make sure that there are no other necessary changes before addressing the
capability between the jtapi instantiations.

Since the plan is to create a capability between the two api's, I took
additional liberties with difference between them.  I removed the individual
"New-<object>" api's and created a single api which has as one of its
arguments an object id.   This is just using the same idea that was used in
fsgjtapi (and opjtapi) for attributes.  This has simplified the over set of
api's without any loss of functionality.   See the new version of opJTAPI.h
at

ftp://ftp.pwg.org/pub/pwg/openprinting/embedded/opepCurrent/opepSoftware/Job
Ticket_Lib/inc/opJTAPI.h
<ftp://ftp.pwg.org/pub/pwg/openprinting/embedded/opepCurrent/opepSoftware/Jo
bTicket_Lib/inc/opJTAPI.h>   


Rgds, 
Glen W. Petrie 
Epson Imaging Technology Center 
2580 Orchard Parkway, Suite 200 
San Jose, CA, 95131 
Voice: 408.576.4131  Fax: 408.474.0511 



------_=_NextPart_001_01C7D8FC.E52D55C8
Content-Type: text/html
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2//EN">
<HTML>
<HEAD>
<META HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Dus-ascii">
<META NAME=3D"Generator" CONTENT=3D"MS Exchange Server version =
5.5.2658.24">
<TITLE>opJTAPI Header File</TITLE>
</HEAD>
<BODY>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">Hell</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">o All,</FONT></P>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">During</FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">yesterdays SC meeting there was general =
agreement with the change and solution</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">details</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">I am implementing for the =
OPEP.</FONT><FONT SIZE=3D2 FACE=3D"Arial"> H</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">owever, (why is there always a</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">"</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">however</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">"</FONT><FONT SIZE=3D2 FACE=3D"Arial">, anyway) there is =
the concern for</FONT> <FONT SIZE=3D2 FACE=3D"Arial">capa</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">b</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">ility</FONT> <FONT SIZE=3D2 FACE=3D"Arial">with the =
existing fsgJTAPI version 1.0.</FONT>&nbsp;<FONT SIZE=3D2 =
FACE=3D"Arial"> (</FONT><FONT SIZE=3D2 FACE=3D"Arial">I will call the =
new api opjtapi and the existing one fsgjtapi for =
discussion).</FONT>&nbsp;<FONT SIZE=3D2 FACE=3D"Arial"></FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">There were several</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">great ideas</FONT><FONT SIZE=3D2 FACE=3D"Arial"> =
discussed</FONT><FONT SIZE=3D2 FACE=3D"Arial"> for</FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">resolving</FONT><FONT SIZE=3D2 =
FACE=3D"Arial"></FONT> <FONT SIZE=3D2 FACE=3D"Arial">the</FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">differences between the two api</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">'</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">s.</FONT>&nbsp;<FONT SIZE=3D2 FACE=3D"Arial"> =
A</FONT><FONT SIZE=3D2 FACE=3D"Arial">fter</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">some</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">consider</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">ation</FONT><FONT SIZE=3D2 FACE=3D"Arial">, I like the =
ideas of providing macros or in the worst case functions to go between =
the opjtapi and fsgjtapi.</FONT> <FONT SIZE=3D2 FACE=3D"Arial">&nbsp; =
</FONT></P>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">So, what is =
needed</FONT><FONT SIZE=3D2 FACE=3D"Arial">?</FONT></P>

<P><FONT SIZE=3D2 =
FACE=3D"Arial">1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">A parser</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">developer</FONT> <FONT SIZE=3D2 FACE=3D"Arial">who uses =
the opjtapi</FONT><FONT SIZE=3D2 FACE=3D"Arial">'</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">s</FONT><FONT SIZE=3D2 FACE=3D"Arial"> and has an =
fsgjtapi lib.</FONT>
<BR><FONT SIZE=3D2 =
FACE=3D"Arial">2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">A parser developer who uses</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">the fsgjtpai</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">'</FONT><FONT SIZE=3D2 FACE=3D"Arial">s and has an =
opjtapi lib.</FONT>
</P>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">My first plan will be =
continue the opjtapi coding (the opJTAPI.c file) to make sure that =
there are no other necessary changes before</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">addressing</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">the</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">capability between the jtapi instantiations.</FONT></P>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">Since</FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">the</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">plan</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">is</FONT> <FONT SIZE=3D2 FACE=3D"Arial">to create a =
capability between the two api</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">'</FONT><FONT SIZE=3D2 FACE=3D"Arial">s, I took =
additional</FONT> <FONT SIZE=3D2 FACE=3D"Arial">liberties</FONT><FONT =
SIZE=3D2 FACE=3D"Arial"> with difference between them.</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">I</FONT><FONT SIZE=3D2 FACE=3D"Arial"> remove</FONT><FONT=
 SIZE=3D2 FACE=3D"Arial">d</FONT><FONT SIZE=3D2 FACE=3D"Arial"> the =
individual</FONT> <FONT SIZE=3D2 FACE=3D"Arial">"</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">New-&lt;object&gt;</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">"</FONT><FONT SIZE=3D2 FACE=3D"Arial"> api</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">'</FONT><FONT SIZE=3D2 FACE=3D"Arial">s and =
created a single api</FONT> <FONT SIZE=3D2 FACE=3D"Arial">which has as =
one of it</FONT><FONT SIZE=3D2 FACE=3D"Arial">s</FONT><FONT SIZE=3D2 =
FACE=3D"Arial"></FONT> <FONT SIZE=3D2 FACE=3D"Arial">arguments an =
object id.</FONT><FONT SIZE=3D2 FACE=3D"Arial">&nbsp;</FONT>&nbsp;<FONT =
SIZE=3D2 FACE=3D"Arial"> T</FONT><FONT SIZE=3D2 FACE=3D"Arial">his is =
just</FONT> <FONT SIZE=3D2 FACE=3D"Arial">using</FONT><FONT SIZE=3D2 =
FACE=3D"Arial"> the same idea that was used in fsgjtapi (and opjtapi) =
for attributes.</FONT><FONT SIZE=3D2 FACE=3D"Arial">&nbsp;</FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">This has simplified the over set of =
api</FONT><FONT SIZE=3D2 FACE=3D"Arial">'</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">s</FONT><FONT SIZE=3D2 FACE=3D"Arial"> without any loss =
of functionality.</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">&nbsp;</FONT>&nbsp;<FONT SIZE=3D2 FACE=3D"Arial"> =
S</FONT><FONT SIZE=3D2 FACE=3D"Arial">ee the new version of</FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">opJTAPI.h at</FONT></P>

<P ALIGN=3DLEFT><A =
HREF=3D"ftp://ftp.pwg.org/pub/pwg/openprinting/embedded/opepCurrent/opep=
Software/JobTicket_Lib/inc/opJTAPI.h"><U></U><U><FONT COLOR=3D"#0000FF" =
SIZE=3D2 =
FACE=3D"Arial">ftp://ftp.pwg.org/pub/pwg/openprinting/embedded/opepCurre=
nt/opepSoftware/JobTicket_Lib/inc/</FONT></U><U></U><U><FONT =
COLOR=3D"#0000FF" SIZE=3D2 FACE=3D"Arial">opJTAPI.h</FONT></U></A><FONT =
SIZE=3D2 FACE=3D"Arial"></FONT>&nbsp;<FONT SIZE=3D2 =
FACE=3D"Arial"></FONT> </P>

<P ALIGN=3DLEFT><A NAME=3D"_MailAutoSig"></A></P>

<P ALIGN=3DLEFT><B><I><FONT FACE=3D"Times New Roman">Rgds,<BR>
</FONT></I></B><B><I></I></B><B><I><FONT COLOR=3D"#0000FF" SIZE=3D5 =
FACE=3D"Times New Roman">Glen W. =
Petrie</FONT></I></B><B><I></I></B><B><I><FONT SIZE=3D5 FACE=3D"Times =
New Roman"><BR>
</FONT></I></B><B><I><FONT FACE=3D"Times New Roman">Epson Imaging =
Technology Center<BR>
2580 Orchard Parkway, Suite 200<BR>
San Jose, CA, 95131<BR>
Voice: 408.576.41</FONT><FONT FACE=3D"Times New Roman">31&nbsp; Fax: =
408.474.0511 </FONT></I></B></P>

<P ALIGN=3DLEFT></P>

</BODY>
</HTML>
------_=_NextPart_001_01C7D8FC.E52D55C8--
