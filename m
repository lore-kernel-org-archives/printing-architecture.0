Message-ID: <49E51AB7.2010902@gmail.com>
Date: Wed, 15 Apr 2009 01:22:31 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <46089FAF7804194C8AD6458E272B07182174584144@GVW0676EXC.americas.hpqcorp.net>
In-Reply-To: <46089FAF7804194C8AD6458E272B07182174584144@GVW0676EXC.americas.hpqcorp.net>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit
Subject: Re: [Printing-architecture] Issue list from HP
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "Yie, Shiyun" <shiyun.yie@hp.com>
Cc: Tim Waugh <twaugh@redhat.com>, "Suffield, David" <david.suffield@hp.com>, "'printing-summit@lists.linux-foundation.org'" <printing-summit@lists.linux-foundation.org>, Johannes Meixner <jsmeix@suse.de>, Martin Pitt <martin.pitt@ubuntu.com>, "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Yie, Shiyun wrote:
> Hi Till,
> 
> We have assembled a list of issues we would like to bring up during the printing summit.  Most of the topics can fit into one of the existing sessions.  Just want to give you a heads up.  Please see the list of issues in the attachment.
> 
> Thanks,
> Shiyun

Unfortunately, we did not find the time to talk about all these points 
on the Summit, but I will give some comments here. Everyone is invited 
to give his comments, too.

 > CUPS driver issues:
 > 1. GPL Ghostscript duplex support is missing. For Inkjets the backpage
 > needs x and y inversion. CUPS attributes cupsFlipDuplex and
 > cupsBackSide may have worked for ESP Ghostscript, but not in the
 > current GPL Ghostscript 8.63. What does pdftoraster do?

This needs to be fixed in the CUPS Raster output device of Ghostscript 
or in the pdftoraster CUPS filter. Both are part of Ghostscript. So 
please report a bug on http://bugs.ghostscript.com/ and post the link to 
your bug report here.

 > 2. CUPS filter pstoraster does not allow duplicate papersizes with
 > different printable regions. For example Letter and LetterDuplex use
 > the same paper size, but have different printable regions. When
 > LetterDuplex is selected only the printable region for Letter is
 > passed to CUPS driver. What does pdftoraster do?

The pstoraster filter only calls Ghostscript expecting that the pstops 
CUPS filter has inserted all option settings into the PostScript data 
stream. The inserted PostScript code contains only the width and height 
of the paper in points, neither margin info nor the paper size name, so 
Ghostscript has no information about the selected paper size in active 
PostScript code. I think in pdftoraster the paper size name gets into 
the process, but I am not sure how the CUPS Raster output device makes 
use of it. Please try out whether pdftoraster does the right thing. In 
general, report a bug on http://bugs.ghostscript.com/, as also 
pstoraster should work correctly.

 > 3. Static PPDs or dynamic? Older versions of CUPSDDK ppdc create
 > corrupt PPDs (ie: Ubuntu 8.04).

Let ./configure check the version number of the cupsddk in use. If it is 
too old (with the bug) default to static PPDs otherwise to dynamic PPDs.

 > General issues:
 > 4. The new DeviceKit (Fedora 11) will replace HAL fdi device
 > permission or ACL policies. Is there more information about this? Are
 > all distros going to support it (ie: Suse). What does LSB support?

Here we need comments from the distro people. Johannes, Tim, pitti? Can 
you comment here?

 > 5. System-config-printer is used by Fedora/Red Had and Ubuntu. It
 > would be nice if every Distro used the same solution for
 > auto-discovery, printer setup and systray applet.

Mandriva uses system-config-printer, too. Johannes, what about switching 
from YaST's printer tool to system-config-printer (and hal-cups-utils 
and Jockey)?

 > 6. The system-config-printer systray applet handles in-band printer
 > messages, but what about out-of-band printer messages. Is there a
 > specification for sending notifier messages the systray applet? This
 > would be helpful for informing the user when a proprietary plugin may
 > be needed for a printer at hotplug time.

The tray applet of system-config-printer already takes both in-band 
messages (from cupsd) and out-of-band messages (from hal_lpadmin, from 
the hal-cups-utils package). Perhaps you could make your messages in a 
way that they fit into the schemes how the tray applet of s-c-p receives 
messages. Perhaps you can do away with HPLIP's tray applet then. Any 
improvements of the s-c-p tray applet are welcome.

 > 7. Different distros have packaged HPLIP differently. Maybe LSB will
 > solve this, but can we have a common set of packages for HPLIP? This
 > will help backporting new packages for "Big Deals" on different
 > distros.

