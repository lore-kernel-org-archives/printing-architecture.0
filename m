Message-ID: <47EAC155.4040206@gmail.com>
Date: Wed, 26 Mar 2008 22:34:13 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <47EA99E8.8020007@licquia.org>
In-Reply-To: <47EA99E8.8020007@licquia.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [lsb-discuss] LSB 4.0 and printing
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Jeff Licquia <jeff@licquia.org>
Cc: printing-architecture@lists.linux-foundation.org, lsb-discuss@lists.linux-foundation.org

What can be added without problems is SANE, as this is in every common 
distro and with the strong trend on multi-function devices it is very 
important for hardware vendors to make driver packages. It also allows 
to expand the initiative on distribution-independent driver packages to 
scanners (including stand-alone devices).

Doing uplifts, like CUPS 1.1.x -> 1.2.x is not possible as LSB 4.0 is 
based on the same enterprise distros as 3.2. Why not 3.3 then? We should 
raise the major number for new enterprise distros as base and the minor 
for a new LSB based on the same enterprise distros. WDYT?

Any suggestions on what else to add to the printing requirements?

We will also talk in Austin on the joint session of LSB and OpenPrinting 
about that subject.

    Till

Jeff Licquia wrote:
> The LSB 4.0 project plan 
> (https://www.linux-foundation.org/en/ProjectPlan40) has this to say 
> about printing requirements:
> 
> "Requirements being worked on by Printing Workgroup."
> 
> So I'm checking to see if this is, in fact true.  Does the OpenPrinting 
> workgroup have any requirements they'd like to see in LSB 4.0?
> _______________________________________________
> lsb-discuss mailing list
> lsb-discuss@lists.linux-foundation.org
> https://lists.linux-foundation.org/mailman/listinfo/lsb-discuss
> 

