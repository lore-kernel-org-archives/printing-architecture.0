Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=hv6Am/YnGWtXfgPqGMPGRfRXKvghOWcRf23CmDiFHk0=;
 b=Yenl9Ni3JP2ZzKN7M8A5zCxf8/kLN+bSBgzRYPEfBg/ErqT6YbKjqVExbCsLUEQp6p
 jNsdUr3Jf4D6ZjUXkXCfIEGUeh1D0BaWP5HUTd7+GEx72v4tL33Gf2pSocKBMHeV63LU
 7i+wNJAEnA/pDHsQsKVV4a+ClJRqYEnoDeWxjc8qIrDjz4YmOUCZwH3dpBQ9OXnicZpr
 vDv9Z8DI3Qbnk9xW0DdXPLf2r7t86gQvhpxOOJ/lxLKohXQM5WTIiStPsnauhS7XmDXl
 dwjgLgyWuooRG6TuaVtDWCwOdXX5pdyx3Py+AiNJqdj/LFVBts2K3TWViqtqvRJ2rlqA
 zW8Q==
References: <12af8541-3113-341d-6b7f-d7393203368f@gmail.com>
 <1099419D-7CC7-448C-84B1-5C35D75F7A03@msweet.org>
 <b6f4687d-fe34-c3e7-d378-a07405dc936e@redhat.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <4c554835-e8f7-3399-098d-11718beb020c@gmail.com>
Date: Thu, 25 Feb 2021 10:24:28 +0100
MIME-Version: 1.0
In-Reply-To: <b6f4687d-fe34-c3e7-d378-a07405dc936e@redhat.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
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
To: Zdenek Dohnal <zdohnal@redhat.com>, Michael Sweet <msweet@msweet.org>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Jai Luthra <luthrajaiji@gmail.com>

On 25/02/2021 09:52, Zdenek Dohnal wrote:
> Sounds reasonable, except for crying in beer! That's never reasonable
> around here :D
> 
> So udev-configure-printer would:
> 
> 1) check if there is a USB device - if it is IPP-over-USB and isn't in
> allow list (probably there will be devices which will present themselves
> as IPP-over-USB, but it will be broken, so they want to fall back to
> printer application...), break out
> 
> 2) find a printer application which supports the device
> 
> 3) if it is not installed, install it - this will need to be updated -
> currently PackageKit is used in scp lib, but PackageKit is going away in
> the future [1] - I heard there is some work in DNF regarding PackageKit
> functionality, but I'm not sure how far they are. Not mentioning it is a
> distro specific package manager, not sure if other distros have already
> some alternative to PackageKit.
>

Here we should not only consider distro-specific RPM and DEB packages 
but also distro-independent packaging, like Snap, as Printer 
Applications should also serve for hardware manufacturers to easily 
create distro-independent driver packages, one for all.

Central repositories, like the Snap Store would need some 
hardware-signature-based search, see

https://forum.snapcraft.io/t/hardware-associated-snaps-snap-store-search-by-hardware-signature/

> 4) auto-add the device to a printer application - scp lib for adding
> print queues is now for CUPS only and written in Python, so it will need
> to be rewritten in C/Go using PAPPL.
> 

Zdenek, could you update your GSoC project idea if needed?

https://wiki.linuxfoundation.org/gsoc/google-summer-code-2021-openprinting-projects#turn_the_scp-dbus-service_methods_-_getbestdrivers_and_missingexecutables_-_of_system-config-printer_into_c

    Till
