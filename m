MIME-Version: 1.0
Message-ID: <OF9D703BBC.D846E4F0-ON872570D7.006E2E88-872570D7.00742EBA@us.ibm.com>
From: Claudia Alimpich <alimpich@us.ibm.com>
Date: Wed, 14 Dec 2005 14:11:05 -0700
Content-Type: multipart/alternative;
	boundary="=_alternative 00742EB9872570D7_="
Subject: [Printing-architecture] Minutes from Open Printing conference call
	Wed Dec 14th
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
--=_alternative 00742EB9872570D7_=
Content-Type: text/plain; charset="US-ASCII"

Participants:
Claudia Alimpich (IBM)
Ian Murdock - Future CTO of Free Standards group attended this call
Ira McDonald (High North Inc.)
Norm Jacobs (Sun)
Till Kamppeter (Till Kamppeter)

Our next meeting will be Wednesday January 11th.

Ian introduced himself. We gave Ian an overview of what we have been doing 
in the FSG Open Printing group during the past few years.

We decided that there should be a new block that performs discovery of new 
printers (item 1 in todo list below). We will call it Device Discovery. 
Print Manager invokes Device Discovery (step 4) and then calls Device 
Discovery to subscribe for printer created events (step 5). These updates 
have been added to the following diagrams. We added a new item to the todo 
list to create a sequence diagram for Device Discovery initialization.

Status Monitor initialization provides very basic function and will 
probably be fairly boring to define.

Following is the current version of the sequence diagrams:
------------------------------------------------- 
High level sequence diagram of Print Manager initialization, where the 
sequence of steps is as follows: 
1. User or system invokes Print Manager 
2. Print Manager reads configuration profile from local or networked data 
store (location of AAA, printers/queues that it is serving, fonts, media, 
transform capabilities, printer capabilities and information, etc) 
3. Print Manager authenticates invoking user or system 
4. Print Manager invokes Device Discovery
5. Print Manager calls Device Discovery to subscribe for new (created) 
printer events 
46. Print Manager invokes Status Monitor 
57. Print Manager calls Status Monitor to subscribe for current printer 
states, all printer events, and current job status for printers from the 
configuration profile 
68. Print Manager calls Capabilities to determine current printer 
capabilites for each printer 
79. Print Manager recovers saved jobs and initializes its queues 
810. Print Manager calls Spooler to initiate job scheduling 
911. Print Manager calls AAA informing AAA that Print Manager is available 

1012. The next steps are normal print operation as described in the Job 
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
capabilities (Dynamic discovery of a new printer). Added this as steps 4 
and 5 in Print Manager intializatoin sequence diagram)
2. Capabilities periodically updates printer capabilities (target is Print 
Manager) 
3. Status Monitor initialization (do this later, will most likely be 
pretty basic and boring)
4. Device Discovery initalization
5. etc ...

--=_alternative 00742EB9872570D7_=
Content-Type: text/html; charset="US-ASCII"


