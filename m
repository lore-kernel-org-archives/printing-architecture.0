Message-ID: <3DF0C490.2010708@easysw.com>
Date: Fri, 06 Dec 2002 10:38:56 -0500
From: Michael Sweet <mike@easysw.com>
MIME-Version: 1.0
Subject: Re: [Printing-architecture] Bi-di plug-in functionarities
References: <20021206205608.CED9.TORATANI.YASUMASA@canon.co.jp>
In-Reply-To: <20021206205608.CED9.TORATANI.YASUMASA@canon.co.jp>
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Transfer-Encoding: 7bit
Sender: printing-architecture-admin@freestandards.org
Errors-To: printing-architecture-admin@freestandards.org
List-Help: <mailto:printing-architecture-request@freestandards.org?subject=help>
List-Post: <mailto:printing-architecture@freestandards.org>
List-Subscribe: <http://freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@freestandards.org?subject=subscribe>
List-Id: <printing-architecture.freestandards.org>
List-Unsubscribe: <http://freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@freestandards.org?subject=unsubscribe>
List-Archive: <http://freestandards.org/pipermail/printing-architecture/>
To: Yasumasa TORATANI <toratani.yasumasa@canon.co.jp>
Cc: printing-architecture@freestandards.org, printing-japan@freestandards.org

Yasumasa TORATANI wrote:
> ...
> 3) Each bi-di plug-in module for each printer vendor has the
>     following functionarities;
>   a) Handle the vendor dependent protocol to communicate with
>       each vendor's printer.
>   b) Obtain the printer status, including error, e.g. ink level,
>       paper jam, no cartridge, etc.
>   c) Obtain the information of the printer options, e.g. sorter,
>       stapler, extended memory, etc.
>   d) Printer discovery for both local and network.
>   e) No UI. to be simple and generic.
>   f) In some cases, receive the printing data from the upper system,
>      translate it for eachr device or protocol, and send it to the
>      appropriate target.
>   g) Send the printer information to the upper system.

FWIW, in CUPS #3 is normally handled by the backend (in CUPS 1.1
and earlier) and/or by the driver (in CUPS 1.2), the idea being
that the same commands/protocols will generally be used over
serial, parallel, USB, and network connections, and since the
driver has a copy of the device URI (the device for the printer)
it can tailor its input/output accordingly.

-- 
______________________________________________________________________
Michael Sweet, Easy Software Products                  mike@easysw.com
Printing Software for UNIX                       http://www.easysw.com


