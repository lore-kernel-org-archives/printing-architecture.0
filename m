Message-ID: <47EC2667.6080003@gmail.com>
Date: Thu, 27 Mar 2008 23:57:43 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <47EA99E8.8020007@licquia.org>
	<47EAC155.4040206@gmail.com>	<Pine.LNX.4.64.0803271421320.19740@nelson.suse.de>	<20080327141959.GB5084@suse.de>	<Pine.LNX.4.64.0803271527300.20593@nelson.suse.de>	<20080327153111.GB17559@suse.de>	<Pine.LNX.4.64.0803271634280.23932@nelson.suse.de>	<20080327165506.GA7647@suse.de>
	<e395be80803271042s482e612eu14499ecb064a7c7e@mail.gmail.com>
In-Reply-To: <e395be80803271042s482e612eu14499ecb064a7c7e@mail.gmail.com>
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
To: Ira McDonald <blueroofmusic@gmail.com>
Cc: printing-architecture@lists.linux-foundation.org, Johannes Meixner <jsmeix@suse.de>, lsb-discuss@lists.linux-foundation.org

So then let's add SANE1 to the LSB, but as a desktop requirement, so 
that if we do splitting that it gets desktop-only.

One question: Is libgtk2 currently required on servers?

    Till


Ira McDonald wrote:
> Hi,
> 
> My two cents...
> 
> I agree with Klaus.  Network scanning (remote submission of scan jobs)
> is ALWAYS done from a client desktop machine directly to the networked
> scanner or multifunction device.  Adding SANE packages to a Linux server
> never makes sense in the real world - just one more needless security risk.
> 
> Cheers,
> - Ira
> 

