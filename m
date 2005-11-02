MIME-Version: 1.0
Message-ID: <OF1C56C295.C3C74D80-ON872570AD.006E5458-872570AD.0072B83A@us.ibm.com>
From: Claudia Alimpich <alimpich@us.ibm.com>
Date: Wed, 2 Nov 2005 13:54:44 -0700
Content-Type: multipart/alternative;
	boundary="=_alternative 0072B838872570AD_="
Subject: [Printing-architecture] FSG Arch meeting minutes - Wed Nov 2nd
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
--=_alternative 0072B838872570AD_=
Content-Type: text/plain; charset="US-ASCII"

Participants: 
Claudia Alimpich (IBM) 
Ira McDonald (High North Inc.) 
Norm Jacobs (Sun) 

Ira gave a summary of the PWG meeting that occurred last week.

We did not work on any sequence diagrams due to low attendance for the 
whole meeting. We will meet again in 2 weeks to continue working on 
sequence diagrams.

Claudia

Following is where we let off after the Oct 12th meeting:

------------------------------------------------------------ 
High level sequence diagram of Print Manager initialization, where the 
sequence of steps is as follows: 
1. User or system invokes Print Manager 
2. Print Manager reads configuration profile from local or networked data 
store (location of AAA, printers/queues that it is serving, fonts, media, 
transform capabilities, printer capabilities and information, etc) 
3. Print Manager authenticates invoking user or system 
4. Print Manager invokes Status Monitor 
5. Print Manager calls Status Monitor to subscribe for current printer 
states, all printer events, and current job status for printers from the 
configuration profile 
6. Print Manager calls Capabilities to determine current printer 
capabilites for each printer 
7. Print Manager recovers saved jobs and initializes its queues 
8. Print Manager calls Spooler to initiate job scheduling 
9. Print Manager calls AAA informing AAA that Print Manager is available 
10. The next steps are normal print operation as described in the Job 
Submission sequence diagram 

High level sequence diagram for job submission, where the sequence of 
steps is as follows: 
1. User invokes application 
2. User selects print options and submits print request to Print Manager 
3. Print Manager calls AAA to authenticate user 
4. Print Manager calls Job Ticketing to parse job ticket (if necessary) 
5. Print Manager validates job attributes and job ticket content using 
stored capabilites 
6. Print Manager calls AAA to authorize capabilites allowed for user 
7. Print Manager determines if data in job must be transformed, and if so 
calls Transform to convert job data 
8. Print Manager places print data, job attributes, job ticket (if any) in 
Spooler for scheduling 
9. Print Manager sends job to the Driver 
10. Print Manager calls Status Monitor to monitor specific printer for 
printer and job events 
11. Driver calls Capability to check printer capabilities against job 
attributes and job ticket 
12. Driver applies job attributes and job ticket (if any) to print data 
13. Driver converts print data to printer ready format 
14. Driver sends printer ready print data to PCM   
15. PCM forwards printer ready print data Printer 
16. Once Driver has sent all print data to PCM, Driver informs Printer 
Manager that all print data has been sent 
17. Status Monitor tells Print Manager that job has completed 
18. Print Manager removes job from Spooler 
19. Print Manager calls SM to stop monitoring specific printer 
20. Print Manager calls AAA informing that job is complete 

We also need sequence diagrams for the following: 
1. Print Manager registers to receive updates on new printers and printer 
capabilities (Dynamic discovery of a new printer)
2. Capabilities periodically updates printer capabilities (target is Print 
Manager) 
3. Status Monitor initialization 
4. etc ...

--=_alternative 0072B838872570AD_=
Content-Type: text/html; charset="US-ASCII"


