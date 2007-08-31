Message-ID: <2F7D63A21DB2C74EB8EB8C09AF667DB00559CC47@eitc220.eitc.epson.com>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Date: Fri, 31 Aug 2007 07:47:14 -0700
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01C7EBDD.D1DB6808"
Subject: [Printing-architecture] Question on Destroy Object
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

------_=_NextPart_001_01C7EBDD.D1DB6808
Content-Type: text/plain

for the fsgJTAPI - 'fsgDestroy(object)'  is it the intent the any attributes
bound to (for) the 'object' are automatically destroyed or should the
programmer explicitly destroy individual attributes.


Also, am I correct on the following 

I believe that in fsgjt_enum.h there should be a 

#define FSGJT_VT_JOB_TICKET_OBJECT                  "JOB_TICKET_OBJECT"

which is used in "fsgjtNewJobTicketInfo"

I believe that in  fsgjt_enum.h there is an error ---

4// error #define FSGJT_VT_SEPARATOR_SHEET_ENUM
"SEPARATOR_SHEET_ENUM"

should be

#define FSGJT_VT_SEPARATOR_SHEET_TYPE_ENUM
"SEPARATOR_SHEET_TYPE_ENUM"


Rgds, 
Glen W. Petrie 
Epson Imaging Technology Center 
2580 Orchard Parkway, Suite 200 
San Jose, CA, 95131 
Voice: 408.576.4131  Fax: 408.474.0511 



