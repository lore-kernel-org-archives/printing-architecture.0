Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <5273C36D.4000600@gmail.com>
Date: Fri, 01 Nov 2013 11:32:26 -0400
Message-id: <1A843A2E-5A54-4F1B-ACAE-431E68F76C29@apple.com>
References: <51BA5B58.3080208@gmail.com> <5270DD07.4080601@gmail.com>
	<B68BB93E-6180-44CE-BEDA-3A499C72D823@apple.com>
	<5273C36D.4000600@gmail.com>
Subject: Re: [Printing-architecture] Concept for PPD-less CUPS-spooled
 printing on Bonjour-discovered network printers
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, John Layt <john@layt.net>, Marek Kasik <mkasik@redhat.com>

Till,

On Nov 1, 2013, at 11:06 AM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
>> ...
>> Till, I am curious why you are not using the CUPS APIs from 1.6 and later for this?
>> 
> 
> Which new CUPS APIs do you mean?

All of the new destination APIs, including:

    cupsConnectDest
    cupsCopyDestInfo
    cupsEnumDests

> ...
> What alternative would there be without waking up the printer when the
> mobile device enters the WLAN?

Don't create queues until you use/select a printer.  Trying to shoe-horn the former 1990's CUPS browsing experience just exposes the problems with that browsing experience in 2013.

A create-on-first-use approach allows you to list (but not wake up) local printers. And then the queue you create can be full-function, wake up the printer you are about to print to it, etc.
 
_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

