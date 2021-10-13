Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :references:from:in-reply-to:content-transfer-encoding;
 bh=y98MvSQ5M+vp4AGtjK+bZY+Cz/tK/8SCtk1U8gaFpew=;
 b=gUi705FM96Xhv6lCV3vpAciRv3F7C7tJLme85bRK9lIRu5GLr71OtlnRUFx+T02yJO
 fHOeqcRItsyxNV/7MN8+ZQQbwExdQK+EdoRTEOtGMyY4D8+jpfzd1g0SjbR0esEPsUq2
 uDQ0Lw2pTECVS0DP/U4T0yh57IYRqA9Re/2gcnvG8QlVLivBm2s5RRSZ805twAuXmJJ5
 SRgj85epJHjurBYvvLJgT6lcve9Zj2HBmzZ/KGsg4SDfs2slIuuZAM/Y74Dht69Bk9hD
 0v69tWDjkA9N54+JugqxNhCEPiS28vX9uX6Emg4KGq8Scogxt5aWVlbu+I/2cbu8EJDw
 HE8Q==
Message-ID: <90d8a1ce-a034-d5ff-9afb-d49c5990dd9e@gmail.com>
Date: Wed, 13 Oct 2021 13:57:32 +0200
MIME-Version: 1.0
Content-Language: en-US
References: <f92096c7-c6ab-631d-df6d-0d1400999dc9@gmail.com>
 <4f316230-28ce-2739-ff36-9b7375b05ac7@redhat.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <4f316230-28ce-2739-ff36-9b7375b05ac7@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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

On 13/10/2021 12:28, Zdenek Dohnal wrote:
> Hi Till,
> 
> thank you for the news!
> 
> A note regarding the news:
> 
> Ad GTK temp queues and cups-browsed usefulness - the feature is 
> implemented only for GTK3+, so apps with older GTKs still needs a 
> permanent queue for local printer (f.e. gimp and thunderbird). 

We are already transitioning to GTK4 and there are still apps using 
GTK2. Does GTK/GNOME upstream still provide fixes for GTK2?

> Additionally, Brian Potkin from Debian found out some problems with 
> ipp-usb supported devices [1], does it work in GTK3 apps in Ubuntu?
> 

I can reproduce his problem on Ubuntu 21.10. I have answered his bug 
report. It can also be a bug in CUPS or ipp-usb. The "driverless" 
utility of cups-filters at least can correctly communicate with the 
printer and obtain a PPD, whereas CUPS (2.3.3op2) seems to have problems 
(error when creating queue with '-m everywhere"). So most probably CUPS bug.

> And some apps (f.e. firefox) started to use their own print dialog 
> without temp queue support [2], so cups-browsed is still needed for them 

I have checked in Ubuntu 21.10 and seen that FF has now a print dialog 
like Chrome, and Thunderbird has this dialog now, too. Nice that they 
add print dialogs with preview but why do they stay so hard on this 
obsolete API?

> and Qt...
> 

Is there anyone who does anything with the print dialog?

> Additionally, cups-browsed still is the only one automatic way how to 
> get printers from non-local server, until I'll get a time to get my 
> hands on CUPS profiles, together with load balancing, clustering and 
> high availability features of cups-browsed.

What do you mean with this? Do you have any intentions to improve 
cups-browsed? Or even to move parts of its functionality into CUPS?

    Till
