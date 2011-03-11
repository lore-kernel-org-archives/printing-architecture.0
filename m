Message-ID: <4D7A4ABB.7030200@gmail.com>
Date: Fri, 11 Mar 2011 17:15:55 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <4D265C61.2000703@gmail.com>	<F30723B8678F584CB6A4269E911255CB04E6F468@m1a.epkowa.co.jp>	<20110131104358.GC4406@piware.de>
	<4D662705.9020803@gmail.com>	<F30723B8678F584CB6A4269E911255CB05241E44@m1a.epkowa.co.jp>	<4D67A34D.4020008@gmail.com>
	<1298669202.5347.0.camel@worm.elk>	<4D6D5FD5.4010506@gmail.com>
	<4D6D6D45.3070907@gmail.com>	<87ei6ndyi8.fsf@avasys.jp>
	<20110304172254.GF30872@piware.de>	<87hbbfyat2.fsf@avasys.jp>
	<87r5aefjf2.fsf@avasys.jp>
In-Reply-To: <87r5aefjf2.fsf@avasys.jp>
Content-Type: multipart/mixed; boundary="------------050402070709040009050409"
Subject: Re: [Printing-architecture] [Printing-japan] Ubuntu Natty the first
 distribution which does automatic download of binary printer	driver
 packages
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Olaf Meeuwissen <olaf.meeuwissen@avasys.jp>
Cc: printing-architecture@lists.linux-foundation.org, printing-japan@lists.linux-foundation.org, michael.vogt@ubuntu.com, Martin Pitt <martin.pitt@ubuntu.com>

This is a multi-part message in MIME format.
--------------050402070709040009050409
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 03/11/2011 04:03 AM, Olaf Meeuwissen wrote:
>   4. Jockey not called by system-config-printer?
>      We seen some discrepancies in behaviour wrt the automatic printer
>      driver download depending on how the printer was "detected".
>      Connecting a USB printer worked fine.  Running newprinter.py from
>      the command-line is also okay.  However, when trying to add a USB
>      or network printer using system-config-printer nothing happened.
>      As in no attempt to have jockey download a driver was made.
>      I'll submit a bug report against system-config-printer later as I
>      don't have the details handy at the moment.

Tim, the patch to fix this (and which I have applied to the Ubuntu 
package) is attached./ Please apply it also upstream. Thanks.

    Till

--------------050402070709040009050409
Content-Type: text/x-patch;
 name="0001-Assured-that-on-all-uses-of-the-ppdsloader-class-the.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename*0="0001-Assured-that-on-all-uses-of-the-ppdsloader-class-the.pa";
 filename*1="tch"

From 2bd9546c93d33e58bb03ff252091c8ea680c21ec Mon Sep 17 00:00:00 2001
From: Till Kamppeter <till.kamppeter@gmail.com>
Date: Fri, 11 Mar 2011 17:10:56 +0100
Subject: [PATCH] Assured that on all uses of the ppdsloader class the device ID is supplied

In some cases during the creation or the modification of a print queue
(newprinter.py) a device ID was available but it did not get supplied
to the ppdsloader class and this caused automatic driver downloads not
to get triggered.
---
 newprinter.py |    7 +++++++
 1 files changed, 7 insertions(+), 0 deletions(-)

diff --git a/newprinter.py b/newprinter.py
index 0d58a40..fa113cc 100644
--- a/newprinter.py
+++ b/newprinter.py
@@ -637,6 +637,8 @@ class NewPrinterGUI(GtkGUI):
 
             if self.dialog_mode == "ppd":
                 devid = self.device.id
+                if not self.devid:
+                    self.devid = devid
 
             if not devid:
                 devid = None
@@ -655,6 +657,8 @@ class NewPrinterGUI(GtkGUI):
                                         include_schemes=schemes,
                                         reply_handler=self.change_ppd_got_devs,
                                         error_handler=self.change_ppd_got_devs)
+                if self.devid:
+                    devid = self.devid
 
             self.ntbkNewPrinter.set_current_page(2)
             self.rbtnNPFoomatic.set_active (True)
@@ -714,6 +718,7 @@ class NewPrinterGUI(GtkGUI):
                 devid = device.id
                 mm = device.make_and_model
                 self.device = device
+                self.devid = devid
 
         # We'll also need the list of PPDs.
         self.ppdsloader = ppdsloader.PPDsLoader (device_id=devid,
@@ -970,6 +975,8 @@ class NewPrinterGUI(GtkGUI):
 
                 if not self.remotecupsqueue:
                     if self.ppds == None:
+                        if self.device.id and not self.devid:
+                            self.devid = self.device.id
                         devid = self.devid
                         if not devid:
                             devid = None
-- 
1.7.4.1


--------------050402070709040009050409--
