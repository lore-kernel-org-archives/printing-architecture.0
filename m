Date: Thu, 12 Dec 2002 22:49:28 +0900
From: Yasumasa TORATANI <toratani.yasumasa@canon.co.jp>
Subject: Re: [Printing-architecture] Bi-di plug-in functionarities
In-Reply-To: <3DF608B2.2040501@easysw.com>
References: <20021210170329.CF52.TORATANI.YASUMASA@canon.co.jp> <3DF608B2.2040501@easysw.com>
Message-Id: <20021212220410.CF86.TORATANI.YASUMASA@canon.co.jp>
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

On Tue, 10 Dec 2002 10:30:58 -0500
Michael Sweet <mike@easysw.com> wrote:

> Actually, a driver can use select() to determine when it is
> "safe" to write a buffer of data and when there is backchannel
> data available, so threading is not needed.  Also, threading

That makes sense to me. I've got how we should do on the
CUPS 1.2 driver, and I suppose we should consider PIPE_BUF 
to handle writing, reading and timeout events effectively.

Thanks,
Yasumasa TORATANI.


