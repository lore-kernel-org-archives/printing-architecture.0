From: Lars Uebernickel <larsuebernickel@gmx.de>
In-Reply-To: <47E2B458.6090702@gmail.com>
References: <2F7D63A21DB2C74EB8EB8C09AF667DB0152D33D9@eitc220.eitc.epson.com>
	<47E2B458.6090702@gmail.com>
Content-Type: text/plain; charset="utf-8"
Date: Fri, 21 Mar 2008 00:00:36 +0100
Message-Id: <1206054036.6405.15.camel@lars-laptop>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [Printing-architecture] Google Summer of Code 2008: JTAPI
	Library Project
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: "Petrie, Glen" <glen.petrie@eitc.epson.com>, "'printing-architecture@lists.freestandards.org'" <printing-architecture@lists.freestandards.org>

On Thu, 2008-03-20 at 20:00 +0100, Till Kamppeter wrote:
> Great, I think we can go this way. Feel free to add this information to 
> the ideas page:
> 
> https://www.linux-foundation.org/en/Google_Summer_of_Code
> 
> This way we can start having job ticket functionality in 
> Linux/Unix/Embedded printing environments and make the application and 
> printing system developers start supporting job tickets with our 
> standard API. If we have enough consumers of the JTAPI once, we will 
> more easily be able to find the man power for developing a JDF backand 
> and so all apps will be able to send jobs to professional printing services.
> 
> Lars, would you like to do this task?

Yes, I would definitely like to do it! Thank you, Glen, for the detailed
description - the way you outlined the project sounds very reasonable to
me for a three months time frame.

  Lars


> 
> Petrie, Glen wrote:
> > Till,
> > 
> >  
> > 
> > Any feedback – good or bad on the proposal below.
> > 
> >  
> > 
> > glen
> > 
> >  
> > 
> > ------------------------------------------------------------------------
> > 
> > *From:* Petrie, Glen
> > *Sent:* Wednesday, March 19, 2008 12:35 PM
> > *To:* Petrie, Glen; Ira McDonald; Norm Jacobs; Claudia Alimpich; Amanda 
> > McPherson; Markus Rex; Jim Zemlin; Dan Kohn; Jeff Licquia; Wichmann, 
> > Mats D; Susanne Oberhauser; Theodore Ts'o; Till Kamppeter
> > *Subject:* Google Summer of Code 2008: JTAPI Library Project
> > 
> >  
> > 
> > Hello All,
> > 
> >  
> > 
> > I am going to the mentor for the JTAPI implementation under the Google 
> > Summer of Code 2008.  With only three months for the project, the 
> > project needs to be scoped to fit within the time frame.   Therefore, I 
> > am sending the following proposal to the group for comments and general 
> > approval for the group.
> > 
> >  
> > 
> > ***Project:
> > 
> > JTAPI – Library
> > 
> >  
> > 
> > ***Objective:
> > 
> > Using the header files created by the Open-Printing Job-Ticket Working 
> > Group develop a platform independent C library for the reading-of, 
> > modification-of and storage-of a print job ticket for the Printer 
> > Working Group’s (PWG’s) Micro-Job-Ticket (MJT).
> > 
> >  
> > 
> > ***Approach:
> > 
> > 1.   Review OP/JTWG Job-Ticket Application Programming Interface (JTAPI) 
> > header documents
> > 
> > 2.   Review PWG/MJT specification.
> > 
> > 3.   Create Test MJT’s
> > 
> > a.   Manually create a minimum of 3 representative MJTs (text files) to 
> > be used for testing and evaluation
> > 
> > 4.   Define the command-line Test Application to exercise the JTAPIs; 
> > include an initial set of commands
> > 
> > 5.   Create Thin-Thread implementation of the individual JTAPIs and the 
> > Test Application.
> > 
> > a.   This will be the first demonstrational implementation and the start 
> > code for detailed development.
> > 
> > b.   This will include minimum documentation on how to use the Test 
> > Application
> > 
> > 6.   Enhance individual JTAPIs and the Test Application to provide full 
> > functionality.
> > 
> > a.   Provided update documentation as required.
> > 
> > 7.   Project Demonstration.
> > 
> >  
> > 
> > ***Code License:
> > 
> > MIT
> > 
> >  
> > 
> > ***Coding Language:
> > 
> > Platform Independent C
> > 
> > (No platform or vendor-specific extensions)
> > 
> >  
> > 
> > ***Coding Document:
> > 
> >             In-line commenting must be sufficient to understand the flow 
> > and any section requiring extended understanding.
> > 
> >  
> > 
> > ***Operating System:
> > 
> > Student’s choice – Linux or Windows (non-gui for either)
> > 
> >  
> > 
> > ***Interface:
> > 
> > Command Line – GUI not required unless very simple (due to project time 
> > constraint)
> > 
> >  
> > 
> > ***Document:
> > 
> >             Minimum:
> > 
> > 1.   How to build the JTAPI library.
> > 
> > 2.   How to build the Test Application
> > 
> > 3.   The Test Application command-line instructions
> > 
> > 4.   Three examples of using the Test Application and exercising the JTAPIs
> > 
> >  
> > 
> >  
> > 
> > ==============
> > 
> > 
> >       *JTAPI implementation*
> > 
> > Job tickets are extended descriptions for print jobs. They tell which 
> > documents should be printed, on which type of paper, which resolution 
> > and quality, whether there should be sheets inserted between the 
> > documents, ..., and even information like delivery address, payment, ... 
> > A job ticket accompanies a print job from its submission to its 
> > delivery. Job tickets come from the professional printing world. In 
> > former times they were a paper form with instructions what everyone 
> > involved in the printing process has to do. Nowadays they are 
> > standardized files <http://en.wikipedia.org/wiki/Job_Definition_Format> 
> > which are used by print servers, printers, and production printing 
> > machines. These job tickets do not only make sense for large-scale 
> > production printing, they are also useful for mobile devices, home 
> > desktops, workgroup printers, ... Also access to print services on the 
> > internet directly from the desktop applications simply via a print queue 
> > would be possible.
> > 
> > To allow desktop applications, printing systems, and printer drivers to 
> > easily create, edit, and read job tickets without needing to deal with 
> > the actual job ticket format, the job ticket application programming 
> > interface (JTAPI 
> > <https://www.linux-foundation.org/en/OpenPrinting/JTAPI>) was developed 
> > by OpenPrinting. A complete specification 
> > <ftp://ftp.pwg.org/pub/pwg/fsg/jobticket/JTAPI_Spec/fsg-openprinting-job-ticket-api-v0100-20050315.pdf> 
> > is published.
> > 
> > The next step to do is the actual implementation of the JTAPI library 
> > and its integration in applications, the CUPS printing system, drivers, 
> > filters, ... This will be the task of the student in this Google Summer 
> > of Code project.
> > 
> > Mentor: Glen Petrie, Epson
> > 
> > Desired knowledge: C Programming
> > 
> >  
> > 

