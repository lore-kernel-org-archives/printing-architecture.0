Message-ID: <2F7D63A21DB2C74EB8EB8C09AF667DB00559CBD3@eitc220.eitc.epson.com>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Date: Wed, 8 Aug 2007 07:41:46 -0700 
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01C7D9CA.3F14B058"
Subject: [Printing-architecture] Multiple Job Ticket Question
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

------_=_NextPart_001_01C7D9CA.3F14B058
Content-Type: text/plain

All,

I don't remember how we decided to handle processing of multiple jobs.
For a desktop, the JTAPI software could have individual instances of the
software for each job.  Thus, there is no need for the JTAPI to understand
processing multiple job tickets.   However, for an embedded solution having
different instances of the code may not be desired - simply a waste of
memory.

Scenario --- John turns on his pda.  (Not all pda's can multiplex
applications; they simply run the active application.)   John read several
email and decides to print three of them.  After he starts the print
creation operation << one to possibly three open job-tickets >>; John gets
an alert that he has a meeting in ten minutes.   He needs to print two
documents before the meeting.  John selects the two documents he need from
the pda's desktop and initiates a print action.  << Two more job-tickets may
be open or they may be done serially. >>

-- this would be easy to handle if there are multiple instances of the print
software; however, if there is only one instances of the print software then
all of the JTAPI need an additional argument.   The argument is a job
identifier so that the api's know what job to associate the request to.

example:
I would change opjtOpenLib(context) ---> opjtOpenLib(void);

Add a api call opjtNewJob((void**)foo) or require that
opjtNewObject((void**)foo, OP_JOB_OBJECT) be called before any other API
(after openlib).


--- the other choice is to allow only one open print job at a time.

What is the suggested solution?

Rgds, 
Glen W. Petrie 
Epson Imaging Technology Center 
2580 Orchard Parkway, Suite 200 
San Jose, CA, 95131 
Voice: 408.576.4131  Fax: 408.474.0511 



