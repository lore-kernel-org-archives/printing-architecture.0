Return-Path: <zdohnal@redhat.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634128350;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=DuVSifGB+G+66Mab1E5LpdKttwqw49a9pbsY+YSI84s=;
 b=dJbC7JaPP9e1DSY0hcbQ1wBkBKhuc4GOsvjg4emqmLyqY83P/JWqYAKLBcXTM0D+TxSQcl
 Gz8kDav7MSgHHQf0Kufg/z/O0h5odB3zbe9l7HRbq3A/MYsotjMG9un3TDJwfhwAWNYq+r
 zN3uQvd/VdJ9f4f0NSz8SJCIvrrmR/w=
Message-ID: <be3e583d-733d-be9e-791c-33de8d681bdb@redhat.com>
Date: Wed, 13 Oct 2021 14:32:24 +0200
MIME-Version: 1.0
References: <f92096c7-c6ab-631d-df6d-0d1400999dc9@gmail.com>
 <4f316230-28ce-2739-ff36-9b7375b05ac7@redhat.com>
 <90d8a1ce-a034-d5ff-9afb-d49c5990dd9e@gmail.com>
From: Zdenek Dohnal <zdohnal@redhat.com>
In-Reply-To: <90d8a1ce-a034-d5ff-9afb-d49c5990dd9e@gmail.com>
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit
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
To: printing-architecture@lists.linux-foundation.org

On 10/13/21 13:57, Till Kamppeter wrote:
> On 13/10/2021 12:28, Zdenek Dohnal wrote:
>> Hi Till,
>>
>> thank you for the news!
>>
>> A note regarding the news:
>>
>> Ad GTK temp queues and cups-browsed usefulness - the feature is 
>> implemented only for GTK3+, so apps with older GTKs still needs a 
>> permanent queue for local printer (f.e. gimp and thunderbird). 
>
> We are already transitioning to GTK4 and there are still apps using GTK2.
Heh, you don't want to know that there are apps even on GTK 1 :) (this 
year there was initiative to remove GTK 1 from Fedora, I'm not sure how 
it ended - so maybe some GTK 1 packages in other distros as well )
> Does GTK/GNOME upstream still provide fixes for GTK2?
IIRC some critical fixes are still applied, but temp queue functionality 
in GTK3 is too complex to backport...
>
>> And some apps (f.e. firefox) started to use their own print dialog 
>> without temp queue support [2], so cups-browsed is still needed for them 
>
> I have checked in Ubuntu 21.10 and seen that FF has now a print dialog 
> like Chrome, and Thunderbird has this dialog now, too. Nice that they 
> add print dialogs with preview but why do they stay so hard on this 
> obsolete API?
I guess they just don't know, although I pass my notes from PWG spring 
meetup into devel discussions since 2018 and creating wikis with 
explanations.
>
>> and Qt...
>>
>
> Is there anyone who does anything with the print dialog?
Unfortunately, I don't know anyone from Qt upstream...
>
>> Additionally, cups-browsed still is the only one automatic way how to 
>> get printers from non-local server, until I'll get a time to get my 
>> hands on CUPS profiles, together with load balancing, clustering and 
>> high availability features of cups-browsed.
>
> What do you mean with this? Do you have any intentions to improve 
> cups-browsed? Or even to move parts of its functionality into CUPS?

Aha, sorry - my bad sentence constructions... to keep it simple - 
cups-browsed is still needed for clustering, high availability, load 
balancing and automatic installation of print queue from other network.

For the last - automatic 'installation' (read as its availability in 
print dialog) of print queue(s) from other network, I'm planning to 
implement Mike's solution - printer profiles - till CUPS 3.0 is released 
(see https://github.com/OpenPrinting/cups/issues/207).

But my personal wish - IMHO those cups-browsed features would fit nicely 
into CUPS Sharing module in the future, but that's just wish.

>
>    Till
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>
-- 
Zdenek Dohnal
Software Engineer
Red Hat Czech - Brno TPB-C

