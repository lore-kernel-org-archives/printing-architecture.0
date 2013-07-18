Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <51E82B1D.7070007@gmail.com>
Date: Thu, 18 Jul 2013 15:05:20 -0400
Message-id: <9CB486A0-27B4-4A4C-8017-05A9DD56C978@apple.com>
References: <D87733EE-8A2E-4F85-9978-715E38D8A22F@apple.com>
	<51E82B1D.7070007@gmail.com>
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
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Gutenprint Mailing List <gimp-print-devel@lists.sourceforge.net>

Till,

On 2013-07-18, at 1:51 PM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
> ...
> What I would like to see is the possibility to have quirk rules (or at
> least blacklisting) also for other backends.

Such as?

> Also the prossibility to
> prioritize backends via a directory of files would be great.

The problem with priorities are:

1. How do you identify identical devices?
2. Whose priority wins? (the user's priority, the manufacturer's priority, the developer's priority, the system's priority, the site's priority?)

> This could
> assure correct automated printer setup in all situations. In addition,
> it must be assured that when one and the same printer is discovered by
> various backends that these discoveries can be assigned to that one printer.

We had a bug tracking this on cups.org, but it got closed without resolution because this turned out to be impossible in the general case.

> To conform with the files system hierarchy standard your patch needs a
> small modification: Quirk files need to be searched in two directories,
> once the one you are already using, /usr/share/cups/usb/, for the quirk
> files of CUPS itself and of other packages, like Gutenprint, and second,
> something in /etc/, like /etc/cups/backend/usb/, for rules defined by
> the local user or admin.

I really don't want to add more directories, particularly for something that will be an extremely uncommon situation for ordinary users to be dealing with.  Any local changes that *do* get made will presumably end up getting pushed upstream into CUPS proper or into the corresponding driver packages.

And if there are any people out there still NFS-mounting a read-only /usr filesystem, they'll just need to serve up the same local USB quirks to all users...

So let's not make this any more complicated than it needs to be.  The primary purpose here is to enable Gutenprint and others to blacklist USB printers that need special love to work and not to enable customization/configuration by the user.

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

