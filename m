Return-Path: <pzz@apevzner.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4FD248308A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C924E8309A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=apevzner.com; s=google; t=1702493830; x=1703098630;
 darn=lists.linux-foundation.org; 
 h=content-transfer-encoding:in-reply-to:from:to:content-language
 :references:subject:user-agent:mime-version:date:message-id:from:to
 :cc:subject:date:message-id:reply-to;
 bh=n9ooZERlzEcm6c5p9vJiPoSdjBjFpfZB4JapysKEgwE=;
 b=EBBSXh/ISA41UpNNqLMCJ+pDjXQQ6SQedufYVDeXk1O4TuRsSOlTzvhlTsGqNHvr1S
 TTUM+u95vzXOyq+XRfaHb6m+2Xp8nGBuD/gdGhkCb9VJts1hPaNHf/ThZwvVb6H3MZpo
 tleuMUBRHLZP3VbfzC4vsNpoPR4M1rV72ucLuTMi64bDJ1pXWEHSQU5mzz8pgIjV20i4
 woltYKhWm+S+XXiGsJF6qCx9/EcgqGKyXoG6EIkIks3VfXn7diZiMaMUQgsI0DLanmGE
 oM1SFyE+Mm5vbsRv7ZNWzqD3icVHOIgIRhmDDrsKqQY1NuIwsQqvukHSVz/AfJu+46Hd
 hNIg==
Message-ID: <4c51b17b-e5e6-4212-8144-0fff694fa909@apevzner.com>
Date: Wed, 13 Dec 2023 21:57:08 +0300
MIME-Version: 1.0
References: <CCC014DE-78D5-4CC7-839B-8C0C23F080DC@msweet.org>
Content-Language: en-US
From: Alexander Pevzner <pzz@apevzner.com>
In-Reply-To: <CCC014DE-78D5-4CC7-839B-8C0C23F080DC@msweet.org>
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
To: Open Printing <printing-architecture@lists.linux-foundation.org>

Hi,

Due to my mistake our communication with Michael was not copied to the 
list, so I fix it by forwarding his reply here.

-------- Forwarded Message --------
Subject: Re: [Printing-architecture] RFC: Pantum M7300FDW and similar
Date: Wed, 13 Dec 2023 11:37:19 -0500
From: Michael Sweet <msweet@msweet.org>
To: Alexander Pevzner <pzz@apevzner.com>

Alexander,

