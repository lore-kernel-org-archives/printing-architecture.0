Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=Ao98k3bwUlzkz5zGk+YfUosfp0deGgfb8qQ40Baqv/c=;
	b=B1AXa5yP1QekHl/j2AsgARNxVFbct9kyFuDCaJ7BX9ZRhbJOKMKM3qyf0OsteG3Plv
	+x22qgM7wbl9+AGUewdbwP5U/4/Jr5uiJEmx9kf+SYiEK96Bvxhh5yJ4enxd6yklW+K+
	5sYP4wUlZROI2qJs3kk+dmdow7z/HdvCJnVTE8aT09faSnKMuvZ/TgKSuD8hGhAjMWm5
	oUPMF0KMIIDTrP3h73VXwLjyr23NY0+LLaX+4stryKGuQ38d8ZjJ+Zes0NhyAJVVV14p
	s+vWBuxbmKQDs9ABNHk9hpP4Ko/gDycl0Tgyg407GNAroQH9KUYHU+RE/3dIUzfrgxea
	PFdA==
References: <4dab880a-b033-0b58-7114-cb7af3e2a0a9@gmail.com>
	<ea890c88-84a1-02a5-72f4-0d0f86a6df62@redhat.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <8803e269-b4e8-b462-00da-9306f347e514@gmail.com>
Date: Thu, 14 Feb 2019 15:52:18 +0100
MIME-Version: 1.0
In-Reply-To: <ea890c88-84a1-02a5-72f4-0d0f86a6df62@redhat.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] OpenPrinting News
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Zdenek Dohnal <zdohnal@redhat.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>

On 14/02/2019 14:21, Zdenek Dohnal wrote:
> Michal Sekletar contacted me last week about Avahi situation. IMHO he
> talked with Lennart (since he is his co-worker from the same team) about
> the situation and came up with solution they will try to implement Avahi
> features (because Avahi has currently uncooperative upstream and Avahi
> API is not so good for use in their opinion) into systemd itself,
> probably in systemd-resolved.
> 
> But the initiative does not have any specific dates when it will be
> done, only 'in the future', so I cannot declare any specific deadlines
> when it will be done. Because of it I'm for Till's suggestion, if
> immediate solution is needed.
> 
> About future work on systemd, I only told Michal what CUPS would need
> from systemd, if Avahi will be gone (I used what Mike said in
> https://github.com/apple/cups/issues/5452):
> 
> - register service instance and TEXT/LOC records
> 
> - browse for service
> 
> - resolving .local hostnames
> 
> If I missed something, please tell me and send me an email.
> 
> Just sharing the latest gossip from systemd group.
> 

Important is also that a service on localhost (for example ippusbxd or 
generally a Printer Application) can be registered and advertised 
locally. See

https://github.com/OpenPrinting/ippusbxd#1-expose-the-printer-on-localhost

    Till
