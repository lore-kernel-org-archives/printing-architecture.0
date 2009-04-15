Message-ID: <49E5F22E.7030404@gmail.com>
Date: Wed, 15 Apr 2009 16:41:50 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <46089FAF7804194C8AD6458E272B07182174584144@GVW0676EXC.americas.hpqcorp.net>
	<49E51AB7.2010902@gmail.com>
	<alpine.LNX.2.00.0904151216120.10560@nelson.suse.de>
	<49E5D2AB.7000000@redhat.com>
In-Reply-To: <49E5D2AB.7000000@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Issue list from HP
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Tim Waugh <twaugh@redhat.com>
Cc: "Suffield, David" <david.suffield@hp.com>, "'printing-summit@lists.linux-foundation.org'" <printing-summit@lists.linux-foundation.org>, Johannes Meixner <jsmeix@suse.de>, Martin Pitt <martin.pitt@ubuntu.com>, "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Tim Waugh wrote:
> Johannes Meixner wrote:
>> How is this implemented?
>> Via hardcoded stuff or is there a reliable working generic way?
> 
> Via hardcoded stuff that Till wrote, which depends on all sorts of HPLIP 
> internals, and which I will probably remove soon.
> 
> Tim.
> */
> 

It calls "hp-info -i -dURI". If the output contains "plugin = 1" the 
plugin is needed. system-config-printer also checks for "plugin = 2" to 
offer the plugin if it has optional enhancements. It uses the 
"plugin-reason" to tell the user which enhancements the plugin supplies. 
And it neverv creates a queue for a printer requiring the plugin if the 
plugin is rejected by the user. So non-working queues are generally not 
set up.

    Till
