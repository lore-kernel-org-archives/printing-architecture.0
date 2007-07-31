Message-ID: <2F7D63A21DB2C74EB8EB8C09AF667DB00559CBAF@eitc220.eitc.epson.com>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Date: Tue, 31 Jul 2007 07:21:42 -0700
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01C7D37E.1DB47010"
Subject: [Printing-architecture] job tickets
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

------_=_NextPart_001_01C7D37E.1DB47010
Content-Type: text/plain

All,

Over the years we have interesting debates on the subject of job tickets;
specifically, the idea of making a new one.   Although I not actually
suggesting create of an "approved" job ticket for the embedded print thin
thread, there is a need for one just for the sake of demonstration.   Could
I use JDF or PWG micro job ticket?  No because 1.) we different syntax and
enumeration and 2.) I have no back ground in those job tickets.  

Why is a job ticket need for the demonstration (thin thread).   In reality,
I believe that any embedded solution will fill job structs more "directly"
instead of adding the need for an actual job ticket and parser which have a
high overhead in memory usage. (Those would be the JT API's !!!)  (But then
again they might want a parser and a simple job ticket!!!)  The job ticket
is really to show the objects or the detail structure of the job elements
and how they relate.  It is not "teaching" but "informative".  

The ftp site has the two examples of "job tickets" I using.  One example is
very simple; while the other provides for complexity.   The overall
structure is a basically objects which are referenced by labels.
[ The folder with the example job tickets is
ftp://ftp.pwg.org/pub/pwg/openprinting/embedded/opepCurrent/opepSoftware/Job
Ticket_JobTickets/
<ftp://ftp.pwg.org/pub/pwg/openprinting/embedded/opepCurrent/opepSoftware/Jo
bTicket_JobTickets/>  ]

Weather, we as a group, decided to endorse or reject an op job ticket, I
will leave the job ticket idea  in the embedded solution as part of the
"test application".



Rgds, 
Glen W. Petrie 
The World of Graphics 



