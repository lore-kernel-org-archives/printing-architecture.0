Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=MYblWnYfBB8X+xdNe5wIpvZRI6tumKN6QUbBm36bPb0=;
 b=h0pk8+yTglX14yBLVXBCOCJAVWdbQsilts0oeFnGEUSTI9XBaVoNs/KEtxYzAjjXRo
 okcYRWYtsxQyNIdn/QiCIhwv8V1xSW7E3Lke21kDj0xhkGgVj7gxCtGwDyipVr1EQEAy
 cxksNOOsphgcy2NPMGD6SwmDYszCJVljip50hLzGah/3UhSYsS81J1HsRbKvo49fIesy
 q1jIyK4wC/xHM9eBc0bu32BRmEir9gNUEIuYNACb5T/3UbuLyhv1dSRfTteG/K7YhJ7x
 Jazk8xDcDaV3mDOnjCYoN12CyrX9Ke/0YbXRLQt/TT2YcIoJE6w4kCJr7UW6OC9M4lwL
 KgzQ==
References: <da1e3969-fb49-7fd7-1728-f18759afc3c2@apevzner.com>
 <A48C14A9-A2BE-4A1C-8F91-9C0D85A98051@msweet.org>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <d66bd61c-4a20-fb0c-9efb-83cae46febe1@gmail.com>
Date: Tue, 20 Apr 2021 18:13:44 +0200
MIME-Version: 1.0
In-Reply-To: <A48C14A9-A2BE-4A1C-8F91-9C0D85A98051@msweet.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Mopria has published the eSCL protocol
 specification
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@msweet.org>, Alexander Pevzner <pzz@apevzner.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Question is now whether we should implement the new architecture of 
Scanner Applications/sandboxable scanner drivers with eSCL or whether we 
should use IPP Scan.

eSCL is probably easier to implement, as we have sane-airscan containing 
all client code and AirSane containing the server code, both needing to 
get updated to fully comply with the public eSCL standard and their code 
being moved into (a) library/ies, so that one can easily integrate it 
with PAPPL. No need to implement a new protocol completely from scratch.

On the other side with IPP Scan we have more consistency as all the rest 
(printing, IPP System Service) is also IPP.

WDYT?

    Till


On 19/04/2021 20:38, Michael Sweet wrote:
> Alexander,
> 
> Thanks for letting us know!
> 
> 
>> On Apr 19, 2021, at 1:17 PM, Alexander Pevzner <pzz@apevzner.com> wrote:
>>
>> Hi,
>>
>> Mopria has published the eSCL protocol specification:
>>
>>     https://mopria.org/spec-download
>>
>> Basically, it's the same as scanning part of Apple AirPrint (Bonjour scanning).
