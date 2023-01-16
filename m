Return-Path: <till.kamppeter@gmail.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7342660E30
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 419D660C13
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:cc:from:references:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=WCfZmluo0I6eBOBjU6PU3BiBZfbPA44PAHsTjtS0gK4=;
 b=Kt0LytgN3ncO7qydauHIChFzrj9CviRW7vcNp1Whlmrg0/IgWhpJ/RkjcKhaf09a8L
 LbLcRNadsM+hUQxUM11o3e2iC/yBzEizEWeoqPTBKlyrREj21WP0wXMRwJcLeRx2vZI9
 9SQOFCrLTotffUh65SfAaavZeJKtT9L50J/TAWorr9xnGqZP3vAGG6NgnU3vJz0BDwS/
 xCnTqAL5pp1f4vFQSvc2TURAJ50dDlJKAe58inwBOULz1raiTeFQcPO6UfQ0tTfSlD8j
 QGAlZHtqw7yMmSnGF1LownWJFfQX6wbAR8XFKC7HbSzAwPKy7fPWJ2k3wqBvIfg4Gx4V
 xn+A==
Message-ID: <8b095d8c-f33a-5686-72e9-70ab9ad4e2cd@gmail.com>
Date: Mon, 16 Jan 2023 17:06:48 -0300
MIME-Version: 1.0
Content-Language: en-US
References: <7ed5b062-73bc-0002-14c8-bda32c5f7866@gmail.com>
 <63ED10FD-8152-401C-92A8-F5B89CCA1F68@msweet.org>
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <63ED10FD-8152-401C-92A8-F5B89CCA1F68@msweet.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Google Summer of Code 2023 - Project
 ideas page for the Linux Foundation online
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@msweet.org>, Ira McDonald <blueroofmusic@gmail.com>, Open Printing <printing-architecture@lists.linux-foundation.org>
Cc: Aveek Basu <basu.aveek@gmail.com>

On 16/01/2023 16:17, Michael Sweet wrote:
> Till,
> 
> FWIW, some of the PAPPL project ideas aren't a good fit for GSoC, particularly the IPP Everywhere 2.0 stuff (still in flux, and something I am already working on) and presets.  The scan stuff is "nice to have" but we are still a long ways away from having anything that can be merged and supported.
> 

OpenPrinting project ideas on

https://wiki.linuxfoundation.org/gsoc/google-summer-code-2023-openprinting-projects

Michael,

I was also in doubt about some ideas when I tried to create a 
description for them:

Update of OpenPrinting software to IPP Everywhere 2.0
-----------------------------------------------------

- What are the exact differences between 1.1 and 2.0? Is it written 
somewhere to easily check?
- Is 2.0 stable and complete enough for working towards it and is it 
also no subject of a quick replacement (by 2.1?)? Not like OAuth support 
where we decided on skipping working on its integration this year?
- Is there actual coding work to do to achieve this?

So if you feel better to work on this by yourself, at least for CUPS and 
PAPPL, no problem, I can remove it.


CPDB backend for IPP Infrastructure/Cloud printing
--------------------------------------------------

Which software is the actual implementation of this standard and visible 
for the end user who wants to print from an application?

If it is simply an emulation of an IPP Printer (Printer Application) it 
would be hidden behind CUPS for applications and so no new backend is 
needed. CUPSD backend is sufficient.

If it is the sharing server of CUPS 3.x then the CUPS backend would also 
be the one to be used but we would need to add some extra functionality 
for extra control points, meaning that the project better gets titled: 
"Extend the CPDB CUPS backend for the sharing server of CUPS 3.x".

What is the situation, retitle the project or remove it?


These two looked rather viable for me:

PAPPL Scanning support
----------------------

PAPPL scanning support was already planned and worked on in GSoC 2022, 
but one of the two contributors has failed, and therefore we did not 
complete it. Therefore I have opened one project idea for its 
completion. There is even already a candidate investigating on what 
needs to get done.

What do you mean with

     but we are still a long ways away from having anything that can be
     merged and supported

Is too much missing for scanning so that one could complete it by the 
one project idea I have opened now? Would it need a complete 
re-architecturing of PAPPL? Would you prefer to do it by yourself from 
scratch, dropping all the GSoC contributions?

Should I better snap AirSANE to make scanner drivers snappable (but it 
will be confusing for users if an MF device has 2 daemons, one for 
printing and one for scanning)?


PAPPL presets
-------------

Is my idea in the feature request

https://github.com/michaelrsweet/pappl/issues/244

wrong? Or not implementable with current IPP? Or do you prefer to 
implement this by yourself.


So please tell me what should I remove or reformulate?

    Till
