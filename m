Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-type:content-transfer-encoding;
	bh=F/rW2/DA3Ihez7slKMdYgAA9MTHVKgWtZyjeKA8+iig=;
	b=EK/OZruaOF934jyctsU8s0a0rC+eTerrcw+GKYa8XI1wAQyFRwaooYZMTRCWWROiTf
	AMlFBG2DeJfGlAho1fkJePbQULUPcRHRQPYrx5Yv51nFV4N/sHQJo0itZ+osBo03wrif
	M9JYioxoOVheC6s+1GCkSSsPnMSzb3rXGcf+nqiS5sdcvJoq3j3cNWKBFc1GUGSxaLF4
	mSZ4IIW2neS7bM1EOL/fezZJuDv7eiFDfiJ6fHJwBHDm5KzClmxnAid2iNzRzBRPEIqE
	WW/VaAkHVUk7CN9wypM6rD0srw5fUR2gTlUxAAA/++LSk5RaOxN1CFEFDXUngxtsd0gm
	XKAQ==
References: <20151209102736.GC16751@var.bordeaux.inria.fr>
	<5669E0B4.9040009@gmail.com> <20151210204505.GJ2905@var.home>
	<5669E84B.2090400@gmail.com> <20151210213147.GK2905@var.home>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <566A16AA.7080602@gmail.com>
Date: Thu, 10 Dec 2015 22:19:54 -0200
MIME-Version: 1.0
In-Reply-To: <20151210213147.GK2905@var.home>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Contributing braille embosser support
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Samuel Thibault <samuel.thibault@ens-lyon.org>, printing-architecture@lists.linux-foundation.org

On 12/10/2015 07:31 PM, Samuel Thibault wrote:
> Till Kamppeter, on Thu 10 Dec 2015 19:02:03 -0200, wrote:
>> OK, thanks. So please go ahead with the fixes.
>
> Here is an updated tarball.
>

Thank you very much. I will look into it.

> BTW, which licence would it be better to release this code under?  I'm
> fine with most free software licences.
>

I think MIT would be best.

>> And I am also grateful if you do the maintenance of your code when it is in
>> cups-filters as I do not know much about Braille embossers and also do not
>> have such a device available to me.
>
> Sure!  That's what I planned.  I'll probably try to contact other
> braille embossers manufacturers to get protocol or even devices. Index
> is very common in Europe, so it is good enough for a start.
>

Great.

>> How are Braille embossers connected and how do they appear for the computer?
>> Do they work with the standard usb/parallel/socket/ipp backends of CUPS?
>
> Yes, they really look like usual printers.  Just configuring them as
> generic text printers would work for instance.  In the case of Index
> embossers, they have serial, USB (line-printer interface), and network
> (HP JetDirect) support.
>

OK, then no new backends are needed.

    Till

