Message-Id: <0BBB8210-28CA-4F6F-A7DF-F82DEE72A833@mmiworks.net>
From: peter sikking <peter@mmiworks.net>
In-Reply-To: <alpine.LNX.2.00.1101061000050.6846@roma.rasena>
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Apple Message framework v936)
Date: Thu, 6 Jan 2011 19:53:14 +0100
References: <alpine.LNX.2.00.1101061000050.6846@roma.rasena>
Subject: Re: [Printing-architecture] Any news regarding colour management?
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Kai-Uwe Behrmann <ku.b@gmx.de>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>

hey Kai-Uwe,

> Is anyone working on integrating colour management in CPD regarding
>
> * ICC profile selection,
> * profile passing back to applications, and maybe
> * other stuff?


we investigated color management a while ago when we dealt with the
photo printer cluster, then designed a solution:

<http://wiki.openusability.org/wiki/printing/index.php/Photo_printers_parameter_specifications#Color_Management_and_the_CPD 
 >

notice that now that the maximum-complexity solution is done, it is  
being
applied to other printer clusters, with the complexity scaled down where
the printer's product concept demands it.

     --ps

         founder + principal interaction architect
             man + machine interface works

         http://blog.mmiworks.net: on interaction architecture



