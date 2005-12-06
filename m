Message-ID: <CFEE79A465B35C4385389BA5866BEDF00C7E35@mailsrvnt02.enet.sharplabs.com>
From: "McDonald, Ira" <imcdonald@sharplabs.com>
Date: Tue, 6 Dec 2005 09:46:12 -0800 
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01C5FA8C.3B653C44"
Subject: [Printing-architecture] Wed 7 & 14 Dec - Next Open Printing
	conference calls
List-Id: Printing architecture under linux
	<printing-architecture.freestandards.org>
List-Unsubscribe: <http://mail.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@freestandards.org?subject=unsubscribe>
List-Archive: <http://mail.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@freestandards.org>
List-Help: <mailto:printing-architecture-request@freestandards.org?subject=help>
List-Subscribe: <http://mail.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@freestandards.org?subject=subscribe>
To: printing-architecture@freestandards.org

This message is in MIME format. Since your mail reader does not understand
this format, some or all of this message may not be legible.

------_=_NextPart_001_01C5FA8C.3B653C44
Content-Type: text/plain;
	charset="ISO-8859-1"

Hi Claudia,
 
Meeting announcement for tomorrow?
 
Norm Jacobs reminded me last night that Till attended the OSDL Summit in
Portland
(which did address printing in Linux, apparently) last week, so perhaps Till
can give
us a report.
 
Glen didn't make it to the Open Printing Int'l Steering Committee last
night.  Unfortunately,
neither did any of our members from Japan.
 
So Norm and I talked about how the FSG/OP project can influence the
development
direction of printing subsystems in Linux, including the metaGUI (that is,
the layers of
panels and menus and their behaviour).
 
Cheers,
- Ira
 
 

Ira McDonald (Musician / Software Architect)
Blue Roof Music / High North Inc
PO Box 221  Grand Marais, MI  49839
phone: +1-906-494-2434
email: imcdonald@sharplabs.com 

-----Original Message-----
From: printing-architecture-bounces@freestandards.org
[mailto:printing-architecture-bounces@freestandards.org]On Behalf Of Claudia
Alimpich
Sent: Monday, November 28, 2005 7:54 PM
To: printing-architecture@freestandards.org
Subject: RE: [Printing-architecture] Wed 7 & 14 Dec - Next Open Printing
conference calls



I vote to meet two weeks in a row, on Dec 7th and Dec 14th. I will be out on
Dec 21st and Dec 28th. 
Claudia 



"McDonald, Ira" <imcdonald@sharplabs.com> 


11/28/2005 05:52 PM 


To
Claudia Alimpich/Boulder/IBM@IBMUS, printing-architecture@freestandards.org 

cc

Subject
RE: [Printing-architecture] There will be an Open Printing confer
ence call Wed Nov 30th

	




Hi, 
  
Fine by me. 
  
When we meet NEXT week (7 December), we should decide about 14 December
versus 
21 December (maybe too close to Christmas holidays??). 
  
Cheers, 
- Ira 

Ira McDonald (Musician / Software Architect)
Blue Roof Music / High North Inc
PO Box 221  Grand Marais, MI  49839
phone: +1-906-494-2434
email: imcdonald@sharplabs.com 


-----Original Message-----
From: printing-architecture-bounces@freestandards.org
[mailto:printing-architecture-bounces@freestandards.org]On Behalf Of Claudia
Alimpich
Sent: Monday, November 28, 2005 7:31 PM
To: printing-architecture@freestandards.org
Subject: RE: [Printing-architecture] There will be an Open Printing confer
ence call Wed Nov 30th


Not that I don't enjoy talking to Ira, but should we try to meet next
Wednesday instead? 
Claudia 

printing-architecture-bounces@freestandards.org wrote on 11/28/2005 05:14:51
PM:

> Hi,
> 
> Well then, I look forward to talking to Claudia this Wednesday (smile).
> 
> Cheers,
> - Ira
> 
> Ira McDonald (Musician / Software Architect)
> Blue Roof Music / High North Inc
> PO Box 221  Grand Marais, MI  49839
> phone: +1-906-494-2434
> email: imcdonald@sharplabs.com
> 
> > -----Original Message-----
> > From: printing-architecture-bounces@freestandards.org
> > [mailto:printing-architecture-bounces@freestandards.org]On Behalf Of
> > Norm Jacobs
> > Sent: Monday, November 28, 2005 6:47 PM
> > To: Claudia Alimpich
> > Cc: printing-architecture@freestandards.org
> > Subject: Re: [Printing-architecture] There will be an Open Printing
> > conference call Wed Nov 30th
> > 
> > 
> > 
> > I can't attend.  I am in meetings all day Wednesday - Friday
> > 
> >        -Norm
> > 
> > Claudia Alimpich wrote:
> > 
> > >
> > > There will be an Open Printing conference call Wed November 30th.
> > >
> > > Day: Wednesdays
> > > Time:  
> > > 12:00-1:00 PM US Pacific time
> > > 1:00-2:00 PM US Mountain time
> > > 3:00-4:00 PM US Eastern time
> > > 9:00-10:00 PM Paris time
> > > USA Toll Number: 1-484-630-2765
> > > PASSCODE: 84974
> > >
> > > During this meeting, we will work on a few more sequence diagrams, 
> > > possibly printer discovery and Status Monitor initialization.
> > >
> > > Claudia
> > >
> > > Following is where we let off after the last (Oct 12th) meeting:
> > >
> > > ------------------------------------------------------------
> > > High level sequence diagram of Print Manager 
> > initialization, where the 
> > > sequence of steps is as follows:
> > > 1. User or system invokes Print Manager
> > > 2. Print Manager reads configuration profile from local or 
> > networked 
> > > data store (location of AAA, printers/queues that it is serving, 
> > > fonts, media, transform capabilities, printer capabilities and 
> > > information, etc)
> > > 3. Print Manager authenticates invoking user or system
> > > 4. Print Manager invokes Status Monitor
> > > 5. Print Manager calls Status Monitor to subscribe for 
> > current printer 
> > > states, all printer events, and current job status for 
> > printers from 
> > > the configuration profile
> > > 6. Print Manager calls Capabilities to determine current printer 
> > > capabilites for each printer
> > > 7. Print Manager recovers saved jobs and initializes its queues
> > > 8. Print Manager calls Spooler to initiate job scheduling
> > > 9. Print Manager calls AAA informing AAA that Print Manager 
> > is available
> > > 10. The next steps are normal print operation as described 
> > in the Job 
> > > Submission sequence diagram
> > >
> > > High level sequence diagram for job submission, where the 
> > sequence of 
> > > steps is as follows:
> > > 1. User invokes application
> > > 2. User selects print options and submits print request to 
> > Print Manager
> > > 3. Print Manager calls AAA to authenticate user
> > > 4. Print Manager calls Job Ticketing to parse job ticket 
> > (if necessary)
> > > 5. Print Manager validates job attributes and job ticket 
> > content using 
> > > stored capabilites
> > > 6. Print Manager calls AAA to authorize capabilites allowed for user
> > > 7. Print Manager determines if data in job must be 
> > transformed, and if 
> > > so calls Transform to convert job data
> > > 8. Print Manager places print data, job attributes, job ticket (if 
> > > any) in Spooler for scheduling
> > > 9. Print Manager sends job to the Driver
> > > 10. Print Manager calls Status Monitor to monitor specific 
> > printer for 
> > > printer and job events
> > > 11. Driver calls Capability to check printer capabilities 
> > against job 
> > > attributes and job ticket
> > > 12. Driver applies job attributes and job ticket (if any) 
> > to print data
> > > 13. Driver converts print data to printer ready format
> > > 14. Driver sends printer ready print data to PCM  
> > > 15. PCM forwards printer ready print data Printer
> > > 16. Once Driver has sent all print data to PCM, Driver 
> > informs Printer 
> > > Manager that all print data has been sent
> > > 17. Status Monitor tells Print Manager that job has completed
> > > 18. Print Manager removes job from Spooler
> > > 19. Print Manager calls SM to stop monitoring specific printer
> > > 20. Print Manager calls AAA informing that job is complete
> > >
> > > We also need sequence diagrams for the following:
> > > 1. Print Manager registers to receive updates on new printers and 
> > > printer capabilities (Dynamic discovery of a new printer)
> > > 2. Capabilities periodically updates printer capabilities 
> > (target is 
> > > Print Manager)
> > > 3. Status Monitor initialization
> > > 4. etc ...
> > >
> > >-------------------------------------------------------------
> > -----------
> > >
> > >_______________________________________________
> > >Printing-architecture mailing list
> > >Printing-architecture@freestandards.org
> > >http://mail.freestandards.org/mailman/listinfo/printing-architecture
> > >  
> > >
> > 
> > _______________________________________________
> > Printing-architecture mailing list
> > Printing-architecture@freestandards.org
> > http://mail.freestandards.org/mailman/listinfo/printing-architecture
> > 
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@freestandards.org
> http://mail.freestandards.org/mailman/listinfo/printing-architecture 