I am packaging for Ubuntu, and Debian uses it more or less identically. 
Packlaging for LSB is more complex, as many libraries are needed which 
LSB does not provide. This wouild require statically linking these libs 
(D-Bus, Python bindings, ...). On also needs to take into account that 
an LSB package must work with all distros which are certified compliant 
with the LSB version under consideration. This includes also enterprise 
distros which are released a longer time ago. So if you statically link 
D-Bus it is perhaps not compatible with these distros. You should need 
to fail gracefully in such a case (and only offer the features which 
work without D-Bus) or bring your own D-Bus stack (including daemon and 
all being able to run in parallel with a distro-installed D-Bus without 
interfering). Similar applies to UDEV. SANE should be sane as it did not 
change for long time.

 > 8. Cupstestppd is used by our customers for PPD validation.
 > Unfortunately using cupstesteppd for PPD validation is a moving
 > target. For example PPDs that pasted cupstestppd 1.1.23 will not pass
 > cupstestppd 1.3.7. This does not mean the PPDs are bad, but this is
 > hard to explain to the customer. Backporting PPDs is expensive, time
 > consuming and not always practical to re-test. Printer may no longer
 > be available. Can we add a compatibility command option to cupstestppd
 > so that we can show that PPDs are compatible with a specific version
 > of cupstestppd? See the following example.
 >  cupstestppd -R 1.1.23 *.ppd
 >  cupstestppd -R 1.2 *.ppd
 >  cupstestppd -R 1.3 *.ppd

cupstestppd got stricter with the newer CUPS versions. So if you make 
PPDs which pass the newest cupstestppd (1.4.x from SVN) your PPDs will 
pass any older version of cupstestppd. If this is not the case for a 
PPD, report a CUPS bug and attach the PPD.

 > 9. Need to integrate the distro’s auto installer with HP devices that
 > requires a plugin. With HP printers that require the binary plugin to
 > work, most of the distros’s auto installer will try to find a PPD that
 > partially matches the device’s name and install a queue for the
 > device. This is not acceptable because it gives the customer an
 > illusion that their device will work when it doesn’t.   Recommend
 > distro installers to call hp-plugin.

This is fixed in Ubuntu Jaunty (and every distro with the same or a 
newer system-config-printer). First, I have modified hal-cups-utils to 
not create print queues on partial matches of model names. Only exact 
matches lead to a non-interactive setup of a print queue. In addition, 
hal-cups-utils checks whether a printer needs firmware/plugins and if 
the plugin is not installed, there will also no queue be created. 
system-config-printer is automatically called in such cases for creating 
a queue interactively with the wizard. The wizard calls hp-plugin if 
needed. All this is implemented upstream in hal-cups-utils and 
system-config-printer, so it is only a question of time when it appears 
in Fedora and Mandriva. Johannes, what about SUSE?

 > 10. Common Printing Dialog
 >        a. What is the current state of common printing dialog
 >           architecture

The design was slightly updated. See Printing Summit and Peter Sikking's 
  blog (should appear soon). Two Google Summer of Code students will 
complete the implementation of the dialog this summer.

 >        b. Do we have the consensus from application vendor, distros,
 >           and system print dialog to adopt this architecture?

We need to complete the dialogs and also the application patches (A 
third Google Summer of Code Student) to offer this to desktop and 
application projects. Distros will take what comes from these projects.

 >        c. What is the timeline for including this in distros?

If distros patch the desktops and apps, a common dialog (not the one of 
OpenUsability but at least the GTK dialog under GNOME also with KDE apps 
(and vice-versa for KDE) can appear in the fall editions this year. If 
distros wait for upstream projects implementing it will take longer 
(spring 2010 editions). The OpenUsability dialog will come later.

But do not hesitate to implement the PPD extensions already now. They 
are also useful for other things. And if the dialog comes, your software 
is ready for it.

 > 11. Binary Package – offline question
 >        a. Where are we with the common binary packages

Technically it works. On the Summit we did some last agreements and the 
main agreement on the technical side is that you will not build the LSB 
RPMs. This will be done by our server, to assure that they fulfill all 
quality and security standards. You will have to supply a tarball with 
the binary files.

 >        b. Will the distro sign up to provide mechanism to support
 >           this? If so, when will it be available?

Yes, but only if the manufacturers take responsability on their software 
and the packages are built by the OpenPrinting database server.

A Google Summer of Code student will work on the upload web app and on 
the scripts for building the packages and putting them into the archive.

    Till

