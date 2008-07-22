Message-ID: <4885ECA0.7020800@gmail.com>
Date: Tue, 22 Jul 2008 16:20:16 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Specs for PPD extensions updated: Fallbacks
 for legacy PPDs and option widget hinting
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Printing-japan <printing-japan@lists.linux-foundation.org>, "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Hi,

following the OpenPrinting Meeting in Tokyo of this month, I have 
updated the specs for the OpenPrinting PPD extensions:

https://www.linuxfoundation.org/en/OpenPrinting/PPDExtensions

At first I have described fallback methods for how the Common Printing 
Dialog (or any printing dialog in general) should behave if an option 
definition in a PPD does not use the appropriate keywords of the PPD 
extension. These fallback methods I have clearly marked with the word 
"Fallback:" in bold so that one can quickly browse over the specs and 
see which fallbacks are supposed to be used. I think this makes more 
sense than moving them to an extra page, as now they stand together with 
the new keywords which they replace.

I have also added a new keyword which allows to give hints with each 
option definition, which type of widgets should be used. Here both data 
types or directly widget types can be supplied.

    Till
