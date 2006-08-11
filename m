Return-Path: <mike@easysw.com>
Message-ID: <44DBE619.4060706@easysw.com>
Date: Thu, 10 Aug 2006 19:06:17 -0700
From: Michael Sweet <mike@easysw.com>
MIME-Version: 1.0
References: <1B47D24854C7BC4FA8DA28BEBB59B0BA463262@orsmsx419.amr.corp.intel.com>	<44DA12C5.6060801@gmail.com>
	<m3fyg4pmm8.fsf@gromit.moeb>
	<17627.56745.848376.988255@localhost.localdomain>
In-Reply-To: <17627.56745.848376.988255@localhost.localdomain>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [lsb-discuss] Agreement on	directory
 structure for printing
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: Christopher Yeoh <cyeoh@samba.org>
Cc: Andreas Jaeger <aj@suse.de>, "Printing-Sc (E-mail)" <printing-sc@freestandards.org>, printing-architecture <printing-architecture@freestandards.org>, Till Kamppeter <till.kamppeter@gmail.com>, lsb-discuss <lsb-discuss@freestandards.org>, Wendy Phillips <wendy.phillips@sun.com>

Christopher Yeoh wrote:
> At 2006/8/10 18:43+0200  Andreas Jaeger writes:
>> On x86-64, ppc64 and s390x I suggest:
>> {/usr,/usr/local,/opt}/lib/printdriver for 32-bit x86, ppc, s390 libraries
>> {/usr,/usr/local,/opt}/lib64/printdriver for 64-bit x86-64, ppc64,s390x
>> libraries
>>
>> Just don't hardcode lib but add a footnote that on lib64 systems,
>> lib64 is used,
> 
> Yes, that would keep it consistent with the rest of the FHS.

Actually, I'd expect both 32-bit and 64-bit drivers to be supported
on a 64-bit system, and the default path we use in CUPS will include
both the 32-bit and 64-bit paths when CUPS is configured for multiple
architectures...

-- 
______________________________________________________________________
Michael Sweet, Easy Software Products           mike at easysw dot com
Internet Printing and Document Software          http://www.easysw.com

