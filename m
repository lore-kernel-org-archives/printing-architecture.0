In-Reply-To: <CFEE79A465B35C4385389BA5866BEDF00C7E14@mailsrvnt02.enet.sharplabs.com>
MIME-Version: 1.0
Subject: RE: [Printing-architecture] There will be an Open Printing
	confer	ence call Wed Nov 30th
Message-ID: <OF01842638.74E0FBBB-ON872570C8.0004DC67-872570C8.0004CAC3@us.ibm.com>
From: Claudia Alimpich <alimpich@us.ibm.com>
Date: Mon, 28 Nov 2005 17:54:17 -0700
Content-Type: multipart/alternative;
	boundary="=_alternative 0004CABB872570C8_="
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

This is a multipart message in MIME format.
--=_alternative 0004CABB872570C8_=
Content-Type: text/plain; charset="US-ASCII"

I vote to meet two weeks in a row, on Dec 7th and Dec 14th. I will be out 
on Dec 21st and Dec 28th.
Claudia



"McDonald, Ira" <imcdonald@sharplabs.com> 
11/28/2005 05:52 PM

To
Claudia Alimpich/Boulder/IBM@IBMUS, 
printing-architecture@freestandards.org
cc

Subject
RE: [Printing-architecture] There will be an Open Printing confer ence 
call Wed Nov 30th






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
[mailto:printing-architecture-bounces@freestandards.org]On Behalf Of 
Claudia Alimpich
Sent: Monday, November 28, 2005 7:31 PM
To: printing-architecture@freestandards.org
Subject: RE: [Printing-architecture] There will be an Open Printing confer 
ence call Wed Nov 30th


Not that I don't enjoy talking to Ira, but should we try to meet next 
Wednesday instead? 
Claudia 

printing-architecture-bounces@freestandards.org wrote on 11/28/2005 
05:14:51 PM:

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

--=_alternative 0004CABB872570C8_=
Content-Type: text/html; charset="US-ASCII"


