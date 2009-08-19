Message-ID: <4A8BD3C1.7050504@gmail.com>
Date: Wed, 19 Aug 2009 12:28:17 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Common Printing Dialog: Getting it finished
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Open Printing <printing-architecture@lists.linux-foundation.org>, Lars Uebernickel <larsuebernickel@gmx.de>, Per Hermansson <hermansson.per@bredband.net>, Alexander Wauck <alex.wauck@gmail.com>

Hi,

the coding period of the Google Summer of Code is officially over and 
you did great work during this time, Per and Alex. Thank you very much.

Per and Alex, we are very grateful if you continue working on your 
printing dialogs do finish them.

Please go through the PPD extensions and check if they are all supported 
(especially also the fallbacks, like using the "PrintoutMode" option as 
presets if there are no presets explicitly defined).

Please also implement the level 3.5, the expansion of the dialog to the 
bottom if the option widgets of level 2 do not fit into the space on the 
right. Try also to make all widgets (queue and preset drop-downs, tags, 
option widgets, ...) smaller to make it easier with the small space 
given by the specs.

    Till
