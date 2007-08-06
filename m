Message-ID: <2F7D63A21DB2C74EB8EB8C09AF667DB00559CBC1@eitc220.eitc.epson.com>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Date: Mon, 6 Aug 2007 07:25:27 -0700 
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01C7D835.A2A2A518"
Subject: [Printing-architecture] OPEP Job Ticket con't
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

------_=_NextPart_001_01C7D835.A2A2A518
Content-Type: text/plain

Hello All,

I am examining the job header files, principally those that create new
objects.   Within each header we used #define statements for declaration of
the object themselves and the object attributes.  The #define in all cases
declared (or represent) a string.  After thinking this over, I was concerned
about the memory requirements for the string and the extra processing for
parsing the string.  In other words was the use of string adding value or
added information?  I concluded, that strictly from an information-theory
bases, the string declaration provided no additional informational value for
the #define's would require more processing compared to numerical #define
declarations.    In other words, programs will use the #define variables as
calling arguments do not know (care) that strings are being represented. For
the developer that writes a parsing routine to support the #define, it is a
different story.  In that case, a set of string compare statements will have
to determine what object and what attributes was received; then processing
can proceed. 

I believe, that without any loss of generality or abstraction, the #defines
in the "create new object" header files can be declared as numerical values
(sequential enum values to be specific).  From the point of view to person
calling/using on the new object API; they will not care what the #define
variable represents.  For the programmer creating the parser, simple switch
statements can be used with no additional string preprocessing.

With this proposal, which really help in memory utilization for embedded
device, I have create a draft header file using numerical #define's instead
the string #defines.   I also believe this will mean ADDING a new job ticket
API that uses the numerical #define's versus the string #define's.


See the draft header file at   <<< This is draft file and not complete >>>

ftp://ftp.pwg.org/pub/pwg/openprinting/embedded/opepCurrent/opepSoftware/Job
Ticket_Lib/inc/opJTAPI__draft.h
<ftp://ftp.pwg.org/pub/pwg/openprinting/embedded/opepCurrent/opepSoftware/Jo
bTicket_Lib/inc/opJTAPI__draft.h>  






Rgds, 
Glen W. Petrie 
Epson Imaging Technology Center 
2580 Orchard Parkway, Suite 200 
San Jose, CA, 95131 
Voice: 408.576.4131  Fax: 408.474.0511 



