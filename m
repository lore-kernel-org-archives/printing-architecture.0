Message-ID: <2F7D63A21DB2C74EB8EB8C09AF667DB00559CC48@eitc220.eitc.epson.com>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Date: Fri, 31 Aug 2007 07:57:59 -0700
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01C7EBDF.5269F228"
Subject: [Printing-architecture] more questions on fsgjt api
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

------_=_NextPart_001_01C7EBDF.5269F228
Content-Type: text/plain

I believe that for the API call

fsgjt_return_code_t fsgjtNewInsertSheet(  /* OP_INT32  */

        fsgjt_object_t*     insertSheet,  /* void**    */
        fsgjt_position_t    position,     /* enum      */
        fsgjt_object_t*     pages         /* void**    */  --->>>>>
fsgjt_object_t     pages         /* void*    */

that the  'pages'  parameter should be "fsg_object_t' and not
"fsg_object_t*'  because the 'pages' in an input and is not created with
this api.


Rgds, 
Glen W. Petrie 
Epson Imaging Technology Center 
2580 Orchard Parkway, Suite 200 
San Jose, CA, 95131 
Voice: 408.576.4131  Fax: 408.474.0511 



------_=_NextPart_001_01C7EBDF.5269F228
Content-Type: text/html
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2//EN">
<HTML>
<HEAD>
<META HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Dus-ascii">
<META NAME=3D"Generator" CONTENT=3D"MS Exchange Server version =
5.5.2658.24">
<TITLE>more questions on fsgjt api</TITLE>
</HEAD>
<BODY>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">I be</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">lieve that</FONT> <FONT SIZE=3D2 FACE=3D"Arial">for the =
API call</FONT></P>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">fsgjt_return_code_t =
fsgjtNewInsertSheet(&nbsp; /* OP_INT32&nbsp; */</FONT></P>

<P ALIGN=3DLEFT><FONT SIZE=3D2 =
FACE=3D"Arial">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">fsgjt_object_t*&nbsp;&nbsp;&nbsp;&nbsp; =
insertSheet,&nbsp; /* void**&nbsp;&nbsp;&nbsp; */</FONT></P>

<P ALIGN=3DLEFT><FONT SIZE=3D2 =
FACE=3D"Arial">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">fsgjt_position_t&nbsp;&nbsp;&nbsp; =
position,&nbsp;&nbsp;&nbsp;&nbsp; /* enum&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
*/</FONT></P>

<P ALIGN=3DLEFT><FONT SIZE=3D2 =
FACE=3D"Arial">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
fsgjt_object_t*&nbsp;&nbsp;&nbsp;&nbsp; =
pages&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* =
void**&nbsp;&nbsp;&nbsp; */</FONT><FONT SIZE=3D2 FACE=3D"Arial">&nbsp; =
-</FONT><FONT SIZE=3D2 FACE=3D"Arial">--&gt;</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">&gt;&gt;&gt;&gt;</FONT>&nbsp;<FONT SIZE=3D2 =
FACE=3D"Arial"> fsgjt_object_t</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">&nbsp;&nbsp;&nbsp;&nbsp; =
pages&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* =
void*</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">&nbsp;&nbsp; */</FONT></P>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">t</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">hat the&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">'</FONT><FONT SIZE=3D2 FACE=3D"Arial">pages</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">'</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">parameter</FONT> <FONT SIZE=3D2 FACE=3D"Arial">should =
be</FONT> <FONT SIZE=3D2 FACE=3D"Arial">"</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">fsg_object_t</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">'</FONT><FONT SIZE=3D2 FACE=3D"Arial"> and not</FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">"</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">fsg_object_t*</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">'</FONT><FONT SIZE=3D2 FACE=3D"Arial">&nbsp; because =
the</FONT> <FONT SIZE=3D2 FACE=3D"Arial">'</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">pages</FONT><FONT SIZE=3D2 FACE=3D"Arial">'</FONT><FONT =
SIZE=3D2 FACE=3D"Arial"> in an input and is</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">not</FONT> <FONT SIZE=3D2 FACE=3D"Arial">created with =
this</FONT> <FONT SIZE=3D2 FACE=3D"Arial">api.</FONT></P>

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
------_=_NextPart_001_01C7EBDF.5269F228--
