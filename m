Message-ID: <4B913315.70708@gmail.com>
Date: Fri, 05 Mar 2010 17:36:37 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <20100305095257.9953.E0F122DE@canon.co.jp>
In-Reply-To: <20100305095257.9953.E0F122DE@canon.co.jp>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Problem with cupsCommand
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: TORATANI Yasumasa <toratani.yasumasa@canon.co.jp>, printing-japan@lists.linux-foundation.org, printing-architecture@lists.linux-foundation.org, "twaugh@redhat.com" <twaugh@redhat.com>

On 03/05/2010 03:09 AM, TORATANI Yasumasa wrote:
> 6) CUPS bugs related to "cupsCommand" keyword
>    - We think that the following "cupsCommand" spec is not preferable, and
>       if a PPD does not contain "cupsCommand" keyword, it should be dealt
>       that the printer driver defined by the PPD does not support
>       "cupsCommand" features.
>
>      http://www.cups.org/documentation.php/doc-1.4/spec-command.html
>      "If no cupsCommands keyword is provided, the command filter must support
>      AutoConfigure, Clean, PrintSelfTestPage, and ReportLevels"
>
>    - Can this spec be changed in CUPS 1.5?  *3

The problem is less the cupsCommands keyword and the defaults which are 
used if cupsCommands is not supplied, the problem is more that if a 
'*cupsFilter:' line like

*cupsFilter:    "application/vnd.cups-postscript 100 pstopxl"

is supplied and no 'cupsCommands' attribute that the 
CUPS_PRINTER_COMMANDS bit is set for the printer-type attribute. This 
makes client applications assume that the printer supports CUPS commands 
via the standard command filter commandtops. See

http://www.cups.org/str.php?L3273

But on the other side I have tested with a lot of print queues and found 
out that only for native PostScript printers (no *cupsFilter line) and 
for printers with explicit *cupsFilter line for a command filter in the 
PPD support the application/vnd.cups-command input format (according to 
error_log messages on daemon startup or queue creation, having set 
LogLevel=debug2). A queue with the pstopxl filter from Ghostscript (Tim, 
this is the case you reported in the CUPS bug report) is reported as not 
supporting application/vnd.cups-command.

So a client should perhaps better check for available input formats and 
ignore the CUPS_PRINTER_COMMANDS bit. Tim, please test (you could try to 
send a status check to the printer and see if a "data format not 
supported error gets reported").

    Till
