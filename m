Return-Path: <cups@accounts.christian-wolf.click>
From: Christian Wolf <cups@accounts.christian-wolf.click>
Date: Mon, 25 Oct 2021 15:25:26 +0200
Message-ID: <34184587.8yKaOjHuOU@cwolf-work>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: [Printing-architecture] Deprecation of all modules except for
	everywhere
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org

Hello,

I stumbled upon a formulation in `man 8 lpadmin` related to the -m switch:

> Note: Models other than "everywhere" are deprecated and will not be
> supported in a future version of CUPS.

I am a bit confused/alert. Are you telling me that in the near future there is 
the plan that *only* IPP everywhere capable printers are supported?

I am not using the newest printers at the moment. Honestly I doubt, that these 
are anywhere close to IPP-everywhere-capable. Some are even connected using a 
plain old dumb USB cable (at least not centronics/IEEE 1284).
Removing the support for PPDs will invalidate my complete print environment in 
one step. 

How is this intended to be covered? Are you really considering forcing the 
users to throw away their existing hardware?

Thanks
Christian


