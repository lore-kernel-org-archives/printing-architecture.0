Message-ID: <491330CF.9080901@gmail.com>
Date: Thu, 06 Nov 2008 19:00:47 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <ED4094DE5E8ACD4BBDACA6AD398E608F1B2A8F@EEAEX03.us.epson.net>
In-Reply-To: <ED4094DE5E8ACD4BBDACA6AD398E608F1B2A8F@EEAEX03.us.epson.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Some Comments/ Feedback on CPDAPI
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Cc: printing-architecture@lists.linux-foundation.org

Petrie, Glen wrote:
> [gwp] I am not expecting the caller application to receive the
> print-intent to be spooled; but it could.  I hope that CPD will be able
> to talk to other spoolers or """print""" controller/service software
> other than CUPS.  If you think of CPD as a printing-client then there
> has to be a way for CPD to send print-intent content to any CPD
> qualified print controller/service.
>

The specs are not tied to CUPS, only the implementations of the GSoC 
students are made for CUPS.

> [gwp] If the goal is that CPD will only talk with CUPS, I have
> misunderstood the intent of this activity.  I would think that the CUPS
> team should define, design and provide the implementation of CPD. 
> 

As the implementation are GUI programs based on the desktop's toolkits 
we have decided to get them part of the desktops. So GNOME users will 
see the GNOME implementation and KDE users the KDE implementation.

> 
> [gwp] I am still not communicating correctly.  The CPD has reads the PPD
> CPD extension content. But the application wants to add new/more values
> to an option beyond the values that were specified in PPD.  So the
> new/more values would never have been in the PPD.
>

The app is supposed to add its own options. If it adds choices to 
existing PPD options there must be some conditions fulfilled that the 
driver could really cope with that:

1. The options need standardized names, so that it works with as many 
drivers/printers as possible, like names defined by the PPD specs from 
Adobe or by JTAPI.

2. The options must support custom values (custom paper size, numerical 
or string options) and the app adds only some more pre-defined choices 
which are in the range of the custom value.

3. If the option where the app wants to add choices does not exist, the 
adding of choices should get silently ignored.

> [gwp] Since the PPD CPD extensions are being done by the OpenPrinting
> Architecture team; they have very strongly recommended that CPD
> options/tags/values be based on JTAPI.  All members of the Architecture
> Team have real life experience with this situation and JTAPI was based
> on domain experts with years of printing/print-job experience.
>

Yes, I will add a paragraph to the PPD extensions that options and 
choices provided by the JTAPI should be named appropriately in the PPDs.

    Till

