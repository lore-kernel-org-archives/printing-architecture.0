Message-Id: <CB9CC182-E861-481A-ACF2-E5FCE61AA4C9@mmiworks.net>
From: peter sikking <peter@mmiworks.net>
In-Reply-To: <b801b6f40806161700h67a5d528uc8829687eebe30dd@mail.gmail.com>
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Apple Message framework v924)
Date: Wed, 18 Jun 2008 13:24:48 +0200
References: <20080616182717.3FB5.TORATANI.YASUMASA@canon.co.jp>
	<485642B1.2070600@gmail.com>
	<b801b6f40806161700h67a5d528uc8829687eebe30dd@mail.gmail.com>
Subject: Re: [Printing-architecture] CPD development status
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Alex Wauck <alex.wauck@gmail.com>
Cc: TORATANI Yasumasa <toratani.yasumasa@canon.co.jp>, printing-architecture@lists.linux-foundation.org, Till Kamppeter <till.kamppeter@gmail.com>

Alex wrote:

> Also, I don't know quite how I should implement the two buttons in  
> the lower left hand corner, as I'm not entirely convinced that a  
> button that pops up a menu is a good idea.


it has been done for ages, no problem and a good solution under these
circumstances.

but: we found out that there is only one function that needs to go
into this menu at the moment: delete.

So as I am working on the spec today you will see the button
update to a normal pushbutton.

     --ps

         founder + principal interaction architect
             man + machine interface works

         http://mmiworks.net/blog : on interaction architecture



