Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:message-id:date:from:user-agent:mime-version:to:cc
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=cFxJv7UKxmj4NMmXS+W8pkCmICjwiUIjxd50jm44Rps=;
	b=J171axkDibcjVx28A8qXmNmFYtaQ+iwK4JJAME3m/fiIFtBt/18EQWz8+zVuWAsnEx
	UhapYHDkOcNwd1SKGAtlPjCEThs2AGZxRFacDKF03ADThhuKKWoIP7Dd29OikJfxO3Fp
	djysXliZZe011Mz4F8MLgeQysTfj0gmxPRy0kwTMPufpu0DMhufjkeDknc1lxBB0kTYd
	xzeC0sbJH6NF49t3OxPwknUk1BJiZE2qTQQJO45LCeFrTECK2zqN2GW2iPBftyhKEt3b
	V6SNT4f5oal1tMBT3S9vknzU+AzLJ4iuYGhxGo57OPRnbvAJ8FRG31puKeQN11y+VhDa
	Oz9g==
Message-ID: <5195DA7B.2040501@gmail.com>
Date: Fri, 17 May 2013 09:21:31 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <519537F0.8020405@gmail.com>
	<FDC917F9-BB2B-4117-9F4A-D817841E5AE8@apple.com>
In-Reply-To: <FDC917F9-BB2B-4117-9F4A-D817841E5AE8@apple.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Some suggestions for the DNS-SD
 (Bonjour) printer support in the dialog
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@apple.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, Marek Kasik <mkasik@redhat.com>

On 05/17/2013 07:32 AM, Michael Sweet wrote:
> 
> cups-browsed is an interesting stop-gap solution, but I really, *really* don't think you want to be doing what you are doing - resolving a printer will wake it up.  Doing it on every computer will cause a LOT of network traffic and generally NOT provide a good user experience.
> 

What cups-browsed is doing is as soon as avahi-daemon reports an IPP
printer check whether it is a CUPS queue or a network printer and in the
case of a network printer do a get-printer-attributes IPP request. This
does not wake up my printers out of sleep mode. The printers tested here are

- HP Officejet Pro 8500 A910
- HP LaserJet P3005
- HP Color LaserJet CM3530 MFP

Also the printers get polled only once, not repeatedly, either when
cups-browsed starts or when the printer is turned on.

   Till

