Return-Path: <pzz@apevzner.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A1596400D1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AC1424010C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=apevzner.com; s=google; t=1702192088; x=1702796888;
 darn=lists.linux-foundation.org; 
 h=content-transfer-encoding:content-language:to:subject:from
 :user-agent:mime-version:date:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=kaY2VsstiuO/o+cfVfgcU+TEdUTgpkvRJaTdbgUh2HU=;
 b=Afz0C815DcFsZv92iPbt3HuJ/42H5w4bRo11cGl/YMWTNC3PL0PIABa9GSPaZN9ZwJ
 aRGUCvXV+W1hcrWQfyuxjHLLPy31dp+89sQ3dZbYn3XSNMGQMEwjx4SWeE4nm6+OVu/m
 g3wym63M1x6IXrywMnceWG7Vni+EJgeDkqe8iwo70M/HxNwQ+Xm20HZhV8qgfKzhu4vm
 I150Ex/WWmRE2ha32EpN3tkAD05jkFC5Z03ccpWeSEYhNjo/+0XixKg/Vj8N4yZk41Kk
 ag/rBX7olTa2LoqHgjJMS+snt9eOmBUEl6bEiAcOAQ6+DhNM3ovdFZ+xuFQWpfwAW3j/
 8n1Q==
Message-ID: <c4acbedb-c17d-4440-9945-c1b04abcd052@apevzner.com>
Date: Sun, 10 Dec 2023 10:08:02 +0300
MIME-Version: 1.0
From: Alexander Pevzner <pzz@apevzner.com>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] RFC: Pantum M7300FDW and similar
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Hi!

recently I was focused on getting some devices that supposed to work 
driverlessly to be actually functional.

I was able to get working at least half-dozen various devices from 
Canon, HP, Lexmark and Pantum.

Although some problems were caused by bugs in printing software (see 
https://github.com/OpenPrinting/libcupsfilters/issues/38, for example), 
in most cases problems were caused by buggy firmware that violates 
specs, so "fixes" are actually workarounds that allows system software, 
that was working correctly (i.e., according the written specification) 
before that workaround to work with some particular device or class of 
devices by carefully adding some specs violation to make this device happy.

Here I want to discuss the situation with Pantum M7300FDW. Pantum is not 
some exotic unknown trademark, these devices are inexpensive, quite 
functional and become popular. I believe, they will be as popular as 
Brother devices. And most likely, the problem that I want to speak about 
affects many Pantum models.

This device has a serious violation of the IPP protocol: it encodes 
members of collections using attributes with names instead of using 
memberAttrName to represent attributes names within the collection.

Which is interesting, the devise is listed here as supported: 
https://openprinting.github.io/printers/

Mopria also lists device as certified 
(https://mopria.org/certified-products, sorry, I can't create a direct 
list to device).

I have proposed a workaround by patching IPP parser in CUPS 
(https://github.com/OpenPrinting/cups/pull/826) but it was rejected by 
Michael Sweet.

However, upon Till's advice, I don't give up and trying to discuss it 
here :-)

First of all, I want to say, that I'm looking for a technical 
discussion, not for any kind of confrontation. I greatly respect 
Michael, his work and his expertise and really impressed how one man in 
one pair of hands can drive printing software of entire (non-Windows) 
world. But regardless of that I feel not quite comfortable when 
technical discussions ends in so abortive way as in this case.

Michael's position, as I hear it, is following:
- device violates IPP specs, so problems is on device, and device must 
be fixed
- IPP parser is a quite complex stuff. Touching it is dangerous and may 
open a way to security vulnerabilities

(please correct me, if I've missed something).

My position is following:
1. I agree, that following specification is very important, and, where 
possible, trying to do so.
2. But being practical engineers, we know that sometimes we have to 
carefully violate rules. cups/ipp.c already has an exception for Brother 
devices that use some IPP tags incorrectly. sane-airscan, ipp-usb 
contains many quirks that make incorrectly behaving devices 
full-functional. Without these quirks, many devices will not work.
3. Even if Pantum will fix their firmware, 50% of users of already 
purchased devices will not upgrade.
4. I understand the complexity of IPP decoder, because I'm the author of 
alternative, independent implementation in Go 
(https://github.com/OpenPrinting/goipp). I believe my implementation is 
similar to CUPS's on its level of correctness and strictness. And has 
near 100% test coverage, BTW.
5. My patch is simple and observable. It is only few lines of code (see 
https://github.com/OpenPrinting/cups/pull/826 for details). It doesn't 
change any assumptions of the upper-level code about the parsed IPP 
message. It only slightly relaxes decoding rules. Honestly, I don't see 
how it can expose any vulnerability.
6. My patch is not "just a quick hack". I understand that this is very 
important part of the CUPS code, so I've spent more that 2 weeks, 
thinking about it correctness and modelling various corner cases, using 
my goipp library.
7. We are doing our work for people, for our end users. And actual 
tradeoff here is between user's needs to have reliable and secure 
software (technical "purism" helps as here) and user's needs to have 
their device supported out of box (here "purism" sometimes works against 
us).
8. If we will eventually rich the Pantum representative, good discussion 
with weighted arguments can help to convince them to implement some 
improvements at their side, while aborted discussion will not help a lot.

If my patch looks "too wide", I can do it more precious, by affecting 
only behavior of parsing IPP responses received from devices, not 
received requests. At this case it looks even safer.

I'd prefer to make it even more precious, affection only communication 
with Pantum devices. But in that places of the CUPS code where responses 
are parsed there is no information what kind devices we are speaking with.

Please note that with my patch the device prints and scans driverlessly, 
and does it perfectly well.

And I really see no danger associated with this change.

Looking forward for your feedback, dear colleagues.

P.S. I remember a while ago we were in the similar discussion with Trent 
Lloyd, author of Avahi. He didn't want to include localhost support 
because it violates (according to him) mDNS RFC, and it took about 3 
years to convince him to make an exception (according to Till, it was me 
who has reached out to him, 
https://openprinting.github.io/OpenPrinting-News-February-2020/#avahi-local-service-support)

-- 

	Wishes, Alexander Pevzner (pzz@apevzner.com)