------_=_NextPart_001_01C7D835.A2A2A518
Content-Type: text/html
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2//EN">
<HTML>
<HEAD>
<META HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Dus-ascii">
<META NAME=3D"Generator" CONTENT=3D"MS Exchange Server version =
5.5.2658.24">
<TITLE>OPEP Job Ticket con't</TITLE>
</HEAD>
<BODY>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">Hello All,</FONT></P>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">I</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">am</FONT> <FONT SIZE=3D2 FACE=3D"Arial">examining the =
job header files, princip</FONT><FONT SIZE=3D2 FACE=3D"Arial">ally =
those th</FONT><FONT SIZE=3D2 FACE=3D"Arial">at</FONT><FONT SIZE=3D2 =
FACE=3D"Arial"> create</FONT><FONT SIZE=3D2 FACE=3D"Arial"> new</FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">object</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">s.</FONT> <FONT SIZE=3D2 FACE=3D"Arial">&nbsp;</FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">Within</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">each</FONT> <FONT SIZE=3D2 FACE=3D"Arial">header =
we</FONT> <FONT SIZE=3D2 FACE=3D"Arial">used</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">#define</FONT><FONT SIZE=3D2 FACE=3D"Arial"> =
statement</FONT><FONT SIZE=3D2 FACE=3D"Arial">s</FONT><FONT SIZE=3D2 =
FACE=3D"Arial"></FONT> <FONT SIZE=3D2 FACE=3D"Arial">for</FONT><FONT =
SIZE=3D2 FACE=3D"Arial"> declaration</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">of the</FONT><FONT SIZE=3D2 FACE=3D"Arial"> =
object</FONT> <FONT SIZE=3D2 FACE=3D"Arial">them</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">sel</FONT><FONT SIZE=3D2 FACE=3D"Arial">ves =
an</FONT><FONT SIZE=3D2 FACE=3D"Arial">d</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">the object</FONT><FONT SIZE=3D2 FACE=3D"Arial"> =
attributes.</FONT>&nbsp;<FONT SIZE=3D2 FACE=3D"Arial"> T</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">he #define in all cases declared (or =
represent</FONT><FONT SIZE=3D2 FACE=3D"Arial">) a =
string.</FONT>&nbsp;<FONT SIZE=3D2 FACE=3D"Arial"> A</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">fter</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">thinking this over</FONT><FONT SIZE=3D2 FACE=3D"Arial">, =
I was concerned about the memory requir</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">ements for the string and the extra processing for =
parsing the string.</FONT>&nbsp;<FONT SIZE=3D2 FACE=3D"Arial"> =
I</FONT><FONT SIZE=3D2 FACE=3D"Arial">n other words was the use of =
string adding value or added information</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">?&nbsp;</FONT> <FONT SIZE=3D2 FACE=3D"Arial">I =
concluded</FONT><FONT SIZE=3D2 FACE=3D"Arial">,</FONT><FONT SIZE=3D2 =
FACE=3D"Arial"> that strictly from an information-theory bases, the =
string</FONT> <FONT SIZE=3D2 FACE=3D"Arial">declaration provided</FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">no additional informational value</FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">for</FONT><FONT SIZE=3D2 FACE=3D"Arial"> =
the #define</FONT><FONT SIZE=3D2 FACE=3D"Arial">'</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">s</FONT><FONT SIZE=3D2 FACE=3D"Arial"> would</FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">require</FONT><FONT SIZE=3D2 =
FACE=3D"Arial"></FONT> <FONT SIZE=3D2 FACE=3D"Arial">more processing =
compared to numerical #define declarations.</FONT><FONT SIZE=3D2 =
FACE=3D"Arial"></FONT>&nbsp;<FONT SIZE=3D2 FACE=3D"Arial"></FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">&nbsp;</FONT> <FONT SIZE=3D2 FACE=3D"Arial">In =
othe</FONT><FONT SIZE=3D2 FACE=3D"Arial">r words, programs will use the =
#define</FONT> <FONT SIZE=3D2 FACE=3D"Arial">variable</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">s</FONT> <FONT SIZE=3D2 FACE=3D"Arial">as =
calling</FONT> <FONT SIZE=3D2 FACE=3D"Arial">arguments</FONT><FONT =
SIZE=3D2 FACE=3D"Arial"></FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">do</FONT><FONT SIZE=3D2 FACE=3D"Arial"> not</FONT><FONT =
SIZE=3D2 FACE=3D"Arial"> know</FONT><FONT SIZE=3D2 =
FACE=3D"Arial"></FONT> <FONT SIZE=3D2 FACE=3D"Arial">(care)</FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">th</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">at</FONT><FONT SIZE=3D2 FACE=3D"Arial"> strings</FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">are being</FONT><FONT SIZE=3D2 =
FACE=3D"Arial"> represent</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">ed</FONT><FONT SIZE=3D2 FACE=3D"Arial">.</FONT><FONT =
SIZE=3D2 FACE=3D"Arial"></FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">F</FONT><FONT SIZE=3D2 FACE=3D"Arial">or</FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">the developer</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">that</FONT> <FONT SIZE=3D2 FACE=3D"Arial">writes a p</FON=
T><FONT SIZE=3D2 FACE=3D"Arial">arsing routine to support the =
#define</FONT><FONT SIZE=3D2 FACE=3D"Arial">, it is a different =
story</FONT><FONT SIZE=3D2 FACE=3D"Arial">.</FONT>&nbsp;<FONT SIZE=3D2 =
FACE=3D"Arial"></FONT> <FONT SIZE=3D2 FACE=3D"Arial">In that =
case</FONT><FONT SIZE=3D2 FACE=3D"Arial">,</FONT><FONT SIZE=3D2 =
FACE=3D"Arial"> a set of string compare statement</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">s</FONT><FONT SIZE=3D2 FACE=3D"Arial"> will have to =
determine w</FONT><FONT SIZE=3D2 FACE=3D"Arial">hat</FONT><FONT =
SIZE=3D2 FACE=3D"Arial"> object and</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">what</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">attributes was received</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">; then processing can proceed.</FONT> </P>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">I believe, that</FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">without</FONT><FONT SIZE=3D2 =
FACE=3D"Arial"> any loss of general</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">ity</FONT><FONT SIZE=3D2 FACE=3D"Arial"> or abstraction, =
the #defines in the</FONT> <FONT SIZE=3D2 FACE=3D"Arial">"</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">create new object</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">"</FONT><FONT SIZE=3D2 FACE=3D"Arial"> header files can =
be declared as numerical values (</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">sequential</FONT><FONT SIZE=3D2 FACE=3D"Arial"> enum =
values to be specific).</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">&nbsp;</FONT> <FONT SIZE=3D2 FACE=3D"Arial">From the =
point of view to person</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">calling/using on the new object API; they will not care =
what the #define variable represents.</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">&nbsp;</FONT> <FONT SIZE=3D2 FACE=3D"Arial">For the =
programmer creat</FONT><FONT SIZE=3D2 FACE=3D"Arial">ing the</FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">parser</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">, simple</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">switch</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">statements</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">can be used with no additional string =
preprocessing.</FONT></P>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">With this proposal, which =
really help in memory utilization for embedded device, I have create a =
draft header file using numerical #define</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">'</FONT><FONT SIZE=3D2 FACE=3D"Arial">s instead the =
string</FONT> <FONT SIZE=3D2 FACE=3D"Arial">#defines</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">.</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">I</FONT><FONT SIZE=3D2 FACE=3D"Arial"> also</FONT><FONT =
SIZE=3D2 FACE=3D"Arial"> believe this will mean ADDING a new job ticket =
API that</FONT> <FONT SIZE=3D2 FACE=3D"Arial">uses the numerical =
#define</FONT><FONT SIZE=3D2 FACE=3D"Arial">'</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">s versus the string #define</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">'</FONT><FONT SIZE=3D2 FACE=3D"Arial">s.</FONT></P>
<BR>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">See the draft header file =
at</FONT><FONT SIZE=3D2 FACE=3D"Arial">&nbsp;&nbsp; &lt;&lt;&lt; This =
is draft file and not complete &gt;&gt;&gt;</FONT></P>