<br><font size=2 face="Arial">Participants:</font>
<br><font size=2 face="sans-serif">Claudia Alimpich (IBM)</font>
<br><font size=2 face="Arial">Ian Murdock - Future CTO of Free Standards
group attended this call</font>
<br><font size=2 face="sans-serif">Ira McDonald (High North Inc.)</font>
<br><font size=2 face="sans-serif">Norm Jacobs (Sun)</font>
<br><font size=2 face="sans-serif">Till Kamppeter (Till Kamppeter)</font>
<br>
<br><font size=2 face="sans-serif">Our next meeting will be Wednesday January
11th.</font>
<br>
<br><font size=2 face="sans-serif">Ian introduced himself. We gave Ian
an overview of what we have been doing in the FSG Open Printing group during
the past few years.</font>
<br>
<br><font size=2 face="sans-serif">We decided that there should be a new
block that performs discovery of new printers (item 1 in todo list below).
We will call it Device Discovery. Print Manager invokes Device Discovery
(step 4) and then calls Device Discovery to subscribe for printer created
events (step 5). These updates have been added to the following diagrams.
We added a new item to the todo list to create a sequence diagram for Device
Discovery initialization.</font>
<br>
<br><font size=2 face="sans-serif">Status Monitor initialization provides
very basic function and will probably be fairly boring to define.</font>
<br><font size=2 face="sans-serif"><br>
Following is the current version of the sequence diagrams:</font>
<br><font size=3>------------------------------------------------- </font><font size=2 face="sans-serif"><br>
High level sequence diagram of Print Manager initialization, where the
sequence of steps is as follows:</font><font size=3> </font><font size=2 face="sans-serif"><br>
1. User or system invokes Print Manager</font><font size=3> </font><font size=2 face="sans-serif"><br>
2. Print Manager reads configuration profile from local or networked data
store (location of AAA, printers/queues that it is serving, fonts, media,
transform capabilities, printer capabilities and information, etc)</font><font size=3>
</font><font size=2 face="sans-serif"><br>
3. Print Manager authenticates invoking user or system</font><font size=3>
</font>
<br><font size=2 color=red face="sans-serif"><b>4. Print Manager invokes
Device Discovery</b></font>
<br><font size=2 color=red face="sans-serif"><b>5. Print Manager calls
Device Discovery to subscribe for new (created) printer events</b></font><font size=3>
</font><font size=2 face="sans-serif"><br>
<strike>4</strike></font><font size=2 color=red face="sans-serif"><b>6</b></font><font size=2 face="sans-serif">.
Print Manager invokes Status Monitor</font><font size=3> </font><font size=2 face="sans-serif"><br>
<strike>5</strike></font><font size=2 color=red face="sans-serif"><b>7</b></font><font size=2 face="sans-serif">.
Print Manager calls Status Monitor to subscribe for current printer states,
all printer events, and current job status for printers from the configuration
profile</font><font size=3> </font><font size=2 face="sans-serif"><br>
<strike>6</strike></font><font size=2 color=red face="sans-serif"><b>8</b></font><font size=2 face="sans-serif">.
Print Manager calls Capabilities to determine current printer capabilites
for each printer</font><font size=3> </font><font size=2 face="sans-serif"><br>
<strike>7</strike></font><font size=2 color=red face="sans-serif"><b>9</b></font><font size=2 face="sans-serif">.
Print Manager recovers saved jobs and initializes its queues</font><font size=3>
</font><font size=2 face="sans-serif"><br>
<strike>8</strike></font><font size=2 color=red face="sans-serif"><b>10</b></font><font size=2 face="sans-serif">.
Print Manager calls Spooler to initiate job scheduling</font><font size=3>
</font><font size=2 face="sans-serif"><br>
<strike>9</strike></font><font size=2 color=red face="sans-serif"><b>11</b></font><font size=2 face="sans-serif">.
Print Manager calls AAA informing AAA that Print Manager is available</font><font size=3>
</font><font size=2 face="sans-serif"><br>
<strike>10</strike></font><font size=2 color=red face="sans-serif"><b>12</b></font><font size=2 face="sans-serif">.
The next steps are normal print operation as described in the Job Submission
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
20. Print Manager calls AAA informing that job is complete <br>
<br>
We also need sequence diagrams for the following:</font><font size=3> </font><font size=2 face="sans-serif"><br>
1. Print Manager registers to receive updates on new printers and printer
capabilities</font><font size=3> </font><font size=2 face="sans-serif">(Dynamic
discovery of a new printer)</font><font size=2 color=red face="sans-serif"><b>.
Added this as steps 4 and 5 in Print Manager intializatoin sequence diagram)</b></font><font size=2 face="sans-serif"><br>
2. Capabilities periodically updates printer capabilities (target is Print
Manager)</font><font size=3> </font><font size=2 face="sans-serif"><br>
3. Status Monitor initialization</font><font size=3> </font><font size=2 color=red face="sans-serif"><b>(do
this later, will most likely be pretty basic and boring)</b></font>
<br><font size=2 color=red face="sans-serif"><b>4. Device Discovery initalization</b></font><font size=2 face="sans-serif"><br>
5. etc ...</font><font size=2><tt><br>
</tt></font>
--=_alternative 00742EB9872570D7_=--
