Message-ID: <4D6D5FD5.4010506@gmail.com>
Date: Tue, 01 Mar 2011 22:06:29 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <F30723B8678F584CB6A4269E911255CB0392318F@m1a.epkowa.co.jp>	
	<4BD18655.8060000@gmail.com>	
	<F30723B8678F584CB6A4269E911255CB03BF5E5C@m1a.epkowa.co.jp>	
	<4C091F92.7050102@gmail.com> <4C1284F4.3000707@gmail.com>	
	<4C89CF0C.60003@avasys.jp> <4CE55A84.3070006@gmail.com>	
	<F30723B8678F584CB6A4269E911255CB04A457B1@m1a.epkowa.co.jp>	
	<4D265C61.2000703@gmail.com>	
	<F30723B8678F584CB6A4269E911255CB04E6F468@m1a.epkowa.co.jp>	
	<20110131104358.GC4406@piware.de> <4D662705.9020803@gmail.com>	
	<F30723B8678F584CB6A4269E911255CB05241E44@m1a.epkowa.co.jp>	
	<4D67A34D.4020008@gmail.com> <1298669202.5347.0.camel@worm.elk>
In-Reply-To: <1298669202.5347.0.camel@worm.elk>
Content-Type: multipart/mixed; boundary="------------000701060200040804040608"
Subject: Re: [Printing-architecture] Ubuntu Natty the first distribution
 which does automatic download of binary printer driver packages
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Tim Waugh <twaugh@redhat.com>
Cc: printing-architecture@lists.linux-foundation.org, printing-japan@lists.linux-foundation.org, michael.vogt@ubuntu.com, martin.pitt@ubuntu.com

This is a multi-part message in MIME format.
--------------000701060200040804040608
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 02/25/2011 10:26 PM, Tim Waugh wrote:
> On Fri, 2011-02-25 at 13:40 +0100, Till Kamppeter wrote:
>> Tim, is there a new way to test the driver selection and
>> automatic-download for a given device ID without needing to modify the
>> code of system-config-printer and without having the appropriate printer
>> physically? Or do I need to re-develop this feature?
>
> Use: python newprinter.py --with-uri URI
> (requires current git master... I'll do a 1.3.2 release in a week or so)

Unfortunately, this testing mode does not work. I have fixed it, 
including the possibility to supply device IDs. Patch attached.

    Till

--------------000701060200040804040608
Content-Type: text/x-patch;
 name="0001-Activated-and-fixed-testing-mode-for-device-ID-drive.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename*0="0001-Activated-and-fixed-testing-mode-for-device-ID-drive.pa";
 filename*1="tch"

From dbf81b6ce20fa4270b5da3e89e7485e42773c23b Mon Sep 17 00:00:00 2001
From: Till Kamppeter <till.kamppeter@gmail.com>
Date: Tue, 1 Mar 2011 21:50:40 +0100
Subject: [PATCH] Activated and fixed testing mode for device ID/driver association

Currently, newprinter.py has only one testing mode to test the
complete wiozard setting up physically available printers. This did
not allow testing which driver gets associated to a printer with a
given device ID, for example if a user reports a bug about a wrong
driver being selected but the maintainer or developer does not have
the user's printer.

Exactly this is now available by a second testing mode with
parameters, which is fixed and made available with this change.

Instead of

cd /usr/share/system-config-printer
python newprinter.py

one does the call with parameters:

cupsctl FileDevice=yes
cd /usr/share/system-config-printer
python newprinter.py --setup-printer=file:/tmp/printout --devid="MFG:HP;MDL:Fax;"

and the printer with the device ID "MFG:HP;MDL:Fax;" will get set up
and the appropriate driver (here the fax driver of HPLIP) gets
selected. Also automatic driver downloads happen if appropriate.

This change only makes an already existing testing mode accessible and
fixes a bug in it (the device/driver association did not get
triggered). It does not change any behavior for normal use of
system-config-printer.
---
 newprinter.py |   45 ++++++++++++++++++++++++++++++++++++++++++++-
 1 files changed, 44 insertions(+), 1 deletions(-)

diff --git a/newprinter.py b/newprinter.py
index f10018a..0d58a40 100644
--- a/newprinter.py
+++ b/newprinter.py
@@ -661,6 +661,16 @@ class NewPrinterGUI(GtkGUI):
             self.on_rbtnNPFoomatic_toggled(self.rbtnNPFoomatic)
             self.rbtnChangePPDKeepSettings.set_active(True)
 
+            if self.dialog_mode == "printer_with_uri":
+                p = ppdsloader.PPDsLoader (device_id=devid,
+                                           device_uri=device_uri,
+                                           parent=self.NewPrinterWindow,
+                                           host=self._host,
+                                           encryption=self._encryption)
+                self.ppdsloader = p
+                p.connect ('finished',self.change_ppd_have_devs_and_ppds)
+                p.run ()
+
             self.auto_make = ""
             self.auto_model = ""
             self.auto_driver = None
@@ -3665,9 +3675,39 @@ class NewPrinterGUI(GtkGUI):
         self.device = None
         del self.printers
 
+def show_help():
+    print ("\nThis is the test/debug mode of the new-printer dialog of " \
+           "system-config-printer.\n\n"
+           "Options:\n\n"
+           "  --setup-printer URI\n"
+           "            Select the (detected) CUPS device URI on start up\n"
+           "            and run the new-printer wizard for it.\n\n"
+           "  --devid   Supply a device ID which should be used for the\n"
+           "            setup of the new peinter with \"--setup-printer\".\n"
+           "            This can be any printer's ID, so that driver \n"
+           "            selection can be tested for p[rinters which are not\n"
+           "            physically available.\n")
+
 gobject.type_register (NewPrinterGUI)
 
 if __name__ == '__main__':
+    import getopt
+    try:
+        opts, args = getopt.gnu_getopt (sys.argv[1:], '',
+                                        ['setup-printer=',
+                                         'devid='])
+    except getopt.GetoptError:
+        show_help ()
+        sys.exit (1)
+
+    setup_printer = None
+    devid = ""
+    for opt, optarg in opts:
+        if opt == '--setup-printer':
+            setup_printer = optarg
+        elif opt == '--devid':
+            devid = optarg
+
     os.environ["SYSTEM_CONFIG_PRINTER_UI"] = "ui"
     import ppdippstr
     import locale
@@ -3683,5 +3723,8 @@ if __name__ == '__main__':
     n.connect ("printer-added", on_signal)
     n.connect ("printer-modified", on_signal)
     n.connect ("dialog-canceled", on_signal)
-    n.init ("printer")
+    if setup_printer != None:
+        n.init ("printer_with_uri", device_uri=setup_printer, devid=devid)
+    else:
+        n.init ("printer")
     gtk.main ()
-- 
1.7.4.1


--------------000701060200040804040608--
