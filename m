Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Date: Fri, 20 Jun 2008 14:11:05 -0700
Message-ID: <ED4094DE5E8ACD4BBDACA6AD398E608F02412F@EEAEX03.us.epson.net>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Subject: Re: [Printing-architecture] [Printing-japan] Printer setup tools:
	Automatically choose thecorrect backend
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "Suffield, David" <david.suffield@hp.com>, Till Kamppeter <till.kamppeter@gmail.com>, printing-architecture@lists.linux-foundation.org, printing-foomatic@lists.linux-foundation.org, Tim Waugh <twaugh@redhat.com>, "Yie, Shiyun" <shiyun.yie@hp.com>, gimp-print-devel <gimp-print-devel@lists.sourceforge.net>, Printing-japan <printing-japan@lists.linux-foundation.org>

Hi, all

I agree completely with David comments.

The comments are why I original proposed in the OpenPrinting
architecture a "Print Channel Manager" which was to abstract the I/O
mechanism. =20

glen

-----Original Message-----
From: printing-japan-bounces@lists.linux-foundation.org
[mailto:printing-japan-bounces@lists.linux-foundation.org] On Behalf Of
Suffield, David
Sent: Friday, June 20, 2008 1:25 PM
To: Till Kamppeter; printing-architecture@lists.linux-foundation.org;
printing-foomatic@lists.linux-foundation.org; Tim Waugh; Yie, Shiyun;
gimp-print-devel; Printing-japan
Subject: Re: [Printing-japan] Printer setup tools: Automatically choose
thecorrect backend

Hi,

I agree there are too many backends for the same printer. In our case I
would like to see only one backend selection for HP printers.

I would consider using the Mike's "usb" backend if it meets our needs.
We need a backend that provides printing and status over various types
of IO (ie: raw, 1284.4 and MLC). The IO can be very manufacturer and
product specific and I don't see how the current "usb" backend can
provide this functionality.

I have looked at cups-1.4svn-r7679-source.tar.gz and I don't see the
libusb support in the "usb" backend am I missing something?

Even if we cannot use Mike's "usb" backend I would greatly appreciate
the libusb support. Right now hal_lpadmin is a pain because it does not
understand backends that do not use usblp.

In FC9 hal_lpadmin can turn a print queue off when usblp is removed
because it assumes the printer is off line. The user has to manually
restart the queue in order to print.

-dave

