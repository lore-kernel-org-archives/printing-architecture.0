Return-Path: <zdohnal@redhat.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1C06560BE5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A159760A63
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1700720331;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=pOsbwkBCcalHIvq0Qm/XJ9EkigGSK82ATHbUUGOLzKg=;
 b=LO1okgqlkvIuqtvaWyRDADVbbNnfoenTWWU8XOK7irZyDdcRN3JKykO2Pws6NTBXlyYDg/
 vbLHmnp7QVroTq4Sxhe500Zz0ifubpHUhiyp4lEXe/9Vf/MmF+7Brjq0GRNz6K89b03Xvh
 srzpV2icy7/UThDv2tkQYgohN1raz0A=
Message-ID: <6403929e-177e-4994-b9a2-4b92bc1b2764@redhat.com>
Date: Thu, 23 Nov 2023 07:18:45 +0100
MIME-Version: 1.0
References: <20231121-turquoise-starling-of-fascination-1e4144@meerkat>
From: Zdenek Dohnal <zdohnal@redhat.com>
In-Reply-To: <20231121-turquoise-starling-of-fascination-1e4144@meerkat>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] RFC: Moving the printing-architecture
 list
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc: printing-architecture@lists.linux-foundation.org

Hi Konstantin,

I stand with Ira, Mike and Till - use lists.linux.dev, because it would 
be difficult to update all documentation to the correct link, and it is 
open source solution.

But it would be great to know if the history of the list would be 
migrated and available as well, as Till mentions.


Zdenek

On 11/21/23 22:35, Konstantin Ryabitsev wrote:
> Hello, everyone:
>
> The mailman-2 system running on lists.linuxfoundation.org is being retired, so
> we need to find new homes for all lists that are being hosted there, and this
> includes the printing-architecture list.
>
> We have two options when it comes to where to move to:
>
> 1. migrate to lists.linux.dev, which is the platform where most linux
>     development lists live
> 2. migrate to groups.linuxfoundation.org, which is a groups.io managed
>     platform; it is generally considered more forgiving for non-developers, but
>     it is a proprietary closed platform
>
> The main upside of lists.linux.dev are:
>
> - the canonical address will change to printing-architecture@lists.linux.dev,
>    but the old address will continue to work, so any ongoing discussions using
>    the old address can play out to their end, and any old documentation will
>    continue to remain relevant
> - the list will be automatically archived on lore.kernel.org
>
> The main downside of lists.linux.dev:
>
> - HTML email is generally given a higher spam score, so it could be more
>    forbidding to some participants to join in conversations
> - there is no webby management interface and {un}subscribing requires sending
>    mail to printing-architecture+{un}subscribe@lists.linux.dev address.
>
> The main upside of groups.io:
>
> - Rich web interface for management and access to archives
> - Newbie-friendly for subscribing and unsubscribing
>
> The main downside of groups.io:
>
> - The list address will change to
>    printing-architecture@groups.linuxfoundation.org, and the old address will
>    no longer work (there will be an auto-responder bounce with instructions
>    where the message should be sent instead).
> - Proprietary platform
>
> Let me know how you'd like to proceed. We need to figure this out in the next
> few weeks, as we have a limited remaining time to shut down the mailman-2
> system behind lists.linuxfoundation.org.
>
> Best regards,
> Konstantin
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>
-- 
Zdenek Dohnal
Senior Software Engineer
Red Hat, BRQ-TPBC

