Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <51B99888.2040406@gmail.com>
Date: Thu, 13 Jun 2013 07:25:14 -0400
Message-id: <D58FE099-79EB-4E3D-904F-B09F4D787B89@apple.com>
References: <519537F0.8020405@gmail.com>
	<FDC917F9-BB2B-4117-9F4A-D817841E5AE8@apple.com>
	<51B99888.2040406@gmail.com>
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
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, Marek Kasik <mkasik@redhat.com>

Till,

On 2013-06-13, at 6:01 AM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
> On 05/17/2013 07:32 AM, Michael Sweet wrote:
>> You need some sort of local spooling, but it need not be cupsd doing the spooling. Consider writing a small DBUS-based spooler that provides UI for monitoring and canceling the job.  This spooler could also handle the basic conversion from PDF to PWG Raster and could despool to cupsd or direct to a printer.
> 
> This would mean to resemble large parts of CUPS (spooling, filtering,
> but not networking) for a per-user/per-app printing system, needing a
> lot of maintenance/development man power, and extra resources on mobile
> devices.


One of the things I'll be working on post-1.7 is a generic IPP service API that can be used to implement custom spoolers, lightweight print services on NAS boxes, etc. The same API could be used as the basis of a user session print service that interfaces directly with IPP printers and talks to a local cupsd for USB and other legacy queues, or to (for example) implement a service on top of, say, Gutenprint to provide an IPP Everywhere gateway to raster drivers (one possible post-PPD future).

The key is re-use of the core CUPS bits (we've already had a lot of success with that at Apple) and abstracting away the common service/spooler aspects so that the only maintenance you have is for the small bits of glue code you use.

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

