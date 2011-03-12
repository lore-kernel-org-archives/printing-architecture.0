Message-ID: <4D7BAF1C.8070400@gmail.com>
Date: Sat, 12 Mar 2011 18:36:28 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <4D265C61.2000703@gmail.com>	
	<F30723B8678F584CB6A4269E911255CB04E6F468@m1a.epkowa.co.jp>	
	<20110131104358.GC4406@piware.de> <4D662705.9020803@gmail.com>	
	<F30723B8678F584CB6A4269E911255CB05241E44@m1a.epkowa.co.jp>	
	<4D67A34D.4020008@gmail.com> <1298669202.5347.0.camel@worm.elk>	
	<4D6D5FD5.4010506@gmail.com> <4D6D6D45.3070907@gmail.com>	
	<87ei6ndyi8.fsf@avasys.jp> <20110304172254.GF30872@piware.de>	
	<87hbbfyat2.fsf@avasys.jp> <87r5aefjf2.fsf@avasys.jp>	
	<4D7A4ABB.7030200@gmail.com> <1299862755.2770.25.camel@worm.elk>
	<4D7A5FD5.2060006@gmail.com> <4D7B9D9C.4090209@gmail.com>
In-Reply-To: <4D7B9D9C.4090209@gmail.com>
Content-Type: multipart/mixed; boundary="------------080009060602010003030003"
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
To: Tim Waugh <twaugh@redhat.com>
Cc: printing-architecture@lists.linux-foundation.org, printing-japan@lists.linux-foundation.org, michael.vogt@ubuntu.com, Martin Pitt <martin.pitt@ubuntu.com>

This is a multi-part message in MIME format.
--------------080009060602010003030003
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Tim, I have attached the patch of the last fix for the upstream repository.

    Till

On 03/12/2011 05:21 PM, Till Kamppeter wrote:
> I have done test 3 and found a bug. I have fixed it in -0ubuntu6. Please
> do your tests with that version.
>
> Till
>
> On 03/11/2011 06:45 PM, Till Kamppeter wrote:
>> Tim, thanks. I have updated the Ubuntu package now (0ubuntu5).
>>
>> Can everyonne please test again (with fully updated Natty) whether
>> auto-download of drivers works in all cases:
>>
>> 1. Plug printer to USB and turn it on.
>> 2. Leave the printer on USB plugged and turned on, remove the
>> auto-generated queue(s) and uninstall the auto-installed driver.
>> Then start system-config-printer, click "+ Add", select the USB from
>> the list of detected printers and go through the new printer wizard.
>> 3. Right-click the icon of the printer installed from the last test,
>> click "Properties in the pop-up menu and in the Properties dialog
>> click the "Change" button for make and model. Change the driver to
>> any local one, like Gutenprint. Then uninstall the auto-downloaded
>> driver package. Now go intp the Properties dialog again and click
>> "Change" for make and model. Choose the original printer make and
>> model (the one which could automatically chosen in the first 2
>> tests). Does somewhere on the way an automatic driver download get
>> triggered?
>> 4. Uninstall the auto-installed package from the previous tests and
>> remove the print queues. Disconnect the printer from the USB and
>> connect it to the network (wired or wireless does not matter, but
>> for wireless the printer needs to be configured to connect to the
>> router). Now start system-config-printer, click "+ Add" and in the
>> list open the section for network printers. Wait around 15 sec until
>> the spinning circle at the lower left disappears. Now choose the
>> printer under the network printers and follow the rest of the
>> wizard's steps.
>> 5. Do the steps of test 3 with your network printer queue from test 4.
>>
>> Does the automatic driver download happen in all these steps?
>>
>> Till
>>
>>
>> On 03/11/2011 05:59 PM, Tim Waugh wrote:
>>> On Fri, 2011-03-11 at 17:15 +0100, Till Kamppeter wrote:
>>>> Tim, the patch to fix this (and which I have applied to the Ubuntu
>>>> package) is attached./ Please apply it also upstream. Thanks.
>>>
>>> Thanks. Actually some of these are incorrect, so I've applied a patch
>>> that fixes the correct part and have removed the incorrect code.
>>>
>>> diff --git a/newprinter.py b/newprinter.py
>>> index 0d58a40..fa113cc 100644
>>> --- a/newprinter.py
>>> +++ b/newprinter.py
>>> @@ -637,6 +637,8 @@ class NewPrinterGUI(GtkGUI):
>>>
>>> if self.dialog_mode == "ppd":
>>> devid = self.device.id
>>> + if not self.devid:
>>> + self.devid = devid
>>>
>>> if not devid:
>>> devid = None
>>>
>>> This entire block is stale code I think. If self.dialog_mode is "ppd",
>>> self.device.id is definitely unset (we only created self.device a few
>>> lines above).
>>>
>>> @@ -655,6 +657,8 @@ class NewPrinterGUI(GtkGUI):
>>> include_schemes=schemes,
>>> reply_handler=self.change_ppd_got_devs,
>>> error_handler=self.change_ppd_got_devs)
>>> + if self.devid:
>>> + devid = self.devid
>>>
>>> No, that's not right. The reason is that the getDevices() call
>>> immediately above these new lines is asynchronous. The reason we're
>>> calling getDevices() at all here is precisely in order to get the Device
>>> ID for the device we're changing the PPD of, because we don't already
>>> have it.
>>>
>>> Here's the patch that fixes the problem. Another patch is in master
>>> that removes the stale code.
>>>
>>> Tim.
>>> */
>>>
>>
>


--------------080009060602010003030003
Content-Type: text/x-patch;
 name="0001-Make-automatic-driver-download-also-working-when-cha.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename*0="0001-Make-automatic-driver-download-also-working-when-cha.pa";
 filename*1="tch"

From 71ac9f2eb40e10d60d3de93a7b9dd3a16b2fb359 Mon Sep 17 00:00:00 2001
From: Till Kamppeter <till.kamppeter@gmail.com>
Date: Sat, 12 Mar 2011 18:30:41 +0100
Subject: [PATCH] Make automatic driver download also working when changing the driver

When changing the PPD file of an existing print queue ("Make and
Model" in "Properties" dialog) the cupshelpers.getDevices() function
is called with the scheme of the device URI to find the printer's
device ID. The scheme needs to be supplied as ASCII string and not as
UniCode, otherwise the scheme is not recognized and the appropriate
CUPS backend does not get called. The device ID is needed to suggest
the correct drivers and to trigger automatic driver downloads.
---
 newprinter.py |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/newprinter.py b/newprinter.py
index 4aca860..f116641 100644
--- a/newprinter.py
+++ b/newprinter.py
@@ -637,7 +637,7 @@ class NewPrinterGUI(GtkGUI):
 
             # We'll need to know the Device ID for this device.
             if self.dialog_mode == "ppd" and not self.devid:
-                scheme = device_uri.split (":", 1)[0]
+                scheme = str(device_uri.split (":", 1)[0])
                 schemes = [scheme]
                 if scheme in ["socket", "lpd", "ipp"]:
                     schemes.extend (["snmp", "dnssd"])
-- 
1.7.4.1


--------------080009060602010003030003--
