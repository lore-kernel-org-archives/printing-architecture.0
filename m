Message-ID: <2F7D63A21DB2C74EB8EB8C09AF667DB00559CC10@eitc220.eitc.epson.com>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Date: Mon, 20 Aug 2007 09:58:09 -0700
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01C7E34B.4918E5D8"
Subject: [Printing-architecture] I have update OPEP files
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "'printing-architecture@lists.freestandards.org'" <printing-architecture@lists.freestandards.org>

This message is in MIME format. Since your mail reader does not understand
this format, some or all of this message may not be legible.

------_=_NextPart_001_01C7E34B.4918E5D8
Content-Type: text/plain

All,

It has been a few days since I sent out any new information (someone told me
"I needed time to develop a story" for why I have made changes to the
original JTAPI's;  not true!!!  The changes were chosen to eliminate
internal overhead associated with the existing API definitions that would
not be suitable for an embedded environment (is that a story?). 

In the OPEP-JTAPI file there was one principle API change I wanted to
provide rational ("a story") for.

1.   Added Object (type) to some API's  and Attribute ID (type) enum to most
API's.  Together, these changes....
     a.  ...removes the unnecessary overhead of internal managing "floating"
objects/attributes and a second binding step
              i.   "floating" objects/attributes are memory leaks happening!
     b.  The caller will in generally know the type of object/attribute type
they are working on.  Therefore, why does
          the OPEP-JTAPI's accept only a pointer and try to figure out what
this object/attribute is.; just more unnecessary overhead.  

Other overall things that you may note.
--- The internal job-ticket I create and manage contains a private copy of
any data.  From experience, it is not a good idea to assume that memory
allocations created by the calling entity will not be freed without
informing you.   I have experienced a calling entity recycling
variables/pointers; so, if the internal job-ticket does not create it own
copy of data, the data could change which really represents something
else!!!  Thus, using this methodology, the calling entity is responsible for
their pointers and memory allocations and the JTAPI is responsible for
internal pointers and memory allocations.   Under the current
implementation, the structs I have defined and used internally can be made
completely invisible to the calling entity.    However, my intent is that
the calling entity has access to the internal job-ticket.  It is the
convenient place for both sides to keep the pointers and data.  Of course
this means, the calling entity could alter the internal job-ticket directly;
oh well.

I took other liberties

Changed "Destroy" to "Free" (I think that "free" is something I am more used
to and representative versus "destroy").

Added a opjtSetValue.  Note that  opjtReplaceValue just calls opjtSetValue.

ftp://ftp.pwg.org/pub/pwg/openprinting/embedded/opepCurrent/opepSoftware/Job
Ticket_Lib/inc/opJTAPI.h
<ftp://ftp.pwg.org/pub/pwg/openprinting/embedded/opepCurrent/opepSoftware/Jo
bTicket_Lib/inc/opJTAPI.h>   
ftp://ftp.pwg.org/pub/pwg/openprinting/embedded/opepCurrent/opepSoftware/Job
Ticket_Lib/src/opJTAPI.c  
ftp://ftp.pwg.org/pub/pwg/openprinting/embedded/opepCurrent/opepSoftware/Ope
pCommon/inc/opPrintIO.h
<ftp://ftp.pwg.org/pub/pwg/openprinting/embedded/opepCurrent/opepSoftware/Op
epCommon/inc/opPrintIO.h> 
ftp://ftp.pwg.org/pub/pwg/openprinting/embedded/opepCurrent/opepSoftware/Ope
pCommon/src/opPrintIO.c
<ftp://ftp.pwg.org/pub/pwg/openprinting/embedded/opepCurrent/opepSoftware/Op
epCommon/src/opPrintIO.c>  
ftp://ftp.pwg.org/pub/pwg/openprinting/embedded/opepCurrent/opepSoftware/Ope
pCommon/inc/opGeneric.h
<ftp://ftp.pwg.org/pub/pwg/openprinting/embedded/opepCurrent/opepSoftware/Op
epCommon/inc/opGeneric.h> 
ftp://ftp.pwg.org/pub/pwg/openprinting/embedded/opepCurrent/opepSoftware/Ope
pCommon/inc/opEnums.h
<ftp://ftp.pwg.org/pub/pwg/openprinting/embedded/opepCurrent/opepSoftware/Op
epCommon/inc/opEnums.h> 
ftp://ftp.pwg.org/pub/pwg/openprinting/embedded/opepCurrent/opepSoftware/Ope
pCommon/inc/opJobStructs.h
<ftp://ftp.pwg.org/pub/pwg/openprinting/embedded/opepCurrent/opepSoftware/Op
epCommon/inc/opJobStructs.h>  



Rgds, 
Glen W. Petrie 
Epson Imaging Technology Center 
2580 Orchard Parkway, Suite 200 
San Jose, CA, 95131 
Voice: 408.576.4131  Fax: 408.474.0511 



------_=_NextPart_001_01C7E34B.4918E5D8
Content-Type: text/html
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2//EN">
<HTML>
<HEAD>
<META HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Dus-ascii">
<META NAME=3D"Generator" CONTENT=3D"MS Exchange Server version =
5.5.2658.24">
<TITLE>I have update OPEP files</TITLE>
</HEAD>
<BODY>

<P ALIGN=3DLEFT><FONT FACE=3D"Times New Roman">All,</FONT></P>

<P ALIGN=3DLEFT><FONT FACE=3D"Times New Roman">It has been a few days =
since</FONT> <FONT FACE=3D"Times New Roman">I</FONT><FONT FACE=3D"Times =
New Roman"></FONT> <FONT FACE=3D"Times New Roman">sent out any new =
information (someone told me</FONT> <FONT FACE=3D"Times New =
Roman">"</FONT><FONT FACE=3D"Times New Roman">I needed time</FONT> =
<FONT FACE=3D"Times New Roman">t</FONT><FONT FACE=3D"Times New Roman">o =
develop a story</FONT><FONT FACE=3D"Times New Roman">"</FONT><FONT =
FACE=3D"Times New Roman"> for why I have made changes to the original =
JTAPI</FONT><FONT FACE=3D"Times New Roman">'</FONT><FONT FACE=3D"Times =
New Roman">s;&nbsp; not true!!!</FONT><FONT FACE=3D"Times New =
Roman">&nbsp;</FONT> <FONT FACE=3D"Times New Roman">T</FONT><FONT =
FACE=3D"Times New Roman">he changes were</FONT> <FONT FACE=3D"Times New =
Roman">chosen</FONT><FONT FACE=3D"Times New Roman"> to eliminate =
internal overhead</FONT> <FONT FACE=3D"Times New =
Roman">associated</FONT><FONT FACE=3D"Times New Roman"></FONT> <FONT =
FACE=3D"Times New Roman">with the existing API definitions that would =
not be suitable for</FONT> <FONT FACE=3D"Times New Roman">an =
embedded</FONT> <FONT FACE=3D"Times New Roman">environment</FONT><FONT =
FACE=3D"Times New Roman"> (</FONT><FONT FACE=3D"Times New Roman">is =
that a story?</FONT><FONT FACE=3D"Times New Roman">)</FONT><FONT =
FACE=3D"Times New Roman">.</FONT><FONT FACE=3D"Times New Roman"></FONT> =
</P>

<P ALIGN=3DLEFT><FONT FACE=3D"Times New Roman">In the</FONT> <FONT =
FACE=3D"Times New Roman">OPEP-</FONT><FONT FACE=3D"Times New =
Roman">JTAPI file there was one principle API change I wanted to =
provide rational ("a story") for.</FONT></P>

<P ALIGN=3DLEFT><FONT FACE=3D"Times New Roman">1.&nbsp;&nbsp; Added =
Object</FONT><FONT FACE=3D"Times New Roman"> (type)</FONT><FONT =
FACE=3D"Times New Roman"> to some API</FONT><FONT FACE=3D"Times New =
Roman">'</FONT><FONT FACE=3D"Times New Roman">s</FONT>&nbsp;<FONT =
FACE=3D"Times New Roman"> and</FONT><FONT FACE=3D"Times New Roman"> =
Attribute ID (type) enum to most API</FONT><FONT FACE=3D"Times New =
Roman">'</FONT><FONT FACE=3D"Times New Roman">s</FONT><FONT =
FACE=3D"Times New Roman">.</FONT>&nbsp;<FONT FACE=3D"Times New Roman"> =
T</FONT><FONT FACE=3D"Times New Roman">ogether, these =
changes</FONT><FONT FACE=3D"Times New Roman">...</FONT><FONT =
FACE=3D"Times New Roman">.</FONT></P>

<P ALIGN=3DLEFT><FONT FACE=3D"Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp; =
a.&nbsp;</FONT> <FONT FACE=3D"Times New Roman">...</FONT><FONT =
FACE=3D"Times New Roman">removes the unnecessary overhead of internal =
managing "floating" obj</FONT><FONT FACE=3D"Times New =
Roman">ects/attributes</FONT><FONT FACE=3D"Times New Roman"> and a =
second binding step</FONT></P>

<P ALIGN=3DLEFT><FONT FACE=3D"Times New =
Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; i.&nbsp;&nbsp; "floating" objects/attributes are memory =
leaks happening!</FONT></P>

<P ALIGN=3DLEFT><FONT FACE=3D"Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp; =
b.&nbsp; The caller will in generally know the type of =
object/attribute</FONT> <FONT FACE=3D"Times New Roman">type</FONT> =
<FONT FACE=3D"Times New Roman">they are working on.&nbsp; Therefore, =
why</FONT> <FONT FACE=3D"Times New Roman">d</FONT><FONT FACE=3D"Times =
New Roman">oes</FONT></P>

<P ALIGN=3DLEFT><FONT FACE=3D"Times New =
Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
the</FONT> <FONT FACE=3D"Times New Roman">OP</FONT><FONT FACE=3D"Times =
New Roman">E</FONT><FONT FACE=3D"Times New Roman">P-</FONT><FONT =
FACE=3D"Times New Roman">JTAPI</FONT><FONT FACE=3D"Times New =
Roman">'</FONT><FONT FACE=3D"Times New Roman">s</FONT><FONT =
FACE=3D"Times New Roman"> a</FONT><FONT FACE=3D"Times New =
Roman">cc</FONT><FONT FACE=3D"Times New Roman">ep</FONT><FONT =
FACE=3D"Times New Roman">t</FONT> <FONT FACE=3D"Times New =
Roman">on</FONT><FONT FACE=3D"Times New Roman">ly</FONT><FONT =
FACE=3D"Times New Roman"> a pointer and try t</FONT><FONT FACE=3D"Times =
New Roman">o figure out what this object/attribute is.; just more =
unnecessary overhead.&nbsp; </FONT></P>

<P ALIGN=3DLEFT><FONT FACE=3D"Times New Roman">Other overall things =
that you may note.</FONT></P>

<P ALIGN=3DLEFT><FONT FACE=3D"Times New Roman">--- The internal =
job-ticket I create and manage contains a private copy of any =
data.&nbsp; From experience, it is not a good idea to assume =
t</FONT><FONT FACE=3D"Times New Roman">hat memory allocations created =
by the calling entity will not</FONT><FONT FACE=3D"Times New Roman"> =
be</FONT><FONT FACE=3D"Times New Roman"> free</FONT><FONT FACE=3D"Times =
New Roman">d</FONT><FONT FACE=3D"Times New Roman"> without informing =
you.&nbsp;&nbsp; I have experienced a calling entity recycling =
variables/pointers; so, if the internal job-ticket does not =
create</FONT><FONT FACE=3D"Times New Roman"> it own copy of data, the =
data could</FONT><FONT FACE=3D"Times New Roman"> change</FONT><FONT =
FACE=3D"Times New Roman"> which really</FONT> <FONT FACE=3D"Times New =
Roman">represents</FONT><FONT FACE=3D"Times New Roman"></FONT> <FONT =
FACE=3D"Times New Roman">something else</FONT><FONT FACE=3D"Times New =
Roman">!!!&nbsp; Thus, using this methodology, the calling entity is =
responsible for their pointers and memory allocations and the JTAPI is =
responsible for internal pointers and memory allocations.&nbsp;&nbsp; =
Under the current implementation, the structs I have defined</FONT> =
<FONT FACE=3D"Times New Roman">and used internally can be made =
completely invisible to the calling entity.&nbsp;&nbsp;&nbsp; However, =
my intent is that the calling entity has access to the internal =
job-ticket.&nbsp; It is the convenient place for both sides to keep the =
pointers and data.&nbsp; Of course this m</FONT><FONT FACE=3D"Times New =
Roman">e</FONT><FONT FACE=3D"Times New Roman">ans, the calling entity =
could alter the internal job-ticket directly; oh well.</FONT></P>

<P ALIGN=3DLEFT><FONT FACE=3D"Times New Roman">I took other =
liberties</FONT></P>

<P ALIGN=3DLEFT><FONT FACE=3D"Times New Roman">Changed "Destroy" to =
"Free" (I</FONT> <FONT FACE=3D"Times New Roman">think that</FONT> <FONT =
FACE=3D"Times New Roman">"</FONT><FONT FACE=3D"Times New =
Roman">free</FONT><FONT FACE=3D"Times New Roman">"</FONT><FONT =
FACE=3D"Times New Roman"> is</FONT> <FONT FACE=3D"Times New =
Roman">something I am more used to and</FONT> <FONT FACE=3D"Times New =
Roman">representative</FONT><FONT FACE=3D"Times New Roman"></FONT> =
<FONT FACE=3D"Times New Roman">versus</FONT> <FONT FACE=3D"Times New =
Roman">"</FONT><FONT FACE=3D"Times New Roman">destroy</FONT><FONT =
FACE=3D"Times New Roman">"</FONT><FONT FACE=3D"Times New =
Roman">).</FONT></P>

<P ALIGN=3DLEFT><FONT FACE=3D"Times New Roman">Added a =
opjtSetValue.&nbsp; Note that&nbsp; opjtReplaceValue just c</FONT><FONT =
FACE=3D"Times New Roman">alls opjtSetValue.</FONT></P>

<P ALIGN=3DLEFT><A =
HREF=3D"ftp://ftp.pwg.org/pub/pwg/openprinting/embedded/opepCurrent/opep=
Software/JobTicket_Lib/inc/opJTAPI.h"><U></U><U><FONT COLOR=3D"#0000FF" =
SIZE=3D2 =
FACE=3D"Arial">ftp://ftp.pwg.org/pub/pwg/openprinting/embedded/opepCurre=
nt/opepSoftware/JobTicket_Lib/inc</FONT><FONT COLOR=3D"#0000FF" =
SIZE=3D2 FACE=3D"Arial">/</FONT><FONT COLOR=3D"#0000FF" SIZE=3D2 =
FACE=3D"Arial">opJTAPI.h</FONT></U></A>&nbsp;<FONT FACE=3D"Times New =
Roman"></FONT> </P>

<P ALIGN=3DLEFT><U><FONT COLOR=3D"#0000FF" SIZE=3D2 FACE=3D"Arial"><A =
HREF=3D"ftp://ftp.pwg.org/pub/pwg/openprinting/embedded/opepCurrent/opep=
Software/JobTicket_Lib/" =
TARGET=3D"_blank">ftp://ftp.pwg.org/pub/pwg/openprinting/embedded/opepCu=
rrent/opepSoftware/JobTicket_Lib/</A></FONT></U><U></U><U><FONT =
COLOR=3D"#0000FF" SIZE=3D2 FACE=3D"Arial">src</FONT></U><U></U><U><FONT =
COLOR=3D"#0000FF" SIZE=3D2 FACE=3D"Arial">/</FONT><FONT =
COLOR=3D"#0000FF" SIZE=3D2 =
FACE=3D"Arial">opJTAPI.</FONT></U><U></U><U><FONT COLOR=3D"#0000FF" =
SIZE=3D2 FACE=3D"Arial">c</FONT></U>&nbsp;<FONT FACE=3D"Times New =
Roman"></FONT> </P>

<P ALIGN=3DLEFT><A =
HREF=3D"ftp://ftp.pwg.org/pub/pwg/openprinting/embedded/opepCurrent/opep=
Software/OpepCommon/inc/opPrintIO.h"><U><FONT COLOR=3D"#0000FF" =
FACE=3D"Times New =
Roman">ftp://ftp.pwg.org/pub/pwg/openprinting/embedded/opepCurrent/opepS=
oftware/OpepCommon/inc</FONT><FONT COLOR=3D"#0000FF" FACE=3D"Times New =
Roman">/</FONT><FONT COLOR=3D"#0000FF" FACE=3D"Times New =
Roman">opPrintIO.h</FONT></U></A></P>

<P ALIGN=3DLEFT><A =
HREF=3D"ftp://ftp.pwg.org/pub/pwg/openprinting/embedded/opepCurrent/opep=
Software/OpepCommon/src/opPrintIO.c"><U><FONT COLOR=3D"#0000FF" =
FACE=3D"Times New =
Roman">ftp://ftp.pwg.org/pub/pwg/openprinting/embedded/opepCurrent/opepS=
oftware/OpepCommon</FONT><FONT COLOR=3D"#0000FF" FACE=3D"Times New =
Roman">/</FONT><FONT COLOR=3D"#0000FF" FACE=3D"Times New =
Roman">sr</FONT><FONT COLOR=3D"#0000FF" FACE=3D"Times New =
Roman">c</FONT><FONT COLOR=3D"#0000FF" FACE=3D"Times New =
Roman">/</FONT><FONT COLOR=3D"#0000FF" FACE=3D"Times New =
Roman">opPrintIO</FONT><FONT COLOR=3D"#0000FF" FACE=3D"Times New =
Roman">.</FONT><FONT COLOR=3D"#0000FF" FACE=3D"Times New =
Roman">c</FONT></U></A><FONT FACE=3D"Times New Roman"> </FONT></P>

<P ALIGN=3DLEFT><A =
HREF=3D"ftp://ftp.pwg.org/pub/pwg/openprinting/embedded/opepCurrent/opep=
Software/OpepCommon/inc/opGeneric.h"><U><FONT COLOR=3D"#0000FF" =
FACE=3D"Times New =
Roman">ftp://ftp.pwg.org/pub/pwg/openprinting/embedded/opepCurrent/opepS=
oftware/OpepCommon/inc</FONT><FONT COLOR=3D"#0000FF" FACE=3D"Times New =
Roman">/</FONT><FONT COLOR=3D"#0000FF" FACE=3D"Times New =
Roman">opGener</FONT><FONT COLOR=3D"#0000FF" FACE=3D"Times New =
Roman">ic.h</FONT></U></A></P>

<P ALIGN=3DLEFT><A =
HREF=3D"ftp://ftp.pwg.org/pub/pwg/openprinting/embedded/opepCurrent/opep=
Software/OpepCommon/inc/opEnums.h"><U></U><U><FONT COLOR=3D"#0000FF" =
SIZE=3D2 =
FACE=3D"Arial">ftp://ftp.pwg.org/pub/pwg/openprinting/</FONT><FONT =
COLOR=3D"#0000FF" SIZE=3D2 =
FACE=3D"Arial">embedded/opepCurrent/opepSoftware/OpepCommon/inc</FONT><F=
ONT COLOR=3D"#0000FF" SIZE=3D2 FACE=3D"Arial">/</FONT><FONT =
COLOR=3D"#0000FF" SIZE=3D2 FACE=3D"Arial">opEnums.h</FONT></U></A></P>

<P ALIGN=3DLEFT><A =
HREF=3D"ftp://ftp.pwg.org/pub/pwg/openprinting/embedded/opepCurrent/opep=
Software/OpepCommon/inc/opJobStructs.h"><U></U><U><FONT =
COLOR=3D"#0000FF" SIZE=3D2 =
FACE=3D"Arial">ftp://ftp.pwg.org/pub/pwg/op</FONT><FONT =
COLOR=3D"#0000FF" SIZE=3D2 =
FACE=3D"Arial">enprinting/embedded/opepCurrent/opepSoftware/OpepCommon/i=
nc</FONT><FONT COLOR=3D"#0000FF" SIZE=3D2 FACE=3D"Arial">/</FONT><FONT =
COLOR=3D"#0000FF" SIZE=3D2 =
FACE=3D"Arial">opJobStructs.h</FONT></U></A><FONT FACE=3D"Times New =
Roman"></FONT> </P>
<BR>

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
Voice: 408.576.4131&nbsp; Fax: 408.474.0511 </FONT></I></B></P>

<P ALIGN=3DLEFT></P>

</BODY>
</HTML>
------_=_NextPart_001_01C7E34B.4918E5D8--
