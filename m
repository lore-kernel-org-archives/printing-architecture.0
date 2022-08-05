Return-Path: <zdohnal@redhat.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A46C241D5B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2F12241D54
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1659688202;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=JJKZjsBVTuZ1yf5zOjeTjwpXP5ojKd6+iSm7TqG8lOw=;
 b=JKypvg3OGmVgEL86UjQr5FDluad1kChBNJ4Ml8epJvLLnpKYaJZK24p+qF2+DWeTd11Ff7
 MwwY4rm4CFrHB+vpXfMpp67TFtYT9rlqxhZp9vZo+XYw8kcP+1K9hHxuWlHz3cLUc9lLh0
 CDaJYRYrzYjvIdWbTYBoUnh6t9vvuao=
Message-ID: <ee081dc2-cb3f-0960-a980-7753dcd78356@redhat.com>
Date: Fri, 5 Aug 2022 10:29:59 +0200
MIME-Version: 1.0
References: <885dd8ac-97fe-3891-22bb-f4904925c400@redhat.com>
 <0944e753-eab6-26d7-7aab-995ba2e89b65@gmail.com>
From: Zdenek Dohnal <zdohnal@redhat.com>
In-Reply-To: <0944e753-eab6-26d7-7aab-995ba2e89b65@gmail.com>
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

On 8/4/22 17:06, Till Kamppeter wrote:
> Thanks for the info, but I have Firefox 103 on Ubuntu 22.04, in Snap 
> format:

As a starting point of every debugging, I would remove any additional 
layers which can cause issues - in this case, try to reproduce with 
Firefox via .deb packages, not via Snap.

There can be some discrepancies which will have to adjusted regarding 
snapped firefox, since the development was probably tested only on 
.rpm/.deb.

>
> $ snap list | grep firefox
>
> firefox                            103.0-1 1589 latest/stable     
> mozilla**             -
>
> $
>
>
>
> I connect the "cups-control" interface (Snap is not yet switched over 
> to the new "cups" interface):
>
> $ sudo snap connect firefox:cups-control
>
> $
>
> And in Firofox' own print dialog I see only the permanent queues, the 
> same as I get with "lpstat -v".
>
> Can it be that RedHat has applied a distro patch to fix the print 
> dialog? If yes, could you make this patch available?

Nope, complete vanilla Firefox 103.0.1 regarding CUPS or IPP support - 
no mention about cups or ipp in the current downstream patches (when I 
wrote the email yesterday, I thought it is basic 103.0 according to 
messages on PR https://hg.mozilla.org/mozilla-central/rev/b7bc35cb4c89 , 
bug https://bugzilla.mozilla.org/show_bug.cgi?id=1771500 - but I haven't 
check the exact version till today, and it is 103.0.1 - maybe there were 
some changes?). Maybe Canonical has some patches in Firefox 
reverts/breaks the feature?

Does CUPS in SNAP have the patch you've sent to CUPS project regarding 
resolving hostnames in CUPS?

Either way, all possible downstream patches for Firefox are public here 
- https://src.fedoraproject.org/rpms/firefox/tree/f36 . None of them 
look connected to printing.


Zdenek

>
>    Till
>
>
> On 04/08/2022 16:24, Zdenek Dohnal wrote:
>> Hi all,
>>
>> I'm happy to announce that Firefox 103 has started to show temporary 
>> queues in their own print dialog and printing via them works (at 
>> least on Fedora).
>>
>> Feel free to test/leave feedback what to improve! I'll pass the 
>> feedback to Firefox upstream people from Fedora community.
>>
>> I'm glad the another application added temporary queue support, which 
>> brings us closer to CUPS 3.0 :)
>>
>>
>> Zdenek
>>
>
-- 
Zdenek Dohnal
Software Engineer
Red Hat, BRQ-TPBC