> -----Original Message-----
> From: Till Kamppeter [mailto:till.kamppeter@gmail.com]
> Sent: Thursday, June 19, 2008 11:00 PM
> To: printing-architecture@lists.linux-foundation.org;
> printing-foomatic@lists.linux-foundation.org; Tim Waugh;
> Suffield, David; Yie, Shiyun; gimp-print-devel; Printing-japan
> Subject: Re: Printer setup tools: Automatically choose the
> correct backend
>
> Mike Sweet does not like this idea. He wrote on the cups.development
> newsgroup:
>
> --------------------------------------------------------------
> -------------
> I think it would lead to an unending stream of compatibility and
> other problems.
>
> There is no reason for having multiple backends that do the same
> thing.  HP's backend is unnecessary once we use libusb instead of
> the Linux USB printer character device, and that is going to happen
> in CUPS 1.4 (and if I understood correctly is already used by several
> Linux distros).  For network printer, HP should be using the socket
> backend.  The canon and epson backends have been removed from
> Gutenprint.  There should be no "hal" backend, either.
>
> In short, once you get rid of the extra unnecessary backends, there
> is no problem selecting the "right" backend for a PPD.  Futhermore,
> a fundamental design goal of CUPS is that a given CUPS driver MUST
> work with ANY backend.  Drivers that do not work with all backends
> are by definition broken.
> --------------------------------------------------------------
> -------------
>
> Here I would like to hear especially the opinion of the printer
> manufacturers. Are custom backends really needed? Or would it be
> possible to make all drivers work with the backends which
> come with CUPS?
>
>     Till
>
>
> Till Kamppeter wrote:
> > Hi,
> >
> > currently, it is no problem any more to determine which model a
> > connected printer is and to find the correct PPD/driver for it. The
> > bigger problem is to use the correct backend automatically
> if the driver
> > comes with its own backend. Examples for such drivers are
> Gutenprint and
> > HPLIP. The "canon" and "epson" backends for Gutenprint are
> usually not
> > used and this does not restrict anything on normal
> printing. They only
> > allow printer maintenance "through the print queue" by
> sending special
> > commands. But for HPLIP the "hp" and "hpfax" backends are very
> > important. The first allows printing with bi-directional
> functionality
> > (HPLIP needs this also for border-less printing) and the
> second allows
> > faxing on HP's multi-function devices.
> >
> > The list of auto-detected printers in a printer setup tool is the
> > equivalent of the output of "lpinfo -v":
> >
> >
> --------------------------------------------------------------
> ----------
> > till@till-laptop:~/printing/foomatic/foomatic-db-hpijs$ lpinfo -v
> > network socket
> > network beh
> > direct
> >
> hal:///org/freedesktop/Hal/devices/usb_device_3f0_3517_00CNMJP
> 81545_if0_printer_noserial
> >
> > network socket://192.168.2.34
> > network ipp://fe80::21d:60ff:fe48:c2d7:631/printers/SanFranciscoFax
> > network socket://192.168.2.29
> > direct hpfax:/usb/HP_LaserJet_3390?serial=3D00CNMJP81545
> > direct usb://HP/LaserJet%203390
> > direct hp:/usb/HP_LaserJet_3390?serial=3D00CNMJP81545
> > direct
> >
> hal:///org/freedesktop/Hal/devices/usb_device_3f0_2812_CN7BU18
> 154_if0_printer_CN7BU18154
> >
> > direct usb://HP/Officejet%20H470?serial=3DCN7BU18154
> > direct hp:/usb/Officejet_H470?serial=3DCN7BU18154
> > network socket://192.168.2.35
> > direct
> >
> hal:///org/freedesktop/Hal/devices/usb_device_3f0_bd02_MY71431
> 04604C1_if0_printer_MY7143104604C1
> >
> > network socket://192.168.2.30
> > direct
> usb://HP/Photosmart%20Pro%20B9100%20series?serial=3DMY7143104604C1
> > direct hp:/usb/Photosmart_Pro_B9100_series?serial=3DMY7143104604C1
> > network http
> > network ipp
> > network lpd
> > network bluetooth://001A0E1769AA
> > file cups-pdf:/
> > direct scsi
> > network smb
> > till@till-laptop:~/printing/foomatic/foomatic-db-hpijs$
> >
> --------------------------------------------------------------
> ----------
> >
> > You see already that several printers get detected three
> times, first by
> > the "hal" backend, second by "usb" and third by "hp". Users
> of a GUI- or
> > web-based printer setup tool will see the model name of
> their printer
> > three times and are completely confused what they should
> choose. So only
> > a few will choose the "hp" backend and so will be able to print
> > borderless or use the hp-toolbox.
> >
> > A method which I have applied twice (printerdrake and
> > system-config-printer) is to add explicit support for
> backends supplied
> > with the driver. Therefore at least these two backends
> select the "hp"
> > backend automatically (and even suppress the superfluous
> entries in the
> > list of detected printers). This works fine at least for
> drivers which
> > are common enough and existed before the release of the
> printer setup
> > tool in use. Some authors also give no special support for
> third-party
> > software in general.
> >
> > So one needs a method to auto-select the best backend for a
> printer. As
> > all information about each supported printer model is
> supplied to CUPS
> > by a PPD file for the printer, the most obvious place for
> information
> > about the preferred backend is the PPD file.
> >
> > Therefore I suggest the following PPD extensions:
> >
> > *cupsPreferBackend: "hp"
> >
> > This entry simply recommends a backend. In this case a printer setup
> > tool should look for full URIs of this backend in the
> output of "lpinfo
> > -l -v" and compares make-and-model and device ID entries
> with the ones
> > of the URI which the user has chosen. If both the
> user-chosen URI qnd
> > the URI found as replacement have the printer's serial number or IP,
> > they must match. URIs with serial number or IP should never
> be replaced
> > by URIs with another serial number or IP.
> >
> > *cupsPreferBackend usb,parallel,hal: "hp"
> >
> > This is a modifier for all keywords listed here. It estricts the
> > application of the backend selection rule to the case when the URI
> > selected by the user uses one of the listed backends, in
> this example
> > the printer setup tool should only try to use the "hp"
> backend if the
> > user has selected an URI for the "usb", "parallel", or
> "hal" backend.
> >
> > *cupsReplaceURI: "usb://HP/LaserJet(_|%20)42\d\d
> > hp:/usb/HP_LaserJet_42\d\d"
> >
> > Here we do not use model info from the "lpinfo -l -v" output. The
> > printer setup tool should match the first regexp against
> the user-chosen
> > URI and the search the "lpinfo -v" output for an URI
> matching the second
> > regexp. In this case the user-chosen URI gets relaced.
> Serial numbers
> > and IPs have to get checked here, too, as with the
> *cupsPreferBackend
> > keyword.
> >
> > *cupsMakeURI: "hp-makeuri -c @IP@"
> > *cupsMakeURI: "hp-makeuri -c @USB_BUS@:@USB_DEV@"
> > *cupsMakeURI: "hp-makeuri -c @PARDEV@"
> >
> > *cupsMakeURI: "foojet-geturi @USBDEV@"
> > *cupsMakeURI: "foojet-geturi @URI@"
> >
> > Some drivers have their own tools to determine the correct URIs for
> > their printers. With these lines a printer setup tool
> should execute the
> > shown commands, substituting the parameters (@...@) at
> first. There can
> > be more than one line, and they should be tried from the top to the
> > bottom, until one line produces a valid URI. So if a
> parameter cannot be
> > substituted because it does not exist, as for example the
> IP for an USB
> > printer, or if a command gives an error, the next line gets
> tried. If
> > all lines fail the printer setup tool creates the queue,
> but it uses the
> > URI chosen by the user.
> >
> > @URI@ is here the URI chosen by the user, @PARDEV@ is the
> device file
> > for the parallel port, like /dev/lp0, @USBDEV@ is the USB
> device like
> > /dev/usb/lp0, ...
> >
> > In general there should be more than one of all the above keywords
> > allowed and substitutions be attempted using each line,
> from the top to
> > the bottom, until the first line appears which generates a valid
> > replacement URI.
> >
> > *cupsMakeExtraURI lsb/usr/hpijs/HP/HP-Fax-hplip.ppd:
> "hp-makeuri -f @IP@"
> >
> > This keyword is for multi-function devices. It calls a tool
> to find out
> > URIs for additional queues, like for example a fax queue. A printer
> > setup tool is supposed to finish the setup of the current
> print queue
> > and then to create a queue for the URI found here. The CUPS
> URI for the
> > PPD file for that extra queue is given before the colon.
> >
> > There can be more than one of these lines. In this case for each
> > succeeding line (except duplicate URIs) one extra queue has
> to be created.
> >
> > *cupsExtraURI lsb/usr/hpijs/HP/HP-Fax-hplip.ppd: "s!^hp:!hpfax:!"
> >
> > On the resulting URI for this print queue (after
> substitution applying
> > the previous keywords) the given regexp substitution is
> applied. If the
> > substitution succeeds, the printer setup tool is supposed
> to create an
> > additional queue with the given PPD file.
> >
> > What do you think about this PPD extension? This should
> finally allow to
> > set up printers completely automatically and non-interactively. This
> > should allow Plug'n'Print in all cases and also with multi-function
> > devices.
> >
> >    Till
> >
>
>
_______________________________________________
Printing-japan mailing list
Printing-japan@lists.linux-foundation.org
https://lists.linux-foundation.org/mailman/listinfo/printing-japan
