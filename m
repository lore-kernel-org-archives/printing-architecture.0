Return-Path: <jsmeix@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date: Fri, 14 Aug 2020 10:47:42 +0200
From: Johannes Meixner <jsmeix@suse.de>
Message-ID: <b632639fbe44c484b718bfb5ff5c8f57@suse.de>
Subject: [Printing-architecture] Will IPP printer devices and Printer
	Applications obsolete the cupsd?
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org


Hello,

I have a general question:

Will IPP printer devices and Printer Applications obsolete the cupsd?

My current understanding about future Linux printing is that
"printing targets" (i.e. whereto clients send what to print)
will be only IPP servers
either as IPP server running inside an IPP printer device
or as IPP server running in a Printer Application
and
clients autodetect the "printing targets" via DNS-SD
(mostly indirectly via a DNS-SD listener like Avahi)
and then
clients communicate via IPP directly with a "printing target"
to get the actual printing done.

The cupsd is also an IPP server
but when clients communicate directly with
IPP printer devices or Printer Applications
I wonder what is left as use case to have a cupsd running?

Or in other words:
When filters and backends are dropped from CUPS
what would be still left to do for a cupsd?
I.e. what service would a cupsd still provide then?
Cf.
https://www.cups.org/doc/man-filter.html
and
https://www.cups.org/doc/man-backend.html
that read (excerpt)
"CUPS printer drivers and backends are deprecated and
will no longer be supported in a future feature release of CUPS"


Kind Regards
Johannes Meixner
-- 
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5 - 90409 Nuernberg - Germany
(HRB 36809, AG Nuernberg) GF: Felix Imendoerffer