------_=_NextPart_001_01C5FA8C.3B653C44
Content-Type: text/html;
	charset="ISO-8859-1"

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD>
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=ISO-8859-1">


<META content="MSHTML 6.00.2800.1522" name=GENERATOR></HEAD>
<BODY>
<DIV><FONT face=Arial color=#0000ff size=4><SPAN class=066173917-06122005>Hi 
Claudia,</SPAN></FONT></DIV>
<DIV><FONT face=Arial color=#0000ff size=4><SPAN 
class=066173917-06122005></SPAN></FONT>&nbsp;</DIV>
<DIV><FONT face=Arial color=#0000ff size=4><SPAN 
class=066173917-06122005>Meeting announcement for tomorrow?</SPAN></FONT></DIV>
<DIV><FONT face=Arial color=#0000ff size=4><SPAN 
class=066173917-06122005></SPAN></FONT>&nbsp;</DIV>
<DIV><FONT face=Arial color=#0000ff size=4><SPAN class=066173917-06122005>Norm 
Jacobs reminded me last night that Till attended the OSDL Summit in 
Portland</SPAN></FONT></DIV>
<DIV><FONT face=Arial color=#0000ff size=4><SPAN class=066173917-06122005>(which 
did address printing in Linux, apparently) last week, so perhaps Till can 
give</SPAN></FONT></DIV>
<DIV><FONT face=Arial color=#0000ff size=4><SPAN class=066173917-06122005>us a 
report.</SPAN></FONT></DIV>
<DIV><FONT face=Arial color=#0000ff size=4><SPAN 
class=066173917-06122005></SPAN></FONT>&nbsp;</DIV>
<DIV><FONT face=Arial color=#0000ff size=4><SPAN class=066173917-06122005>Glen 
didn't make it to the Open Printing Int'l Steering Committee last night.&nbsp; 
Unfortunately,</SPAN></FONT></DIV>
<DIV><FONT face=Arial color=#0000ff size=4><SPAN 
class=066173917-06122005>neither did any of our members from 
Japan.</SPAN></FONT></DIV>
<DIV><FONT face=Arial color=#0000ff size=4><SPAN 
class=066173917-06122005></SPAN></FONT>&nbsp;</DIV>
<DIV><FONT face=Arial color=#0000ff size=4><SPAN class=066173917-06122005>So 
Norm and I talked about how the FSG/OP project can influence the 
development</SPAN></FONT></DIV>
<DIV><FONT face=Arial color=#0000ff size=4><SPAN 
class=066173917-06122005>direction of printing subsystems in Linux, including 
the metaGUI (that is, the layers of</SPAN></FONT></DIV>
<DIV><FONT face=Arial color=#0000ff size=4><SPAN class=066173917-06122005>panels 
and menus and their behaviour).</SPAN></FONT></DIV>
<DIV><FONT face=Arial color=#0000ff size=4><SPAN 
class=066173917-06122005></SPAN></FONT>&nbsp;</DIV>
<DIV><FONT face=Arial color=#0000ff size=4><SPAN 
class=066173917-06122005>Cheers,</SPAN></FONT></DIV>
<DIV><FONT face=Arial color=#0000ff size=4><SPAN class=066173917-06122005>- 
Ira</SPAN></FONT></DIV>
<DIV><FONT face=Arial color=#0000ff size=4><SPAN 
class=066173917-06122005></SPAN></FONT>&nbsp;</DIV>
<DIV>&nbsp;</DIV>
<P><FONT size=2>Ira McDonald (Musician / Software Architect)<BR>Blue Roof Music 
/ High North Inc<BR>PO Box 221&nbsp; Grand Marais, MI&nbsp; 49839<BR>phone: 
+1-906-494-2434<BR>email: imcdonald@sharplabs.com</FONT> </P>
<BLOCKQUOTE dir=ltr 
style="PADDING-LEFT: 5px; MARGIN-LEFT: 5px; BORDER-LEFT: #0000ff 2px solid; MARGIN-RIGHT: 0px">
  <DIV class=OutlookMessageHeader dir=ltr align=left><FONT face=Tahoma 
  size=2>-----Original Message-----<BR><B>From:</B> 
  printing-architecture-bounces@freestandards.org 
  [mailto:printing-architecture-bounces@freestandards.org]<B>On Behalf Of 
  </B>Claudia Alimpich<BR><B>Sent:</B> Monday, November 28, 2005 7:54 
  PM<BR><B>To:</B> printing-architecture@freestandards.org<BR><B>Subject:</B> 
  RE: [Printing-architecture] Wed 7 &amp; 14 Dec - Next Open Printing conference 
  calls<BR><BR></FONT></DIV><BR><FONT face=sans-serif size=2>I vote to meet two 
  weeks in a row, on Dec 7th and Dec 14th. I will be out on Dec 21st and Dec 
  28th.</FONT> <BR><FONT face=sans-serif size=2>Claudia</FONT> <BR><BR><BR>
  <TABLE width="100%">
    <TBODY>
    <TR vAlign=top>
      <TD width="40%"><FONT face=sans-serif size=1><B>"McDonald, Ira" 
        &lt;imcdonald@sharplabs.com&gt;</B> </FONT>
        <P><FONT face=sans-serif size=1>11/28/2005 05:52 PM</FONT> </P>
      <TD width="59%">
        <TABLE width="100%">
          <TBODY>
          <TR>
            <TD>
              <DIV align=right><FONT face=sans-serif size=1>To</FONT></DIV>
            <TD vAlign=top><FONT face=sans-serif size=1>Claudia 
              Alimpich/Boulder/IBM@IBMUS, 
              printing-architecture@freestandards.org</FONT> 
          <TR>
            <TD>
              <DIV align=right><FONT face=sans-serif size=1>cc</FONT></DIV>
            <TD vAlign=top>
          <TR>
            <TD>
              <DIV align=right><FONT face=sans-serif size=1>Subject</FONT></DIV>
            <TD vAlign=top><FONT face=sans-serif size=1>RE: 
              [Printing-architecture] There will be an Open Printing confer 
              &nbsp; &nbsp; &nbsp; &nbsp;ence call Wed Nov 
        30th</FONT></TR></TBODY></TABLE><BR>
        <TABLE>
          <TBODY>
          <TR vAlign=top>
            <TD>
            <TD></TR></TBODY></TABLE><BR></TR></TBODY></TABLE><BR><BR><BR><FONT face=Arial 
  color=blue size=4>Hi,</FONT> <BR><FONT size=3>&nbsp;</FONT> <BR><FONT 
  face=Arial color=blue size=4>Fine by me.</FONT> <BR><FONT size=3>&nbsp;</FONT> 
  <BR><FONT face=Arial color=blue size=4>When we meet NEXT week (7 December), we 
  should decide about 14 December versus</FONT> <BR><FONT face=Arial color=blue 
  size=4>21 December (maybe too close to Christmas holidays??).</FONT> <BR><FONT 
  size=3>&nbsp;</FONT> <BR><FONT face=Arial color=blue size=4>Cheers,</FONT> 
  <BR><FONT face=Arial color=blue size=4>- Ira</FONT> 
  <P><FONT size=2>Ira McDonald (Musician / Software Architect)<BR>Blue Roof 
  Music / High North Inc<BR>PO Box 221 &nbsp;Grand Marais, MI 
  &nbsp;49839<BR>phone: +1-906-494-2434<BR>email: 
  imcdonald@sharplabs.com</FONT><FONT size=3> </FONT>
  <P><FONT face=Tahoma size=2>-----Original Message-----<B><BR>From:</B> 
  printing-architecture-bounces@freestandards.org 
  [mailto:printing-architecture-bounces@freestandards.org]<B>On Behalf Of 
  </B>Claudia Alimpich<B><BR>Sent:</B> Monday, November 28, 2005 7:31 
  PM<B><BR>To:</B> printing-architecture@freestandards.org<B><BR>Subject:</B> 
  RE: [Printing-architecture] There will be an Open Printing confer ence call 
  Wed Nov 30th<BR></FONT><BR><FONT face=sans-serif size=2><BR>Not that I don't 
  enjoy talking to Ira, but should we try to meet next Wednesday 
  instead?</FONT><FONT size=3> </FONT><FONT face=sans-serif 
  size=2><BR>Claudia</FONT><FONT size=3> <BR></FONT><FONT 
  size=2><TT><BR>printing-architecture-bounces@freestandards.org wrote on 
  11/28/2005 05:14:51 PM:<BR><BR>&gt; Hi,<BR>&gt; <BR>&gt; Well then, I look 
  forward to talking to Claudia this Wednesday (smile).<BR>&gt; <BR>&gt; 
  Cheers,<BR>&gt; - Ira<BR>&gt; <BR>&gt; Ira McDonald (Musician / Software 
  Architect)<BR>&gt; Blue Roof Music / High North Inc<BR>&gt; PO Box 221 
  &nbsp;Grand Marais, MI &nbsp;49839<BR>&gt; phone: +1-906-494-2434<BR>&gt; 
  email: imcdonald@sharplabs.com<BR>&gt; <BR>&gt; &gt; -----Original 
  Message-----<BR>&gt; &gt; From: 
  printing-architecture-bounces@freestandards.org<BR>&gt; &gt; 
  [mailto:printing-architecture-bounces@freestandards.org]On Behalf Of<BR>&gt; 
  &gt; Norm Jacobs<BR>&gt; &gt; Sent: Monday, November 28, 2005 6:47 PM<BR>&gt; 
  &gt; To: Claudia Alimpich<BR>&gt; &gt; Cc: 
  printing-architecture@freestandards.org<BR>&gt; &gt; Subject: Re: 
  [Printing-architecture] There will be an Open Printing<BR>&gt; &gt; conference 
  call Wed Nov 30th<BR>&gt; &gt; <BR>&gt; &gt; <BR>&gt; &gt; <BR>&gt; &gt; I 
  can't attend. &nbsp;I am in meetings all day Wednesday - Friday<BR>&gt; &gt; 
  <BR>&gt; &gt; &nbsp; &nbsp; &nbsp; &nbsp;-Norm<BR>&gt; &gt; <BR>&gt; &gt; 
  Claudia Alimpich wrote:<BR>&gt; &gt; <BR>&gt; &gt; &gt;<BR>&gt; &gt; &gt; 
  There will be an Open Printing conference call Wed November 30th.<BR>&gt; &gt; 
  &gt;<BR>&gt; &gt; &gt; Day: Wednesdays<BR>&gt; &gt; &gt; Time: &nbsp;<BR>&gt; 
  &gt; &gt; 12:00-1:00 PM US Pacific time<BR>&gt; &gt; &gt; 1:00-2:00 PM US 
  Mountain time<BR>&gt; &gt; &gt; 3:00-4:00 PM US Eastern time<BR>&gt; &gt; &gt; 
  9:00-10:00 PM Paris time<BR>&gt; &gt; &gt; USA Toll Number: 
  1-484-630-2765<BR>&gt; &gt; &gt; PASSCODE: 84974<BR>&gt; &gt; &gt;<BR>&gt; 
  &gt; &gt; During this meeting, we will work on a few more sequence diagrams, 
  <BR>&gt; &gt; &gt; possibly printer discovery and Status Monitor 
  initialization.<BR>&gt; &gt; &gt;<BR>&gt; &gt; &gt; Claudia<BR>&gt; &gt; 
  &gt;<BR>&gt; &gt; &gt; Following is where we let off after the last (Oct 12th) 
  meeting:<BR>&gt; &gt; &gt;<BR>&gt; &gt; &gt; 
  ------------------------------------------------------------<BR>&gt; &gt; &gt; 
  High level sequence diagram of Print Manager <BR>&gt; &gt; initialization, 
  where the <BR>&gt; &gt; &gt; sequence of steps is as follows:<BR>&gt; &gt; 
  &gt; 1. User or system invokes Print Manager<BR>&gt; &gt; &gt; 2. Print 
  Manager reads configuration profile from local or <BR>&gt; &gt; networked 
  <BR>&gt; &gt; &gt; data store (location of AAA, printers/queues that it is 
  serving, <BR>&gt; &gt; &gt; fonts, media, transform capabilities, printer 
  capabilities and <BR>&gt; &gt; &gt; information, etc)<BR>&gt; &gt; &gt; 3. 
  Print Manager authenticates invoking user or system<BR>&gt; &gt; &gt; 4. Print 
  Manager invokes Status Monitor<BR>&gt; &gt; &gt; 5. Print Manager calls Status 
  Monitor to subscribe for <BR>&gt; &gt; current printer <BR>&gt; &gt; &gt; 
  states, all printer events, and current job status for <BR>&gt; &gt; printers 
  from <BR>&gt; &gt; &gt; the configuration profile<BR>&gt; &gt; &gt; 6. Print 
  Manager calls Capabilities to determine current printer <BR>&gt; &gt; &gt; 
  capabilites for each printer<BR>&gt; &gt; &gt; 7. Print Manager recovers saved 
  jobs and initializes its queues<BR>&gt; &gt; &gt; 8. Print Manager calls 
  Spooler to initiate job scheduling<BR>&gt; &gt; &gt; 9. Print Manager calls 
  AAA informing AAA that Print Manager <BR>&gt; &gt; is available<BR>&gt; &gt; 
  &gt; 10. The next steps are normal print operation as described <BR>&gt; &gt; 
  in the Job <BR>&gt; &gt; &gt; Submission sequence diagram<BR>&gt; &gt; 
  &gt;<BR>&gt; &gt; &gt; High level sequence diagram for job submission, where 
  the <BR>&gt; &gt; sequence of <BR>&gt; &gt; &gt; steps is as follows:<BR>&gt; 
  &gt; &gt; 1. User invokes application<BR>&gt; &gt; &gt; 2. User selects print 
  options and submits print request to <BR>&gt; &gt; Print Manager<BR>&gt; &gt; 
  &gt; 3. Print Manager calls AAA to authenticate user<BR>&gt; &gt; &gt; 4. 
  Print Manager calls Job Ticketing to parse job ticket <BR>&gt; &gt; (if 
  necessary)<BR>&gt; &gt; &gt; 5. Print Manager validates job attributes and job 
  ticket <BR>&gt; &gt; content using <BR>&gt; &gt; &gt; stored 
  capabilites<BR>&gt; &gt; &gt; 6. Print Manager calls AAA to authorize 
  capabilites allowed for user<BR>&gt; &gt; &gt; 7. Print Manager determines if 
  data in job must be <BR>&gt; &gt; transformed, and if <BR>&gt; &gt; &gt; so 
  calls Transform to convert job data<BR>&gt; &gt; &gt; 8. Print Manager places 
  print data, job attributes, job ticket (if <BR>&gt; &gt; &gt; any) in Spooler 
  for scheduling<BR>&gt; &gt; &gt; 9. Print Manager sends job to the 
  Driver<BR>&gt; &gt; &gt; 10. Print Manager calls Status Monitor to monitor 
  specific <BR>&gt; &gt; printer for <BR>&gt; &gt; &gt; printer and job 
  events<BR>&gt; &gt; &gt; 11. Driver calls Capability to check printer 
  capabilities <BR>&gt; &gt; against job <BR>&gt; &gt; &gt; attributes and job 
  ticket<BR>&gt; &gt; &gt; 12. Driver applies job attributes and job ticket (if 
  any) <BR>&gt; &gt; to print data<BR>&gt; &gt; &gt; 13. Driver converts print 
  data to printer ready format<BR>&gt; &gt; &gt; 14. Driver sends printer ready 
  print data to PCM &nbsp;<BR>&gt; &gt; &gt; 15. PCM forwards printer ready 
  print data Printer<BR>&gt; &gt; &gt; 16. Once Driver has sent all print data 
  to PCM, Driver <BR>&gt; &gt; informs Printer <BR>&gt; &gt; &gt; Manager that 
  all print data has been sent<BR>&gt; &gt; &gt; 17. Status Monitor tells Print 
  Manager that job has completed<BR>&gt; &gt; &gt; 18. Print Manager removes job 
  from Spooler<BR>&gt; &gt; &gt; 19. Print Manager calls SM to stop monitoring 
  specific printer<BR>&gt; &gt; &gt; 20. Print Manager calls AAA informing that 
  job is complete<BR>&gt; &gt; &gt;<BR>&gt; &gt; &gt; We also need sequence 
  diagrams for the following:<BR>&gt; &gt; &gt; 1. Print Manager registers to 
  receive updates on new printers and <BR>&gt; &gt; &gt; printer capabilities 
  (Dynamic discovery of a new printer)<BR>&gt; &gt; &gt; 2. Capabilities 
  periodically updates printer capabilities <BR>&gt; &gt; (target is <BR>&gt; 
  &gt; &gt; Print Manager)<BR>&gt; &gt; &gt; 3. Status Monitor 
  initialization<BR>&gt; &gt; &gt; 4. etc ...<BR>&gt; &gt; &gt;<BR>&gt; &gt; 
  &gt;-------------------------------------------------------------<BR>&gt; &gt; 
  -----------<BR>&gt; &gt; &gt;<BR>&gt; &gt; 
  &gt;_______________________________________________<BR>&gt; &gt; 
  &gt;Printing-architecture mailing list<BR>&gt; &gt; 
  &gt;Printing-architecture@freestandards.org<BR>&gt; &gt; 
  &gt;http://mail.freestandards.org/mailman/listinfo/printing-architecture<BR>&gt; 
  &gt; &gt; &nbsp;<BR>&gt; &gt; &gt;<BR>&gt; &gt; <BR>&gt; &gt; 
  _______________________________________________<BR>&gt; &gt; 
  Printing-architecture mailing list<BR>&gt; &gt; 
  Printing-architecture@freestandards.org<BR>&gt; &gt; 
  http://mail.freestandards.org/mailman/listinfo/printing-architecture<BR>&gt; 
  &gt; <BR>&gt; _______________________________________________<BR>&gt; 
  Printing-architecture mailing list<BR>&gt; 
  Printing-architecture@freestandards.org<BR>&gt; 
  http://mail.freestandards.org/mailman/listinfo/printing-architecture</TT></FONT> 
  <BR></P></BLOCKQUOTE></BODY></HTML>

------_=_NextPart_001_01C5FA8C.3B653C44--
