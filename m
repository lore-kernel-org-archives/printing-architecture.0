Return-Path: <till.kamppeter@gmail.com>
Message-ID: <44D20A90.1070207@gmail.com>
Date: Thu, 03 Aug 2006 16:39:12 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <3F62CBEE02D6404E98C65934617EB582586CB7@fmsmsx414.amr.corp.intel.com>
In-Reply-To: <3F62CBEE02D6404E98C65934617EB582586CB7@fmsmsx414.amr.corp.intel.com>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Proposed filesystem layout for print
 ppd and driver files
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
Cc: wendyp@jurassic.eng.sun.com, rusty@samba.org, printing-architecture <printing-architecture@freestandards.org>, "McDonald, Ira" <imcdonald@sharplabs.com>, Wendy Phillips <wendy.phillips@sun.com>

Wichmann, Mats D wrote:
>>and the install scripts should by default (asking could be supressed by
>>a command line option) not overwrite files without asking the user.
> 
> 
> If you mean install scripts run by a package postinstall,
> "asking" is not allowed for rpm packages - they *must*
> be able to run non-interactively.  
> 

Therefore the command line option to supress asking. Then we should
require such an option, too, to facilitate packaging.

   Till

