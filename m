Message-ID: <48908DD8.2080405@gmail.com>
Date: Wed, 30 Jul 2008 17:50:48 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Common Printing Dialog: PPD extension specs
	updated
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Printing-japan <printing-japan@lists.linux-foundation.org>, gimp-print-devel <gimp-print-devel@lists.sourceforge.net>, Michael R Sweet <msweet@apple.com>, Jonathan Riddell <jriddell@ubuntu.com>

Hi,

after the conference call last week with Peter Sikking and the two GSoC 
students implementing the dialog and after some discussion with Mike 
Sweet from CUPS I have updated the specs of the PPD extensions:

http://www.linuxfoundation.org/en/OpenPrinting/PPDExtensions

I have done the following changes:

- Replaced the "*OPQuickPresets" keyword by "*APPrinterPreset" as
   defined in the CUPS PPD extensions on
   http://www.cups.org/documentation.php/spec-ppd.html#APPrinterPreset

- Mentioned that UI texts of PPDs should not be too long due to limited
   space in the dialog.

- Mentioned that a PPD cannot have more that 11 tags.

- Allow tags for options which are not in the PPD (like CUPS options)

- Allow canceling tags (like the predefined tags coming from CUPS
   options).

- Added section about CUPS options and their pre-defined tags

- Added new "donthide1choice" widget hint to not suppress an option
   when it has only one choice.

I appreciate very much your comments, especially about the tags for the 
CUPS options and additional document types for the "*APPrinterPreset" 
keyword.

I think with these extensions we should be well approaching the final 
specs for the PPD extensions.

    Till
