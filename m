Message-ID: <49CC1430.2080603@gmail.com>
Date: Fri, 27 Mar 2009 00:48:00 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <49CB60C5.8010608@bredband.net> <49CBD444.704@gmail.com>
	<49CBE96B.8000202@bredband.net>
In-Reply-To: <49CBE96B.8000202@bredband.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] GSOC'09: Common Printing Dialog
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Per Hermansson <hermansson.per@bredband.net>
Cc: printing-architecture@lists.linux-foundation.org

Per Hermansson wrote:
> I have seen the interface specification that was linked from the idea 
> page. So the final version will be released soon, this sounds like 
> excellent news.

OK, if you have questions about that, ask Peter Sikking (peter at 
mmiworks dot net), leader of the development of this UI. You can also 
call into the OpenPrinting Summit 2009 at Thursday, April 9 in the 
afternoon PST and participate in the discussion about the newest state 
of the dialog (or attend personally if you are near San Francisco then).

https://www.linuxfoundation.org/en/OpenPrinting/OpenPrinting_Summit_San_Francisco_2009

> I like both tasks but the first one will probably be easier to implement 
> since modifying patching other applications is difficult estimate how 
> much time it takes. Although it would be and probably not to difficult 
> to try as Alex said with an application like Evince.
>

OK.

> I'm not sure if either GTK or Qt implementation needs the most work? If 
> Alex is focusing on the KDE dialog it would seem logical to start with 
> the GTK implementation. But working with Qt would be fun too, I'm a 
> quick learner and will probably have some extra time until the summer 
> starts to get into deep with Qt.
> I've downloaded and tested the cpdapi code from the Bazar branch and it 
> looked very nice but I guess both toolkit versions have to be modified 
> to follow the OpenUsability design?
>

Yes, they are both incomplete and your task is to complete them.

> Also as I understand it both tasks (implementing the OpenUsablility 
> design and porting desktop applications) can be done independently of 
> each other?
> 

Yes, my original idea was to have one student finishing the two dialogs 
and another patching the applications (see ideas list), but it is no 
problem for example if one student does the GTK dialog and patches the 
GTK apps and the second does the KDE dialog and patches the KDE apps. 
And if we get only applications for the dialog stuff and nothing for 
JTAPI, drivers and whatever we offered, we can even put a third student 
onto the dialog. We also can move around work tasks during the GSoC 
(this we did last year as it turned out that Lars got the CPDAPI quickly 
together, so he did also the GTK version of the dialog which the other 
student on the CPD was supposed to do, but the the Qt dialog turned out 
to be more work than expected).

    Till