<br><font size=2 face="sans-serif">Participants:</font><font size=3> </font>
<br><font size=2 face="sans-serif">Claudia Alimpich (IBM)</font><font size=3>
</font><font size=2 face="sans-serif"><br>
Ira McDonald (High North Inc.)</font><font size=3> </font><font size=2 face="sans-serif"><br>
Norm Jacobs (Sun)</font><font size=3> </font>
<br>
<br><font size=2 face="sans-serif">Ira gave a summary of the PWG meeting
that occurred last week.</font>
<br>
<br><font size=2 face="sans-serif">We did not work on any sequence diagrams
due to low attendance for the whole meeting. We will meet again in 2 weeks
to continue working on sequence diagrams.</font>
<br>
<br><font size=2 face="sans-serif">Claudia</font>
<br>
<br><font size=2 face="sans-serif">Following is where we let off after
the Oct 12th meeting:</font>
<br>
<br><font size=3>------------------------------------------------------------
</font><font size=2 face="sans-serif"><br>
High level sequence diagram of Print Manager initialization, where the
sequence of steps is as follows:</font><font size=3> </font><font size=2 face="sans-serif"><br>
1. User or system invokes Print Manager</font><font size=3> </font><font size=2 face="sans-serif"><br>
2. Print Manager reads configuration profile from local or networked data
store (location of AAA, printers/queues that it is serving, fonts, media,
transform capabilities, printer capabilities and information, etc)</font><font size=3>
</font><font size=2 face="sans-serif"><br>
3. Print Manager authenticates invoking user or system</font><font size=3>
</font><font size=2 face="sans-serif"><br>
4. Print Manager invokes Status Monitor</font><font size=3> </font><font size=2 face="sans-serif"><br>
5. Print Manager calls Status Monitor to subscribe for current printer
states, all printer events, and current job status for printers from the
configuration profile</font><font size=3> </font><font size=2 face="sans-serif"><br>
6. Print Manager calls Capabilities to determine current printer capabilites
for each printer</font><font size=3> </font><font size=2 face="sans-serif"><br>
7. Print Manager recovers saved jobs and initializes its queues</font><font size=3>
</font><font size=2 face="sans-serif"><br>
8. Print Manager calls Spooler to initiate job scheduling</font><font size=3>
</font><font size=2 face="sans-serif"><br>
9. Print Manager calls AAA informing AAA that Print Manager is available</font><font size=3>
</font><font size=2 face="sans-serif"><br>
10. The next steps are normal print operation as described in the Job Submission
sequence diagram</font><font size=3> </font><font size=2 face="sans-serif"><br>
<br>
High level sequence diagram for job submission, where the sequence of steps
is as follows:</font><font size=3> </font><font size=2 face="sans-serif"><br>
1. User invokes application</font><font size=3> </font><font size=2 face="sans-serif"><br>
2. User selects print options and submits print request to Print Manager</font><font size=3>
</font><font size=2 face="sans-serif"><br>
3. Print Manager calls AAA to authenticate user</font><font size=3> </font><font size=2 face="sans-serif"><br>
4. Print Manager calls Job Ticketing to parse job ticket (if necessary)</font><font size=3>
</font><font size=2 face="sans-serif"><br>
5. Print Manager validates job attributes and job ticket content using
stored capabilites</font><font size=3> </font><font size=2 face="sans-serif"><br>
6. Print Manager calls AAA to authorize capabilites allowed for user</font><font size=3>
</font><font size=2 face="sans-serif"><br>
7. Print Manager determines if data in job must be transformed, and if
so calls Transform to convert job data</font><font size=3> </font><font size=2 face="sans-serif"><br>
8. Print Manager places print data, job attributes, job ticket (if any)
in Spooler for scheduling</font><font size=3> </font><font size=2 face="sans-serif"><br>
9. Print Manager sends job to the Driver</font><font size=3> </font><font size=2 face="sans-serif"><br>
10. Print Manager calls Status Monitor to monitor specific printer for
printer and job events</font><font size=3> </font><font size=2 face="sans-serif"><br>
11. Driver calls Capability to check printer capabilities against job attributes
and job ticket</font><font size=3> </font><font size=2 face="sans-serif"><br>
12. Driver applies job attributes and job ticket (if any) to print data</font><font size=3>
</font><font size=2 face="sans-serif"><br>
13. Driver converts print data to printer ready format</font><font size=3>
</font><font size=2 face="sans-serif"><br>
14. Driver sends printer ready print data to PCM &nbsp;</font><font size=3>
</font><font size=2 face="sans-serif"><br>
15. PCM forwards printer ready print data Printer</font><font size=3> </font><font size=2 face="sans-serif"><br>
16. Once Driver has sent all print data to PCM, Driver informs Printer
Manager that all print data has been sent</font><font size=3> </font><font size=2 face="sans-serif"><br>
17. Status Monitor tells Print Manager that job has completed</font><font size=3>
</font><font size=2 face="sans-serif"><br>
18. Print Manager removes job from Spooler</font><font size=3> </font><font size=2 face="sans-serif"><br>
19. Print Manager calls SM to stop monitoring specific printer</font><font size=3>
</font><font size=2 face="sans-serif"><br>
20. Print Manager calls AAA informing that job is complete </font><font size=3><br>
</font><font size=2 face="sans-serif"><br>
We also need sequence diagrams for the following:</font><font size=3> </font><font size=2 face="sans-serif"><br>
1. Print Manager registers to receive updates on new printers and printer
capabilities</font><font size=3> </font><font size=2 face="sans-serif">(Dynamic
discovery of a new printer)<br>
2. Capabilities periodically updates printer capabilities (target is Print
Manager)</font><font size=3> </font><font size=2 face="sans-serif"><br>
3. Status Monitor initialization</font><font size=3> </font><font size=2 face="sans-serif"><br>
4. etc ...</font><font size=2><tt><br>
</tt></font>
--=_alternative 0072B838872570AD_=--
