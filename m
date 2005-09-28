MIME-Version: 1.0
Message-ID: <OF62271649.B03E67AB-ON8725708A.006800B6-8725708A.007176F9@us.ibm.com>
From: Claudia Alimpich <alimpich@us.ibm.com>
Date: Wed, 28 Sep 2005 14:40:19 -0600
Content-Type: multipart/alternative;
	boundary="=_alternative 007176F88725708A_="
Subject: [Printing-architecture] Meeting minutes Wed September 28th
List-Id: Printing architecture under linux
	<printing-architecture.freestandards.org>
List-Unsubscribe: <http://mail.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@freestandards.org?subject=unsubscribe>
List-Archive: <http://base4.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@freestandards.org>
List-Help: <mailto:printing-architecture-request@freestandards.org?subject=help>
List-Subscribe: <http://mail.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@freestandards.org?subject=subscribe>
To: printing-architecture@freestandards.org

This is a multipart message in MIME format.
--=_alternative 007176F88725708A_=
Content-Type: text/plain; charset="US-ASCII"

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

Claudia
--=_alternative 007176F88725708A_=
Content-Type: text/html; charset="US-ASCII"


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
<br><font size=2 face="sans-serif">Claudia</font>
--=_alternative 007176F88725708A_=--
