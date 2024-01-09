Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F277B37142
	for <printing-architecture@lists.linux.dev>; Tue,  9 Jan 2024 11:29:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="hHpsgMKR"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1704799779;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=sqPv7q9YbqrShJVFYR8u2FTht5PnNOpyJ0jdhwM20hs=;
	b=hHpsgMKRboSw0U71LomKbgOQk6eRZG5Nz0B1V9hG710GeynykgD7iEwkMUvuAU/zXiWVl6
	xF/tOB7G9N3gJ1wSNRcAmFZRwMJAEgcphGeuExYPIMZcLLJokpt43843O/d9jWLOUH4vqM
	xOVa8m4fuGfZOVPm2QOMKKt12VM5BXQ=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-459-xR3qEx9fOVOpwZ2IrE5BuA-1; Tue, 09 Jan 2024 06:29:37 -0500
X-MC-Unique: xR3qEx9fOVOpwZ2IrE5BuA-1
Received: by mail-ej1-f69.google.com with SMTP id a640c23a62f3a-a2b068401b4so131624766b.1
        for <printing-architecture@lists.linux.dev>; Tue, 09 Jan 2024 03:29:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704799776; x=1705404576;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sqPv7q9YbqrShJVFYR8u2FTht5PnNOpyJ0jdhwM20hs=;
        b=O2l0z/1OOXlUBTtuguVgb/haZosxd8JZQNY6p62NKaTMKFz0Q4MR25l+pmsfARm+Zq
         2O8GhtPFa8aUpedqHFkzpL39v7yW2wCNeqIVHjJq7CqAeXOPeHTNL9KxakqGgEuCkTFc
         Q1mIv0BW7yBZHH9TZB92OXIUd1v2fkws3UDczh7MuOEvWLiZGtPiTGDr3ViqyMSy7dZj
         EHOTqt6pQYCAxBnZ2wyJN5cR1/6sMVZu7Y3o3rmVnX6xHH6Q+RhnicbpB53QO4WflZmQ
         qdGevWk2r46bUSggeHJBuGYk4IqLpP0xs427quuk/spTWNpnurMsjv9SCzyahuEsmmgL
         WkEQ==
X-Gm-Message-State: AOJu0Yy/QA79W7WsXSHiTUXIRSQ8rZiPZGhk418Nf9PL9lcOP/IWxkuY
	DNMyIIytx3opYW6mvlrIAVcFoiNN2m1a3vvm3zOHxoj9amKbSDSyBxzkhi+6ZNbK8UBgscPJeKf
	9Ed0QyvdNmbe+PNPTmaV4fUhN0UIE4mn1hXE+OmRgirq4aIyILItCkbX6/IOtgPcAZMxAtT0F3b
	3tEjVwvMUUH0QmwipNYWx++S1JNcM=
X-Received: by 2002:a17:907:930d:b0:a27:d3ee:2ef5 with SMTP id bu13-20020a170907930d00b00a27d3ee2ef5mr672666ejc.24.1704799776315;
        Tue, 09 Jan 2024 03:29:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF5dgEKkrOxuobE7TkaC92bSqKRW677sM/3A3WZ+HGKQNHS/3VspZtGm1kM0VVQARWij0lSBQ==
X-Received: by 2002:a17:907:930d:b0:a27:d3ee:2ef5 with SMTP id bu13-20020a170907930d00b00a27d3ee2ef5mr672649ejc.24.1704799775797;
        Tue, 09 Jan 2024 03:29:35 -0800 (PST)
Received: from ?IPV6:2a02:8308:a089:e100:199e:9192:902f:470f? ([2a02:8308:a089:e100:199e:9192:902f:470f])
        by smtp.gmail.com with ESMTPSA id n2-20020a170906840200b00a26ea2179e8sm927857ejx.41.2024.01.09.03.29.35
        for <printing-architecture@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Jan 2024 03:29:35 -0800 (PST)
