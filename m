Message-ID: <CFEE79A465B35C4385389BA5866BEDF00C7E12@mailsrvnt02.enet.sharplabs.com>
From: "McDonald, Ira" <imcdonald@sharplabs.com>
Subject: RE: [Printing-architecture] There will be an Open Printing confer
	ence call Wed Nov 30th
Date: Mon, 28 Nov 2005 16:14:51 -0800
MIME-Version: 1.0
Content-Type: text/plain;
	charset="ISO-8859-1"
List-Id: Printing architecture under linux
	<printing-architecture.freestandards.org>
List-Unsubscribe: <http://mail.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@freestandards.org?subject=unsubscribe>
List-Archive: <http://mail.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@freestandards.org>
List-Help: <mailto:printing-architecture-request@freestandards.org?subject=help>
List-Subscribe: <http://mail.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@freestandards.org?subject=subscribe>
To: 'Norm Jacobs' <Norm.Jacobs@Sun.COM>, Claudia Alimpich <alimpich@us.ibm.com>
Cc: printing-architecture@freestandards.org

Hi,

Well then, I look forward to talking to Claudia this Wednesday (smile).

Cheers,
- Ira

Ira McDonald (Musician / Software Architect)
Blue Roof Music / High North Inc
PO Box 221  Grand Marais, MI  49839
phone: +1-906-494-2434
email: imcdonald@sharplabs.com

> -----Original Message-----
> From: printing-architecture-bounces@freestandards.org
> [mailto:printing-architecture-bounces@freestandards.org]On Behalf Of
> Norm Jacobs
> Sent: Monday, November 28, 2005 6:47 PM
> To: Claudia Alimpich
> Cc: printing-architecture@freestandards.org
> Subject: Re: [Printing-architecture] There will be an Open Printing
> conference call Wed Nov 30th
> 
> 
> 
> I can't attend.  I am in meetings all day Wednesday - Friday
> 
>        -Norm
> 
> Claudia Alimpich wrote:
> 
> >
> > There will be an Open Printing conference call Wed November 30th.
> >
> > Day: Wednesdays
> > Time:  
> > 12:00-1:00 PM US Pacific time
> > 1:00-2:00 PM US Mountain time
> > 3:00-4:00 PM US Eastern time
> > 9:00-10:00 PM Paris time
> > USA Toll Number: 1-484-630-2765
> > PASSCODE: 84974
> >
> > During this meeting, we will work on a few more sequence diagrams, 
> > possibly printer discovery and Status Monitor initialization.
> >
> > Claudia
> >
> > Following is where we let off after the last (Oct 12th) meeting:
> >
> > ------------------------------------------------------------
> > High level sequence diagram of Print Manager 
> initialization, where the 
> > sequence of steps is as follows:
> > 1. User or system invokes Print Manager
> > 2. Print Manager reads configuration profile from local or 
> networked 
> > data store (location of AAA, printers/queues that it is serving, 
> > fonts, media, transform capabilities, printer capabilities and 
> > information, etc)
> > 3. Print Manager authenticates invoking user or system
> > 4. Print Manager invokes Status Monitor
> > 5. Print Manager calls Status Monitor to subscribe for 
> current printer 
> > states, all printer events, and current job status for 
> printers from 
> > the configuration profile
> > 6. Print Manager calls Capabilities to determine current printer 
> > capabilites for each printer
> > 7. Print Manager recovers saved jobs and initializes its queues
> > 8. Print Manager calls Spooler to initiate job scheduling
> > 9. Print Manager calls AAA informing AAA that Print Manager 
> is available
> > 10. The next steps are normal print operation as described 
> in the Job 
> > Submission sequence diagram
> >
> > High level sequence diagram for job submission, where the 
> sequence of 
> > steps is as follows:
> > 1. User invokes application
> > 2. User selects print options and submits print request to 
> Print Manager
> > 3. Print Manager calls AAA to authenticate user
> > 4. Print Manager calls Job Ticketing to parse job ticket 
> (if necessary)
> > 5. Print Manager validates job attributes and job ticket 
> content using 
> > stored capabilites
> > 6. Print Manager calls AAA to authorize capabilites allowed for user
> > 7. Print Manager determines if data in job must be 
> transformed, and if 
> > so calls Transform to convert job data
> > 8. Print Manager places print data, job attributes, job ticket (if 
> > any) in Spooler for scheduling
> > 9. Print Manager sends job to the Driver
> > 10. Print Manager calls Status Monitor to monitor specific 
> printer for 
> > printer and job events
> > 11. Driver calls Capability to check printer capabilities 
> against job 
> > attributes and job ticket
> > 12. Driver applies job attributes and job ticket (if any) 
> to print data
> > 13. Driver converts print data to printer ready format
> > 14. Driver sends printer ready print data to PCM  
> > 15. PCM forwards printer ready print data Printer
> > 16. Once Driver has sent all print data to PCM, Driver 
> informs Printer 
> > Manager that all print data has been sent
> > 17. Status Monitor tells Print Manager that job has completed
> > 18. Print Manager removes job from Spooler
> > 19. Print Manager calls SM to stop monitoring specific printer
> > 20. Print Manager calls AAA informing that job is complete
> >
> > We also need sequence diagrams for the following:
> > 1. Print Manager registers to receive updates on new printers and 
> > printer capabilities (Dynamic discovery of a new printer)
> > 2. Capabilities periodically updates printer capabilities 
> (target is 
> > Print Manager)
> > 3. Status Monitor initialization
> > 4. etc ...
> >
> >-------------------------------------------------------------
> -----------
> >
> >_______________________________________________
> >Printing-architecture mailing list
> >Printing-architecture@freestandards.org
> >http://mail.freestandards.org/mailman/listinfo/printing-architecture
> >  
> >
> 
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@freestandards.org
> http://mail.freestandards.org/mailman/listinfo/printing-architecture
> 
