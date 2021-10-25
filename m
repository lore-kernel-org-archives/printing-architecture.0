Return-Path: <zdohnal@redhat.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1635168755;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=MTpSTiJo+RlDv1EyhbtiDnj6GYKJJ1BeWP5mxBdJa4k=;
 b=VXDFIOWhRrZI4lp56yhdJDVF27tnQERpPZvGYzg6bbBF/3Ddp22q2hLNi1skZvCBwX8SWd
 OoROLUe2My5Hs539esfJZyTHd+H7J5hQfeLt4Q6rMKAHOtJBL3UbA1DJNKYQy15pqDY8j+
 WsmmvaTbXALi/lrrp4tbKRAMcGUuoRk=
Message-ID: <11409d62-dde1-dfa3-0f20-1222d43477b9@redhat.com>
Date: Mon, 25 Oct 2021 15:32:29 +0200
MIME-Version: 1.0
References: <34184587.8yKaOjHuOU@cwolf-work>
From: Zdenek Dohnal <zdohnal@redhat.com>
In-Reply-To: <34184587.8yKaOjHuOU@cwolf-work>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Deprecation of all modules except for
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

Hi,

see https://github.com/OpenPrinting/cups/issues/103 .

On 10/25/21 15:25, Christian Wolf wrote:
> Hello,
>
> I stumbled upon a formulation in `man 8 lpadmin` related to the -m switch:
>
>> Note: Models other than "everywhere" are deprecated and will not be
>> supported in a future version of CUPS.
> I am a bit confused/alert. Are you telling me that in the near future there is
> the plan that *only* IPP everywhere capable printers are supported?
>
> I am not using the newest printers at the moment. Honestly I doubt, that these
> are anywhere close to IPP-everywhere-capable. Some are even connected using a
> plain old dumb USB cable (at least not centronics/IEEE 1284).
> Removing the support for PPDs will invalidate my complete print environment in
> one step.
>
> How is this intended to be covered? Are you really considering forcing the
> users to throw away their existing hardware?
>
> Thanks
> Christian
>
>
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>
-- 
Zdenek Dohnal
Software Engineer
Red Hat Czech - Brno TPB-C

