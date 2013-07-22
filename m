Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=HZFvapUsokaBlwqAGvNPZOAiTvEDJPyoLSCnCiUgQWY=;
	b=S8WchC7e52Kkv0QsoznlzcBs4FlgToBaV7j/br6/Ls1iwJ2zHH6yYDRAmGw7Eh+NF3
	pp3x59F35v5YGfCgI91NwpjMRsck1twtJ9yhpR/VZgyA3hakrycXqHx9APhAco+QOccb
	nd2GDj1Th0G+sGWFNC3B2Laqtdo7ITBB+Ix1Za93pKoIiMpVT0iMPUsoyNKnAzzsZL+x
	dBfg7080apSiWS/GQN2/89hG7Why/pD2cx8iDy7SjgGPvEdrZytQBRMTMRbeN2WkZISK
	tud2QJIyKUBSEE/vr1D098aln3cFVjivOPDrZqNqvk9QD/9iyyFCvdmvfZ4+tpHhfQPl
	2uJg==
Message-ID: <51ED61C9.7060406@gmail.com>
Date: Mon, 22 Jul 2013 18:46:01 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <51E9B6B2.4080307@gmail.com>
	<D5AF317D-EA49-44F7-AF70-3874F18EF54E@apple.com>
	<5C2D7440-2A36-42FC-818A-03DC5D44B0E1@apple.com>
In-Reply-To: <5C2D7440-2A36-42FC-818A-03DC5D44B0E1@apple.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Bug in ippfind
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@apple.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>

Thank you very much. I have applied the patch and it works.

   Till



On 07/22/2013 04:58 PM, Michael Sweet wrote:
> And the fix:
> 
> 
> 
> 
> On 2013-07-22, at 7:30 AM, Michael Sweet <msweet@apple.com> wrote:
> 
>> Till,
>>
>> Filed the following Apple bug to track this:
>>
>>    <rdar://problem/14508324> cups.org: ippfind endian issue on Linux/Avahi
>>
>> I think this *is* just an endian issue, and it is limited to Avahi (strange I didn't notice it when I tested, but an easy fix)
>>
>> On 2013-07-19, at 5:59 PM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
>>
>>> Hi,
>>>
>>> I have packaged CUPS 1.7.0 RC1 for Ubuntu Raring (13.04) and Saucy
>>> (13.10) and uploaded them to my PPA
>>> (https://launchpad.net/~till-kamppeter/+archive/ppa).
>>>
>>> Then I have tested the new ippfind on Saucy by simply running
>>>
>>> ippfind
>>>
>>> The result is
>>>
>>> ipp://till-lenovo.local:30466/printers/Berlin
>>> ipp://till-lenovo.local:30466/printers/Berlin
>>> ipp://till-lenovo.local:30466/printers/Berlin
>>> ipp://till-lenovo.local:30466/printers/Budapest
>>> ipp://till-lenovo.local:30466/printers/LaBoheme
>>> ipp://till-lenovo.local:30466/printers/LaTraviata
>>> ipp://till-lenovo.local:30466/printers/Mailand
>>> ipp://till-lenovo.local:30466/printers/Marrakech
>>> ipp://HPOccam.local:30466/ipp/printer
>>> ipp://till-lenovo.local:30466/printers/Paris
>>> ipp://till-lenovo.local:30466/printers/SanFrancisco
>>> ipp://till-lenovo.local:30466/printers/SanFranciscoFax
>>> ipp://till-lenovo.local:30466/printers/Santorini
>>> ipp://till-lenovo.local:30466/printers/Singapur
>>> ipp://till-lenovo.local:30466/printers/Tokyo
>>> ipp://till-lenovo.local:30466/printers/Wien
>>> ipp://NPI90E6C1.local:30466/NPI90E6C1
>>>
>>> It should be port 631 and not 30466. Looks like an endian problem or so.
>>> I tested on an x86_64 system running Ubuntu Saucy.
>>>
>>>  Till
>>
>> _________________________________________________________
>> Michael Sweet, Senior Printing System Engineer, PWG Chair
>>
>> _______________________________________________
>> Printing-architecture mailing list
>> Printing-architecture@lists.linux-foundation.org
>> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
> 
> _________________________________________________________
> Michael Sweet, Senior Printing System Engineer, PWG Chair
> 

