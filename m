Message-ID: <47F263C3.4030500@gmx.de>
Date: Tue, 01 Apr 2008 18:33:07 +0200
From: Lars Uebernickel <larsuebernickel@gmx.de>
MIME-Version: 1.0
References: <2F7D63A21DB2C74EB8EB8C09AF667DB0152D355E@eitc220.eitc.epson.com>
In-Reply-To: <2F7D63A21DB2C74EB8EB8C09AF667DB0152D355E@eitc220.eitc.epson.com>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Google Summer of Code 2008:
 JTAPI	Library Project
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "Petrie, Glen" <glen.petrie@eitc.epson.com>, printing-architecture@lists.linux-foundation.org

Petrie, Glen wrote:
> Lars,
> 
>  
> 
> During your design phase of the JTAPI I would like you to consider what the
> original intent of the JTAPI is and, what I believe it another use of the
> JTAPI.    The original intent is two fold (if memory service correctly).
> The first, and I believe the primary intent, was to have library (tools)
> that could create different Job-Ticket formats (JDF, MJT, proprietary-JT)
> from a common set of API's, objects and attributes without the
> user/developer having to know anything about the final job-ticket format.
> The second intent was that by the addition of a "front-end" module one
> job-ticket format could be inputted and parsed into the JTAPI common
> objects/attributes; then using the JTAPIs, a different job-ticket format
> could be generated ---- that is a job-ticket translation service. 

I agree, these were the two uses I had in mind.

> I see the third use of the JTAPI as either a common interface or front-end
> translation service to an internal job-ticket object (a C data struct in
> this case since JTAPI is to be coded in C) representation.  That is, a
> developer uses JTAPI as an input portal to an internal object definition and
> may never create an actual JDF, MJT or proprietary-JT formatted job-ticket.
> In this case the job-ticket info (struct) is directly passed on to the next
> print processing module.   I actually see this as the big potential use of
> JTAPI and its associated objects/attributes definitions.

This could speed up the print process quite a bit - the job ticket need 
only be parsed and interpreted once and could be used throughout the 
print processing chain. But this would only work for modules in the same 
process, right? Otherwise, the data has to be serialized in some way to 
pipe it to the next processing module.

> Thus, during your design and development phase of the internal component of
> the JTAPI, please pay extra attention to how you design and document the
> internal job-ticket objects.

I will. Thanks for your ideas!

   Lars
