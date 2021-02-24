Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=z3D2lbjHNZb7ct2U1BPGeXPKsi4IYmp30wGIXEH8EwI=;
 b=uapwczKn989Hsz7kLcgqU+uXGMg227Zmklqr+GV7rdV1DzFLRZJke1jAiF9zkCT4Th
 osdmQhC2fkc/QNWgxtDMvXlPvyURXGFU2TJwFrCWBs7I1rDJlMte1yqES1kxJTRtnZjI
 0L5aZl/CZ5atDHW7ify4t4MD8370ije4kqzjqhPULmPdkHKcOFCMoMaJug+7mJxPygyy
 C27TtauBLp8w+9MOWqdt2wbtNkTqBSgUrnSOX9c/qnd9ANMAJniQqVlAs8KjE95INbgy
 2G21JJBaJ/LLXjepbyHBnA7rShsV+azwfxbB79kQinhP02IkOgLhNNOnTsowD7v4hEP7
 2AhA==
References: <12af8541-3113-341d-6b7f-d7393203368f@gmail.com>
 <1099419D-7CC7-448C-84B1-5C35D75F7A03@msweet.org>
 <54aefb59-d506-8e30-8891-9d051ef81fed@gmail.com>
 <DC5E23E8-80FD-4835-B3C7-B637D5287267@msweet.org>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <00d2660e-d305-7dcb-4535-fbbcfbbaeb01@gmail.com>
Date: Wed, 24 Feb 2021 20:21:35 +0100
MIME-Version: 1.0
In-Reply-To: <DC5E23E8-80FD-4835-B3C7-B637D5287267@msweet.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Automatic printer setup with Printer
	Applications
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@msweet.org>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Jai Luthra <luthrajaiji@gmail.com>

On 24/02/2021 18:48, Michael Sweet wrote:
> 
> ... which is why I suggested you create a registry for printer applications so that you can map a printer to one or more printer applications that you then run "autoadd" on.
>

Printer Applications should have a way to query the full list of 
printers they support by model and also the full list of generic (for 
example by-PDL) support options they have. So some "Printer Application 
finder" tool could find whether support for a certain printer is 
available and then add the printer (with driver "auto") on the right 
Printer Application.

> I *don't* think that users should have every printer application installed - that is wasteful and confusing.
>

I think so, too. The Printer Applications should be available in the 
Snap Store and the Snap Store should have the 
search-by-hardware-signature thingy which I suggested:

https://forum.snapcraft.io/t/hardware-associated-snaps-snap-store-search-by-hardware-signature/

> 
> If the printer applications are based on PAPPL, you can use DNS-SD to find their system service endpoints and then have them add the printer using standard IPP operations, all through a common GUI.  Similarly, you can use DNS-SD to find the web pages, if that is the way you want to go...

Yes, I was also thinking this way for the network/local service manager 
application I suggested in the other thread. The manager could also have 
a button to start the "Printer Application finder" at each Printer 
Application entry.

The "Printer Application finder" will, once the correct Printer 
Application is selected (and installed if it was not installed yet) 
actually set up the printer via IPP operations.

    Till
