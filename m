Return-Path: <zdohnal@redhat.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7059F80C3D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 60E3B80C3C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1678274556;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=pDx3bAIX7smvFNYELZGt0TKSHzRywnZme9yHKGxlKeY=;
 b=XTfYNNF6vgNEHvevjmxzGvX2VK80vv2TLc/7HtayPc6TqVGGK9L6U0W7ziOb1AQgnyHpPB
 d/q0xosUUy6fQcX1dDv81Sm6ejP9EsBymRwQfT1FvVb0U52nJDyaadusUIMphLRIxmGYI6
 0an2hAlRpI3E1ui7ZLF1tPpCYm6LVy8=
Message-ID: <8a157c63-1d12-52fd-7463-5864de51aa80@redhat.com>
Date: Wed, 8 Mar 2023 12:22:32 +0100
MIME-Version: 1.0
References: <1694880310.2965478.1678262580752.JavaMail.zimbra@desy.de>
From: Zdenek Dohnal <zdohnal@redhat.com>
In-Reply-To: <1694880310.2965478.1678262580752.JavaMail.zimbra@desy.de>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] driverless clients after cups upgrade
 and general qyestion about larger environment concepts
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
Cc: Till Kamppeter <till.kamppeter@gmail.com>

Hi,

there was a bug regarding color printing in 2.4.1, which is mostly fixed 
(only one corner case remains to fix) in the current master branch of CUPS.

Relevant PRs:

https://github.com/OpenPrinting/cups/pull/417

https://github.com/OpenPrinting/cups/pull/451

https://github.com/OpenPrinting/cups/pull/500

You can ask your distro maintainer for including those patches until 
there is a new release.

(@Till ^^)


Zdenek

On 3/8/23 09:03, Beyer, Christoph wrote:
> Hi,
>
> I am new on this list and would like to bother you with a (maybe stupid question) right away :)
>
> I do run a 'large' environment with roughly 1.000 queues pointing to 500 printers, the current setup involves a lpd server as a backend talking to the printers and different cups servers for different departments offering the relevant share of the queues to the LINUX clients.
>
> I use the factory provided PPD files for the printers and lpadmin to install the printers on the cups server (with an lpd backend pointing to the lpd server) then poll-server <cups-server-of-this-department> directive in cups-browsed.conf on the LINUX client.
>
> After a recent upgrade to CUPS 2.4.1 on the cups servers (coming from ubuntu 18.04- whatever cups version that was)  support for color printing stopped and on the clients desktops I recognize that the printers are visible but tagged as 'driverless' which is probably part of my problem (?)
>
> Maybe the whole concept is also a bit ignorant towards the ideas of cups but for quite a while I did not really see the concept of a client-server model for larger entreprise installations that can not rely on browsing etc.  ?
>
> Any insight would be much appreciated !
>
> Best
> christoph
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>
-- 
Zdenek Dohnal
Software Engineer
Red Hat, BRQ-TPBC