<br><font size=2 face="sans-serif">I vote to meet two weeks in a row, on
Dec 7th and Dec 14th. I will be out on Dec 21st and Dec 28th.</font>
<br><font size=2 face="sans-serif">Claudia</font>
<br>
<br>
<br>
<table width=100%>
<tr valign=top>
<td width=40%><font size=1 face="sans-serif"><b>&quot;McDonald, Ira&quot;
&lt;imcdonald@sharplabs.com&gt;</b> </font>
<p><font size=1 face="sans-serif">11/28/2005 05:52 PM</font>
<td width=59%>
<table width=100%>
<tr>
<td>
<div align=right><font size=1 face="sans-serif">To</font></div>
<td valign=top><font size=1 face="sans-serif">Claudia Alimpich/Boulder/IBM@IBMUS,
printing-architecture@freestandards.org</font>
<tr>
<td>
<div align=right><font size=1 face="sans-serif">cc</font></div>
<td valign=top>
<tr>
<td>
<div align=right><font size=1 face="sans-serif">Subject</font></div>
<td valign=top><font size=1 face="sans-serif">RE: [Printing-architecture]
There will be an Open Printing confer &nbsp; &nbsp; &nbsp; &nbsp;ence
call Wed Nov 30th</font></table>
<br>
<table>
<tr valign=top>
<td>
<td></table>
<br></table>
<br>
<br>
<br><font size=4 color=blue face="Arial">Hi,</font>
<br><font size=3>&nbsp;</font>
<br><font size=4 color=blue face="Arial">Fine by me.</font>
<br><font size=3>&nbsp;</font>
<br><font size=4 color=blue face="Arial">When we meet NEXT week (7 December),
we should decide about 14 December versus</font>
<br><font size=4 color=blue face="Arial">21 December (maybe too close to
Christmas holidays??).</font>
<br><font size=3>&nbsp;</font>
<br><font size=4 color=blue face="Arial">Cheers,</font>
<br><font size=4 color=blue face="Arial">- Ira</font>
<p><font size=2>Ira McDonald (Musician / Software Architect)<br>
Blue Roof Music / High North Inc<br>
PO Box 221 &nbsp;Grand Marais, MI &nbsp;49839<br>
phone: +1-906-494-2434<br>
email: imcdonald@sharplabs.com</font><font size=3> </font>
<p><font size=2 face="Tahoma">-----Original Message-----<b><br>
From:</b> printing-architecture-bounces@freestandards.org [mailto:printing-architecture-bounces@freestandards.org]<b>On
Behalf Of </b>Claudia Alimpich<b><br>
Sent:</b> Monday, November 28, 2005 7:31 PM<b><br>
To:</b> printing-architecture@freestandards.org<b><br>
Subject:</b> RE: [Printing-architecture] There will be an Open Printing
confer ence call Wed Nov 30th<br>
</font>
<br><font size=2 face="sans-serif"><br>
Not that I don't enjoy talking to Ira, but should we try to meet next Wednesday
instead?</font><font size=3> </font><font size=2 face="sans-serif"><br>
Claudia</font><font size=3> <br>
</font><font size=2><tt><br>
printing-architecture-bounces@freestandards.org wrote on 11/28/2005 05:14:51
PM:<br>
<br>
&gt; Hi,<br>
&gt; <br>
&gt; Well then, I look forward to talking to Claudia this Wednesday (smile).<br>
&gt; <br>
&gt; Cheers,<br>
&gt; - Ira<br>
&gt; <br>
&gt; Ira McDonald (Musician / Software Architect)<br>
&gt; Blue Roof Music / High North Inc<br>
&gt; PO Box 221 &nbsp;Grand Marais, MI &nbsp;49839<br>
&gt; phone: +1-906-494-2434<br>
&gt; email: imcdonald@sharplabs.com<br>
&gt; <br>
&gt; &gt; -----Original Message-----<br>
&gt; &gt; From: printing-architecture-bounces@freestandards.org<br>
&gt; &gt; [mailto:printing-architecture-bounces@freestandards.org]On Behalf
Of<br>
&gt; &gt; Norm Jacobs<br>
&gt; &gt; Sent: Monday, November 28, 2005 6:47 PM<br>
&gt; &gt; To: Claudia Alimpich<br>
&gt; &gt; Cc: printing-architecture@freestandards.org<br>
&gt; &gt; Subject: Re: [Printing-architecture] There will be an Open Printing<br>
&gt; &gt; conference call Wed Nov 30th<br>
&gt; &gt; <br>
&gt; &gt; <br>
&gt; &gt; <br>
&gt; &gt; I can't attend. &nbsp;I am in meetings all day Wednesday - Friday<br>
&gt; &gt; <br>
&gt; &gt; &nbsp; &nbsp; &nbsp; &nbsp;-Norm<br>
&gt; &gt; <br>
&gt; &gt; Claudia Alimpich wrote:<br>
&gt; &gt; <br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; There will be an Open Printing conference call Wed November
30th.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Day: Wednesdays<br>
&gt; &gt; &gt; Time: &nbsp;<br>
&gt; &gt; &gt; 12:00-1:00 PM US Pacific time<br>
&gt; &gt; &gt; 1:00-2:00 PM US Mountain time<br>
&gt; &gt; &gt; 3:00-4:00 PM US Eastern time<br>
&gt; &gt; &gt; 9:00-10:00 PM Paris time<br>
&gt; &gt; &gt; USA Toll Number: 1-484-630-2765<br>
&gt; &gt; &gt; PASSCODE: 84974<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; During this meeting, we will work on a few more sequence
diagrams, <br>
&gt; &gt; &gt; possibly printer discovery and Status Monitor initialization.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Claudia<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Following is where we let off after the last (Oct 12th)
meeting:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; ------------------------------------------------------------<br>
&gt; &gt; &gt; High level sequence diagram of Print Manager <br>
&gt; &gt; initialization, where the <br>
&gt; &gt; &gt; sequence of steps is as follows:<br>
&gt; &gt; &gt; 1. User or system invokes Print Manager<br>
&gt; &gt; &gt; 2. Print Manager reads configuration profile from local
or <br>
&gt; &gt; networked <br>
&gt; &gt; &gt; data store (location of AAA, printers/queues that it is
serving, <br>
&gt; &gt; &gt; fonts, media, transform capabilities, printer capabilities
and <br>
&gt; &gt; &gt; information, etc)<br>
&gt; &gt; &gt; 3. Print Manager authenticates invoking user or system<br>
&gt; &gt; &gt; 4. Print Manager invokes Status Monitor<br>
&gt; &gt; &gt; 5. Print Manager calls Status Monitor to subscribe for <br>
&gt; &gt; current printer <br>
&gt; &gt; &gt; states, all printer events, and current job status for <br>
&gt; &gt; printers from <br>
&gt; &gt; &gt; the configuration profile<br>
&gt; &gt; &gt; 6. Print Manager calls Capabilities to determine current
printer <br>
&gt; &gt; &gt; capabilites for each printer<br>
&gt; &gt; &gt; 7. Print Manager recovers saved jobs and initializes its
queues<br>
&gt; &gt; &gt; 8. Print Manager calls Spooler to initiate job scheduling<br>
&gt; &gt; &gt; 9. Print Manager calls AAA informing AAA that Print Manager
<br>
&gt; &gt; is available<br>
&gt; &gt; &gt; 10. The next steps are normal print operation as described
<br>
&gt; &gt; in the Job <br>
&gt; &gt; &gt; Submission sequence diagram<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; High level sequence diagram for job submission, where the
<br>
&gt; &gt; sequence of <br>
&gt; &gt; &gt; steps is as follows:<br>
&gt; &gt; &gt; 1. User invokes application<br>
&gt; &gt; &gt; 2. User selects print options and submits print request
to <br>
&gt; &gt; Print Manager<br>
&gt; &gt; &gt; 3. Print Manager calls AAA to authenticate user<br>
&gt; &gt; &gt; 4. Print Manager calls Job Ticketing to parse job ticket
<br>
&gt; &gt; (if necessary)<br>
&gt; &gt; &gt; 5. Print Manager validates job attributes and job ticket
<br>
&gt; &gt; content using <br>
&gt; &gt; &gt; stored capabilites<br>
&gt; &gt; &gt; 6. Print Manager calls AAA to authorize capabilites allowed
for user<br>
&gt; &gt; &gt; 7. Print Manager determines if data in job must be <br>
&gt; &gt; transformed, and if <br>
&gt; &gt; &gt; so calls Transform to convert job data<br>
&gt; &gt; &gt; 8. Print Manager places print data, job attributes, job
ticket (if <br>
&gt; &gt; &gt; any) in Spooler for scheduling<br>
&gt; &gt; &gt; 9. Print Manager sends job to the Driver<br>
&gt; &gt; &gt; 10. Print Manager calls Status Monitor to monitor specific
<br>
&gt; &gt; printer for <br>
&gt; &gt; &gt; printer and job events<br>
&gt; &gt; &gt; 11. Driver calls Capability to check printer capabilities
<br>
&gt; &gt; against job <br>
&gt; &gt; &gt; attributes and job ticket<br>
&gt; &gt; &gt; 12. Driver applies job attributes and job ticket (if any)
<br>
&gt; &gt; to print data<br>
&gt; &gt; &gt; 13. Driver converts print data to printer ready format<br>
&gt; &gt; &gt; 14. Driver sends printer ready print data to PCM &nbsp;<br>
&gt; &gt; &gt; 15. PCM forwards printer ready print data Printer<br>
&gt; &gt; &gt; 16. Once Driver has sent all print data to PCM, Driver <br>
&gt; &gt; informs Printer <br>
&gt; &gt; &gt; Manager that all print data has been sent<br>
&gt; &gt; &gt; 17. Status Monitor tells Print Manager that job has completed<br>
&gt; &gt; &gt; 18. Print Manager removes job from Spooler<br>
&gt; &gt; &gt; 19. Print Manager calls SM to stop monitoring specific printer<br>
&gt; &gt; &gt; 20. Print Manager calls AAA informing that job is complete<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; We also need sequence diagrams for the following:<br>
&gt; &gt; &gt; 1. Print Manager registers to receive updates on new printers
and <br>
&gt; &gt; &gt; printer capabilities (Dynamic discovery of a new printer)<br>
&gt; &gt; &gt; 2. Capabilities periodically updates printer capabilities
<br>
&gt; &gt; (target is <br>
&gt; &gt; &gt; Print Manager)<br>
&gt; &gt; &gt; 3. Status Monitor initialization<br>
&gt; &gt; &gt; 4. etc ...<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;-------------------------------------------------------------<br>
&gt; &gt; -----------<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;_______________________________________________<br>
&gt; &gt; &gt;Printing-architecture mailing list<br>
&gt; &gt; &gt;Printing-architecture@freestandards.org<br>
&gt; &gt; &gt;http://mail.freestandards.org/mailman/listinfo/printing-architecture<br>
&gt; &gt; &gt; &nbsp;<br>
&gt; &gt; &gt;<br>
&gt; &gt; <br>
&gt; &gt; _______________________________________________<br>
&gt; &gt; Printing-architecture mailing list<br>
&gt; &gt; Printing-architecture@freestandards.org<br>
&gt; &gt; http://mail.freestandards.org/mailman/listinfo/printing-architecture<br>
&gt; &gt; <br>
&gt; _______________________________________________<br>
&gt; Printing-architecture mailing list<br>
&gt; Printing-architecture@freestandards.org<br>
&gt; http://mail.freestandards.org/mailman/listinfo/printing-architecture</tt></font>
<br>
--=_alternative 0004CABB872570C8_=--
