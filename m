Message-ID: <2F7D63A21DB2C74EB8EB8C09AF667DB001B9AE9A@eitc220.eitc.epson.com>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Date: Tue, 23 Aug 2005 07:32:30 -0700
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01C5A7EF.7E5EC9F8"
Subject: [Printing-architecture] Glen's New Architecture Stuff
List-Id: Printing architecture under linux
	<printing-architecture.mail.freestandards.org>
List-Unsubscribe: <http://mail.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@mail.freestandards.org?subject=unsubscribe>
List-Archive: <http://mail.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@mail.freestandards.org>
List-Help: <mailto:printing-architecture-request@mail.freestandards.org?subject=help>
List-Subscribe: <http://mail.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@mail.freestandards.org?subject=subscribe>
To: printing-architecture@base3.freestandards.org

This message is in MIME format. Since your mail reader does not understand
this format, some or all of this message may not be legible.

------_=_NextPart_001_01C5A7EF.7E5EC9F8
Content-Type: text/plain

Hello,

I was asked to put the architecture stuff I started on the pwg site.   This
is only a start and only has the beginning for the Reference Model

The top level reference model is just that.   Main thing I changed was
putting the spooler (not a print-spooler, just a spooler) in the background.
Here, the spooler is just a storage system that any module in the open
printing solution can use to store and send data (any type of data);
basically, it needs an API.  Also, I spoke of having common data for
open-printing similar to the job ticketing current headers.  It was
interpreted as meaning I wanted a new job ticket for FSG; I don't.  What I
want is a common set of C data struct's for FSG open printing similar to the
data in the job ticket header.  This way all modules have/understand a
common set of data and each module does not reinvent the data struct,
meaning and content.   I know that several specification have been written
already and they have their own data  struct's or data solutions; so my only
hope is that they could also interpret/support/migrate to the new data
structs - but only a hope; otherwise I see a lot of shim code being written
to glue things together - coherently.   Therefore, one of the roles I see
the Job Ticketing module(s) performing is taking in a job ticket (of your
choice) and populating the common C data struct's for use by other
open-printing modules.

I started a dictionary and acronym document.   I feel this is something we
have always lacked and that we should put some attention to creating. 

