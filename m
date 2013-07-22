Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=PDKghhi146BfWk7meErRGe1jwggJbYuWX7ft7DxK2LY=;
	b=ms4u3FsYqj5+0uVDbcpWy+AQ7TmH7eU7pzzcci5VQ7+vqGsnMsSmmA4q6vXy28f1p3
	O6Y+Wk5ESF2JQ16eJ/HT9Dz/MH77bGdc7pqgIUMTIsbxmoTLBxylNWRsrbv6vO7sMmvC
	q/n3jnWlbuQPm1ncO1Z3q3kVMHMR29FLjeC4hYtCc0l14sNssilkNOjtApjWXsgZpioJ
	AkDNrQOWarmAzIZFerlBT6NnQUWW9E+GSTifAk5ILLVmwV8Ocu2rcYi4Hj7Wpjx2tyZJ
	u8WUioOHTa0RgujtB42t8DwgU1qpca9tix+oG65NpJR8znxmlEpsoA3JCGilYH44+ioH
	YoIA==
Message-ID: <51ED6FFD.7040700@gmail.com>
Date: Mon, 22 Jul 2013 19:46:37 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <51ED6BDA.2080206@redhat.com>
In-Reply-To: <51ED6BDA.2080206@redhat.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] printers.conf frequently gets truncated
 to zero length after unclean shutdowns
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Jiri Popelka <jpopelka@redhat.com>
Cc: printing-architecture@lists.linux-foundation.org, sandeen@redhat.com, sbergman27@gmail.com

On 07/22/2013 07:28 PM, Jiri Popelka wrote:
> Hello,
> 
> When cupsd lives on a filesystem with delayed allocation, like ext4 and
> it experience an unclean shutdown under heavy load, its printers.conf
> very often ends up being truncated to zero.
> 

I have seen some Ubuntu bug reports showing this, too, but never had an
idea how this can happen. Jiri, thank you for finding this out.

Principally, this should be a bug of ext4, as the idea of a journaling
file system is to avoid data loss on an unexpected shutdown.

Fixes in CUPS are more workarounds for the shortcomings/bugs of ext4.

> Even original report (https://bugzilla.redhat.com/show_bug.cgi?id=984883)
> has been against cups-1.4.2 I've seen no reason to think this has been
> fixed in recent versions.
> I see cupsd since 1.5 (due to STR #3715) has been more carefully
> creating and removing conf files,
> but that doesn't seem to be sufficient.
> Especially updating of printers.conf probably needs some sort of
> synchronization data to disk.
> 
> I have a patch (in comment #11), which makes cupsd read backup
> filename.O file if filename is truncated to zero, but that's only a
> work-around
> and I'm afraid it won't work if the file gets updated couple times
> between last sync and the unexpected shutdown.
> 

As CUPS is modifying printers.conf rather frequently, it is perhaps
worth to have always two copies of the most recent printers.conf and to
let CUPS modifying them one after the other to not lose the full file
but never more than the last modification.

   Till

