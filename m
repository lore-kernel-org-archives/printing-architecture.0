Return-Path: <cyeoh@ozlabs.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Message-ID: <17628.2369.507496.374994@localhost.localdomain>
Date: Fri, 11 Aug 2006 14:36:17 +1000
From: "Christopher Yeoh" <cyeoh@samba.org>
In-Reply-To: <3F62CBEE02D6404E98C65934617EB58268AD46@fmsmsx414.amr.corp.intel.com>
References: <3F62CBEE02D6404E98C65934617EB58268AD46@fmsmsx414.amr.corp.intel.com>
Subject: Re: [Printing-architecture] [lsb-discuss] Agreement
	ondirectory	structure for printing
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
Cc: "Printing-Sc (E-mail)" <printing-sc@freestandards.org>, Andreas Jaeger <aj@suse.de>, lsb-discuss <lsb-discuss@freestandards.org>, printing-architecture <printing-architecture@freestandards.org>, Wendy Phillips <wendy.phillips@sun.com>

At 2006/8/10 19:33-0700  Wichmann, Mats D writes:
> 
> >At 2006/8/10 18:43+0200  Andreas Jaeger writes:
> >> 
> >> On x86-64, ppc64 and s390x I suggest:
> >> {/usr,/usr/local,/opt}/lib/printdriver for 32-bit x86, ppc, 
> >s390 libraries
> >> {/usr,/usr/local,/opt}/lib64/printdriver for 64-bit x86-64, 
> >ppc64,s390x
> >> libraries
> >> 
> >> Just don't hardcode lib but add a footnote that on lib64 systems,
> >> lib64 is used,
> >
> >Yes, that would keep it consistent with the rest of the FHS.
> 
> So a twist on the old question surfaces... Debian systems don't 
> really use lib64 for 64-bit systems AFAICT; each architecture is
> considered "native" and native libs go in lib, not lib64.

Heh, I think you're sort of right - I was thinking in ppc64 terms and
you in ia64? On Debian ppc64 /lib is 32 bit libs and /lib64 is for 64
bit libs.

Essentially /lib is the most "default" for the architecture, which for
ppc64 is 32 bit and for ia64 and I think amd64 is 64 bit.

> /lib64 and /usr/lib64 tend to be symlinks, but I'm not sure
> similar symlinks are made elsewhere in the hierarchy.  Are 
> we implicitly saying this practice would need to be extended,
> even into the /usr/local space, where FHS already says the 
> distro should stay out?

I think it makes sense for this principal to be extended to /usr/local
and /opt although we don't explictly say this anywhere in the FHS.

Chris
-- 
cyeoh@au.ibm.com
IBM OzLabs Linux Development Group
Canberra, Australia

