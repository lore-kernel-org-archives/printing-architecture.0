Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=Oak5ek53ZWK8S//O7D0J4Sq/A3Tb9QiK/ktUjEiq84A=;
	b=Di+RBn/0f+BbcKFm6cJ4rNVNLAS05CaarAQ+5hTqGEXTFub625F/BmMEH49kX1GjF+
	7s4sxnfzEYyjO07iz0FsvMpTk49rIMbqmxz1sWHcOvZ2E2O4KBds67ILdHpp8Wdy9LK4
	3oL94dHVorAMXsn+FFRfCCLaKfN9WBusShxX11UFh0neDu6ewuBu62h5yVyU8MD2pRSx
	ZNgU8ehIb6I1yP7CodfZ5DEYxMG58pVhKXhddZIQmcqGgbTpJb1P0AO0lRp9jy6j6Og4
	wKwGJGmxvTsO5dXtw/nQb2XFvh1zrOfVXFUtIldVpldM6jW+FE4h0bE34W+zBlV57Bxl
	VIrg==
References: <c8eab08c-255b-c00d-a4dd-320f362a04a3@gmail.com>
	<A18DDFC9-8572-442A-ABFF-60FFA167E2D3@apple.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <589105e7-3986-7904-2344-9e8ee9f45974@gmail.com>
Date: Tue, 3 Jan 2017 14:49:20 -0200
MIME-Version: 1.0
In-Reply-To: <A18DDFC9-8572-442A-ABFF-60FFA167E2D3@apple.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] IPP Scanning: GSoC project for a SANE
 module for IPP-based driverless scanning?
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@apple.com>, Open Printing <printing-architecture@lists.linux-foundation.org>

[ Posting back to printing-architecture list ]

On 01/03/2017 02:31 PM, Michael Sweet wrote:
>> <mailto:till.kamppeter@gmail.com>> wrote:

[...]

>> Is the IPP scanning standard already an approved standard?
>
> Yes, otherwise it wouldn't have been assigned a PWG standard number...
>

OK. Thanks.

>> Are there already scanners or multi-function printers which do IPP
>> scanning?
>
> Nobody has come forward to report on this, and I haven't seen any in the
> wild.  It was prototyped by Xerox...
>

Let's hope they will come out with devices any time soon.

>> Is there a list of models?
>>
>> Is there some free software which emulates an IPP scanner (like the
>> ippserver utility of CUPS emulates an IPP Everywhere printer)?
>
> Not at present.
>

So a feature request for CUPS' "ippserver" utility would be to make it 
emulate a multi-function printer with scanner (possibility to 
activate/deactivate the print and scan functions of the virtual IPP 
device by command line options). One could have a directory with 
printable files on the machine running ippserver and if a client scans 
it gets files from this directory.

    Till


