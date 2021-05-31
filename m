Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=NQM9ezIRp398bhZgHsgzc1BLP8YSfWCVaU6JF1gYoXw=;
 b=mcmABJC8Femb6r5VbIxCIAhmbBBJL7d1T7hRYyCBvPJb5E6aO7KkJ0yOFHqpXVsoIC
 21ZcP1bJruJicmgEjMnEH1CMWQL+xtUoGLnQl0iAzfdIHICUA50VMEznCLpChzlYDTqU
 VEgjuInBxOX3RwdJcLwuDg++FDIjQYnrQyKuk8qNx62/rCo6TjAYwNjozeEcZglSUnuh
 X+xojG0qJAjyCysvXK1WVeckgoZqLl4jGc2QklwMPIPUV69iOVJ29fxHqgKJxboubXjM
 n4k92nCMZFyTTi4hHMcjCKVmx28cg4kPH2AxZG3mInj+7ex+2KmYPYFU8TWAHcYaal+0
 /DRw==
References: <8c101e3b-2f80-666c-db86-05b7dd170a7c@gmail.com>
 <29E8A83D-5BBB-49AA-83A6-4B3EB765828A@msweet.org>
 <9db67beb-7ca2-249c-88e4-ead29d19ce63@gmail.com>
 <FC95906E-6085-4121-AEA8-9E53613872AD@msweet.org>
 <54eda145-936b-a920-b645-66a104b23ad4@gmail.com>
 <YJc9BYPyXoSyi8X/@shaftnet.org>
 <46c7d30c-b28d-1585-e4b6-49aa22b9efc2@gmail.com>
 <2427DA0B-9BB7-462B-A29E-0A3366E504A3@msweet.org>
 <aae2e939-01a4-bdee-ddc7-940e93351eec@gmail.com>
 <4FDD96B5-A0D7-4CF7-A0E4-4D116FE73607@msweet.org>
 <320a8f00-338a-8ec8-8019-22f6ecd1d4ec@gmail.com>
 <15F0BA1D-9205-4659-A1D7-EB41F9F6F110@msweet.org>
 <b9219a65-4bcd-2e7c-56e2-31a5c2c9be3e@gmail.com>
 <63629EAE-235A-4FB9-8721-884E9E163036@msweet.org>
 <8592364a-15e6-41c3-ab0e-757b3aedfed7@gmail.com>
 <BCD48324-66DA-4F55-8FCD-154C8FC0E49D@msweet.org>
 <d5082b23-8eb7-be84-db5c-42bdde3ba5ac@canonical.com>
 <41E99F46-2F6C-4368-A03F-D575EB838E8E@msweet.org>
 <056c7830-1a00-2111-9e9a-8f125a397de8@gmail.com>
 <F2D0FCD2-39B9-460F-B332-13319BF64BC9@msweet.org>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <178e06de-ad94-ae37-3304-b20b85ccadf0@gmail.com>
Date: Mon, 31 May 2021 21:38:10 +0200
MIME-Version: 1.0
In-Reply-To: <F2D0FCD2-39B9-460F-B332-13319BF64BC9@msweet.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Make use of extended color spaces on
 IPP printers
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@msweet.org>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Jay Berkenbilt <ejb@ql.org>, Vikrant Malik <vikrant@iitk.ac.in>



On 31/05/2021 20:13, Michael Sweet wrote:
> Till,
> 
>> On May 31, 2021, at 11:03 AM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
>> ...
>> Do you know which Linux applications generate correct PDF files?
> 
> Sorry, I did some quick testing and wasn't able to find a single Linux application that does things properly...  Maybe we can fix that...

How would you fix that in CUPS/cups-filters?

For me it looks like a bug in the PDF generators in the applications, 
meaning that one has to report this for every PDF generator. Cairo 
probably covers a lot of applications, but for example specialized photo 
applications (darktable, RawTherapee, ...) probably have their own PDF 
generators, and they all have this bug.

It is really a bug as the applications send PDF files where the printing 
system cannot determine which is the color space actually used and so it 
cannot correctly reproduce the colors on a printer and use the most 
suitable of the color spaces which the printer offers.

    Till
