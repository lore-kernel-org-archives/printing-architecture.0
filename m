Return-Path: <zdohnal@redhat.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6B7E96F93F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2626A6F93B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1659689613;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=jX0aymu+SUW9YmE2ASr+C9w3Ar83pzfHMioTN9kfhco=;
 b=LJefX4stvuh8V1k1BNIoK7C8SCoC/kZ6RwVDC0JIEakf3d6TvwrvNzTxdeKmhqLeus6RT9
 X+n04t1vucPt7YHP+iuwZRwFApNgQcf3pLoqGkuiAjWxMD9DhLtXGI62GCVq0kZfiBTXKV
 Ekak9kUySJt4BocZek1yMfaLjqKDquk=
Message-ID: <62e640e1-5667-5603-9bb9-83af071998dc@redhat.com>
Date: Fri, 5 Aug 2022 10:53:29 +0200
MIME-Version: 1.0
From: Zdenek Dohnal <zdohnal@redhat.com>
References: <885dd8ac-97fe-3891-22bb-f4904925c400@redhat.com>
 <0944e753-eab6-26d7-7aab-995ba2e89b65@gmail.com>
 <ee081dc2-cb3f-0960-a980-7753dcd78356@redhat.com>
 <b783b6d2-ee4c-9fca-219c-7fad10d6f16e@redhat.com>
In-Reply-To: <b783b6d2-ee4c-9fca-219c-7fad10d6f16e@redhat.com>
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit
Subject: Re: [Printing-architecture] Firefox 103 supports temporary queues!
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>, Open Printing <printing-architecture@lists.linux-foundation.org>

I've tested snapped Firefox 103.0.1 on Fedora 36

$ /snap/bin/firefox

and the network printer was shown and printed well.

On 8/5/22 10:34, Zdenek Dohnal wrote:
> To complete my findings, I've tested Firefox with my network printer 
> and with virtual device shared via mDNS from snapped ps-printer-app, 
> because I've been at home office since yesterday due cold. I'll test 
> ipp-over-usb device once I get to the office next week, but IMO it 
> will work the same way as virtual device from ps-printer-app.
>
>
> Zdenek
>
> On 8/5/22 10:29, Zdenek Dohnal wrote:
>> On 8/4/22 17:06, Till Kamppeter wrote:
>>> Thanks for the info, but I have Firefox 103 on Ubuntu 22.04, in Snap 
>>> format:
>>
>> As a starting point of every debugging, I would remove any additional 
>> layers which can cause issues - in this case, try to reproduce with 
>> Firefox via .deb packages, not via Snap.
>>
>> There can be some discrepancies which will have to adjusted regarding 
>> snapped firefox, since the development was probably tested only on 
>> .rpm/.deb.
>>
>>>
>>> $ snap list | grep firefox
>>>
>>> firefox                            103.0-1 1589 latest/stable     
>>> mozilla**             -
>>>
>>> $
>>>
>>>
>>>
>>> I connect the "cups-control" interface (Snap is not yet switched 
>>> over to the new "cups" interface):
>>>
>>> $ sudo snap connect firefox:cups-control
>>>
>>> $
>>>
>>> And in Firofox' own print dialog I see only the permanent queues, 
>>> the same as I get with "lpstat -v".
>>>
>>> Can it be that RedHat has applied a distro patch to fix the print 
>>> dialog? If yes, could you make this patch available?
>>
>> Nope, complete vanilla Firefox 103.0.1 regarding CUPS or IPP support 
>> - no mention about cups or ipp in the current downstream patches 
>> (when I wrote the email yesterday, I thought it is basic 103.0 
>> according to messages on PR 
>> https://hg.mozilla.org/mozilla-central/rev/b7bc35cb4c89 , bug 
>> https://bugzilla.mozilla.org/show_bug.cgi?id=1771500 - but I haven't 
>> check the exact version till today, and it is 103.0.1 - maybe there 
>> were some changes?). Maybe Canonical has some patches in Firefox 
>> reverts/breaks the feature?
>>
>> Does CUPS in SNAP have the patch you've sent to CUPS project 
>> regarding resolving hostnames in CUPS?
>>
>> Either way, all possible downstream patches for Firefox are public 
>> here - https://src.fedoraproject.org/rpms/firefox/tree/f36 . None of 
>> them look connected to printing.
>>
>>
>> Zdenek
>>
>>>
>>>    Till
>>>
>>>
>>> On 04/08/2022 16:24, Zdenek Dohnal wrote:
>>>> Hi all,
>>>>
>>>> I'm happy to announce that Firefox 103 has started to show 
>>>> temporary queues in their own print dialog and printing via them 
>>>> works (at least on Fedora).
>>>>
>>>> Feel free to test/leave feedback what to improve! I'll pass the 
>>>> feedback to Firefox upstream people from Fedora community.
>>>>
>>>> I'm glad the another application added temporary queue support, 
>>>> which brings us closer to CUPS 3.0 :)
>>>>
>>>>
>>>> Zdenek
>>>>
>>>
-- 
Zdenek Dohnal
Software Engineer
Red Hat, BRQ-TPBC

