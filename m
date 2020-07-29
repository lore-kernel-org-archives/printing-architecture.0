Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=+4syOYmvdG2UDuss4CcWz78BzOcg748+OF0jyRLUrsU=;
 b=rdETau0LCKLTgkFLmV8j93vpwWu2YQG/sKkYgrmfhr9uTiJSaZmtTCTC7laucWqzje
 yw5rjafqFmxdhM/HSGQpmRPlkAa4fPUJIIR+joUMKrYwb7IPT1bs7+XskI6jPsyedpJz
 kORzmeH18yP614rbhWiCMxWd3U/7S8LF3GsdN0sx6fRJOCyeD2pIgNInCgK4L1BWpzpR
 ZvRasq/oVjLLkJiEefJd7MWBlPpR2UDG9czf6toWKO7Wp3yJJObsnD0sZEyN4CqvEOl1
 pPWQQgitffJQi0TXJbmNBeX2bIlf0IieAcv1B7KAptjdraKCScMHWEjyvGNGMx/UOi0D
 YVvA==
References: <6e976771-0ca9-1ded-bc7c-bfc00979e68f@gmail.com>
 <e3c06595-f150-02e6-5d44-f7565a620b3c@redhat.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <601c2697-04ff-0b0e-2def-75a9c82485ca@gmail.com>
Date: Wed, 29 Jul 2020 17:43:51 +0200
MIME-Version: 1.0
In-Reply-To: <e3c06595-f150-02e6-5d44-f7565a620b3c@redhat.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] GTK Print Dialog: Modern IPP printing
	environments cause problems
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Marek Kasik <mkasik@redhat.com>
Cc: Aveek Basu <basu.aveek@gmail.com>, Open Printing <printing-architecture@lists.linux-foundation.org>, Rithvik Patibandla <rithvikp98@gmail.com>, Rithvik Patibandla <rithp9@gmail.com>

On 29/07/2020 17:10, Marek Kasik wrote:
> You've seen all the communication I had with him this year. He hasn't 
> sent me a code which would compile.
>

I did not realize that it was so bad. Before I put him with some other 
mentor to do CPDB he did a good job on filters for me. There are 
students whose imagination of programming is typing code without ever 
trying to build and run it, but I did not know that he was like that.

>> Is there any worthwhile outcome which could be the base for someone 
>> else to continue and complete the work?
>>
>> Are there any plans to add CPDB support independent of Tanmay?
> I don't have a plan to integrate CPDB in Gtk now. I plan to implement 
> the temporary queues support there.
> 

No problem, if you get the dialog working correctly with the new CUPS 
API it would be great. As the dialog has easy-to-dro-in backend modules, 
we can find someone writing such a module and testing it, and post it as 
a Feature Request when it is ready.

> It would be good to have an IPP operation defined for cupsEnumDests() in 
> CUPS. We have a good mechanism which handles these in non-blocking manner.
>

So you do not want to use the new CUPS API because it is not 
asynchronous? I think one could help oneself creating asynchronous 
wrapper functions. AFAIR CPDB wraps it asynchronously. You can can start 
an asynchronous printer list process with CPDB and while the dialog is 
open and active the printer entries from all CPDB backends, including 
the one for the new CUPS API, are rolling in.

> This is because I've implemented it in 2013 and the local queues were 
> added to CUPS at 2016. What were the options at that time?
> I've implemented it so that it worked with the printer from you, the HP 
> CP3525. It also worked with CUPS published printers.
> There were some bugs over the years but I've tried to fix most of them.
> Unfortunately I've got a printer which claims IPP capability but I'm not 
> able to print on it over ipptool, this makes me think that I could try 
> the local queue feature of CUPS.
> 
>

As CUPS has this local queue feature, and it is actually working, you 
should use it in the print dialog, using the new CUPS API. Ideally, if 
CUPS adds a new feature, print dialogs should updated to support it. If 
you think the CUPS development pace is too fast for keeping up with it 
in GTK, simply add CPDB support and we from OpenPrinting will care of 
the rest.

It would be great if I do not need to supply cups-browsed as a daemon to 
retro-fit the GTK print dialog with modern CUPS by the daemon providing 
the old interface. I would love to have Ubuntu shipping with 
cups-browsed not running by default.

And please do not make the GTK print dialog bypass CUPS when printing on 
IPP printers.

> This was a bug I think I've fixed at the end of 2019.
> 
>> GTK dialog backends on the system are the following:
> 
> What gtk3 version is this?

Version 3.24.20

If this does not contain the fix, can you tell me which GIT commits have 
to be added as distro patch?

till@till-x1yoga:~/Downloads$ dpkg -l libgtk-3-0:amd64
Desired=Unknown/Install/Remove/Purge/Hold
| 
Status=Not/Inst/Conf-files/Unpacked/halF-conf/Half-inst/trig-aWait/Trig-pend
|/ Err?=(none)/Reinst-required (Status,Err: uppercase=bad)
||/ Name             Version          Architecture Description
+++-================-================-============-============================>
ii  libgtk-3-0:amd64 3.24.20-0ubuntu1 amd64        GTK graphical user 
interface>
till@till-x1yoga:~/Downloads$

    Till
