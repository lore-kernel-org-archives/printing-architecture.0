Message-ID: <49EF8444.7010304@gmail.com>
Date: Wed, 22 Apr 2009 22:55:32 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <ED4094DE5E8ACD4BBDACA6AD398E608F379D52@EEAEX03.us.epson.net>
	<3602B1A0-C33E-4665-BBB6-46D59F2F044E@apple.com>
	<ED4094DE5E8ACD4BBDACA6AD398E608F379D57@EEAEX03.us.epson.net>
	<49EF53C7.8020901@the-axe-effect.de>
	<ED4094DE5E8ACD4BBDACA6AD398E608F379D5B@EEAEX03.us.epson.net>
	<ED4094DE5E8ACD4BBDACA6AD398E608F379D64@EEAEX03.us.epson.net>
	<49EF7E44.6040700@gmail.com>
	<B6DB3491-8B38-4F9B-940F-69CF61B7A93E@apple.com>
In-Reply-To: <B6DB3491-8B38-4F9B-940F-69CF61B7A93E@apple.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [Printing-summit] Print Dialog:
 PreviewProcessing: Only A Question
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael R Sweet <msweet@apple.com>
Cc: "Petrie, Glen" <glen.petrie@eitc.epson.com>, printing-architecture@lists.linux-foundation.org, printing-summit@lists.linux-foundation.org

Michael R Sweet wrote:
> Or just use the size from the document/app as the default and changing 
> to any other size does scaling. (otherwise, what is the document size if 
> you don't show it?)

There can be documents which have different page sizes, for example page 
1 and A4, page 3 A3 and page 4 A4 again. With "Document Page Size(s)" an 
appropriately loaded printer will take A4 paper for the pages 1, 2, and 
4 and A3 paper for page 3. All selections of a concrete page size will 
let the printer print all pages on the same paper size, using different 
scaling factors if needed.

    Till
