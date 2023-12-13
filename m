Return-Path: <till.kamppeter@gmail.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 57C4C41BA1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BB88A41B9B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1702488710; x=1703093510;
 darn=lists.linux-foundation.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=jevOnONNxZimzH5y14fyelnt25Pr1R+yBBttfVoUFCk=;
 b=gQtL/NszWljffMtMlZ1W1Z+XYCbjMvYuJw+NRTvWueYCFcVaifwY6+hoiVMDAeI9kF
 /ku8QHAO4pCzHFb7vWqEpA/gNLg15QVRDeYUY/FBVsdlS2mXUiGW5RrROreAZdYeFZHh
 K43DldOdALDytw3Z8Efat7czVk21eWA2Z7ozMk0F/Kr8y5oJNWKECOLWaj2BCWHLmc/R
 cdLGNZVhVWvZrh5bM+hjxnWaxPANluL/H4/J815e3QgODIUnoftT0ZMVb8V1rDp/6Ez4
 D9KjmjaQKZRCOJLExcGcGPU2k6Y9V4PUFV1qVL8UXqJcANTX6TVYWbwUn7lAjzlYimlN
 5/WA==
Message-ID: <8056ba21-29f8-4a46-8763-7579db1b5b6c@gmail.com>
Date: Wed, 13 Dec 2023 18:31:48 +0100
MIME-Version: 1.0
Content-Language: en-US
References: <4ea25bd1-6a61-4987-ad2a-41e3e8d4437c@apevzner.com>
 <3d5242f7-2871-4d97-857e-1cb697782765@apevzner.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <3d5242f7-2871-4d97-857e-1cb697782765@apevzner.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit
Subject: Re: [Printing-architecture] RFC: Pantum M7300FDW and similar
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Alexander Pevzner <pzz@apevzner.com>, Michael Sweet <msweet@msweet.org>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Alex, I will perhaps reply in more detail later, but I would like you to 
test something:

You say that Windows always wants you to install a driver.

Windows principally supports driverless printing. Have a look at

https://openprinting.github.io/wsl-printer-app/

This is a HOWTO to eun a Printer Application (= emulation of driverless 
printer) under WSL and Windows sees this as a driverless printer.

So now click "Cancel" in any pop-up of Windows telling you to install a 
printer driver.

Now go to the HOWTO and only see the steps to set up a driverless 
printer (you will not need WSL nor a Printer Application).

So you start in the section which starts with "Add the printer to Windows".

Look in the "Bluetooth & devices > Printers & scanners" whether there is 
an entry which could represent your printer. Select it, finish the setup 
and test.

Is your printer working at all?

Is it completely working?

Does it show the same problems as under Linux?

If it works under Windows we will need to reverse-engineer what Windows 
is doing and compare it to what CUPS is doing.

    Till


