Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <20130801145448.GA10904@shaftnet.org>
Date: Thu, 01 Aug 2013 10:57:36 -0400
Message-id: <1F1FE64F-8ADB-45C4-89E7-687D4E6AD086@apple.com>
References: <D87733EE-8A2E-4F85-9978-715E38D8A22F@apple.com>
	<20130801145448.GA10904@shaftnet.org>
Subject: Re: [Printing-architecture] [Gimp-print-devel] RFC: Patch for
 (libusb-based) USB backend for quirks files
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Solomon,

The necessary changes are part of CUPS 1.6.3 and 1.7rc1 that were released on the 11th.

(the GIT mirror is still experiencing technical difficulties and I need to pull it until it starts updating properly...)


On 2013-08-01, at 10:54 AM, Solomon Peachy <pizza@shaftnet.org> wrote:

> On Wed, Jul 17, 2013 at 12:02:48PM -0400, Michael Sweet wrote:
>> Attached are patches for 1.7rc1 and 1.6.3 that add support for USB quirks files to the libusb-based USB backend.  The purpose of these patches is to allow third-party drivers (Gutenprint, others) that provide their own backends to blacklist the USB printers they support, or for those drivers to identify the specific quirks those printers need to work with the standard USB backend.
> 
> Has there been any progress on this?  It doesn't look like it's been 
> committed into CUPS yet.
> 
> It looked good from my perspective, and things are ready on the 
> gutenprint side to generate and install an appropriate quirks file for 
> the printers that need blacklisting.
> 
> Cheers,
> 
> - Solomon
> -- 
> Solomon Peachy        		       pizza at shaftnet dot org
> Delray Beach, FL                          ^^ (email/xmpp) ^^
> Quidquid latine dictum sit, altum viditur.
> ------------------------------------------------------------------------------
> Get your SQL database under version control now!
> Version control is standard for application code, but databases havent 
> caught up. So what steps can you take to put your SQL databases under 
> version control? Why should you start doing it? Read more to find out.
> http://pubads.g.doubleclick.net/gampad/clk?id=49501711&iu=/4140/ostg.clktrk_______________________________________________
> Gimp-print-devel mailing list
> Gimp-print-devel@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/gimp-print-devel

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

