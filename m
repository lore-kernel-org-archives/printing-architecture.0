Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <51B997DA.6070904@gmail.com>
Date: Thu, 13 Jun 2013 07:18:40 -0400
Message-id: <86EA801F-A308-43C8-9459-A64B4950625A@apple.com>
References: <519537F0.8020405@gmail.com> <51962BA7.4030304@redhat.com>
	<2414543F-1C84-41CA-A4C5-4FC127532B73@apple.com>
	<51B997DA.6070904@gmail.com>
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

On 2013-06-13, at 5:58 AM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
> On 05/17/2013 04:23 PM, Michael Sweet wrote:
>> Also, CUPS 1.6 and later have CUPS APIs for efficiently browsing for and getting printer capabilities.  I don't know what your requirements are for CUPS versions, but that would save a lot of code right there...
> 
> I have looked into the new APIs of CUPS 1.7.x and for example for
> getting the possible/available paper sizes of a printer and IPP request
> takes place. This still needs waking up the printer.

Indeed, but that doesn't happen until you ask for the information, which is presumably after the user has selected the printer and intents to use it...  We never fetch the information for a browsed printer until it is actually "used".

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

