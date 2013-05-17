Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <1368784965.9612.0.camel@rubik>
Date: Fri, 17 May 2013 07:20:06 -0700
Message-id: <F3793563-5210-4AE1-AA3E-657923280A07@apple.com>
References: <519537F0.8020405@gmail.com>
	<FDC917F9-BB2B-4117-9F4A-D817841E5AE8@apple.com>
	<1368784965.9612.0.camel@rubik>
Subject: Re: [Printing-architecture] Some suggestions for the DNS-SD
 (Bonjour) printer support in the dialog
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Tim Waugh <twaugh@redhat.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, Marek Kasik <mkasik@redhat.com>, Till Kamppeter <till.kamppeter@gmail.com>

Tim,

On 2013-05-17, at 3:02 AM, Tim Waugh <twaugh@redhat.com> wrote:
> On Thu, 2013-05-16 at 22:32 -0700, Michael Sweet wrote:
>> You need some sort of local spooling, but it need not be cupsd doing
>> the spooling. Consider writing a small DBUS-based spooler that
>> provides UI for monitoring and canceling the job.  This spooler could
>> also handle the basic conversion from PDF to PWG Raster and could
>> despool to cupsd or direct to a printer.
> 
> This, in fact, was almost precisely the plan for the "printservice"
> project, currently stalled. :-(


:(  This was also my advice at the last OpenPrinting summit, and is potentially a future direction of CUPS itself (with different RPC transports on different platforms).

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