On 13/12/2023 16:08, Alexander Pevzner wrote:
> Michael,
> 
> thank you very much for your response!
> 
> On 12/10/23 18:11, Michael Sweet wrote:
>> This code has been the focus of *six* CVEs since the move to Git in 
>> 2015 - not quite one CVE a year, but enough to be concerning.  More 
>> specifically, commit 5754bccee 
>> (https://github.com/apple/cups/issues/5630) addressed the code that 
>> allowed "alternate" encodings of member attributes that was causing 
>> interoperability issues.
> 
> CVE is about security, not about interoperability. You told several 
> times that you are concerned about security risks associated with my 
> patch, so it sounds like some kind if security review could be useful here.
> 
> BTW, where do you see security risk, in the changed (relaxed) IPP 
> "syntactical" rules by itself or in my implementation (code 
> modifications) made to implement this change?
> 
> Regarding interoperatibily, issue #5630, as I understand it, means that 
> some clients that were able to speak with CUPS were not able to speak 
> with real printers, because CUPS was too forgiving while printers were not.
> 
> First of all, I don't agree that this is about interoperatibility. This 
> is about applicability of CUPS as strong testing/diagnostics tool. Being 
> too forgiving, CUPS by itself still remains compatible with invalid 
> implementations, but becomes not very useful to test these 
> implementations for correctness (which is not primary purpose of CUPS, 
> BTW).
> 
> Second, if I relax parsing of IPP responses, but not of incoming IPP 
> requests, looks like we can achieve two goals: to be strict enough for 
> testing of clients and to be compatible with broken hardware as well, 
> isn't it?
> 
> And I know that the same IPP parser is used as a part of IPP 
> self-certifications tools. If I will implement "relaxed IPP parsing" as 
> an option, disabled by default, and will only enable it where CUPS 
> interprets responses from printers, it will not change CUPS behavior as 
> server and will not change IPP tools behavior, at this case will it look 
> good enough for you?
> 
>>> 1. I agree, that following specification is very important, and, 
>>> where possible, trying to do so.
>>
>> IPP started in the IETF and the PWG has continued the IETF's goals for 
>> conformance terminology: any requirements are there to ensure 
>> interoperability and proper functionality.  Postel's Law doesn't apply 
>> when it breaks interoperability and potentially has bad side effects.  
>> See the following for some applicable reading/links:
> 
> I agree that interoperability should not be broken, but I don't see how 
> my (updated) proposal, explained above, can break interoperability with 
> anything.
> 
> Please, correct me, if I wrong.
> 
>> They already won't be able to print from iOS or macOS, and probably 
>> not from Windows (IPP class driver) or Android (Mopria print provider) 
>> because the Get-Printer-Attributes response cannot be parsed.  And if 
>> they actually ask someone about the problem they can be pointed to 
>> Pantum to get a firmware update.
> 
> Interesting that this device included into the Apple's list of supported 
> AirPrint devices: https://support.apple.com/en-us/HT201311
> 
> Unfortunately, I don't have any iOS/macOS device to test by myself. 
> Regarding Windows, Windows wants to install vendor driver (which is 
> known to work) and I don't know is it any way to force Windows to print 
> "driverlessly".
> 
>> Firmware update capability is required for both AirPrint and Mopria, 
>> and at least the AirPrint folks require the ability to upgrade without 
>> special software and highly recommend automatic firmware updates over 
>> the Internet whenever possible...  Pantum is an AirPrint licensee...
> 
> Device has offline/online upgrade options. For offline upgdade, I was 
> not able to find firmware image for this model (and other member of this 
> discussion writes the same). Online upgrade claims that the newest 
> version of firmware already installed.
> 
>> You need to notify PANTUM that they have an issue.  Regardless of 
>> whether you believe that a user will update the firmware, they don't 
>> even have an opportunity unless you report the issue to the 
>> manufacturer.  And in fact, you don't even know whether PANTUM has 
>> already fixed the issue!?!
> 
> I'm doing my best to reach them, but didn't succeed so far. If and when 
> I'll get any feedback, I'll notify you (I mean all readers of this 
> discussion).
> 
>> Let's say we accept invalid collection attribute values.  We get the 
>> media-col-database and media-col-ready values from the printer, and 
>> then send it a media-col collection to specify printing from tray 2 on 
>> cardstock: will the printer be able to understand a correctly encoded 
>> collection value for media-col if it doesn't return valid collection 
>> values for media-col-database/ready?  (probably not)
> 
> I wrote the test. Printer correctly mirrors media-col parameters in the 
> Print-Job response (and my test encodes requests correctly) but I don't 
> see any change of the printed image when I play with these parameters.
> 
>> Did you fix the problem for the user?  Is this better?
> 
> In general yes, because actually all printer functionality is available 
> for user.
> 
> Regarding tray selection, printer chooses paper from the manual tray if 
> it is not empty or from the automatic tray otherwise, and I'm not sure 
> if it can be changed programmatically. In any case, it is reasonable 
> behavior.
> 
>>> I'd prefer to make it even more precious, affection only 
>>> communication with Pantum devices. But in that places of the CUPS 
>>> code where responses are parsed there is no information what kind 
>>> devices we are speaking with.
>>
>> And I would be even more opposed to such a change.  At that point you 
>> have created a printer driver...
> 
> Printer driver may be a way to ho, though at this case it is 1000x 
> bigger effort.
> 
> But at this case we need to provide a mechanism to disable 
> auto-discovered printer in a favor of device instance, found and handled 
> by the driver.
> 
> And another thing, we loose IPP over USB functionality (or ipp-usb must 
> mimic their printer in enough details to fool the driver that it speaks 
> with actual hardware printer).
> 
