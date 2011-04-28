Message-ID: <4DB9A6A9.6070100@gmail.com>
Date: Thu, 28 Apr 2011 19:40:57 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <ED4094DE5E8ACD4BBDACA6AD398E608F805D19@EEAEX03.us.epson.net>
In-Reply-To: <ED4094DE5E8ACD4BBDACA6AD398E608F805D19@EEAEX03.us.epson.net>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit
Subject: Re: [Printing-architecture] Continue the OpenPrinting Activities
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>

Sorry for replying late, I had a lot of things to do and during the last 
weeks I was also occupied with work on the printing stack of Ubuntu 
Natty (11.04) which got released today.

On 04/25/2011 09:21 PM, Petrie, Glen wrote:
> We discussed several interesting activities at the 2011 OpenPrinting
> Summit but to date there as not been much follow up. Is it possible for
> us to start an email exchange on the ideas and record on the wiki the
> conclusion, proposed, results or any work-products we might generate?
> Or, are the ideas below just on hold.
>
> I see the following activities.
>
>    1. JTAPI Implementation
>          1. I know this has been discussed many time.

Unfortunately, we got no student applications for this, so, Glen, it 
would be great if your manager gives you some cycles to work on this.

>    2. CPD – Being Common
>    3. CPD – Skins
>          1. OpenPrinting default skin(s)
>    4. CPD – Mobile Implementation
>    5. CPD – The Backend
>          1. What is it?
>          2. An implementation
>

I have talked with Peter about this on the OpenPrinting IRC and also 
with Lars on the phone. They both want to get the full CPD design to get 
turned reality soon (me too if we find funding). I suggest to soon start 
work on a "plan B" following Glen's guidelines and do the full design later.

Peter asks us for making clear what the full design plan and the plan B is.

Note that for a mobile implementation (touch screen instead of mouse) we 
need a separate design.

We also did not get any student applications at OpenPrinting for the 
CPD. There is only a student who applied at OpenICC to work on the color 
management part of the CPD (and printing dialogs in general).

> Can others suggest items I missed?

Another item we started with on the OpenPrinting Summit is 
system-config-printer and GNOME's new printer setup tool. This will be 
continued on the Ubuntu Developer Summit in Budapest, in May 9-13. See

https://blueprints.launchpad.net/ubuntu/+spec/desktop-o-system-config-printer-vs-gnome-3-control-center

There I especially suggest to merge system-config-printer into the new 
tool by providing all the special features of it as D-Bus service and so 
make these features available not only in GNOME's but in all printer 
setup tools.

    Till
