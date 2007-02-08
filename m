Return-Path: <Norm.Jacobs@Sun.COM>
Message-ID: <45CBB431.50609@Sun.COM>
Date: Thu, 08 Feb 2007 17:37:21 -0600
From: Norm Jacobs <Norm.Jacobs@Sun.COM>
MIME-Version: 1.0
References: <789E617C880666438EDEE30C2A3E8D100105A5DF@mailsrvnt05.enet.sharplabs.com>
In-Reply-To: <789E617C880666438EDEE30C2A3E8D100105A5DF@mailsrvnt05.enet.sharplabs.com>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
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
To: "McDonald, Ira" <imcdonald@sharplabs.com>
Cc: printing-architecture@lists.freestandards.org

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


