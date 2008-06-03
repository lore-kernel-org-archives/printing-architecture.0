Message-ID: <48455987.9010003@gmail.com>
Date: Tue, 03 Jun 2008 16:47:35 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] The Common Printing Dialog and PDF as
 standard print job format for GTK/GNOME applications
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
Cc: seb128@ubuntu.com, gnome-devel-list@gnome.org, printing-architecture@lists.linux-foundation.org, Celeste Lyn Paul <celeste@kde.org>, "gtk-devel-list@gnome.org" <gtk-devel-list@gnome.org>

Hi,

at OpenPrinting [0] we have developed several new technologies for
making printing more reliable and much easier for the user. Currently,
we have 5 Google Summer of Code students and so we get a lot of our
ideas implemented. Two of our projects need changes in graphical
applications and/or the GUI toolkit libraries, as for example GTK. One 
is the Common Printing Dialog and the other is the use of PDF as the
standard print job format. Both features have found a wide acceptance on
the Printing Summits [10] and implementation has started now. especially
with a lot of support from the printer manufactures for the PDF printing
workflow.


Common Printing Dialog
----------------------

As most of you already know, OpenPrinting and OpenUsability have
developed a Common Printing Dialog for all desktops and applications
[1], [2], [3]. Ubuntu blueprint at [9]. This should make printing much
easier as if they get used how to print with application A they
immediately know how to print from application B. It will also get
assured that there is always access to all functionality of the printer
(driver) and the printing system, requiring no effort from application
developers. We would like to have the support from GTK and GNOME to make
applications interfacing to the new dialog by a plug-in interface. This
will not only allow to use our dialog as the common one but also any
other one, as the ones from Qt or GTK for example.

The interface is designed and implemented by Lars Uebernickel, one of
the Google Summer of Code students [7]. The specs for this interface are
work in progress on [4]. Requirements are written up on [5]. This
interface needs also to be implemented in the applications and/or their
common GUI libraries, in our case GTK. Lars will work on patching the
libraries, but these patches should not only go into packages of Linux
distributions but also into the upstream software repositories. So I ask
you for working together with Lars to make these patches also part of
the upstream code.

Patches should only be used as a backport of a feature from a future
software version to the software in the current version of a
distribution (in the case the software currently under development will
not make it into the next releases of the distros.


PDF as the Standard Print Job Format
------------------------------------

To improve the reliability of the printing process, especially for
complex graphics, high color depths, and for jobs where pages get
separated and reordered (2 pages per sheet, booklets, selected pages,
...) we are switching from PostScript to PDF as standard print job format.

The server (printing system) side is nearly completely implemented in
the form of new CUPS filters and file conversion rules.

On the client (application) side it is needed that the applications
generate the print jobs in PDF and not in Postscript. This would mean a
change of the application and/or GUI library code, probably only the
latter (at least for GTK applications). This is not absolutely urgent, 
as CUPS can convert PostScript to PDF with a pstopdf filter, but
applications which directly produce PDF have a better control over the
graphical quality of the print job, and they even solve page management
(2 on a sheet, booklets, selected pages, ...) problems on old
PostScript-based servers, as a CUPS filter will generate PostScript from
the incoming PDF then (pdftops) and this PostScript is much cleaner as
the one coming from most applications.

So I am asking you whether you can change the GTK library to make the
"Print" command in GTK-based applications emitting PDF instead of
PostScript. To not break lagacy, non-PDF-capable environments, make this
a configurable option. If you have already doe so, please tell how to
configure the GTK library to output PDF, so that we will make this
configuration setting the default in all Linux distribution.


I am very grateful for any support from the GTK and GNOME side in terms 
of these OpenPrinting projects. They will improve the printing workflow 
a lot and will make many bugs and user complaints go away.

    Till


[0]http://www.openprinting.org/
[1]http://www.mmiworks.net/eng/publications/labels/openPrinting.html
[2]http://wiki.openusability.org/printing/
[3]http://wiki.openusability.org/printing/index.php/Specification
[4]http://www.linux-foundation.org/en/OpenPrinting/Specifications
[5]http://www.linux-foundation.org/en/OpenPrinting/Requirements
[6]http://portland.freedesktop.org/wiki/PrintDialog
[7]http://code.google.com/soc/2008/linux/appinfo.html?csaid=53E53CD78F134BE9
[8]http://code.google.com/soc/2008/linux/appinfo.html?csaid=9D65D29842F34550
[9]https://blueprints.launchpad.net/ubuntu/+spec/applications-printing
[10]https://www.linux-foundation.org/en/OpenPrinting/MeetingInfo
[11]https://blueprints.launchpad.net/ubuntu/+spec/pdf-as-standard-print-job-format