<P ALIGN=3DLEFT><A =
HREF=3D"ftp://ftp.pwg.org/pub/pwg/openprinting/embedded/opepCurrent/opep=
Software/JobTicket_Lib/inc/opJTAPI__draft.h"><U></U><U><FONT =
COLOR=3D"#0000FF" SIZE=3D2 =
FACE=3D"Arial">ftp://ftp.pwg.org/pub/pwg/openprinting/embedded/opepCurre=
nt/opepSoftware/JobTicket_Lib/inc/</FONT></U><U></U><U><FONT =
COLOR=3D"#0000FF" SIZE=3D2 =
FACE=3D"Arial">opJTAPI__draft.h</FONT></U></A><FONT SIZE=3D2 =
FACE=3D"Arial"> </FONT></P>
<BR>
<BR>
<BR>
<BR>

<P ALIGN=3DLEFT><A NAME=3D"_MailAutoSig"></A></P>

<P ALIGN=3DLEFT><B><I><FONT FACE=3D"Times New Roman">Rgds,<BR>
</FONT></I></B><B><I></I></B><B><I><FONT COLOR=3D"#0000FF" SIZE=3D5 =
FACE=3D"Times New Roman">Glen W. =
Petrie</FONT></I></B><B><I></I></B><B><I><FONT SIZE=3D5 FACE=3D"Times =
New Roman"><BR>
</FONT></I></B><B><I><FONT FACE=3D"Times New Roman">Epson Imaging =
Technology Center<BR>
</FONT><FONT FACE=3D"Times New Roman">2580 Orchard Parkway, Suite =
200<BR>
San Jose, CA, 95131<BR>
Voice: 408.576.4131&nbsp; Fax: 408.474.0511 </FONT></I></B></P>

<P ALIGN=3DLEFT></P>

</BODY>
</HTML>
------_=_NextPart_001_01C7D835.A2A2A518--
