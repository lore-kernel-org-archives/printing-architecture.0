Message-ID: <4A86AA98.8010003@gmail.com>
Date: Sat, 15 Aug 2009 14:31:20 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Common Printing Dialog and job being
	rejected by CUPS
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Alexander Wauck <alex.wauck@gmail.com>, Per Hermansson <hermansson.per@bredband.net>, printing-architecture@lists.linux-foundation.org, Lars Uebernickel <larsuebernickel@gmx.de>

Hi,

please have a look at

http://bugzilla.gnome.org/show_bug.cgi?id=384940

and make sure that this bug does not occur for the Common Printing 
Dialog. The dialog must handle

1) printer being paused
2) printer rejecting jobs
3) user not allowed to use a printer
4) user required to enter login/password to use a printer

in a meaningful way, by asking for login and password if needed, not 
allowing to select a printer, popping up error dialogs if jobs get rejected.

    Till


