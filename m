Date: Thu, 27 Mar 2008 16:31:12 +0100
From: Klaus Singvogel <kssingvo@suse.de>
Message-ID: <20080327153111.GB17559@suse.de>
References: <47EA99E8.8020007@licquia.org> <47EAC155.4040206@gmail.com>
	<Pine.LNX.4.64.0803271421320.19740@nelson.suse.de>
	<20080327141959.GB5084@suse.de>
	<Pine.LNX.4.64.0803271527300.20593@nelson.suse.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.64.0803271527300.20593@nelson.suse.de>
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
To: Johannes Meixner <jsmeix@suse.de>
Cc: printing-architecture@lists.linux-foundation.org, lsb-discuss@lists.linux-foundation.org

Johannes Meixner wrote:
[...]
> The same question applies for printing:
> 
> Should printing be mandatory for all kind of machines
> in particular for servers which never submit a print job
> (e.g. a plain mail server or a plain web server)?

Printing a job to a server can be done without any user interaction.
So I can see the arguments why a server machine can easily be used
as a print server too (for spooling).

But scanning usually requires interaction, like turning pages on the
scanner, pressing some buttons, watching previews, cutting the image,
etc. This cannot be done without having a user sitting in front of the
machine, and IMHO this contradicts the server declaration. Therefore
I don't see a need to blow a server with SANE packages additional.

I thought, I already gave this hint in my first posting...

Regards,
	Klaus.
-- 
Klaus Singvogel
SUSE LINUX Products GmbH
Maxfeldstr. 5                     E-Mail: Klaus.Singvogel@SuSE.de
90409 Nuernberg                   Phone: +49 (0) 911 740530
Germany                           GnuPG-Key-ID: 1024R/5068792D  1994-06-27

SUSE LINUX Products GmbH, GF: Markus Rex, HRB 16746 (AG Nuernberg)
