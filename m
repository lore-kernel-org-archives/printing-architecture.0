Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=kXAiHAHYTJ8p2ktaNcnwbeGi3qGywLQHzjwN+npLv34=;
	b=JAaTempQq0basZESzzR1Mtj1d1zIWhDj/7Wl4nHNj2RCG55vy87OxKyaI1OYoZ+5Et
	bDJvaaOQywKzxOvlAmPztqY+5kH2hA0TrGbJ82UIG1dWWbmZXbsiNhupKcQbaumhoDyo
	VKsd8gs871XdNxR/cmoBMgkzuzZIoHMiqSTZk=
Message-ID: <4F0EBF78.1020805@gmail.com>
Date: Thu, 12 Jan 2012 12:09:44 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <4F0E23F2.5010608@gmail.com> <1326365475.8483.3.camel@worm.elk>
In-Reply-To: <1326365475.8483.3.camel@worm.elk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Removal of features in CUPS
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Tim Waugh <twaugh@redhat.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>

On 01/12/2012 11:51 AM, Tim Waugh wrote:
> I think that CUPS Browsing is also being removed in 1.6, leaving Avahi
> as the sanest of the remaining discovery methods.
>
> The current state of the Avahi support patches is that service
> announcement is working in the scheduler, and service discovery is
> working in the dnssd backend -- i.e. by manual user intervention.
>
> What is currently missing is automatic service discovery in the
> scheduler, so that shared queues can be discovered by CUPS itself as
> used to happen with CUPS Browsing.

Does libdnssd-based upstream CUPS do automatic service discovery by the 
scheduler, meaning that your Avahi patch is not yet complete in this 
sense or is automatic service discovery by the scheduler even not 
implemented at all upstream, meaning that by removing IPP browsing one 
of the most important features of CUPS gets lost?

    Till
