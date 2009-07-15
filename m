Message-ID: <4A5E26C2.2090909@gmail.com>
Date: Wed, 15 Jul 2009 20:58:10 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Updated PPD extensions
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Per Hermansson <hermansson.per@bredband.net>, Alexander Wauck <alex.wauck@gmail.com>, Lars Uebernickel <larsuebernickel@gmx.de>, Peter Sikking <peter@mmiworks.net>

Hi,

to fulfill the needs of Peter's last dialog UI design, there is a field 
in the dialog now for short descriptions of the quick presets. To allow 
individual, user-friendy help texts there (and not simply list the 
options which get set by the quick preset) I have added the new

*APPrinterPresetDescription <choice>: "<description>"

keyword and translations for it. I also added fallback rules for filling 
the description field when the new keyword is not used or when the 
presets come from a fallback (like the PrintoutMode option in Foomatic 
PPDs).

For multi-function printers I have added the new widget hint 
"faxnumber", so that one can tell that a string option represents a fax 
number and so one can add a button to the string input field which opens 
the user's address book.

See all the changes in

http://www.linuxfoundation.org/en/OpenPrinting/PPDExtensions

Click "History" at the bottom to visualize only the changes.

Please take these new extensions into account for the dialog.

    Till
