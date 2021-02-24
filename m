Return-Path: <jsmeix@suse.de>
MIME-Version: 1.0
Date: Wed, 24 Feb 2021 13:01:22 +0100
From: Johannes Meixner <jsmeix@suse.de>
In-Reply-To: <66430674-dc47-4a81-406b-aedefc065a37@gmail.com>
References: <12af8541-3113-341d-6b7f-d7393203368f@gmail.com>
 <949aea1f-a0f0-df47-1538-d7782f5350ab@redhat.com>
 <66430674-dc47-4a81-406b-aedefc065a37@gmail.com>
Message-ID: <bcc4538ef1b6e8ef9395dda295f00eac@suse.de>
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
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
To: printing-architecture@lists.linux-foundation.org


Hello,

On 2021-02-24 12:25, Till Kamppeter wrote (excerpts)
> So udev-configure-printer will get turned into a
> permanent daemon and if it detects a printer plug/unplug
> it does more or less what the former udev-configure-printer
> did, but instead of creating a queue on CUPS it creates
> one on a Printer Application.
...
> We must keep in mind that everything should work in Snaps.
...
> udev-configure-printer will need an interface at all Printer
> Applications where it can send a device ID and the Printer Application
> answers back whether it supports this printer (with driver name), and
> that without the Printer Application talking to the physical printers.
> This interface more or less calls the autoadd callback function of the
> Printer Application. This way udev-configure-printer will find out
> whether there is support for the printer and if yes, by which Printer
> Applications and then prioritize. Great would be if a Printer
> Application also could report back support level (generic,
> third-party, manufacturer, ...). It could perhaps also prioritize
> unknown Printer Applications as they are most probably from the
> manufacturer and not from the distro.

if I understand it correctly the basic idea behind is
that for printer setup inside a container
(I use 'container' as generic name for any isolated environment
  that has no direct access to the outer world e.g. also chroot)
udev-configure-printer acts as proxy for outer world access.

This leads me to a - perhaps crazy - idea:
Why not having a general printer access proxy daemon
that is running on the container host for any printer access
that is needed from inside a container i.e. also for normal
printing operations?

I am not at all a container expert but as far as I know
the usual access method between inside a container and the
outer world happens via network so a "USB access proxy"
that runs on the container host should be accessible via
network from within the container.

But this leads to the next - perhaps even more crazy - idea:
Why not having a USB printer wrapper daemon running on the
container host that wraps a USB printer into a network printer
so that from within the container the Printing Application
sees only DNS-SD announced network printers?


Kind Regards
Johannes Meixner
-- 
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5 - 90409 Nuernberg - Germany
(HRB 36809, AG Nuernberg) GF: Felix Imendoerffer
