Message-ID: <2F7D63A21DB2C74EB8EB8C09AF667DB00559CC4D@eitc220.eitc.epson.com>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Date: Tue, 4 Sep 2007 07:21:05 -0700 
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01C7EEFE.D4524EF8"
Subject: [Printing-architecture] fsgJTAPI source file (very early version)
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

------_=_NextPart_001_01C7EEFE.D4524EF8
Content-Type: text/plain

Hello All,

I we discussed, I have started an implementation with 100% capability with
fsgJTAPI.  The file below is the very early draft, draft, draft version of
the file.  Only some of the routines have been addressed and many of the
comments still need to be updates in those routine.  I am simply providing
it as a possible discussion item for this week's architecture meeting. 

You will see a section at the top of the file called "FSGJT Additions or
corrections".  This where I am trying to capture possible bugs, omissions or
recommended improvements to the fsgJTAPI header files.


ftp://ftp.pwg.org/pub/pwg/openprinting/email-zip/2007.09.04-fsgJTAPI.zip
<ftp://ftp.pwg.org/pub/pwg/openprinting/email-zip/2007.09.04-fsgJTAPI.zip> 



Rgds, 
Glen W. Petrie 
Epson Imaging Technology Center 
2580 Orchard Parkway, Suite 200 
San Jose, CA, 95131 
Voice: 408.576.4131  Fax: 408.474.0511 



------_=_NextPart_001_01C7EEFE.D4524EF8
Content-Type: text/html
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2//EN">
<HTML>
<HEAD>
<META HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Dus-ascii">
<META NAME=3D"Generator" CONTENT=3D"MS Exchange Server version =
5.5.2658.24">
<TITLE>fsgJTAPI source file (very early version)</TITLE>
</HEAD>
<BODY>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">Hello All,</FONT></P>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">I we discussed, I have =
started an implementation with 100% capability with =
fsgJTAPI.</FONT>&nbsp;<FONT SIZE=3D2 FACE=3D"Arial"> T</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">he</FONT> <FONT SIZE=3D2 FACE=3D"Arial">file =
below is the</FONT> <FONT SIZE=3D2 FACE=3D"Arial">ve</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">ry</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">early</FONT> <FONT SIZE=3D2 FACE=3D"Arial">draft, draft, =
draft version of the file.</FONT>&nbsp;<FONT SIZE=3D2 FACE=3D"Arial"> =
O</FONT><FONT SIZE=3D2 FACE=3D"Arial">nly</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">some of the routines have been address</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">ed</FONT><FONT SIZE=3D2 FACE=3D"Arial"> =
and</FONT> <FONT SIZE=3D2 FACE=3D"Arial">many of the comments still =
need to be updates in those routine.</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">&nbsp;</FONT> <FONT SIZE=3D2 FACE=3D"Arial">I am simply =
providing it as a</FONT> <FONT SIZE=3D2 FACE=3D"Arial">possible</FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">discussion</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">item for this week</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">'</FONT><FONT SIZE=3D2 FACE=3D"Arial">s architecture =
meeting.</FONT> </P>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">Y</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">ou</FONT><FONT SIZE=3D2 FACE=3D"Arial"> will see a =
section at the top of the file called</FONT><FONT SIZE=3D2 =
FACE=3D"Arial"></FONT> <FONT SIZE=3D2 FACE=3D"Arial">"</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">FSGJT Additions or corrections</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">"</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">.</FONT>&nbsp;<FONT SIZE=3D2 FACE=3D"Arial"> =
T</FONT><FONT SIZE=3D2 FACE=3D"Arial">his</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">where I am trying to capture possible bugs,</FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">omissions or recommended improvements to the =
fsgJTAPI header files.</FONT></P>
<BR>

<P ALIGN=3DLEFT><A =
HREF=3D"ftp://ftp.pwg.org/pub/pwg/openprinting/email-zip/2007.09.04-fsgJ=
TAPI.zip"><U></U><U><FONT COLOR=3D"#0000FF" SIZE=3D2 =
FACE=3D"Arial">ftp://ftp.pwg.org/pub/pwg/openprinting/email-zip/</FONT><=
FONT COLOR=3D"#0000FF" SIZE=3D2 =
FACE=3D"Arial">2007.09.04-fsgJTAPI.zip</FONT></U></A></P>
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
------_=_NextPart_001_01C7EEFE.D4524EF8--