> On Dec 13, 2023, at 10:06 AM, Alexander Pevzner <pzz@apevzner.com> wrote:
> 
> Michael,
> 
> thank you very much for your response!
> 
> On 12/10/23 18:11, Michael Sweet wrote:
>> This code has been the focus of *six* CVEs since the move to Git in 2015 - not quite one CVE a year, but enough to be concerning.  More specifically, commit 5754bccee (https://github.com/apple/cups/issues/5630) addressed the code that allowed "alternate" encodings of member attributes that was causing interoperability issues.
> 
> CVE is about security, not about interoperability. You told several times that you are concerned about security risks associated with my patch, so it sounds like some kind if security review could be useful here.

Um, did you remember the *6* CVEs in this code alone that I mentioned, 
one of which was concerned with member attributes in collections?  And 
that the various security reviews have resulted in the changes that are 
now in place?

> BTW, where do you see security risk, in the changed (relaxed) IPP "syntactical" rules by itself or in my implementation (code modifications) made to implement this change?

If *any* collection in an IPP message contains a memberAttrName tag, 
then the remainder of the message will allow for invalid encoding of 
member attributes.  That allows an attacker to bypass a validation check...

> Regarding interoperatibily, issue #5630, as I understand it, means that some clients that were able to speak with CUPS were not able to speak with real printers, because CUPS was too forgiving while printers were not.

The immediate issue was that CUPS would pass on a poorly encoded value, 
causing problems.

> First of all, I don't agree that this is about interoperatibility. This is about applicability of CUPS as strong testing/diagnostics tool. Being too forgiving, CUPS by itself still remains compatible with invalid implementations, but becomes not very useful to test these implementations for correctness (which is not primary purpose of CUPS, BTW).

Um, the primary purpose of CUPS is to provide a reliable, 
fully-functional print service.  It can't do that and accept garbage. 
Interoperability requires consistency.  Security requires consistency. 
Reliability requires consistency.  Accepting garbage does not provide 
consistency (or not the right kind, at least).

> Second, if I relax parsing of IPP responses, but not of incoming IPP requests, looks like we can achieve two goals: to be strict enough for testing of clients and to be compatible with broken hardware as well, isn't it?

And open the code up to all sorts of weird bugs.  Not going to happen.

> And I know that the same IPP parser is used as a part of IPP self-certifications tools. If I will implement "relaxed IPP parsing" as an option, disabled by default, and will only enable it where CUPS interprets responses from printers, it will not change CUPS behavior as server and will not change IPP tools behavior, at this case will it look good enough for you?

No.  Still adding a special case to code that needs to work as perfectly 
and consistently as possible.

>>> 1. I agree, that following specification is very important, and, where possible, trying to do so.
>> IPP started in the IETF and the PWG has continued the IETF's goals for conformance terminology: any requirements are there to ensure interoperability and proper functionality.  Postel's Law doesn't apply when it breaks interoperability and potentially has bad side effects.  See the following for some applicable reading/links:
> 
> I agree that interoperability should not be broken, but I don't see how my (updated) proposal, explained above, can break interoperability with anything.
> 
> Please, correct me, if I wrong.

*You* haven't explained how, if we accept broken data from a printer, we 
will be able to successfully communicate with that broken printer and 
get the correctly output.

>> They already won't be able to print from iOS or macOS, and probably not from Windows (IPP class driver) or Android (Mopria print provider) because the Get-Printer-Attributes response cannot be parsed.  And if they actually ask someone about the problem they can be pointed to Pantum to get a firmware update.
> 
> Interesting that this device included into the Apple's list of supported AirPrint devices: https://support.apple.com/en-us/HT201311

I'm not sure *when* it was certified (I can ask) but assuming the bug 
still exists in current firmware then it would fail certification on the 
first test.

> ...
> Device has offline/online upgrade options. For offline upgdade, I was not able to find firmware image for this model (and other member of this discussion writes the same). Online upgrade claims that the newest version of firmware already installed.

OK, so that is at least tells us we need to notify PANTUM of the bug...

>> You need to notify PANTUM that they have an issue.  Regardless of whether you believe that a user will update the firmware, they don't even have an opportunity unless you report the issue to the manufacturer.  And in fact, you don't even know whether PANTUM has already fixed the issue!?!
> 
> I'm doing my best to reach them, but didn't succeed so far. If and when I'll get any feedback, I'll notify you (I mean all readers of this discussion).

Thank you.

>> Let's say we accept invalid collection attribute values.  We get the media-col-database and media-col-ready values from the printer, and then send it a media-col collection to specify printing from tray 2 on cardstock: will the printer be able to understand a correctly encoded collection value for media-col if it doesn't return valid collection values for media-col-database/ready?  (probably not)
> 
> I wrote the test. Printer correctly mirrors media-col parameters in the Print-Job response (and my test encodes requests correctly) but I don't see any change of the printed image when I play with these parameters.

Which probably means the printer is ignoring the media-col values you 
are sending - "media-col" and any other Job Template attributes are only 
returned if rejected.  Can you send me a tcpdump/Wireshark of a print 
request to this printer?

>> Did you fix the problem for the user?  Is this better?
> 
> In general yes, because actually all printer functionality is available for user.
> 
> Regarding tray selection, printer chooses paper from the manual tray if it is not empty or from the automatic tray otherwise, and I'm not sure if it can be changed programmatically. In any case, it is reasonable behavior.

No, actually not.  I want to print an envelope, so I print it with the 
manual feed tray selected and the corresponding envelope size.  If the 
printer works correctly, it should pause until the envelope is inserted. 
  If the printer ignores media-col (likely based on your info above) 
then it will print the envelope on the paper in the tray...  Not so 
reasonable or functional...

>>> I'd prefer to make it even more precious, affection only communication with Pantum devices. But in that places of the CUPS code where responses are parsed there is no information what kind devices we are speaking with.
>> And I would be even more opposed to such a change.  At that point you have created a printer driver...
> 
> Printer driver may be a way to ho, though at this case it is 1000x bigger effort.
> 
> But at this case we need to provide a mechanism to disable auto-discovered printer in a favor of device instance, found and handled by the driver.
> 
> And another thing, we loose IPP over USB functionality (or ipp-usb must mimic their printer in enough details to fool the driver that it speaks with actual hardware printer).

The IPP-USB daemon only needs to understand HTTP.

________________________
Michael Sweet

