Return-Path: <till.kamppeter@gmail.com>
Message-ID: <44E0B340.3010206@gmail.com>
Date: Mon, 14 Aug 2006 19:30:40 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <3F62CBEE02D6404E98C65934617EB58268B93F@fmsmsx414.amr.corp.intel.com>
In-Reply-To: <3F62CBEE02D6404E98C65934617EB58268B93F@fmsmsx414.amr.corp.intel.com>
Content-Type: text/plain; charset=ISO-8859-1
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
To: "Wichmann, Mats D" <mats.d.wichmann@intel.com>
Cc: Wendy Phillips <wendy.phillips@sun.com>, lsb-discuss <lsb-discuss@freestandards.org>, Michael Sweet <mike@easysw.com>, printing-architecture <printing-architecture@freestandards.org>, "Printing-Sc (E-mail)" <printing-sc@freestandards.org>

Or should we say that on 64-bit systems with backward compatibility to a
32-bit system there should simply be a ../lib64/.. patch corresponding
to each ../lib/.. path but we do not specify for what the ../lib64/..
path is.

In general if an absolute ../lib/.. path is given in a PPD a 64-bit
system has to use ../lib64/.. instead if needed.

Or can we do away with ../lib64/.. completely and make the driver
supplier responsible for supplying a 64-bit version of their driver
which works on the LSB-compliant 64-bit distros. 64-bit experts: Does
this work without having ../lib64/.. paths in the printer driver
directory structure?

   Till


Wichmann, Mats D wrote:
> 
> you're getting into tricky space here, is all I can say.
> Some 64-bit distros are 32-bit plus 64-bit runtime support,
> while others are 64-bit plus 32-bit runtime support.
> I'm not sure there's a universal answer for either
> LSB architecture, either - e.g. I think some ppc64's
> are one way, some the other.
> 

