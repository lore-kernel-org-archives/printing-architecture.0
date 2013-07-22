Return-Path: <jpopelka@redhat.com>
Message-ID: <51ED6BDA.2080206@redhat.com>
Date: Mon, 22 Jul 2013 19:28:58 +0200
From: Jiri Popelka <jpopelka@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] printers.conf frequently gets truncated to
 zero length after unclean shutdowns
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
Cc: printing-architecture@lists.linux-foundation.org, sandeen@redhat.com, sbergman27@gmail.com

Hello,

When cupsd lives on a filesystem with delayed allocation, like ext4 and
it experience an unclean shutdown under heavy load, its printers.conf 
very often ends up being truncated to zero.

Even original report (https://bugzilla.redhat.com/show_bug.cgi?id=984883)
has been against cups-1.4.2 I've seen no reason to think this has been 
fixed in recent versions.
I see cupsd since 1.5 (due to STR #3715) has been more carefully 
creating and removing conf files,
but that doesn't seem to be sufficient.
Especially updating of printers.conf probably needs some sort of 
synchronization data to disk.

I have a patch (in comment #11), which makes cupsd read backup 
filename.O file if filename is truncated to zero, but that's only a 
work-around
and I'm afraid it won't work if the file gets updated couple times 
between last sync and the unexpected shutdown.

I've promised interested parties to ask you publicly
and since bug tracker @ cups.org is still down ... here I am ;-)

With regards,
Jiri