------_=_NextPart_001_01C7D9CA.3F14B058
Content-Type: text/html
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2//EN">
<HTML>
<HEAD>
<META HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Dus-ascii">
<META NAME=3D"Generator" CONTENT=3D"MS Exchange Server version =
5.5.2658.24">
<TITLE>Multiple Job Ticket Question</TITLE>
</HEAD>
<BODY>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">A</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">l</FONT><FONT SIZE=3D2 FACE=3D"Arial">l,</FONT></P>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">I don</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">'</FONT><FONT SIZE=3D2 FACE=3D"Arial">t =
remember how we decided to handle</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">processing of</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">multiple jo</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">bs.</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">&nbsp;</FONT>&nbsp;<FONT SIZE=3D2 FACE=3D"Arial"> =
F</FONT><FONT SIZE=3D2 FACE=3D"Arial">or a desktop, the JTAPI software =
could</FONT> <FONT SIZE=3D2 FACE=3D"Arial">have individual =
instan</FONT><FONT SIZE=3D2 FACE=3D"Arial">ces</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">of the software</FONT><FONT SIZE=3D2 FACE=3D"Arial"> for =
each job</FONT><FONT SIZE=3D2 FACE=3D"Arial">.&nbsp; T</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">hus, there is no need for the JTAPI to</FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">understand</FONT><FONT SIZE=3D2 =
FACE=3D"Arial"></FONT> <FONT SIZE=3D2 FACE=3D"Arial">processing =
multiple job tickets.</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">&nbsp;</FONT> <FONT SIZE=3D2 FACE=3D"Arial">However, for =
an embedded solution</FONT> <FONT SIZE=3D2 FACE=3D"Arial">having =
different instances of the code may not be desired</FONT><FONT SIZE=3D2 =
FACE=3D"Arial"></FONT> <FONT SIZE=3D2 FACE=3D"Arial">-</FONT><FONT =
SIZE=3D2 FACE=3D"Arial"> simply</FONT> <FONT SIZE=3D2 FACE=3D"Arial">a =
waste of memory.</FONT></P>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">Scenario --- John</FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">turn</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">s</FONT><FONT SIZE=3D2 FACE=3D"Arial"> on his =
pda</FONT><FONT SIZE=3D2 FACE=3D"Arial">.&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">(Not all pda</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">'</FONT><FONT SIZE=3D2 FACE=3D"Arial">s can multiplex =
applications; they simply run the active application.</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">)</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">&nbsp;</FONT>&nbsp;<FONT SIZE=3D2 FACE=3D"Arial"></FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">J</FONT><FONT SIZE=3D2 FACE=3D"Arial">ohn =
read several email and decides to print three of them.</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">After</FONT> <FONT SIZE=3D2 FACE=3D"Arial">he starts the =
print creation</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">operation</FONT><FONT SIZE=3D2 FACE=3D"Arial"> =
&lt;&lt;</FONT> <FONT SIZE=3D2 FACE=3D"Arial">one to possibly</FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">three</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">open job-ticket</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">s</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">&gt;&gt;</FONT><FONT SIZE=3D2 FACE=3D"Arial">; =
John get</FONT><FONT SIZE=3D2 FACE=3D"Arial">s</FONT><FONT SIZE=3D2 =
FACE=3D"Arial"> an alert</FONT> <FONT SIZE=3D2 FACE=3D"Arial">that he =
has a meeting in ten</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">minutes</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">.</FONT> <FONT SIZE=3D2 FACE=3D"Arial">&nbsp;</FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">He needs to print</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">two documents</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">before the meeting.&nbsp; J</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">ohn</FONT> <FONT SIZE=3D2 FACE=3D"Arial">s</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">elects the two documents he need from the =
pda</FONT><FONT SIZE=3D2 FACE=3D"Arial">'</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">s desktop</FONT><FONT SIZE=3D2 FACE=3D"Arial"> and =
initiates a</FONT> <FONT SIZE=3D2 FACE=3D"Arial">print =
action.</FONT>&nbsp;<FONT SIZE=3D2 FACE=3D"Arial"></FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">&lt;</FONT><FONT SIZE=3D2 FACE=3D"Arial">&lt; =
Two more job-tickets may be open or they</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">may be</FONT><FONT SIZE=3D2 FACE=3D"Arial"> done =
serially.</FONT><FONT SIZE=3D2 FACE=3D"Arial"> &gt;&gt;</FONT></P>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">-- this would be easy to =
handle if there are multiple instances of the print =
software</FONT><FONT SIZE=3D2 FACE=3D"Arial">; however, if there is =
only one</FONT> <FONT SIZE=3D2 FACE=3D"Arial">instances of the print =
software then</FONT> <FONT SIZE=3D2 FACE=3D"Arial">all of</FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">the JTAPI n</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">eed an</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">additional</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">argument</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">.</FONT> <FONT SIZE=3D2 FACE=3D"Arial">&nbsp;</FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">The</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">argument</FONT> <FONT SIZE=3D2 FACE=3D"Arial">is a job =
identifier</FONT><FONT SIZE=3D2 FACE=3D"Arial"> so that the =
api</FONT><FONT SIZE=3D2 FACE=3D"Arial">'</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">s know what job to</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">associate</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">the request to.</FONT></P>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">example:</FONT></P>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">I would change =
op</FONT><FONT SIZE=3D2 FACE=3D"Arial">jtOpenLib(context) -</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">--&gt;</FONT><FONT SIZE=3D2 FACE=3D"Arial"> =
opjtOpenLib(void);</FONT></P>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">Add a api call =
opjtNewJob(</FONT><FONT SIZE=3D2 FACE=3D"Arial">(</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">void**</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">)foo</FONT><FONT SIZE=3D2 FACE=3D"Arial">) or require =
that</FONT> <FONT SIZE=3D2 FACE=3D"Arial">opjtNewObject</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">(</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">(void**)foo,</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">OP_JOB_OBJECT</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">)</FONT><FONT SIZE=3D2 FACE=3D"Arial"> be called before =
any other</FONT> <FONT SIZE=3D2 FACE=3D"Arial">API (after =
openlib).</FONT></P>
<BR>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">--- the other choice is =
to allow only one open print job at a time.</FONT></P>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">What is</FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">the s</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">uggested solution?</FONT></P>

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
</FONT><FONT FACE=3D"Times New Roman">Voice: 408.576.4131&nbsp; Fax: =
408.474.0511 </FONT></I></B></P>

<P ALIGN=3DLEFT></P>

</BODY>
</HTML>
------_=_NextPart_001_01C7D9CA.3F14B058--