Message-ID: <b9920642-9b23-44c3-be0f-20394585e0d4@redhat.com>
Date: Tue, 9 Jan 2024 12:29:34 +0100
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [Printing-architecture] RFC: Pantum M7300FDW and similar
To: printing-architecture@lists.linux.dev
References: <c4acbedb-c17d-4440-9945-c1b04abcd052@apevzner.com>
 <AE4A3F66-C7EE-470F-B326-A4B357A55F2B@msweet.org>
From: Zdenek Dohnal <zdohnal@redhat.com>
In-Reply-To: <AE4A3F66-C7EE-470F-B326-A4B357A55F2B@msweet.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi all,

I'm sorry for reviving this thread now - I haven't answered in the past 
because I agree here with Mike - if the scope/change/workaround opens 
the program for more CVEs, and this part of code was subject for CVEs in 
the past, I would be extra careful, didn't add a such workaround and 
pursue the fix at manufacturer, if I have the printer.

I just wanted to mention that since we started to discuss AirPrint as 
well, our office Canon printers experience probably the similar issue - 
a different type of attribute value is encoded under attribute keyword, 
which expected a different type (I don't recall the exact attribute 
name, but the attribute expected values as 1set of keyword, but values 
were in collection...), which breaks driverless support for them. I 
don't have full access to them - our IT does. I have tried to report 
this to them, but they prefer using Uniflow solution from Canon (so IPP 
port gets disabled) and our previous communication with Canon support 
was difficult, so I was not able ensure the firmware fix for them. And 
IIRC IPP Get-Printer-Attribute response was parsed before, so there 
might be a change in firmware, or the model was affected by the CVE fix.

My key point is there seem to be several models from different 
manufacturers, which were affected by a CVE fix in this part of code, 
which are certified as AirPrint in shops, but cannot send a valid IPP 
response in the end - manufacturers probably do the certification only 
once when the product is released and then do not do re-evaluation. So 
we will have to report such printers to manufacturers where is possible 
to get them fixed.

Regarding workaround in goipp and ipp-usb, I will revert the workaround 
for now.


Zdenek

