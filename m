MIME-Version: 1.0
Message-ID: <OFE067254F.10788CB5-ON87257097.005BD50E-87257097.005C454A@us.ibm.com>
From: Claudia Alimpich <alimpich@us.ibm.com>
Date: Tue, 11 Oct 2005 10:49:02 -0600
Content-Type: multipart/alternative;
	boundary="=_alternative 005C454887257097_="
Subject: [Printing-architecture] There will be an Open Printing conference
	call Wed Oct 12th
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
--=_alternative 005C454887257097_=
Content-Type: text/plain; charset="US-ASCII"

There will be an Open Printing conference call Wed October 12th.

Day: Wednesdays 
Time:   
12:00-1:00 PM US Pacific time 
1:00-2:00 PM US Mountain time 
3:00-4:00 PM US Eastern time 
9:00-10:00 PM Paris time 
USA Toll Number: 1-484-630-2765 
PASSCODE: 84974 

We will review the sequence of steps that we came up with two weeks ago 
for the high level sequence diagram for job submission and then we must 
decide if we want to go deeper and create diagrams for the details (based 
on the diagrams that Glen created and posted) or to go wider and complete 
the other high level diagrams.

Claudia
----------------------------------------------------
Participants:
Claudia Alimpich (IBM)
Harry Lewis (IBM)
Ira McDonald (High North Inc.)
Norm Jacobs (Sun)
Till Kamppeter (Till Kamppeter)

Minutes:

We worked on a high level sequence diagram for job submission, where the 
sequence of steps is as follows:
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
10. Print Manager calls SM to monitor specific printer for printer and job 
events
11. Driver calls Capability to check printer capabilities against job 
attributes and job ticket
12. Driver applies job attributes and job ticket (if any) to print data
13. Driver converts print data to printer ready format
14. Driver sends printer ready print data to PCM 
15. PCM forwards printer ready print data Printer
16. Once Driver has sent all print data to PCM, Driver informs Printer 
Manager that all print data has been sent
17. SM tells Print Manager that job has completed
18. Print Manager removes job from Spooler
19. Print Manager calls SM to stop monitoring specific printer
20. Print Manager calls AAA informing that job is complete 

We need a sequence diagram for initialization that includes:
1. Print Manager registers to receive updates on new printers and printer 
capabilities
2. Capabilities periodically updates printer capabilities (target is Print 
Manager)
3. etc ... 

--=_alternative 005C454887257097_=
Content-Type: text/html; charset="US-ASCII"


<br><font size=2 face="sans-serif">There will be an Open Printing conference
call Wed October 12th.</font>
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
<br><font size=2 face="Arial">We will review the sequence of steps that
we came up with two weeks ago for the high level sequence diagram for job
submission and then we must decide if we want to go deeper and create diagrams
for the details (based on the diagrams that Glen created and posted) or
to go wider and complete the other high level diagrams.</font>
<br>
<br><font size=2 face="Arial">Claudia</font>
<br><font size=2 face="Arial">----------------------------------------------------</font>
<br><font size=2 face="sans-serif">Participants:</font>
<br><font size=2 face="sans-serif">Claudia Alimpich (IBM)</font>
<br><font size=2 face="sans-serif">Harry Lewis (IBM)</font>
<br><font size=2 face="sans-serif">Ira McDonald (High North Inc.)</font>
<br><font size=2 face="sans-serif">Norm Jacobs (Sun)</font>
<br><font size=2 face="sans-serif">Till Kamppeter (Till Kamppeter)</font>
<br>
<br><font size=2 face="sans-serif">Minutes:</font>
<br>
<br><font size=2 face="sans-serif">We worked on a high level sequence diagram
for job submission, where the sequence of steps is as follows:</font>
<br><font size=2 face="sans-serif">1. User invokes application</font>
<br><font size=2 face="sans-serif">2. User selects print options and submits
print request to Print Manager</font>
<br><font size=2 face="sans-serif">3. Print Manager calls AAA to authenticate
user</font>
<br><font size=2 face="sans-serif">4. Print Manager calls Job Ticketing
to parse job ticket (if necessary)</font>
<br><font size=2 face="sans-serif">5. Print Manager validates job attributes
and job ticket content using stored capabilites</font>
<br><font size=2 face="sans-serif">6. Print Manager calls AAA to authorize
capabilites allowed for user</font>
<br><font size=2 face="sans-serif">7. Print Manager determines if data
in job must be transformed, and if so calls Transform to convert job data</font>
<br><font size=2 face="sans-serif">8. Print Manager places print data,
job attributes, job ticket (if any) in Spooler for scheduling</font>
<br><font size=2 face="sans-serif">9. Print Manager sends job to the Driver</font>
<br><font size=2 face="sans-serif">10. Print Manager calls SM to monitor
specific printer for printer and job events</font>
<br><font size=2 face="sans-serif">11. Driver calls Capability to check
printer capabilities against job attributes and job ticket</font>
<br><font size=2 face="sans-serif">12. Driver applies job attributes and
job ticket (if any) to print data</font>
<br><font size=2 face="sans-serif">13. Driver converts print data to printer
ready format</font>
<br><font size=2 face="sans-serif">14. Driver sends printer ready print
data to PCM &nbsp;</font>
<br><font size=2 face="sans-serif">15. PCM forwards printer ready print
data Printer</font>
<br><font size=2 face="sans-serif">16. Once Driver has sent all print data
to PCM, Driver informs Printer Manager that all print data has been sent</font>
<br><font size=2 face="sans-serif">17. SM tells Print Manager that job
has completed</font>
<br><font size=2 face="sans-serif">18. Print Manager removes job from Spooler</font>
<br><font size=2 face="sans-serif">19. Print Manager calls SM to stop monitoring
specific printer</font>
<br><font size=2 face="sans-serif">20. Print Manager calls AAA informing
that job is complete </font>
<br>
<br><font size=2 face="sans-serif">We need a sequence diagram for initialization
that includes:</font>
<br><font size=2 face="sans-serif">1. Print Manager registers to receive
updates on new printers and printer capabilities</font>
<br><font size=2 face="sans-serif">2. Capabilities periodically updates
printer capabilities (target is Print Manager)</font>
<br><font size=2 face="sans-serif">3. etc ... </font>
<br>
--=_alternative 005C454887257097_=--
