Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <m3a9lku1ia.fsf@dsl092-065-009.bos1.dsl.speakeasy.net>
Date: Wed, 17 Jul 2013 22:28:22 -0400
Message-id: <95726C4E-6A4A-466D-BF43-4D2B022D105B@apple.com>
References: <m3a9lku1ia.fsf@dsl092-065-009.bos1.dsl.speakeasy.net>
Subject: Re: [Printing-architecture] [Gimp-print-devel] RFC: Patch for
 (libusb-based) USB backend	for quirks files
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "Gutenprint (formerly Gimp-Print) printer driver development" <gimp-print-devel@lists.sourceforge.net>
Cc: printing-architecture@lists.linux-foundation.org

Robert,

On 2013-07-17, at 8:59 PM, Robert Krawitz <rlk@alum.mit.edu> wrote:
>> ...
>> If there are no objections these will be part of the 1.6.4 update (last in that series) and part of the 1.7.0 release.
> 
> How is a vendor-specific USB init string passed?

Currently this does nothing - it came from the usblp kernel driver.

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

