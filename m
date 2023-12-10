Return-Path: <debian@alteholz.de>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 855138196E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 31F9F818EC
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=alteholz.de
 ; s=202105;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BKAN6fPQXEk6JIhMYgn1ixmlCklXN1yVAyM54HlpUcI=; b=Ulc9oc2fFYkbDunjdXkZ4GpwSL
 Gp5Ik2TCYNQ4x5tD8pg3LYozxyRCN2/K8m+rYpNjMBtgHLzkqTt9uqzsyJDTBXRaSL5c+vq6kkWnM
 /TkoiuJGEOX4RY6CuY9JF8uNwiHPgRkG1ber2kuyS3bGw6hsLApEH7ILSv0u4rclLz28=;
Message-ID: <4b008b1a-8f68-4e5e-9a4a-e3e6d7473323@alteholz.de>
Date: Sun, 10 Dec 2023 19:28:47 +0100
MIME-Version: 1.0
Content-Language: en-US
References: <c4acbedb-c17d-4440-9945-c1b04abcd052@apevzner.com>
From: Thorsten Alteholz <debian@alteholz.de>
In-Reply-To: <c4acbedb-c17d-4440-9945-c1b04abcd052@apevzner.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit
Subject: Re: [Printing-architecture] RFC: Pantum M7300FDW and similar
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

Hi everybody,

On 10.12.23 08:08, Alexander Pevzner wrote:
>
> My position is following:
> 1. I agree, that following specification is very important, and, where 
> possible, trying to do so.

 From my experience companies don't follow specs because development 
costs for doing things right, are higher than doing just things to keep 
up appearances. So if the marketing department wants to advertise with 
IPP, they should not trying to follow a spec but the spec must be 
followed. As others show, the IPP spec is not that complicated or 
ambiguous that it would not be possible to do so.

> 2. But being practical engineers, we know that sometimes we have to 
> carefully violate rules. 

Being practical engineers we also know that adding exceptions to the 
code will add technical debt. After a while nobody still knows why this 
code was added and maintenance will become hell. This should not be 
dumped onto the shoulders of the cups maintainers. This must be handled 
by the printer companies.
Also I would prefer to tell the Debian users that Pantum printers don't 
work instead of working on bug reports that release A of cups works but 
release B suddenly stops working because there is this special case that 
breaks things.

> cups/ipp.c already has an exception for Brother devices that use some 
> IPP tags incorrectly. sane-airscan, ipp-usb contains many quirks that 
> make incorrectly behaving devices full-functional. Without these 
> quirks, many devices will not work.

... and this is bad and should not be used as an excuse to make things 
worse.

> 3. Even if Pantum will fix their firmware, 50% of users of already 
> purchased devices will not upgrade.

But this is a problem of the QA department of Pantum. My network 
connected printer always bugs me when new software is available. In the 
end I give in and install the software. So why should there be only 50% 
of users having the new software?

> 7. We are doing our work for people, for our end users. And actual 
> tradeoff here is between user's needs to have reliable and secure 
> software (technical "purism" helps as here) and user's needs to have 
> their device supported out of box (here "purism" sometimes works 
> against us).

I know my argument is far-fetched, but part of working for end users is 
also to show them how bad a product actually is. It makes no sense to 
hide any faults.

> 8. If we will eventually rich the Pantum representative, good 
> discussion with weighted arguments can help to convince them to 
> implement some improvements at their side, while aborted discussion 
> will not help a lot.

 From my experience the only argument that is relevant for companies is 
the amount of money they will loose.

>
> Looking forward for your feedback, dear colleagues.

 From my point of view it is fine to not introduce special cases into cups.

    Thorsten
