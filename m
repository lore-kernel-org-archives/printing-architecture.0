Return-Path: <cyeoh@ozlabs.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Message-ID: <17627.56745.848376.988255@localhost.localdomain>
Date: Fri, 11 Aug 2006 11:30:17 +1000
From: "Christopher Yeoh" <cyeoh@samba.org>
In-Reply-To: <m3fyg4pmm8.fsf@gromit.moeb>
References: <1B47D24854C7BC4FA8DA28BEBB59B0BA463262@orsmsx419.amr.corp.intel.com>
	<44DA12C5.6060801@gmail.com> <m3fyg4pmm8.fsf@gromit.moeb>
Subject: Re: [Printing-architecture] [lsb-discuss] Agreement on
	directory	structure for printing
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: Andreas Jaeger <aj@suse.de>
Cc: Wendy Phillips <wendy.phillips@sun.com>, "Printing-Sc (E-mail)" <printing-sc@freestandards.org>, lsb-discuss <lsb-discuss@freestandards.org>, printing-architecture <printing-architecture@freestandards.org>, Till Kamppeter <till.kamppeter@gmail.com>

At 2006/8/10 18:43+0200  Andreas Jaeger writes:
> 
> On x86-64, ppc64 and s390x I suggest:
> {/usr,/usr/local,/opt}/lib/printdriver for 32-bit x86, ppc, s390 libraries
> {/usr,/usr/local,/opt}/lib64/printdriver for 64-bit x86-64, ppc64,s390x
> libraries
> 
> Just don't hardcode lib but add a footnote that on lib64 systems,
> lib64 is used,

Yes, that would keep it consistent with the rest of the FHS.

Chris
-- 
cyeoh@au.ibm.com
IBM OzLabs Linux Development Group
Canberra, Australia