I have included two sequence diagrams.  These were mostly to get back into
practice and to use new software.   Since I am doing most this work on my
own time I decided not to use company resources for this activity.
Therefore, I bought application "Sequence Diagram Editor 1.5" (shareware
$49).  In some cases, it uses different (or does not have certain)
diagramming symbols.   (see http://www.gold-software.com/download9172.html
<http://www.gold-software.com/download9172.html>  if you want to download.)
I would consider changing tools but this seem to do the trick. 

Now that summer is coming to a close and my big project at work is closing,
I am hoping to have more time to address to this activity.  Therefore,  I
included my "ToDoList" with some ideas.  I suggest we create a similar
ToDoList for the group based on the activities we outlined in our last
meeting.  

I created a new folder called Architecture2005 just to start with a clean
slate for the new work.

ftp://ftp.pwg.org/pub/pwg/fsg/architecture/Architecture2005/
<ftp://ftp.pwg.org/pub/pwg/fsg/architecture/Architecture2005/>  

Rgds, 
Glen W. Petrie 
Epson Imaging Technology Center 
150 River Oaks Parkway, Suite 200 
San Jose, CA, 95134 
Voice: 408.576.4131  Fax: 408.474.0511 



------_=_NextPart_001_01C5A7EF.7E5EC9F8
Content-Type: text/html
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2//EN">
<HTML>
<HEAD>
<META HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Dus-ascii">
<META NAME=3D"Generator" CONTENT=3D"MS Exchange Server version =
5.5.2658.24">
<TITLE>Glen's New Architecture Stuff</TITLE>
</HEAD>
<BODY>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">Hello,</FONT></P>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">I was asked to put the =
architecture stuff I started on the pwg site.</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">&nbsp;</FONT>&nbsp;<FONT SIZE=3D2 FACE=3D"Arial"> =
T</FONT><FONT SIZE=3D2 FACE=3D"Arial">his is only a start</FONT><FONT =
SIZE=3D2 FACE=3D"Arial"> and only has the</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">beginning for the</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">Reference Model</FONT></P>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">The top level reference =
model is just that.</FONT> <FONT SIZE=3D2 FACE=3D"Arial">&nbsp;</FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">M</FONT><FONT SIZE=3D2 FACE=3D"Arial">ain =
thing I</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">changed</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">was</FONT><FONT SIZE=3D2 FACE=3D"Arial"> putting</FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">the</FONT><FONT SIZE=3D2 FACE=3D"Arial"> =
spooler</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">(not a print-spooler,</FONT><FONT SIZE=3D2 =
FACE=3D"Arial"> just a spooler)</FONT> <FONT SIZE=3D2 FACE=3D"Arial">in =
th</FONT><FONT SIZE=3D2 FACE=3D"Arial">e background</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">.</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">Here, t</FONT><FONT SIZE=3D2 FACE=3D"Arial">he spooler =
is</FONT><FONT SIZE=3D2 FACE=3D"Arial"> just a</FONT><FONT SIZE=3D2 =
FACE=3D"Arial"> storage system that any module in the open printing =
solution can use to store and send data (any type of data)</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">basically,</FONT> <FONT SIZE=3D2 FACE=3D"Arial">it needs =
an API</FONT><FONT SIZE=3D2 FACE=3D"Arial">.</FONT><FONT SIZE=3D2 =
FACE=3D"Arial"></FONT>&nbsp;<FONT SIZE=3D2 FACE=3D"Arial"></FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">Also, I spoke of</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">having</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">common data</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">for open-printing</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">s</FONT><FONT SIZE=3D2 FACE=3D"Arial">imilar =
to</FONT><FONT SIZE=3D2 FACE=3D"Arial"> the job ticketing current =
headers.</FONT>&nbsp;<FONT SIZE=3D2 FACE=3D"Arial"> I</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">t was</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">interpreted</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">as meaning I wanted a new job ticket for =
FSG; I don</FONT><FONT SIZE=3D2 FACE=3D"Arial">'</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">t.</FONT>&nbsp;<FONT SIZE=3D2 FACE=3D"Arial"></FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">W</FONT><FONT SIZE=3D2 FACE=3D"Arial">hat =
I wa</FONT><FONT SIZE=3D2 FACE=3D"Arial">nt is</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">a common set of C data struct</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">'</FONT><FONT SIZE=3D2 FACE=3D"Arial">s for FSG open =
printing</FONT> <FONT SIZE=3D2 FACE=3D"Arial">s</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">imilar</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">to</FONT><FONT SIZE=3D2 FACE=3D"Arial"> =
the</FONT><FONT SIZE=3D2 FACE=3D"Arial"> data in the</FONT><FONT =
SIZE=3D2 FACE=3D"Arial"></FONT> <FONT SIZE=3D2 FACE=3D"Arial">job =
ticket h</FONT><FONT SIZE=3D2 FACE=3D"Arial">eader</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">.</FONT>&nbsp;<FONT SIZE=3D2 FACE=3D"Arial"> =
T</FONT><FONT SIZE=3D2 FACE=3D"Arial">his way all modules</FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">have</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">/understand</FONT><FONT SIZE=3D2 FACE=3D"Arial"> a =
common set of data and each module does not reinvent the data struct, =
meaning and content.</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">&nbsp;</FONT>&nbsp;<FONT SIZE=3D2 FACE=3D"Arial"> =
I</FONT><FONT SIZE=3D2 FACE=3D"Arial"> know that several specification =
have been written already</FONT><FONT SIZE=3D2 FACE=3D"Arial"> and they =
have their own data&nbsp; struct</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">'</FONT><FONT SIZE=3D2 FACE=3D"Arial">s or data =
solutions</FONT><FONT SIZE=3D2 FACE=3D"Arial">; so</FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">my</FONT><FONT SIZE=3D2 FACE=3D"Arial"> only =
hope is that they could also</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">interpret</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">/support/migrate to the new data structs</FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">-</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">but</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">only</FONT> <FONT SIZE=3D2 FACE=3D"Arial">a</FONT><FONT =
SIZE=3D2 FACE=3D"Arial"> hope; otherwise</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">I</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">see</FONT> <FONT SIZE=3D2 FACE=3D"Arial">a =
lot</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">of shim</FONT> <FONT SIZE=3D2 FACE=3D"Arial">code being =
written to glue things together</FONT><FONT SIZE=3D2 =
FACE=3D"Arial"></FONT> <FONT SIZE=3D2 FACE=3D"Arial">-</FONT><FONT =
SIZE=3D2 FACE=3D"Arial"> coherently</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">.</FONT>&nbsp;<FONT SIZE=3D2 =
FACE=3D"Arial"></FONT>&nbsp;<FONT SIZE=3D2 FACE=3D"Arial"></FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">T</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">herefore</FONT><FONT SIZE=3D2 FACE=3D"Arial">,</FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">one of the roles I see the Job Ticketing =
module(s) performing is taking in a job ticket</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">(of your choice) and populating the common C data =
struct</FONT><FONT SIZE=3D2 FACE=3D"Arial">'</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">s for</FONT> <FONT SIZE=3D2 FACE=3D"Arial">use by</FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">other</FONT><FONT SIZE=3D2 =
FACE=3D"Arial"> open</FONT><FONT SIZE=3D2 FACE=3D"Arial">-printing =
modules</FONT><FONT SIZE=3D2 FACE=3D"Arial">.</FONT></P>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">I</FONT><FONT SIZE=3D2 =
FACE=3D"Arial"></FONT> <FONT SIZE=3D2 FACE=3D"Arial">started a =
dictionary and</FONT> <FONT SIZE=3D2 FACE=3D"Arial">acronym =
document.</FONT><FONT SIZE=3D2 FACE=3D"Arial">&nbsp;</FONT>&nbsp;<FONT =
SIZE=3D2 FACE=3D"Arial"> I</FONT><FONT SIZE=3D2 FACE=3D"Arial"> feel =
this is something we have always lack</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">ed</FONT><FONT SIZE=3D2 FACE=3D"Arial"> and that we =
should</FONT> <FONT SIZE=3D2 FACE=3D"Arial">put some attention to =
creating. </FONT></P>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">I hav</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">e included two sequence diagrams</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">.&nbsp; T</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">hese were mostly</FONT> <FONT SIZE=3D2 FACE=3D"Arial">to =
get back into practice and to use new software.</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">&nbsp;</FONT> <FONT SIZE=3D2 FACE=3D"Arial">Since I =
am</FONT> <FONT SIZE=3D2 FACE=3D"Arial">doing most this work on my own =
time I decided not to use</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">company</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">resour</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">ces for</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">t</FONT><FONT SIZE=3D2 FACE=3D"Arial">his</FONT><FONT =
SIZE=3D2 FACE=3D"Arial"> activity.</FONT>&nbsp;<FONT SIZE=3D2 =
FACE=3D"Arial"> T</FONT><FONT SIZE=3D2 FACE=3D"Arial">herefore, I =
bought</FONT> <FONT SIZE=3D2 FACE=3D"Arial">app</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">lication</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">"</FONT><FONT SIZE=3D2 FACE=3D"Arial">Sequence Diagram =
Editor 1.5</FONT><FONT SIZE=3D2 FACE=3D"Arial">"</FONT><FONT SIZE=3D2 =
FACE=3D"Arial"> (shareware</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">$49)</FONT><FONT SIZE=3D2 FACE=3D"Arial">.</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">&nbsp; In some cases, it uses</FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">different</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">(or does not have</FONT><FONT SIZE=3D2 =
FACE=3D"Arial"></FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">certain</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">)</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">diagramming</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">symbols.</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">&nbsp;</FONT> <FONT SIZE=3D2 FACE=3D"Arial">(see</FONT> =
<A =
HREF=3D"http://www.gold-software.com/download9172.html"><U></U><U><FONT =
COLOR=3D"#0000FF" SIZE=3D2 =
FACE=3D"Arial">http://www.gold-software.com/download9172.html</FONT></U>=
</A><FONT SIZE=3D2 FACE=3D"Arial"></FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">if you want to download</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">.)</FONT><FONT SIZE=3D2 FACE=3D"Arial">&nbsp;</FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">I would consider changing tools but this =
seem to do the trick.</FONT> </P>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">Now that summer =
is</FONT><FONT SIZE=3D2 FACE=3D"Arial"> coming to a close and</FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">my</FONT><FONT SIZE=3D2 FACE=3D"Arial"> =
bi</FONT><FONT SIZE=3D2 FACE=3D"Arial">g</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">project</FONT><FONT SIZE=3D2 FACE=3D"Arial"> at =
work</FONT><FONT SIZE=3D2 FACE=3D"Arial"> is closing, I am hoping to =
have more time to address to</FONT> <FONT SIZE=3D2 FACE=3D"Arial">this =
activity.</FONT><FONT SIZE=3D2 FACE=3D"Arial">&nbsp;</FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">There</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">f</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">ore,</FONT>&nbsp;<FONT SIZE=3D2 FACE=3D"Arial"></FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">I included my</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">"</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">ToDoList</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">"</FONT><FONT SIZE=3D2 FACE=3D"Arial"> with some =
ideas.&nbsp;</FONT> <FONT SIZE=3D2 FACE=3D"Arial">I suggest we</FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">create a similar ToDoList for the =
group</FONT> <FONT SIZE=3D2 FACE=3D"Arial">based</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">on the</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">activities we outlined in our last =
meeting.</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT>&nbsp;<FONT =
SIZE=3D2 FACE=3D"Arial"></FONT> </P>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">I created a new folder =
called Architecture2005 just to</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">start with a clean slate for the ne</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">w work.</FONT></P>

<P ALIGN=3DLEFT><A =
HREF=3D"ftp://ftp.pwg.org/pub/pwg/fsg/architecture/Architecture2005/"><U=
></U><U><FONT COLOR=3D"#0000FF" SIZE=3D2 =
FACE=3D"Arial">ftp://ftp.pwg.org/pub/pwg/fsg/architecture/Architecture20=
05/</FONT></U></A><FONT SIZE=3D2 FACE=3D"Arial"></FONT> </P>

<P ALIGN=3DLEFT><A NAME=3D"_MailAutoSig"></A></P>

<P ALIGN=3DLEFT><B><I>Rgds,<BR>
</I></B><B><I></I></B><B><I><FONT COLOR=3D"#0000FF" SIZE=3D5>Glen W. =
Petrie</FONT></I></B><B><I></I></B><B><I><FONT SIZE=3D5><BR>
</FONT></I></B><B><I>Epson Imaging Technology Center<BR>
150 River Oaks Parkway, Suite 200<BR>
San Jose, CA, 95134<BR>
Voice: 408.576.4131&nbsp; Fax: 408.474.0511 </I></B></P>

<P ALIGN=3DLEFT></P>

</BODY>
</HTML>
------_=_NextPart_001_01C5A7EF.7E5EC9F8--

