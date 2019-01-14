Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=1gMzJfEpC5nDsl3PYh57D5RolbkEXPwWgiJJ4ogZQik=;
	b=VmrtMQ6EDlqIxlcKlPFQMz09/Z3vMAuHgbWxuRfDbohAILS9Nx6GO+dW92mZhMWIJ5
	r1OasIhdhLuoVFA8MnP+/ZrBZ/VkB1lOGEigatCod8sGHgAF9/Ayp84UCvKi62EFxxB3
	3cyyNxCBfhUnfoSa+P0GgVGU13U8JPML9ZK3Kk2vwukfTVk5l+9T+HDl0vZnaFn4MdpM
	Lxcw1A0MFCKz1bU2qpVaaKy4wf15AlgXA+4r9UNHISQcJj6oZc6Rtqo/1nYaLUKfgkd7
	EetCoHjHOpCHMLuI6OEWWHPbwIOKFadUWr9MD+AfJDmTy+ISeg8keo2UF+0966X/tRSU
	Mf6g==
References: <CAN40gSubUV9Y3dfNwU+xKSy=N92nffkdPMoSkoDpzq_Vd54D6A@mail.gmail.com>
	<649CD791-CA34-4AD0-A58B-3C0113410831@apple.com>
	<a323cfb1-6937-f621-ba7e-696a856b257a@gmail.com>
	<b031d1f0-2da0-c484-2075-04b3badc9d6a@redhat.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <b28db535-0705-a673-1e32-6a772559cdac@gmail.com>
Date: Mon, 14 Jan 2019 18:50:49 +0100
MIME-Version: 1.0
In-Reply-To: <b031d1f0-2da0-c484-2075-04b3badc9d6a@redhat.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: Re: [Printing-architecture] OP Minutes (9 January)
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Zdenek Dohnal <zdohnal@redhat.com>, Michael Sweet <msweet@apple.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Aveek Basu <aveek.basu@lexmark.com>, Michal Sekletar <msekleta@redhat.com>

On 14/01/2019 17:51, Zdenek Dohnal wrote:
> 2) Avahi upstream maintenance
> 
>     Michal and several other people tried to convince Trent to pass
> ownership to someone else (Michal knew about two people, who would like
> to take Avahi project at that time) about two years ago, because Trent
> seemed to do not have time for the project. But Trent did not want to
> give away the upstream project. Currently Michal fixes Avahi issues
> downstream in Fedora/RHEL.
> 
> Is there a way how to solve the situation? Cloning the project is not
> optimal, because Trent's github repo is still the first obvious choice
> when you google 'avahi github'.

As Debian does not accept carrying patches distro only with upstream not 
taking them and also as it is very awkward if all distros have to carry 
the same patch due to upstream not caring, and naturally also an 
integral part of the OS needs solid upstream maintainership, this is an 
unbearable situation.

It would be great if someone could convince Trent to accept a 
co-maintainer who also can directly commit to and also issue releases of 
Avahi. If Trent refuses this, I see as the only solution the forking of 
the project. This is the usual way how one handles these situations.

The current official Avahi repo is

https://github.com/lathiat/avahi/

so it is under the personal domain of Trent and not a project domain as 
for example

https://github.com/openprinting/

where cups-filters, ippusbxd and others are.

So I checked

https://github.com/avahi/

and there is something which has nothing to do with Avahi. We should ask 
the owner whether he could move his GitHub activity to another name to 
free avahi for us and then we put our fork of Avahi there.

If this does not work out I suggest to host the Avahi fork on GitLab.

Or should we fork Avahi under a new name then?

    Till
