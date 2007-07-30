Message-ID: <2F7D63A21DB2C74EB8EB8C09AF667DB00559CBAB@eitc220.eitc.epson.com>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Date: Mon, 30 Jul 2007 08:23:21 -0700
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01C7D2BD.9071D440"
Subject: [Printing-architecture] OPEP Software opEnums.h, opJobStructs.h,
	opReferenceCard.doc[pdf]
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

------_=_NextPart_001_01C7D2BD.9071D440
Content-Type: text/plain

All,

I have created the initial enumerations based on the fsg job ticket work
with some modifications to the naming convention.  This file is considered a
common OPEP file since the goal that only these enumerations will be used by
all software for the represented elements in the file.

ftp://ftp.pwg.org/pub/pwg/openprinting/embedded/opepCurrent/opepSoftware/Ope
pCommon/inc/opEnums.h
<ftp://ftp.pwg.org/pub/pwg/openprinting/embedded/opepCurrent/opepSoftware/Op
epCommon/inc/opEnums.h> 

I also created the initial version of the job structs; again based on the
fsg job ticket work.   My intent at this time is that parsed job
information, either from job ticket api's or from an actual job ticket, is
stored in these job structures and used by all OPEP software components.
Thus, the job structs is also a common OPEP file.

ftp://ftp.pwg.org/pub/pwg/openprinting/embedded/opepCurrent/opepSoftware/Ope
pCommon/inc/opJobStructs.h
<ftp://ftp.pwg.org/pub/pwg/openprinting/embedded/opepCurrent/opepSoftware/Op
epCommon/inc/opJobStructs.h>  

Lastly, I created a reference card for the files above.   It would be
difficult for programmers to look in the headers files and determine a
specific numeric value for the various enums while they are debugging.
Therefore, I created a reference card to help.

ftp://ftp.pwg.org/pub/pwg/openprinting/embedded/opepCurrent/opepSoftware/_Op
epSoftwareDocumentation/opReferenceCard.doc
<ftp://ftp.pwg.org/pub/pwg/openprinting/embedded/opepCurrent/opepSoftware/_O
pepSoftwareDocumentation/opReferenceCard.doc>  

ftp://ftp.pwg.org/pub/pwg/openprinting/embedded/opepCurrent/opepSoftware/_Op
epSoftwareDocumentation/opReferenceCard.pdf
<ftp://ftp.pwg.org/pub/pwg/openprinting/embedded/opepCurrent/opepSoftware/_O
pepSoftwareDocumentation/opReferenceCard.pdf>    




Rgds, 
Glen W. Petrie 
The World of Graphics




------_=_NextPart_001_01C7D2BD.9071D440
Content-Type: text/html
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2//EN">
<HTML>
<HEAD>
<META HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Dus-ascii">
<META NAME=3D"Generator" CONTENT=3D"MS Exchange Server version =
5.5.2658.24">
<TITLE>OPEP Software opEnums.h, opJobStructs.h, =
opReferenceCard.doc[pdf]</TITLE>
</HEAD>
<BODY>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">All,</FONT></P>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">I have created the =
initial enumerations</FONT> <FONT SIZE=3D2 FACE=3D"Arial">based on the =
fsg job ticket wor</FONT><FONT SIZE=3D2 FACE=3D"Arial">k</FONT><FONT =
SIZE=3D2 FACE=3D"Arial"></FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">with</FONT><FONT SIZE=3D2 FACE=3D"Arial"> some</FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">modifications to the naming =
convention</FONT><FONT SIZE=3D2 FACE=3D"Arial">.</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">&nbsp;</FONT> <FONT SIZE=3D2 FACE=3D"Arial">This file is =
consider</FONT><FONT SIZE=3D2 FACE=3D"Arial">ed</FONT><FONT SIZE=3D2 =
FACE=3D"Arial"> a common OPEP file since the goal that only these =
enumerations will be used by all</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">software for the represented elements in th</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">e file.</FONT></P>

<P ALIGN=3DLEFT><A =
HREF=3D"ftp://ftp.pwg.org/pub/pwg/openprinting/embedded/opepCurrent/opep=
Software/OpepCommon/inc/opEnums.h"><U></U><U><FONT COLOR=3D"#0000FF" =
SIZE=3D2 =
FACE=3D"Arial">ftp://ftp.pwg.org/pub/pwg/openprinting/embedded/opepCurre=
nt/opepSoftware/OpepCommon/inc/</FONT><FONT COLOR=3D"#0000FF" SIZE=3D2 =
FACE=3D"Arial">opEnums.h</FONT></U></A></P>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">I also =
created</FONT><FONT SIZE=3D2 FACE=3D"Arial"> the initial version of =
the</FONT> <FONT SIZE=3D2 FACE=3D"Arial">job structs</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">; again based on the</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">fsg job</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">ticket</FONT> <FONT SIZE=3D2 FACE=3D"Arial">work.</FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">My intent at this time is t</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">hat</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">parsed</FONT><FONT SIZE=3D2 FACE=3D"Arial"> =
jo</FONT><FONT SIZE=3D2 FACE=3D"Arial">b information</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">,</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">either from job ticket api</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">'</FONT><FONT SIZE=3D2 FACE=3D"Arial">s or =
from</FONT> <FONT SIZE=3D2 FACE=3D"Arial">a</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">n actual job ticket</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">,</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">i</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">s</FONT><FONT SIZE=3D2 FACE=3D"Arial"> stored in these =
job structures and used by</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">all</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">OPEP</FONT><FONT SIZE=3D2 FACE=3D"Arial"> software =
components</FONT><FONT SIZE=3D2 FACE=3D"Arial">.</FONT>&nbsp;<FONT =
SIZE=3D2 FACE=3D"Arial"> T</FONT><FONT SIZE=3D2 FACE=3D"Arial">hus, the =
job structs is also a common OPEP file.</FONT></P>

