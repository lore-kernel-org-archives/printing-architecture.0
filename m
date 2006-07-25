Return-Path: <till.kamppeter@gmail.com>
Message-ID: <44C6174B.6020705@gmail.com>
Date: Tue, 25 Jul 2006 15:06:19 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <3F62CBEE02D6404E98C65934617EB582441EF5@fmsmsx414.amr.corp.intel.com>
In-Reply-To: <3F62CBEE02D6404E98C65934617EB582441EF5@fmsmsx414.amr.corp.intel.com>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [lsb-discuss] resend notes from lastweek
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
Cc: "Printing-Sc (E-mail)" <printing-sc@freestandards.org>, Michael Sweet <mike@easysw.com>, Ian Murdock <imurdock@imurdock.com>, printing-architecture <printing-architecture@freestandards.org>, lsb-discuss <lsb-discuss@freestandards.org>, freestandards-fhs-discuss@lists.sourceforge.net, Wendy Phillips <wendy.phillips@sun.com>

Wichmann, Mats D wrote:
> possibly we also want freestandards-fhs-discuss@lists.sourceforge.net
> (added with this message) as it's the official list of FHS.
> 
> it's possible we could conceive a less scattered scheme for
> printer drivers - I'm envisioning something like reserving
> /opt/printing with LANANA, then providing a way to manage
> that namespace so it can be shared, perhaps through a second
> registry.
> 

This means that if LANANA registers /opt/printing we can agree on only
the pair

/opt/printing/ppd/<supplier>/<manufacturer>/
/opt/printing/drivers/<supplier>/

as the only PPD/driver directories?

   Till

