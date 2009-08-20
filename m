Message-ID: <4A8D6FC4.50000@gmail.com>
Date: Thu, 20 Aug 2009 17:46:12 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Printing dialog hangs when server does not
	react
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Open Printing <printing-architecture@lists.linux-foundation.org>, Per Hermansson <hermansson.per@bredband.net>, Lars Uebernickel <larsuebernickel@gmx.de>, Alexander Wauck <alex.wauck@gmail.com>

Hi,

am annoying bug is that the printing dialog and with it the application 
freezes when a CUPS dserver is not answering requests. See

http://bugzilla.gnome.org/show_bug.cgi?id=424041
https://bugs.launchpad.net/bugs/156647

Unfortunately, Mike Sweet, author of CUPS, refuses to solve the problem 
on the CUPS side. See

http://www.cups.org/str.php?L3033

So every application which uses the CUPS API to list available printers 
and their capabilities and also sends jobs needs to take this into 
account, for example by asynchronous access to CUPS.

Can you take this into account for the Common Printing Dialog?

    Till
