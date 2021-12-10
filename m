Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=rItHvKeRNU07q3nN0B2mqsqiXW7gDXyoRPVgbZlkbJc=;
 b=G+ak+xIv2XvEKzWbKaXIVDYNOMdcYH+k1FkcJ0CoImhLW86h+ppAnYgzCsSSqYt3Uw
 bwiVBSCh5PHbOqswOTWyhRAmgSlTY6xAvSo+MAbKMv6xpuSp49lAzNUGFjNcz9TlNY5k
 DXMNGrj7C+7CnEwvHbl+YlW1AWEW/THhSsi8l2Z5HAi7xTldQqyRl5Durlwg9ScytS+T
 8UZVnK4id7OIxY6fXTiid1OYMF2vGUWjoGqkq3/HnF5TwKNc/9R41j7IbjimWkq5TE1u
 eDFaj9QsBxzP5XSkViUT93p0DL8eHQc/OG8Mo93b0BePGGO9HsYilAC/2br5d6QFxdcp
 Tazg==
Message-ID: <ff2fcb6b-fcec-115d-0f4e-a191a71ff3b3@gmail.com>
Date: Fri, 10 Dec 2021 19:54:49 -0300
MIME-Version: 1.0
Content-Language: en-US
References: <5353aceb-8608-539e-2839-cc47841fa030@gmail.com>
 <20211210212022.7818a35d@laptop64>
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <20211210212022.7818a35d@laptop64>
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
To: Andreas Radke <andyrtr@archlinux.org>
Cc: Aveek Basu <aveek.basu@lexmark.com>, Open Printing <printing-architecture@lists.linux-foundation.org>

Up to now I have created more or less a working model of the needed 
Printer Applications, to find out what is needed in the library's APIs 
before making releases of the libraries (libcupsfilters, 
libpappl-retrofit). Therefore there are no upstream package releases yet 
but Snaps for everything.

With the Snaps I once wanted to find out whether and how CUPS and the 
Printer Applications work when snapped (or generally sandboxed) and also 
give users a way to quickly download and try out everything without 
needing to compile.

I know that with Snaps I cover many distributions (the systemd-based 
ones) but not all, as some do not use systemd and others have policies 
against Snap, mainly due to the fact that there is currently only one 
Snap Store. So Snap is a good platform to quickly get user response for 
a new project, without the bureaucracy of getting it into a distro and 
without only addressing the users who compile stuff. It also covers many 
distributions and so gets a permanent source for many users, especially 
also for packages (here printer drivers) which are newer than the distro 
release they are using.

What is Arch's situation. Do they not support Snap because they are not 
using systemd or is it because of things like the Snap Store "monopoly", 
or because of being an easy way to install closed-source software,  or 
for other reasons?

Now, as I have put practically all free software printer drivers into 
Printer Applications I know that my library's APIs are good enough for 
the task and so, as you can read in my December news, I am working on 
making the libraries releasable, by testing and debugging them. Then I 
will release cups-filters 2.0.x and pappl-retrofit 1.0.x, and after that 
also spin upstream releases of the 4 Printer Application, making it easy 
for distros to create distro packages in their package format (DEB, RPM, 
whatever Arch uses, ...).

The build systems of cups-filters and libpappl-retrofit are already 
distro-friendly (derived from cups-filters 1.x), so once we have 
releases, creating distro packages should be easy.

The daemons in the Printer Applications are created and controlled by 
the PAPPL library project. Should you run into problems packaging the 
Printer Applications for a distro where PID 1 is not systemd due to the 
starting of the daemon, please report an issue at PAPPL:

https://github.com/michaelrsweet/pappl/issues

This is the state of the art as of now and I naturally want that the 
Printer Applications will be packaged in different formats to cover as 
many distributions as possible and so reach as many users as possible. 
Especially when we are at CUPS 3.x in 2 years, PPD support is dropped in 
CUPS and so everyone will need Printer Applications for non-driverless 
legacy printers, independent of whether there is some sandboxed 
packaging used or not.

We especially need to make sure that printing support in Arch is in a 
good shape so that it "just works" for users. Especially see this video:

https://www.youtube.com/watch?v=TtsglXhbxno&t=9s

So I would much like that the user experience on Arch is the same as on 
Mint, and we from OpenPrinting want to help you on that.

I hope this clarified the situation. Please post if you have any further 
questions.

    Till

On 10/12/2021 21:20, Andreas Radke wrote:
> Hi Till,
> 
> I'm still missing some initial news about how to package printer
> applications in the future as casual distribution packages without the
> snap store. I'm willing to help offering early packages but so far there
> seems to be no way planned without going the snap path. Arch doesn't
> offer any snap support and will never do so.
> 
> -Andy
> Arch Linux
> 