<P ALIGN=3DLEFT><A =
HREF=3D"ftp://ftp.pwg.org/pub/pwg/openprinting/embedded/opepCurrent/opep=
Software/OpepCommon/inc/opJobStructs.h"><U></U><U><FONT =
COLOR=3D"#0000FF" SIZE=3D2 =
FACE=3D"Arial">ftp://ftp.pwg.org/pub/pwg/openprinting/embedded/opepCurre=
nt/opepSoftware/OpepCommon/inc/</FONT><FONT COLOR=3D"#0000FF" SIZE=3D2 =
FACE=3D"Arial">opJobStructs.h</FONT></U></A><FONT SIZE=3D2 =
FACE=3D"Arial"></FONT> </P>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">Lastly, I created a =
reference card for</FONT> <FONT SIZE=3D2 FACE=3D"Arial">the files =
above.</FONT> <FONT SIZE=3D2 FACE=3D"Arial">&nbsp;</FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">It</FONT> <FONT SIZE=3D2 FACE=3D"Arial">would =
be difficult for programmers to</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">look in the headers files and determine a specific =
numeric value for the various enums while they are</FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">debugging.</FONT>&nbsp;<FONT SIZE=3D2 =
FACE=3D"Arial"> T</FONT><FONT SIZE=3D2 FACE=3D"Arial">herefore</FONT><FO=
NT SIZE=3D2 FACE=3D"Arial">, I created a reference card to =
help</FONT><FONT SIZE=3D2 FACE=3D"Arial">.</FONT></P>

<P ALIGN=3DLEFT><A =
HREF=3D"ftp://ftp.pwg.org/pub/pwg/openprinting/embedded/opepCurrent/opep=
Software/_OpepSoftwareDocumentation/opReferenceCard.doc"><U></U><U><FONT=
 COLOR=3D"#0000FF" SIZE=3D2 =
FACE=3D"Arial">ftp://ftp.pwg.org/pub/pwg/openprinting/embedded/opepCurre=
nt/opepSoftware/_OpepSoftwareDocumentation/</FONT><FONT =
COLOR=3D"#0000FF" SIZE=3D2 =
FACE=3D"Arial">opReferenceCard.doc</FONT></U></A><FONT SIZE=3D2 =
FACE=3D"Arial"> </FONT></P>

<P ALIGN=3DLEFT><A =
HREF=3D"ftp://ftp.pwg.org/pub/pwg/openprinting/embedded/opepCurrent/opep=
Software/_OpepSoftwareDocumentation/opReferenceCard.pdf"><U></U><U><FONT=
 COLOR=3D"#0000FF" SIZE=3D2 =
FACE=3D"Arial">ftp://ftp.pwg.org/pub/pwg/openprinting/embedded/opepCurre=
nt/opepSoftware/_OpepSoftwareDocumentation/</FONT><FONT =
COLOR=3D"#0000FF" SIZE=3D2 =
FACE=3D"Arial">opReferenceCard.</FONT></U><U></U><U><FONT =
COLOR=3D"#0000FF" SIZE=3D2 FACE=3D"Arial">pdf</FONT></U></A><FONT =
SIZE=3D2 FACE=3D"Arial"></FONT>&nbsp;<FONT SIZE=3D2 =
FACE=3D"Arial"></FONT>&nbsp;<FONT SIZE=3D2 FACE=3D"Arial"></FONT> </P>
<BR>
<BR>

<P ALIGN=3DLEFT><A NAME=3D"_MailAutoSig"></A></P>

<P ALIGN=3DLEFT><B><I><FONT FACE=3D"Times New Roman">Rgds,<BR>
</FONT></I></B><B><I></I></B><B><I><FONT COLOR=3D"#0000FF" SIZE=3D5 =
FACE=3D"Times New Roman">Glen W. =
Petrie</FONT></I></B><B><I></I></B><B><I><FONT SIZE=3D5 FACE=3D"Times =
New Roman"><BR>
</FONT></I></B><B><I><FONT FACE=3D"Times New Roman">T</FONT><FONT =
FACE=3D"Times New Roman">he World of Graphics</FONT></I></B></P>
<BR>

<P ALIGN=3DLEFT></P>

</BODY>
</HTML>
------_=_NextPart_001_01C7D2BD.9071D440--