------_=_NextPart_001_01C7D37E.1DB47010
Content-Type: text/html
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2//EN">
<HTML>
<HEAD>
<META HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Dus-ascii">
<META NAME=3D"Generator" CONTENT=3D"MS Exchange Server version =
5.5.2658.24">
<TITLE>job tickets</TITLE>
</HEAD>
<BODY>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">All</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">,</FONT></P>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">O</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">v</FONT><FONT SIZE=3D2 FACE=3D"Arial">er</FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">the years we have interesting debates on the =
subject of</FONT> <FONT SIZE=3D2 FACE=3D"Arial">job tickets; =
specifically, the idea of making a new</FONT><FONT SIZE=3D2 =
FACE=3D"Arial"> one.&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">Although I not</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">actually suggesting create of an</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">"</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">approved</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">"</FONT><FONT SIZE=3D2 FACE=3D"Arial"> job ticket for =
the embedded print thin thread</FONT><FONT SIZE=3D2 FACE=3D"Arial">, =
there is a need for</FONT> <FONT SIZE=3D2 FACE=3D"Arial">one just for =
the</FONT> <FONT SIZE=3D2 FACE=3D"Arial">sake</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">of</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">demonstration.</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">&nbsp;</FONT> <FONT SIZE=3D2 FACE=3D"Arial">Could I use =
JDF or PWG micro</FONT><FONT SIZE=3D2 FACE=3D"Arial"> job =
ticket</FONT><FONT SIZE=3D2 FACE=3D"Arial">?</FONT>&nbsp;<FONT SIZE=3D2 =
FACE=3D"Arial"> N</FONT><FONT SIZE=3D2 FACE=3D"Arial">o</FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">because</FONT><FONT SIZE=3D2 =
FACE=3D"Arial"></FONT> <FONT SIZE=3D2 FACE=3D"Arial">1.) we different =
syntax and enumeration</FONT> <FONT SIZE=3D2 FACE=3D"Arial">and 2.) I =
have no back ground in those job tickets.</FONT>&nbsp;<FONT SIZE=3D2 =
FACE=3D"Arial"> </FONT></P>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">Why is a job ticket need =
for the demonstration (thin thread).</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">&nbsp;</FONT> <FONT SIZE=3D2 FACE=3D"Arial">In reality, =
I believe that any embedded solution will</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">fill job structs</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">more</FONT> <FONT SIZE=3D2 FACE=3D"Arial">"</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">directly</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">"</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">instead of adding the need for</FONT><FONT =
SIZE=3D2 FACE=3D"Arial"></FONT> <FONT SIZE=3D2 FACE=3D"Arial">an actual =
job ticket and</FONT> <FONT SIZE=3D2 FACE=3D"Arial">parser</FONT><FONT =
SIZE=3D2 FACE=3D"Arial"> which have a high overhead in memory =
usage</FONT><FONT SIZE=3D2 FACE=3D"Arial">. (T</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">hose</FONT> <FONT SIZE=3D2 FACE=3D"Arial">would be the =
JT API</FONT><FONT SIZE=3D2 FACE=3D"Arial">'</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">s !!!</FONT><FONT SIZE=3D2 FACE=3D"Arial">)</FONT><FONT =
SIZE=3D2 FACE=3D"Arial"></FONT>&nbsp;<FONT SIZE=3D2 =
FACE=3D"Arial"></FONT> <FONT SIZE=3D2 FACE=3D"Arial">(But then =
ag</FONT><FONT SIZE=3D2 FACE=3D"Arial">ain they might</FONT><FONT =
SIZE=3D2 FACE=3D"Arial"> want a p</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">arser and a simple job ticket</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">!</FONT><FONT SIZE=3D2 FACE=3D"Arial">!</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">!</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">)</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT>&nbsp;<FONT =
SIZE=3D2 FACE=3D"Arial"></FONT> <FONT SIZE=3D2 FACE=3D"Arial">The job =
ticket is really</FONT> <FONT SIZE=3D2 FACE=3D"Arial">to show =
the</FONT> <FONT SIZE=3D2 FACE=3D"Arial">object</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">s</FONT><FONT SIZE=3D2 FACE=3D"Arial"> or</FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">the</FONT> <FONT SIZE=3D2 FACE=3D"Arial">detail =
structure of th</FONT><FONT SIZE=3D2 FACE=3D"Arial">e job</FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">elements and how they relate.</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">&nbsp;</FONT> <FONT SIZE=3D2 FACE=3D"Arial">It =
is not</FONT> <FONT SIZE=3D2 FACE=3D"Arial">"</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">teaching</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">"</FONT><FONT SIZE=3D2 FACE=3D"Arial"> but</FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">"</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">informative</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">"</FONT><FONT SIZE=3D2 FACE=3D"Arial">.&nbsp;</FONT> =
</P>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">T</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">he ftp site has</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">the</FONT><FONT SIZE=3D2 FACE=3D"Arial"> two =
example</FONT><FONT SIZE=3D2 FACE=3D"Arial">s</FONT><FONT SIZE=3D2 =
FACE=3D"Arial"> of</FONT> <FONT SIZE=3D2 FACE=3D"Arial">"</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">job tickets</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">"</FONT><FONT SIZE=3D2 FACE=3D"Arial"> I =
using.</FONT>&nbsp;<FONT SIZE=3D2 FACE=3D"Arial"></FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">O</FONT><FONT SIZE=3D2 FACE=3D"Arial">n</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">e</FONT> <FONT SIZE=3D2 FACE=3D"Arial">example =
is very simple; while the other provides for complexity.</FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">&nbsp;</FONT> <FONT SIZE=3D2 FACE=3D"Arial">The =
overall structure is a basically objects which are referenced by =
labels.</FONT></P>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">[ The</FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">folder with</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">the ex</FONT><FONT SIZE=3D2 FACE=3D"Arial">ample job =
tickets is</FONT> <A =
HREF=3D"ftp://ftp.pwg.org/pub/pwg/openprinting/embedded/opepCurrent/opep=
Software/JobTicket_JobTickets/"><U></U><U><FONT COLOR=3D"#0000FF" =
SIZE=3D2 =
FACE=3D"Arial">ftp://ftp.pwg.org/pub/pwg/openprinting/embedded/opepCurre=
nt/opepSoftware/JobTicket_JobTickets/</FONT></U></A><FONT SIZE=3D2 =
FACE=3D"Arial"></FONT> <FONT SIZE=3D2 FACE=3D"Arial">]</FONT></P>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">Weather, we as a group, =
decided to</FONT> <FONT SIZE=3D2 FACE=3D"Arial">endorse or reject =
a</FONT><FONT SIZE=3D2 FACE=3D"Arial">n</FONT><FONT SIZE=3D2 =
FACE=3D"Arial"> op job ticket,</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">I</FONT> <FONT SIZE=3D2 FACE=3D"Arial">will =
leave</FONT><FONT SIZE=3D2 FACE=3D"Arial"> the job ticket =
idea</FONT>&nbsp;<FONT SIZE=3D2 FACE=3D"Arial"> in the embedded =
solution as part of the</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">"</FONT><FONT SIZE=3D2 FACE=3D"Arial">test =
application</FONT><FONT SIZE=3D2 FACE=3D"Arial">"</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">.</FONT></P>
<BR>

<P ALIGN=3DLEFT><A NAME=3D"_MailAutoSig"></A></P>

<P ALIGN=3DLEFT><B><I><FONT FACE=3D"Times New Roman">Rgds,<BR>
</FONT></I></B><B><I></I></B><B><I><FONT COLOR=3D"#0000FF" SIZE=3D5 =
FACE=3D"Times New Roman">Glen W. =
Petrie</FONT></I></B><B><I></I></B><B><I><FONT SIZE=3D5 FACE=3D"Times =
New Roman"><BR>
</FONT></I></B><B><I><FONT FACE=3D"Times New Roman">T</FONT><FONT =
FACE=3D"Times New Roman">he World of Graphics</FONT></I></B><B><I><FONT =
FACE=3D"Times New Roman"> </FONT></I></B></P>

<P ALIGN=3DLEFT></P>

</BODY>
</HTML>
------_=_NextPart_001_01C7D37E.1DB47010--
