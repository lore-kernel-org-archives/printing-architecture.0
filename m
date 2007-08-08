DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed; d=gmail.com; s=beta;
	h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
	b=p2r39zQ17ezKdaUre6BOS/1KA1OoCz+vtALr25uZVoBQtNEOXh7RhnlE8baLLAxns+jP5cjgO2/7radk4ZMbBKf0TmP3ogHtJCvK2LElbivf5VxQWU7P4gLk46J4+1yYp5yvvIDrhm9obCMchqFqDN8NLi88cpTa23NFDP6GKCI=
Message-ID: <e395be80708080939s6f2d1a00o824b4d3964bac92d@mail.gmail.com>
Date: Wed, 8 Aug 2007 11:39:44 -0500
From: "Ira McDonald" <blueroofmusic@gmail.com>
Subject: Re: [Printing-architecture] Multiple Job Ticket Question
In-Reply-To: <2F7D63A21DB2C74EB8EB8C09AF667DB00559CBD3@eitc220.eitc.epson.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <2F7D63A21DB2C74EB8EB8C09AF667DB00559CBD3@eitc220.eitc.epson.com>
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "Petrie, Glen" <glen.petrie@eitc.epson.com>, Ira McDonald <blueroofmusic@gmail.com>
Cc: printing-architecture@lists.freestandards.org

Hi Glen,

Your hierarchy is slightly confused - JTAPI JobTicketInfo object CONTAINS
JTAPI Job object (not the other way around) - and JTAPI has ALWAYS
supported multiple concurrent instances of a JobTicketInfo tree, as far as
I can see.

Cheers,
- Ira


On 8/8/07, Petrie, Glen <glen.petrie@eitc.epson.com> wrote:
>
>
>
> All,
>
> I don't remember how we decided to handle processing of multiple jobs.
> For a desktop, the JTAPI software could have individual instances of the
> software for each job.  Thus, there is no need for the JTAPI to understand
> processing multiple job tickets.   However, for an embedded solution having
> different instances of the code may not be desired - simply a waste of
> memory.
>
> Scenario --- John turns on his pda.  (Not all pda's can multiplex
> applications; they simply run the active application.)   John read several
> email and decides to print three of them.  After he starts the print
> creation operation << one to possibly three open job-tickets >>; John gets
> an alert that he has a meeting in ten minutes.   He needs to print two
> documents before the meeting.  John selects the two documents he need from
> the pda's desktop and initiates a print action.  << Two more job-tickets may
> be open or they may be done serially. >>
>
> -- this would be easy to handle if there are multiple instances of the print
> software; however, if there is only one instances of the print software then
> all of the JTAPI need an additional argument.   The argument is a job
> identifier so that the api's know what job to associate the request to.
>
> example:
>
> I would change opjtOpenLib(context) ---> opjtOpenLib(void);
>
> Add a api call opjtNewJob((void**)foo) or require that
> opjtNewObject((void**)foo, OP_JOB_OBJECT) be called before any other API
> (after openlib).
>
>
> --- the other choice is to allow only one open print job at a time.
>
> What is the suggested solution?
>
>
>
> Rgds,
>  Glen W. Petrie
>  Epson Imaging Technology Center
>  2580 Orchard Parkway, Suite 200
>  San Jose, CA, 95131
>  Voice: 408.576.4131  Fax: 408.474.0511
>
>
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linux-foundation.org/mailman/listinfo/printing-architecture
>
>


-- 
Ira McDonald (Musician / Software Architect)
Chair - Linux Foundation Open Printing WG
Blue Roof Music / High North Inc
PO Box 221  Grand Marais, MI  49839
work: +1-906-494-2434
home: +1-906-494-2697
email: blueroofmusic@gmail.com
