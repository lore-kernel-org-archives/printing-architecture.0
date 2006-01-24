Return-Path: <imcdonald@sharplabs.com>
Message-ID: <CFEE79A465B35C4385389BA5866BEDF00C7E9F@mailsrvnt02.enet.sharplabs.com>
From: "McDonald, Ira" <imcdonald@sharplabs.com>
Subject: RE: [Printing-architecture] There will be a FSG Arch meeting on W
	ed Jan 25th
Date: Tue, 24 Jan 2006 10:37:49 -0800
MIME-Version: 1.0
Content-Type: text/plain;
	charset="ISO-8859-1"
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: 'Claudia Alimpich' <alimpich@us.ibm.com>, printing-architecture@freestandards.org

Hi Claudia,

There is no update to the sequence diagrams.  The
attendees were:  Norm Jacobs, Till Kamppeter, Ira
McDonald, and Ian Murdock (CTO of FSG).

We spent the entire meeting hour discussing:

(a) possible colocation of FSG Open Printing with the 
    PWG meeting at Okidata's site in Mt. Laurel, NJ
    on Wed/Thu 5-6 April;

(b) participation in the OSDL Printing Summit at 
    Lanier's site in Atlanta, GA the following week
    on Mon-Wed 10-12 April;

(c) general background on the relationship between
    FSG Open Printing and the PWG, for the benefit
    of Ian Murdock (Chief Technical Officer of FSG).

Harry Lewis (IBM, chair of PWG) has requested that we
FSG/OP folks decide quickly if we're interested in a
joint plenary and dual track working sessions with PWG
in April, so that our host Okidata can plan accordingly
or (if necessary) the entire P2600/PWG meeting can be 
moved to the IEEE-ISTO facility in Piscataway, NJ.

Cheers,
- Ira


Ira McDonald (Musician / Software Architect)
Blue Roof Music / High North Inc
PO Box 221  Grand Marais, MI  49839
phone: +1-906-494-2434
email: imcdonald@sharplabs.com 

-----Original Message-----
From: printing-architecture-bounces@lists.freestandards.org
[mailto:printing-architecture-bounces@lists.freestandards.org]On Behalf Of
Claudia Alimpich
Sent: Tuesday, January 24, 2006 10:49 AM
To: printing-architecture@freestandards.org
Subject: [Printing-architecture] There will be a FSG Arch meeting on Wed Jan
25th



There will be an Open Printing conference call Wed January 25th. 

Day: Wednesdays 
Time:   
12:00-1:00 PM US Pacific time 
1:00-2:00 PM US Mountain time 
3:00-4:00 PM US Eastern time 
9:00-10:00 PM Paris time 
USA Toll Number: 1-484-630-2765 
PASSCODE: 84974 

I was not able to call into the Jan 11th meeting. I am not sure if the
meeting occurred. If there is an update to the following sequence diagrams,
could someone please post it? 

Claudia 

Following is the current version (from the Dec 14th meeting) of the sequence
diagrams: 
----------------------------------------------------------------------------
----------------- 
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
6. Print Manager invokes Status Monitor 
7. Print Manager calls Status Monitor to subscribe for current printer
states, all printer events, and current job status for printers from the
configuration profile 
8. Print Manager calls Capabilities to determine current printer capabilites
for each printer 
9. Print Manager recovers saved jobs and initializes its queues 
10. Print Manager calls Spooler to initiate job scheduling 
11. Print Manager calls AAA informing AAA that Print Manager is available 
12. The next steps are normal print operation as described in the Job
Submission sequence diagram 

High level sequence diagram for job submission, where the sequence of steps
is as follows: 
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
capabilities (Dynamic discovery of a new printer). Added this as steps 4 and
5 in Print Manager intializatoin sequence diagram)
2. Capabilities periodically updates printer capabilities (target is Print
Manager) 
3. Status Monitor initialization (do this later, will most likely be pretty
basic and boring) 
4. Device Discovery initalization
5. etc ...
