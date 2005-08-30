MIME-Version: 1.0
Message-ID: <OFB7FEAA8A.FF5DDFFC-ON8725706D.001AA66D-8725706D.001B4FE2@us.ibm.com>
From: Claudia Alimpich <alimpich@us.ibm.com>
Date: Mon, 29 Aug 2005 22:58:39 -0600
Content-Type: multipart/alternative;
	boundary="=_alternative 001B4FDF8725706D_="
Subject: [Printing-architecture] There will be an Open Printing conference
	call Wed Aug 31st
List-Id: Printing architecture under linux
	<printing-architecture.mail.freestandards.org>
List-Unsubscribe: <http://mail.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@mail.freestandards.org?subject=unsubscribe>
List-Archive: <http://mail.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@mail.freestandards.org>
List-Help: <mailto:printing-architecture-request@mail.freestandards.org?subject=help>
List-Subscribe: <http://mail.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@mail.freestandards.org?subject=subscribe>
To: printing-architecture@freestandards.org

This is a multipart message in MIME format.
--=_alternative 001B4FDF8725706D_=
Content-Type: text/plain; charset="US-ASCII"

There will be an Open Printing conference call Wed Aug 31st.

Day: Wednesdays 
Time:   
12:00-1:00 PM US Pacific time 
1:00-2:00 PM US Mountain time 
3:00-4:00 PM US Eastern time 
9:00-10:00 PM Paris time 
USA Toll Number: 1-484-630-2765 
PASSCODE: 84974 

We will go over the Reference Model diagrams that Glen posted:
ftp://ftp.pwg.org/pub/pwg/fsg/architecture/Architecture2005/

I have attached Glen's 8/23 posting to the Architecture mailing list 
below.

Claudia Alimpich
-------------------------------------------------------------------------
Hello,
I was asked to put the architecture stuff I started on the pwg site.   
This is only a start and only has the beginning for the Reference Model
The top level reference model is just that.   Main thing I changed was 
putting the spooler (not a print-spooler, just a spooler) in the 
background.   Here, the spooler is just a storage system that any module 
in the open printing solution can use to store and send data (any type of 
data); basically, it needs an API.  Also, I spoke of having common data 
for open-printing similar to the job ticketing current headers.  It was 
interpreted as meaning I wanted a new job ticket for FSG; I don't.  What I 
want is a common set of C data struct's for FSG open printing similar to 
the data in the job ticket header.  This way all modules have/understand a 
common set of data and each module does not reinvent the data struct, 
meaning and content.   I know that several specification have been written 
already and they have their own data  struct's or data solutions; so my 
only hope is that they could also interpret/support/migrate to the new 
data structs - but only a hope; otherwise I see a lot of shim code being 
written to glue things together - coherently.   Therefore, one of the 
roles I see the Job Ticketing module(s) performing is taking in a job 
ticket (of your choice) and populating the common C data struct's for use 
by other open-printing modules.
I started a dictionary and acronym document.   I feel this is something we 
have always lacked and that we should put some attention to creating. 
I have included two sequence diagrams.  These were mostly to get back into 
practice and to use new software.   Since I am doing most this work on my 
own time I decided not to use company resources for this activity.  
Therefore, I bought application "Sequence Diagram Editor 1.5" (shareware 
$49).  In some cases, it uses different (or does not have certain) 
diagramming symbols.   (see http://www.gold-software.com/download9172.html 
if you want to download.)  I would consider changing tools but this seem 
to do the trick. 
Now that summer is coming to a close and my big project at work is 
closing, I am hoping to have more time to address to this activity.  
Therefore,  I included my "ToDoList" with some ideas.  I suggest we create 
a similar ToDoList for the group based on the activities we outlined in 
our last meeting. 
I created a new folder called Architecture2005 just to start with a clean 
slate for the new work.
ftp://ftp.pwg.org/pub/pwg/fsg/architecture/Architecture2005/ 
Rgds,
Glen W. Petrie
Epson Imaging Technology Center
150 River Oaks Parkway, Suite 200
San Jose, CA, 95134
Voice: 408.576.4131  Fax: 408.474.0511 
--=_alternative 001B4FDF8725706D_=
Content-Type: text/html; charset="US-ASCII"


