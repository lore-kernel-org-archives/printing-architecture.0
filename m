Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=hWB7OUmA3nPmwPuBALGZk+KZUn3Z5OYEVnPlT7lJhG0=;
	b=V9SVc2f92WXghY1s8OkfVwA81PfhCbf5JEBOARSZXkWLbXOrEbneKs6HnptvOBACqv
	AdSdfZ8zXG4CudAi2LdHim2dRFPnKDfZVjIBf/WLHbqjOt5+8OFzhsxz8SX9M5f2Ou3t
	bMu3fr2uGfH28lvDQlCtC+VKR2raxTrMZdT7lUSahvQyZobto9qVhNDXpa997UjOOQUV
	8ofP8z+nJ9Qki8O6MHp4VV/sr2Jfkfg0dUZRoZCeV8ZPGBphJItSHYUSgKmIWj8FXRHS
	e/X5G1MhdXpNBvApfLwTTTzUtOEE8ZG5JU/taO737z1pPjEpjDvRBg4LzDxpupqjuM9K
	VCfg==
Message-ID: <51378495.4020500@gmail.com>
Date: Wed, 06 Mar 2013 19:01:57 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Changes in Ubuntu
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Open Printing <printing-architecture@lists.linux-foundation.org>

Hi,

as mentioned in today's phone meeting, some things have changed in Ubuntu.

Formally, we had a release every 6 months, one in the end of April and
one in the end of October. Every 4th release (April releases in even
years) was an LTS (Long-Term Support, security and bug fix updates for 5
years), the others are standard releases with updates for 18 months. The
development of each release was kicked of by a Ubuntu Developer Summit
(UDS) in May and November, all the developers (not only Canonical
employees) meeting in person for one week in a huge hotel with lots of
meeting rooms, planning the next release.

The new scheme is the following: We go on releasing LTSes every two
years, with the next end of April 2014, but the inbetween standard
releases get replaced by a so-called "Rolling Release". The development
branch is maintained in a much higher level of stability and intended
for the daily use by the users who used the standard 6-month-frequency
releases before. We generate monthly ISOs to allow fresh installations
and once installed one uses our daily updates. The two UDSes in the year
are replaced by 4 UDSes every 3 months and they are held virtually, the
huge hotels replaced by the more huge internet and the sessions done as
video conferences, exactly to say Google+ hangouts.

The first virtual UDS was yesterday and today, and the next will be in
May, most probably in the week right before the OpenPrinting Summit.

Currently, the most important project of Canonical is to bring Ubuntu
onto mobile devices, phones and tablets. Last week, on the Mobile World
Congress in Barcelona, Canonical announced Ubuntu Touch, the mobile
version of Ubuntu, to the public.

So everyone is working on getting everything working on mobile, also me
as the maintainer of Ubuntu's printing stack is doing the appropriate
part. This is the reason why I am working on cups-browsed discovering
Bonjour-broadcasted IPP printers with known languages (PWG-Raster/IPP
Everywhere, PDF, PostScript, PCL) and setting them up as local CUPS
queues fully automatically, without interactive printer setup tool and
without printer-model-specific software or date (printer drivers, PPDs)
on the local machine. Users should simply get the network printers in
the app's print dialogs to just print.

In addition, I am splitting up the printing-related Ubuntu packages so
that the big printing stack with tons of printer drivers, PPDs, and
printer setup tools can be replaced by a ligh-weight one for mobile devices.

The RIP on mobile will be Poppler, as Poppler is already there for the
PDF viewer, mobile apps will never send PostScript jobs, color
management is not yet implemented on mobile, and the PostScript
generated for PostScript printers from Poppler is much better than the
one from Ghostscript (in terms of compatibility with buggy PS printers).

About all this I have talked in my UDS session today. See

http://summit.ubuntu.com/uds-1303/meeting/21685/client-1303-printing-stack-with-mobile-in-mind/

There is a recording (video) and a write-up.

See also the Ubuntu Blueprint related to the session:

https://blueprints.launchpad.net/ubuntu/+spec/client-1303-printing-stack-with-mobile-in-mind

   Till
