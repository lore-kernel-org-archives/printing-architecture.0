Message-ID: <4B9146C7.3090908@gmail.com>
Date: Fri, 05 Mar 2010 19:00:39 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <20100305095257.9953.E0F122DE@canon.co.jp>	
	<4B913315.70708@gmail.com> <1267809667.2648.5.camel@worm>
In-Reply-To: <1267809667.2648.5.camel@worm>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Problem with cupsCommand
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
Cc: TORATANI Yasumasa <toratani.yasumasa@canon.co.jp>, printing-architecture@lists.linux-foundation.org, printing-japan@lists.linux-foundation.org

On 03/05/2010 06:21 PM, Tim Waugh wrote:
> On Fri, 2010-03-05 at 17:36 +0100, Till Kamppeter wrote:
>> But on the other side I have tested with a lot of print queues and found
>> out that only for native PostScript printers (no *cupsFilter line) and
>> for printers with explicit *cupsFilter line for a command filter in the
>> PPD support the application/vnd.cups-command input format
>
> That's not what I'm seeing.  e.g. with a CUPS-1.4.2 server with a queue
> for "HP PSC 2210 Foomatic/hpijs", advertising the queue using CUPS
> browsing packets, and a CUPS-1.4.2 client discovering that queue, the
> client says it supports application/vnd.cups-command (even though the
> server does not).

My tests were only on one machine, I did not check how the queues get 
advertized on remote clients. What I expect is that on a remote client 
EXACTLY the same input data types are accepted, as all the filtering 
happens on the server. If this is not the case, then you should report a 
CUPS bug. Best is you now report a new bug telling that the range of 
accepted data types on server and client is different, once supporting 
application/vnd.cups-command and once not supporting it.

    Till
