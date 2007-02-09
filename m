Return-Path: <imcdonald@sharplabs.com>
Message-ID: <789E617C880666438EDEE30C2A3E8D100105A5E3@mailsrvnt05.enet.sharplabs.com>
From: "McDonald, Ira" <imcdonald@sharplabs.com>
Date: Fri, 9 Feb 2007 12:09:31 -0800 
MIME-Version: 1.0
Content-Type: text/plain;
	charset="iso-8859-1"
Subject: Re: [Printing-architecture] Activity Plan for OP Architecture WG
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: 'Norm Jacobs' <Norm.Jacobs@Sun.COM>
Cc: printing-architecture@lists.freestandards.org

Hi Norm,

About thin-thread - the purpose isn't a complete running
Print Subsystem, but rather the architectural validation
and specific exposed interface validation of the set of
Open Printing module APIs.

About licenses - the context was an expressed concern
that Linux Foundation policy might (for example) require
that OP API headers carry a GPL licenses - which would be
a disaster for participation by many companies.

Cheers,
- Ira

Ira McDonald (Musician / Software Architect)
Chair - Linux Foundation Open Printing WG
Blue Roof Music / High North Inc
PO Box 221  Grand Marais, MI  49839
phone: +1-906-494-2434
email: imcdonald@sharplabs.com

-----Original Message-----
From: Norm Jacobs [mailto:Norm.Jacobs@Sun.COM]
Sent: Thursday, February 08, 2007 6:37 PM
To: McDonald, Ira
Cc: printing-architecture@lists.freestandards.org
Subject: Re: [Printing-architecture] Activity Plan for OP Architecture
WG


McDonald, Ira wrote:
> Hi,
>
> Yesterday's Open Printing Architecture telecon was attended
> by Claudia Alimpich, Glen Petrie, Till Kamppeter, and me.
>   
Yeh, sorry I missed it.  For some reason it dropped out of my calendar.
> We discussed useful activities for the Architecture team.
> Glen suggested that we focus on architectural _validation_ 
> of the various OP modules.  We all agreed with this idea.
>
>
> Open Pringing Architecture WG Activity Plan:
>
> (1) Thin-thread (rapid prototype) implementation of entire
>     Open Printing Subsystem, with all existing or planned
>     modules (API, plus at least stub code for logging)
>     - must assume embedded environment (e.g., memory and
>       I/O operations must be in wrapper macros)
>   
So you are proposing a project (or series of projects) to implement 
these APIs in open source either by embedding in existing open source 
projects or otherwise?  If so, how are we looking at finding the 
resources to get the work done?  I don't have a problem with donating 
time or code to implement components, but I need to make it fit in with 
other projects that I need to get done.  That is how the PAPI 
implementation on SourceForge got done.
> (2) Establishing naming and documentation conventions for
>     new OP printing APIs
>     - possibly a small new OP specification
>   
It might be nice to have a guideline document that describes conventions 
to be used in OP specs.
> (3) Standardizing licenses (e.g., MIT like JTAPI) for use
>     in OP design, documentation, APIs, and modules
>     - Glen - what is effect of Linux Foundation merger?
>   
As far as the specifications go, we can impose a license in order for 
the spec to be adopted.  As far as the code goes, we can suggest one or 
more licenses, but it's likely that a project team will make that 
decision on their own when they implement or open up/donate an existing 
implementation.

       -Norm


-- 
No virus found in this outgoing message.
Checked by AVG Free Edition.
Version: 7.5.441 / Virus Database: 268.17.33/678 - Release Date: 2/9/2007
4:06 PM
 

