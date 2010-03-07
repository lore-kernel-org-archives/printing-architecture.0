Message-ID: <4B943B74.8060602@avasys.jp>
Date: Mon, 08 Mar 2010 08:49:08 +0900
From: Olaf Meeuwissen <olaf.meeuwissen@avasys.jp>
MIME-Version: 1.0
References: <20100305095257.9953.E0F122DE@canon.co.jp>
	<4B90ECFA.1030506@gmail.com>
In-Reply-To: <4B90ECFA.1030506@gmail.com>
Content-Type: multipart/mixed; boundary="------------080803060105020404060501"
Subject: Re: [Printing-architecture] [Printing-japan] OpenPrinting Japan
 Mar. 2010 meeting minutes (in	English)
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>, Lars Uebernickel <larsuebernickel@gmx.de>
Cc: printing-architecture@lists.linux-foundation.org, printing-japan@lists.linux-foundation.org

This is a multi-part message in MIME format.
--------------080803060105020404060501
Content-Type: text/plain; charset=ISO-2022-JP
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Hi Till,

Till Kamppeter wrote:

> On 03/05/2010 03:09 AM, TORATANI Yasumasa wrote:
>> OpenPrinting Mar. f2f Meeting Minutes
>>
>> Action Item #1) Check CPD current status
>>    - Tried to compile on Debian Stable, but failed (Olaf)
> 
> Olaf, please send a mail with the errors to me and to Lars Uebernickel 
> (larsuebernickel@gmx.de).

The compile errors are due to the dialog using GTK+ API that is not yet
available in the versions that are in Debian GNU/Linux 5.0.4, the latest
stable release.  This release only has GTK+ 2.12 (and GLib 2.16).
A new Debian release should come out this year and will have at least
GTK+ 2.18 (GLib 2.22).

Whether you want to fix that basically boils down to what minimal
version of GTK+ you want to go with so I'll leave that up to you.

What I would suggest fixing though, is documenting/checking/enforcing
your build requirements.

Just in case, a `make -k` build log for r137 has been attached.

Hope this helps,
- --
Olaf Meeuwissen, LPIC-2           FLOSS Engineer -- AVASYS CORPORATION
FSF Associate Member #1962               Help support software freedom
                 http://www.fsf.org/jf?referrer=1962
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.9 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iEYEARECAAYFAkuUO3QACgkQt5qrxaZLMnJsHQCfS988n0ZeQoLejXqzwSSaeZy9
dhAAn1dlz5LD1CARbgvSoJ0tyAG0vs0Y
=Mv8p
-----END PGP SIGNATURE-----

--------------080803060105020404060501
Content-Type: text/x-log;
 name="gtk-dialog-r137.log"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline;
 filename="gtk-dialog-r137.log"

Generating manager-glue.h from ../org.openprinting.printdialog.manager.xml
Generating printdialog-glue.h from ../org.openprinting.printdialog.printdialog.xml
Checking for "gtk+-2.0 poppler-glib cairo dbus-glib-1"
Checking for CUPS
Checking for "gtk+-2.0 poppler-glib cairo dbus-glib-1"
Checking for CUPS
Compiling cpd.c
Compiling manager.c
Compiling manager-net.c
Compiling printdialog-adapter.c
Compiling cpd-options.c
Compiling cpd-cups.c
Compiling cpd-cups-ipp.c
cpd-cups-ipp.c: In function 'start_element':
cpd-cups-ipp.c:81: warning: implicit declaration of function 'g_markup_parse_context_push'
cpd-cups-ipp.c: In function 'end_element':
cpd-cups-ipp.c:92: warning: implicit declaration of function 'g_markup_parse_context_pop'
Compiling cpd-transform.c
Compiling cpd-settings.c
Compiling printdialog.c
printdialog.c: In function 'print_dialog_display_ppd':
printdialog.c:424: error: 'GFile' undeclared (first use in this function)
printdialog.c:424: error: (Each undeclared identifier is reported only once
printdialog.c:424: error: for each function it appears in.)
printdialog.c:424: error: 'gfile' undeclared (first use in this function)
printdialog.c:424: warning: implicit declaration of function 'g_file_new_for_path'
printdialog.c:425: warning: implicit declaration of function 'g_file_get_basename'
printdialog.c:425: warning: assignment makes pointer from integer without a cast
make: *** [printdialog.o] Error 1
Compiling dialog-options.c
Compiling dialog-optioneditors.c
dialog-optioneditors.c: In function 'color_button_clicked':
dialog-optioneditors.c:1754: warning: implicit declaration of function 'gtk_color_selection_dialog_get_color_selection'
dialog-optioneditors.c:1754: warning: cast to pointer from integer of different size
dialog-optioneditors.c: In function 'calendar_button_clicked':
dialog-optioneditors.c:1793: warning: implicit declaration of function 'gtk_dialog_get_content_area'
dialog-optioneditors.c:1793: warning: cast to pointer from integer of different size
Compiling dialog-optiontable.c
Compiling dialog-pagesize.c
Compiling dialog-pagerange.c
Compiling dialog-preset.c
dialog-preset.c: In function 'save_preset_clicked':
dialog-preset.c:439: warning: implicit declaration of function 'gtk_dialog_get_content_area'
dialog-preset.c:439: warning: assignment makes pointer from integer without a cast
Compiling dialog-progress.c
dialog-progress.c: In function 'dialog_progress_static_get_password':
dialog-progress.c:106: warning: implicit declaration of function 'gtk_dialog_get_content_area'
dialog-progress.c:106: warning: assignment makes pointer from integer without a cast
Compiling dialog-preview.c
Generating cpd.ui from cpd.glade
Generating progressdlg.ui from progressdlg.glade
cc -g -Wall -D_REENTRANT -I/usr/include/gtk-2.0 -I/usr/lib/gtk-2.0/include -I/usr/include/atk-1.0 -I/usr/include/cairo -I/usr/include/pango-1.0 -I/usr/include/glib-2.0 -I/usr/lib/glib-2.0/include -I/usr/include/freetype2 -I/usr/include/directfb -I/usr/include/libpng12 -I/usr/include/pixman-1 -I/usr/include/poppler/glib -I/usr/include/poppler -I/usr/include/dbus-1.0 -I/usr/lib/dbus-1.0/include     -c -o view-dialog.o view-dialog.c
make: Target `all' not remade because of errors.

--------------080803060105020404060501
Content-Type: application/octet-stream;
 name="gtk-dialog-r137.log.sig"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="gtk-dialog-r137.log.sig"

iEYEABECAAYFAkuUO3QACgkQt5qrxaZLMnJFagCdEQLbgV6I15Wn+6Oks0SfDyEwJLYAn3py
yl21qsZUUKAMOkhyeEHOCBlr
--------------080803060105020404060501--
