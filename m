Message-ID: <3DF4A678.5040204@easysw.com>
Date: Mon, 09 Dec 2002 09:19:36 -0500
From: Michael Sweet <mike@easysw.com>
MIME-Version: 1.0
Subject: Re: [Printing-architecture] Bi-di plug-in functionarities
References: <OF69D15E56.869D8C9E-ON85256C87.0057F781@pok.ibm.com> <3DF0E854.3050802@easysw.com> <20021209172714.CF10.TORATANI.YASUMASA@canon.co.jp>
In-Reply-To: <20021209172714.CF10.TORATANI.YASUMASA@canon.co.jp>
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
Cc: Pete Zannucci <pzaan@us.ibm.com>, printing-architecture@freestandards.org, printing-japan@freestandards.org

Yasumasa TORATANI wrote:
> ...
> The dataflow is as following;
> 
> [CUPS filters]-->[CUPS standard backend]<-->[bi-di plug-in]<-->[prt]
> 
>     or
>                                    +----[bi-di plug-in]--------+
>                                    |                                         |
>                                   V                                        |
> [CUPS filters]-->[CUPS standard backend]---->[prt]
> 
> Furthermore, if we make the bi-di plug-in API generic, everyone will
> be able to reuse these modules for any other printing system if they
> want.

As I've posted before, the CUPS 1.2 dataflow will include a
pipe going from the backend to the filters, so the backend can
send the backchannel data to a printer-specific printer driver
for processing (so the intelligence would be in the printer driver
and not in the backend).  Your implementation is basically making
the CUPS backend a printer driver which talks with a separate
daemon/process to communicate with the device.  This is certainly
doable, but limits the use of your driver to interfaces that the
bi-di plug-in API (instead of all devices); we wouldn't do that
for regular consumer devices, but if you have a custom interface
already (high-speed serial card/whatever) to the device, this isn't
so much of an issue...

-- 
______________________________________________________________________
Michael Sweet, Easy Software Products                  mike@easysw.com
Printing Software for UNIX                       http://www.easysw.com