------_=_NextPart_001_01C7EBDD.D1DB6808
Content-Type: text/html
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2//EN">
<HTML>
<HEAD>
<META HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Dus-ascii">
<META NAME=3D"Generator" CONTENT=3D"MS Exchange Server version =
5.5.2658.24">
<TITLE>Question on Destroy Object</TITLE>
</HEAD>
<BODY>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">for th</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">e fsgJTAPI</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">-</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">'</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">fsg</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">Destro</FONT><FONT SIZE=3D2 FACE=3D"Arial">y</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">(</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">o</FONT><FONT SIZE=3D2 FACE=3D"Arial">b</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">j</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">e</FONT><FONT SIZE=3D2 FACE=3D"Arial">c</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">t</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">)</FONT><FONT SIZE=3D2 FACE=3D"Arial">'</FONT><FONT =
SIZE=3D2 FACE=3D"Arial"></FONT>&nbsp;<FONT SIZE=3D2 =
FACE=3D"Arial"></FONT> <FONT SIZE=3D2 FACE=3D"Arial">i</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">s</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">i</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">t</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">t</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">h</FONT><FONT SIZE=3D2 FACE=3D"Arial">e</FONT><FONT =
SIZE=3D2 FACE=3D"Arial"></FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">i</FONT><FONT SIZE=3D2 FACE=3D"Arial">n</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">t</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">e</FONT><FONT SIZE=3D2 FACE=3D"Arial">n</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">t</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">t</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">h</FONT><FONT SIZE=3D2 FACE=3D"Arial">e</FONT><FONT =
SIZE=3D2 FACE=3D"Arial"></FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">a</FONT><FONT SIZE=3D2 FACE=3D"Arial">n</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">y</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">a</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">t</FONT><FONT SIZE=3D2 FACE=3D"Arial">t</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">r</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">i</FONT><FONT SIZE=3D2 FACE=3D"Arial">b</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">u</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">t</FONT><FONT SIZE=3D2 FACE=3D"Arial">e</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">s</FONT><FONT SIZE=3D2 FACE=3D"Arial"> bound =
to</FONT><FONT SIZE=3D2 FACE=3D"Arial"> (f</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">o</FONT><FONT SIZE=3D2 FACE=3D"Arial">r</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">)</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">t</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">h</FONT><FONT SIZE=3D2 FACE=3D"Arial">e</FONT><FONT =
SIZE=3D2 FACE=3D"Arial"></FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">'</FONT><FONT SIZE=3D2 FACE=3D"Arial">o</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">b</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">j</FONT><FONT SIZE=3D2 FACE=3D"Arial">e</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">c</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">t</FONT><FONT SIZE=3D2 FACE=3D"Arial">'</FONT><FONT =
SIZE=3D2 FACE=3D"Arial"></FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">a</FONT><FONT SIZE=3D2 FACE=3D"Arial">r</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">e</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">a</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">u</FONT><FONT SIZE=3D2 FACE=3D"Arial">t</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">o</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">m</FONT><FONT SIZE=3D2 FACE=3D"Arial">a</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">t</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">i</FONT><FONT SIZE=3D2 FACE=3D"Arial">c</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">a</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">l</FONT><FONT SIZE=3D2 FACE=3D"Arial">l</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">y</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">d</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">e</FONT><FONT SIZE=3D2 FACE=3D"Arial">s</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">t</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">r</FONT><FONT SIZE=3D2 FACE=3D"Arial">o</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">y</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">e</FONT><FONT SIZE=3D2 FACE=3D"Arial">d</FONT><FONT =
SIZE=3D2 FACE=3D"Arial"></FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">o</FONT><FONT SIZE=3D2 FACE=3D"Arial">r</FONT><FONT =
SIZE=3D2 FACE=3D"Arial"></FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">s</FONT><FONT SIZE=3D2 FACE=3D"Arial">h</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">o</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">u</FONT><FONT SIZE=3D2 FACE=3D"Arial">l</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">d</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">t</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">h</FONT><FONT SIZE=3D2 FACE=3D"Arial">e</FONT><FONT =
SIZE=3D2 FACE=3D"Arial"></FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">p</FONT><FONT SIZE=3D2 FACE=3D"Arial">r</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">o</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">g</FONT><FONT SIZE=3D2 FACE=3D"Arial">r</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">a</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">m</FONT><FONT SIZE=3D2 FACE=3D"Arial">m</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">e</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">r</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">e</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">x</FONT><FONT SIZE=3D2 FACE=3D"Arial">p</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">l</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">i</FONT><FONT SIZE=3D2 FACE=3D"Arial">c</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">i</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">t</FONT><FONT SIZE=3D2 FACE=3D"Arial">l</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">y</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">destroy</FONT><FONT SIZE=3D2 =
FACE=3D"Arial"></FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">individual</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">a</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">t</FONT><FONT SIZE=3D2 FACE=3D"Arial">t</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">r</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">i</FONT><FONT SIZE=3D2 FACE=3D"Arial">b</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">u</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">t</FONT><FONT SIZE=3D2 FACE=3D"Arial">e</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">s</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">.</FONT></P>
<BR>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">A</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">l</FONT><FONT SIZE=3D2 FACE=3D"Arial">s</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">o</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">,</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">a</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">m</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">I</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">c</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">o</FONT><FONT SIZE=3D2 FACE=3D"Arial">r</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">r</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">e</FONT><FONT SIZE=3D2 FACE=3D"Arial">c</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">t</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">o</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">n</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">t</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">h</FONT><FONT SIZE=3D2 FACE=3D"Arial">e</FONT><FONT =
SIZE=3D2 FACE=3D"Arial"></FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">f</FONT><FONT SIZE=3D2 FACE=3D"Arial">o</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">l</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">l</FONT><FONT SIZE=3D2 FACE=3D"Arial">o</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">w</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">i</FONT><FONT SIZE=3D2 FACE=3D"Arial">n</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">g</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> =
</P>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">I</FONT><FONT SIZE=3D2 =
FACE=3D"Arial"></FONT> <FONT SIZE=3D2 FACE=3D"Arial">b</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">e</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">l</FONT><FONT SIZE=3D2 FACE=3D"Arial">i</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">e</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">v</FONT><FONT SIZE=3D2 FACE=3D"Arial">e</FONT><FONT =
SIZE=3D2 FACE=3D"Arial"></FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">that</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">i</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">n</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">fsg</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">jt</FONT><FONT SIZE=3D2 FACE=3D"Arial">_enum.h =
there</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">should</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">b</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">e</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">a</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> =
</P>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">#define =
FSGJT_VT_JOB_TICKET_OBJECT&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
&quot;JOB_TICKET_OBJECT&quot;</FONT></P>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">which is used in</FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">"</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">fsgjtNewJobTicketInfo</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">"</FONT></P>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">I believ</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">e that in</FONT>&nbsp;<FONT SIZE=3D2 =
FACE=3D"Arial"></FONT> <FONT SIZE=3D2 FACE=3D"Arial">fsg</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">jt</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">_enum.h</FONT><FONT SIZE=3D2 FACE=3D"Arial"> there is an =
error ---</FONT></P>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">4</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">// error #define =
FSGJT_VT_SEPARATOR_SHEET_ENUM&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
&quot;SEPARATOR_SHEET_ENUM&quot;</FONT></P>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">should be</FONT></P>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">#define =
FSGJT_VT_SEPARATOR_SHEET_TYPE_ENUM&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; &quot;SEPARATOR_SHEET_TYPE_ENUM&quot;</FONT></P>

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
------_=_NextPart_001_01C7EBDD.D1DB6808--
