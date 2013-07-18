Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=/hEZTadhQZ9PRQMiH517VR/FEZ98Y24QwvZajX5xa3w=;
	b=XdFltFQ3vWSQkIAWrXQQnqFgsJzD9xbjl2WmfN2mT61Qt6L9CCLx+sTw/BiLg0sDdU
	k5yI9LkfKkHicbBwyzPdMYC8LUPrF/nXtm+WphWCzSGdw7qWtSc6FBhSgK1e7EKUuk0r
	6kyg83MJxDFsCDbouqqqI87Q/RJshgf++CBS1X/EyYu+yifwQoxpVL3xsnEviwneghmy
	lhPyExTMCXT16mXTAzL7YeXQz+P4hrg+oZlFbZEp7ZnOD2bBK8ihtRH4OFKbP17eJ5fB
	tw+rCbGi+G0MK/NPhodacGlvWZ51wHFMdVeqflDrk0o1BVUuGfoJkWx4fdmTluymz58/
	VoGg==
Message-ID: <51E82B1D.7070007@gmail.com>
Date: Thu, 18 Jul 2013 19:51:25 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <D87733EE-8A2E-4F85-9978-715E38D8A22F@apple.com>
In-Reply-To: <D87733EE-8A2E-4F85-9978-715E38D8A22F@apple.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] RFC: Patch for (libusb-based) USB
 backend for quirks files
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@apple.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Gutenprint Mailing List <gimp-print-devel@lists.sourceforge.net>

The patch is great. This makes it really much easier to handle quirk
rules for USB devices. This way one can ask users to add quirk rules
when they report a bug and so easily find the correct rules and the user
also has his problem properly solved until the rule makes it into CUPS.
Also the "whitelist" anti-quirk is a good idea to override
manufacturer-wide rules for some models.

What I would like to see is the possibility to have quirk rules (or at
least blacklisting) also for other backends. Also the prossibility to
prioritize backends via a directory of files would be great. This could
assure correct automated printer setup in all situations. In addition,
it must be assured that when one and the same printer is discovered by
various backends that these discoveries can be assigned to that one printer.

To conform with the files system hierarchy standard your patch needs a
small modification: Quirk files need to be searched in two directories,
once the one you are already using, /usr/share/cups/usb/, for the quirk
files of CUPS itself and of other packages, like Gutenprint, and second,
something in /etc/, like /etc/cups/backend/usb/, for rules defined by
the local user or admin.

   Till





On 07/17/2013 06:02 PM, Michael Sweet wrote:
> All,
> 
> Attached are patches for 1.7rc1 and 1.6.3 that add support for USB
> quirks files to the libusb-based USB backend.  The purpose of these
> patches is to allow third-party drivers (Gutenprint, others) that
> provide their own backends to blacklist the USB printers they support,
> or for those drivers to identify the specific quirks those printers need
> to work with the standard USB backend.
> 
> If there are no objections these will be part of the 1.6.4 update (last
> in that series) and part of the 1.7.0 release.
> 
> 
> 
> 
> 
> 
> _________________________________________________________
> Michael Sweet, Senior Printing System Engineer, PWG Chair
> 
> 
> 
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
> 