<br><font size=2 face="sans-serif">There will be an Open Printing conference
call Wed Aug 31st.</font>
<br>
<br><font size=2 face="sans-serif">Day: Wednesdays</font><font size=3>
</font><font size=2 face="sans-serif"><br>
Time: &nbsp;</font><font size=3> </font><font size=2 face="sans-serif"><br>
12:00-1:00 PM US Pacific time</font><font size=3> </font><font size=2 face="sans-serif"><br>
1:00-2:00 PM US Mountain time</font><font size=3> </font><font size=2 face="sans-serif"><br>
3:00-4:00 PM US Eastern time</font><font size=3> </font><font size=2 face="sans-serif"><br>
9:00-10:00 PM Paris time</font><font size=3> </font><font size=2 face="sans-serif"><br>
USA Toll Number: 1-484-630-2765</font><font size=3> </font><font size=2 face="sans-serif"><br>
PASSCODE: 84974</font><font size=3> </font>
<br>
<br><font size=2 face="sans-serif">We will go over the Reference Model
diagrams that Glen posted:</font><a href=ftp://ftp.pwg.org/pub/pwg/fsg/architecture/Architecture2005/><font size=2 color=blue face="Arial"><u>ftp://ftp.pwg.org/pub/pwg/fsg/architecture/Architecture2005/</u></font></a>
<br>
<br><font size=2 face="sans-serif">I have attached Glen's 8/23 posting
to the Architecture mailing list below.</font><font size=3><br>
</font><font size=2 face="sans-serif"><br>
Claudia Alimpich</font>
<br><font size=2 face="sans-serif">-------------------------------------------------------------------------</font>
<br><font size=2 face="Arial">Hello,</font>
<p><font size=2 face="Arial">I was asked to put the architecture stuff
I started on the pwg site. </font><font size=3>&nbsp;</font><font size=2 face="Arial">
This is only a start and only has the</font><font size=3> </font><font size=2 face="Arial">beginning
for the</font><font size=3> </font><font size=2 face="Arial">Reference
Model</font>
<p><font size=2 face="Arial">The top level reference model is just that.</font><font size=3>
</font><font size=2 face="Arial">&nbsp;</font><font size=3> </font><font size=2 face="Arial">Main
thing I</font><font size=3> </font><font size=2 face="Arial">changed</font><font size=3>
</font><font size=2 face="Arial">was putting</font><font size=3> </font><font size=2 face="Arial">the
spooler</font><font size=3> </font><font size=2 face="Arial">(not a print-spooler,
just a spooler)</font><font size=3> </font><font size=2 face="Arial">in
the background.</font><font size=3> </font><font size=2 face="Arial">&nbsp;</font><font size=3>
</font><font size=2 face="Arial">Here, the spooler is just a storage system
that any module in the open printing solution can use to store and send
data (any type of data);</font><font size=3> </font><font size=2 face="Arial">basically,</font><font size=3>
</font><font size=2 face="Arial">it needs an API.</font><font size=3> &nbsp;</font><font size=2 face="Arial">Also,
I spoke of</font><font size=3> </font><font size=2 face="Arial">having</font><font size=3>
</font><font size=2 face="Arial">common data</font><font size=3> </font><font size=2 face="Arial">for
open-printing</font><font size=3> </font><font size=2 face="Arial">similar
to the job ticketing current headers.</font><font size=3> </font><font size=2 face="Arial">&nbsp;It
was</font><font size=3> </font><font size=2 face="Arial">interpreted</font><font size=3>
</font><font size=2 face="Arial">as meaning I wanted a new job ticket for
FSG; I don't.</font><font size=3> &nbsp;</font><font size=2 face="Arial">What
I want is</font><font size=3> </font><font size=2 face="Arial">a common
set of C data struct's for FSG open printing</font><font size=3> </font><font size=2 face="Arial">similar</font><font size=3>
</font><font size=2 face="Arial">to the data in the</font><font size=3>
</font><font size=2 face="Arial">job ticket header.</font><font size=3>
</font><font size=2 face="Arial">&nbsp;This way all modules</font><font size=3>
</font><font size=2 face="Arial">have/understand a common set of data and
each module does not reinvent the data struct, meaning and content. </font><font size=3>&nbsp;</font><font size=2 face="Arial">
I know that several specification have been written already and they have
their own data &nbsp;struct's or data solutions; so</font><font size=3>
</font><font size=2 face="Arial">my only hope is that they could also</font><font size=3>
</font><font size=2 face="Arial">interpret/support/migrate to the new data
structs</font><font size=3> </font><font size=2 face="Arial">-</font><font size=3>
</font><font size=2 face="Arial">but</font><font size=3> </font><font size=2 face="Arial">only</font><font size=3>
</font><font size=2 face="Arial">a hope; otherwise</font><font size=3>
</font><font size=2 face="Arial">I</font><font size=3> </font><font size=2 face="Arial">see</font><font size=3>
</font><font size=2 face="Arial">a lot</font><font size=3> </font><font size=2 face="Arial">of
shim</font><font size=3> </font><font size=2 face="Arial">code being written
to glue things together</font><font size=3> </font><font size=2 face="Arial">-
coherently.</font><font size=3> &nbsp; </font><font size=2 face="Arial">Therefore,</font><font size=3>
</font><font size=2 face="Arial">one of the roles I see the Job Ticketing
module(s) performing is taking in a job ticket</font><font size=3> </font><font size=2 face="Arial">(of
your choice) and populating the common C data struct's for</font><font size=3>
</font><font size=2 face="Arial">use by</font><font size=3> </font><font size=2 face="Arial">other
open-printing modules.</font>
<p><font size=2 face="Arial">I</font><font size=3> </font><font size=2 face="Arial">started
a dictionary and</font><font size=3> </font><font size=2 face="Arial">acronym
document. </font><font size=3>&nbsp;</font><font size=2 face="Arial"> I
feel this is something we have always lacked and that we should</font><font size=3>
</font><font size=2 face="Arial">put some attention to creating. </font>
<p><font size=2 face="Arial">I have included two sequence diagrams. &nbsp;These
were mostly</font><font size=3> </font><font size=2 face="Arial">to get
back into practice and to use new software.</font><font size=3> </font><font size=2 face="Arial">&nbsp;</font><font size=3>
</font><font size=2 face="Arial">Since I am</font><font size=3> </font><font size=2 face="Arial">doing
most this work on my own time I decided not to use</font><font size=3>
</font><font size=2 face="Arial">company</font><font size=3> </font><font size=2 face="Arial">resources
for</font><font size=3> </font><font size=2 face="Arial">this activity.</font><font size=3>
</font><font size=2 face="Arial">&nbsp;Therefore, I bought</font><font size=3>
</font><font size=2 face="Arial">application</font><font size=3> </font><font size=2 face="Arial">&quot;Sequence
Diagram Editor 1.5&quot; (shareware</font><font size=3> </font><font size=2 face="Arial">$49).
&nbsp;In some cases, it uses</font><font size=3> </font><font size=2 face="Arial">different</font><font size=3>
</font><font size=2 face="Arial">(or does not have</font><font size=3>
</font><font size=2 face="Arial">certain)</font><font size=3> </font><font size=2 face="Arial">diagramming</font><font size=3>
</font><font size=2 face="Arial">symbols.</font><font size=3> </font><font size=2 face="Arial">&nbsp;</font><font size=3>
</font><font size=2 face="Arial">(see</font><font size=3> </font><a href="http://www.gold-software.com/download9172.html"><font size=2 color=blue face="Arial"><u>http://www.gold-software.com/download9172.html</u></font></a><font size=3>
</font><font size=2 face="Arial">if you want to download.) </font><font size=3>&nbsp;</font><font size=2 face="Arial">I
would consider changing tools but this seem to do the trick.</font><font size=3>
</font>
<p><font size=2 face="Arial">Now that summer is coming to a close and</font><font size=3>
</font><font size=2 face="Arial">my big</font><font size=3> </font><font size=2 face="Arial">project
at work is closing, I am hoping to have more time to address to</font><font size=3>
</font><font size=2 face="Arial">this activity. </font><font size=3>&nbsp;</font><font size=2 face="Arial">Therefore,</font><font size=3>
&nbsp;</font><font size=2 face="Arial">I included my</font><font size=3>
</font><font size=2 face="Arial">&quot;ToDoList&quot; with some ideas.
</font><font size=3>&nbsp;</font><font size=2 face="Arial">I suggest we</font><font size=3>
</font><font size=2 face="Arial">create a similar ToDoList for the group</font><font size=3>
</font><font size=2 face="Arial">based</font><font size=3> </font><font size=2 face="Arial">on
the</font><font size=3> </font><font size=2 face="Arial">activities we
outlined in our last meeting.</font><font size=3> &nbsp;</font>
<p><font size=2 face="Arial">I created a new folder called Architecture2005
just to</font><font size=3> </font><font size=2 face="Arial">start with
a clean slate for the new work.</font>
<p><a href=ftp://ftp.pwg.org/pub/pwg/fsg/architecture/Architecture2005/><font size=2 color=blue face="Arial"><u>ftp://ftp.pwg.org/pub/pwg/fsg/architecture/Architecture2005/</u></font></a><font size=3>
</font>
<p><font size=3><b><i>Rgds,</i></b></font><font size=5 color=blue><b><i><br>
Glen W. Petrie</i></b></font><font size=3><b><i><br>
Epson Imaging Technology Center<br>
150 River Oaks Parkway, Suite 200<br>
San Jose, CA, 95134<br>
Voice: 408.576.4131 &nbsp;Fax: 408.474.0511 </i></b></font>
--=_alternative 001B4FDF8725706D_=--

