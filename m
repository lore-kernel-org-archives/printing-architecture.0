Message-ID: <3DF608B2.2040501@easysw.com>
Date: Tue, 10 Dec 2002 10:30:58 -0500
From: Michael Sweet <mike@easysw.com>
MIME-Version: 1.0
Subject: Re: [Printing-architecture] Bi-di plug-in functionarities
References: <20021209172714.CF10.TORATANI.YASUMASA@canon.co.jp> <3DF4A678.5040204@easysw.com> <20021210170329.CF52.TORATANI.YASUMASA@canon.co.jp>
In-Reply-To: <20021210170329.CF52.TORATANI.YASUMASA@canon.co.jp>
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
> Yes, and I suppose it might be better, for instance,  in case of
> the printing data being blocked due to the buffer full or some
> error, such as no paper, while the driver writes the printing
> data into the pipe. I suppose the driver can't read the printer
> info from the backchannel under the single process when it's
> blocked, but the driver doesn't have to read any printer info
> from the backchannel pipe with another process or thread of
> the driver, since the printer info which affects the printer data
> generation should be obtained once before each printing, and
> probably, printer error and other info should be obtained by
> another process separately.

Actually, a driver can use select() to determine when it is
"safe" to write a buffer of data and when there is backchannel
data available, so threading is not needed.  Also, threading
can introduce performance and portability issues on some
platforms, and isn't always the correct solution under UNIX.
(unfortunately, threads are the only way to implement some
things under Windows...)

> ...
> So, one process for generating and writing the printing data,
> and another process for reading the printer status is the point.

That is one possible implementation, and it is used for the
current EPSON and Canon backends for the GIMP-print project to
provide ink level information to the user.

Again, it isn't the only possible implementation, and CUPS can
support any kind of backend/driver architecture.  The *optimal*
one from the CUPS standpoint is one where the driver handles
the encoding/decoding of printer data, and the backend handles
the communications with the printer.

-- 
______________________________________________________________________
Michael Sweet, Easy Software Products                  mike@easysw.com
Printing Software for UNIX                       http://www.easysw.com