On 12/10/23 16:11, Michael Sweet via Printing-architecture wrote:
> Alexander,
>
>> On Dec 10, 2023, at 2:08 AM, Alexander Pevzner <pzz@apevzner.com> wrote:
>> ...
>> Michael's position, as I hear it, is following:
>> - device violates IPP specs, so problems is on device, and device must be fixed
>> - IPP parser is a quite complex stuff. Touching it is dangerous and may open a way to security vulnerabilities
> This code has been the focus of *six* CVEs since the move to Git in 2015 - not quite one CVE a year, but enough to be concerning.  More specifically, commit 5754bccee (https://github.com/apple/cups/issues/5630) addressed the code that allowed "alternate" encodings of member attributes that was causing interoperability issues.
>
>> ...
>> My position is following:
>> 1. I agree, that following specification is very important, and, where possible, trying to do so.
> IPP started in the IETF and the PWG has continued the IETF's goals for conformance terminology: any requirements are there to ensure interoperability and proper functionality.  Postel's Law doesn't apply when it breaks interoperability and potentially has bad side effects.  See the following for some applicable reading/links:
>
>      https://en.wikipedia.org/wiki/Robustness_principle
>
>> 2. But being practical engineers, we know that sometimes we have to carefully violate rules. cups/ipp.c already has an exception for Brother devices that use some IPP tags incorrectly.
> This was a case where allowing a non-zero length value (typically the keyword string for the given out-of-band tag) did not cause interoperability issues with other printers and also did not pose any security issues.
>
> Looking at the history of this change (and had to dig into the original SVN repository for this - r7847 on August 19, 2008), back in 2007/2008 when Brother first started making IPP-capable printers (and this was before AirPrint or IPP Everywhere), their implementation had a bug that returned the string "no-value" with the 'no-value' out-of-band syntax (which should have a value length of 0).  Brother was notified and current printers no longer do this...
>
>> sane-airscan, ipp-usb contains many quirks that make incorrectly behaving devices full-functional. Without these quirks, many devices will not work.
>> 3. Even if Pantum will fix their firmware, 50% of users of already purchased devices will not upgrade.
> They already won't be able to print from iOS or macOS, and probably not from Windows (IPP class driver) or Android (Mopria print provider) because the Get-Printer-Attributes response cannot be parsed.  And if they actually ask someone about the problem they can be pointed to Pantum to get a firmware update.
>
> Firmware update capability is required for both AirPrint and Mopria, and at least the AirPrint folks require the ability to upgrade without special software and highly recommend automatic firmware updates over the Internet whenever possible...  Pantum is an AirPrint licensee...
>
>> 4. I understand the complexity of IPP decoder, because I'm the author of alternative, independent implementation in Go (https://github.com/OpenPrinting/goipp). I believe my implementation is similar to CUPS's on its level of correctness and strictness. And has near 100% test coverage, BTW.
> As does the CUPS implementation, which Google and others have put through the wringer with long-term fuzzing projects...
>
>> 5. My patch is simple and observable. It is only few lines of code (see https://github.com/OpenPrinting/cups/pull/826 for details). It doesn't change any assumptions of the upper-level code about the parsed IPP message. It only slightly relaxes decoding rules. Honestly, I don't see how it can expose any vulnerability.
> It was causing problems before I fixed it, mainly because the returned values made no sense - basically
>
>> 6. My patch is not "just a quick hack". I understand that this is very important part of the CUPS code, so I've spent more that 2 weeks, thinking about it correctness and modelling various corner cases, using my goipp library.
> I don't think I ever called it a quick hack.  No matter how well-tested/reasoned, you are creating an edge-case for allowing invalid collection values as long as a single memberName value is seen in an IPP message.
>
> You need to notify PANTUM that they have an issue.  Regardless of whether you believe that a user will update the firmware, they don't even have an opportunity unless you report the issue to the manufacturer.  And in fact, you don't even know whether PANTUM has already fixed the issue!?!
>
>> 7. We are doing our work for people, for our end users. And actual tradeoff here is between user's needs to have reliable and secure software (technical "purism" helps as here) and user's needs to have their device supported out of box (here "purism" sometimes works against us).
> So we should provide them with intentionally defective software so that they don't need to press a button on their printer to update the firmware?  How far down the slippery slope of "we'll just add a workaround for this printer" do you want to go?
>
> I can speak from 30 years of experience doing printing software - that is not a path you want to go down.  The number of variables in printing configurations is *immense*, and you do not want to bring back vendor printer drivers - that is the end game if you allow for too many "workarounds".
>
>> 8. If we will eventually rich the Pantum representative, good discussion with weighted arguments can help to convince them to implement some improvements at their side, while aborted discussion will not help a lot.
> "Your printers don't work with iOS" should be enough.  They probably won't care about Linux.
>
>> If my patch looks "too wide", I can do it more precious, by affecting only behavior of parsing IPP responses received from devices, not received requests. At this case it looks even safer.
> Let's say we accept invalid collection attribute values.  We get the media-col-database and media-col-ready values from the printer, and then send it a media-col collection to specify printing from tray 2 on cardstock: will the printer be able to understand a correctly encoded collection value for media-col if it doesn't return valid collection values for media-col-database/ready?  (probably not)
>
> Then you get a support request from a user saying, "I can't print from tray 2."
>
> Did you fix the problem for the user?  Is this better?
>
>> I'd prefer to make it even more precious, affection only communication with Pantum devices. But in that places of the CUPS code where responses are parsed there is no information what kind devices we are speaking with.
> And I would be even more opposed to such a change.  At that point you have created a printer driver...
>
>> ...
>> P.S. I remember a while ago we were in the similar discussion with Trent Lloyd, author of Avahi. He didn't want to include localhost support because it violates (according to him) mDNS RFC, and it took about 3 years to convince him to make an exception (according to Till, it was me who has reached out to him, https://openprinting.github.io/OpenPrinting-News-February-2020/#avahi-local-service-support)
> Not at all the same issue, and honestly he was wrong that you can't support multicast over the loopback interface (there is just nobody else to talk to, so multicast becomes broadcast to the local host...)
>
> ________________________
> Michael Sweet
>
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture

-- 
Zdenek Dohnal
Senior Software Engineer
Red Hat, BRQ-TPBC

