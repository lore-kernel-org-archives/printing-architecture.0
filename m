Date: Tue, 10 Dec 2002 19:52:56 +0900
From: Yasumasa TORATANI <toratani.yasumasa@canon.co.jp>
Subject: Re: [Printing-architecture] Bi-di plug-in functionarities
In-Reply-To: <3DF4A678.5040204@easysw.com>
References: <20021209172714.CF10.TORATANI.YASUMASA@canon.co.jp> <3DF4A678.5040204@easysw.com>
Message-Id: <20021210170329.CF52.TORATANI.YASUMASA@canon.co.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
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
To: Michael Sweet <mike@easysw.com>
Cc: Pete Zannucci <pzaan@us.ibm.com>, printing-architecture@freestandards.org, printing-japan@freestandards.org

On Mon, 09 Dec 2002 09:19:36 -0500
Michael Sweet <mike@easysw.com> wrote:
> As I've posted before, the CUPS 1.2 dataflow will include a
> pipe going from the backend to the filters, so the backend can
> send the backchannel data to a printer-specific printer driver

Sorry for my diagram based on the current CUPS stuff.
I rewrote it for CUPS 1.2, and changed the [CUPS filters] to
[driver].

     +----------+
      |                 |
     V                |
[driver]-->[CUPS standard backend]<-->[bi-di plug-in]<-->[prt]

or

     +----------+   +----[bi-di plug-in]--------+
      |                |     |                                         |
     V               |    V                                        |
[driver]-->[CUPS standard backend]---->[prt]

> Your implementation is basically making
> the CUPS backend a printer driver which talks with a separate
> daemon/process to communicate with the device.

Yes, and I suppose it might be better, for instance,  in case of
the printing data being blocked due to the buffer full or some
error, such as no paper, while the driver writes the printing
data into the pipe. I suppose the driver can't read the printer
info from the backchannel under the single process when it's
blocked, but the driver doesn't have to read any printer info
from the backchannel pipe with another process or thread of
the driver, since the printer info which affects the printer data
generation should be obtained once before each printing, and
probably, printer error and other info should be obtained by
another process separately.

For instance, the bi-di plug-in module, if it is a separated
process from the driver and backend, the bi-di plug-in can
read the printer info from the printer and send it back to the
upper system periodically via another path, such as stderr,
and user can see the printer info.

So, one process for generating and writing the printing data,
and another process for reading the printer status is the point.

As you mentioned, we can do like this with the customized
backend and/or customised daemon which communicate with
the printer, but I suppose preparing the bi-di plug-in has some
benefit for CUPS and other printing systems.

I appreciate any comment, and this week, I'll summarize
the matter of discussion we had, then report to the Japanese
members and discuss about it.

Thanks,
Yasumasa TORATANI.


