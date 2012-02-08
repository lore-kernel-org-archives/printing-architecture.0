Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=TsnmXa0V8pXnvTTOlY9wQJZCUkSRsUPWcbMdUG/kUG0=;
	b=YmPNNQlO1PznN8a7GcMPoYMDKKKKYrWjN85MAR6Jc1JjvpCUrb/ATmBKgU9axaaAdm
	/QeG4QYQW1Ufc/b2OJHzppV4pX2yAVRo2/HEYhKW9M3tT44H9g6WRtdLNIqr/aWXV9+9
	BOERnT1IuCo1dg57mv11uJx7IZNvsps+tzmzU=
Message-ID: <4F32F021.2000302@gmail.com>
Date: Wed, 08 Feb 2012 22:58:57 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <CD26E4AD-B675-4850-AAC4-BF07BDA5AA2B@apple.com>
	<4F316875.2020105@gmail.com>
	<2D5F0702-DD45-4500-93FB-87A77B26237B@apple.com>
In-Reply-To: <2D5F0702-DD45-4500-93FB-87A77B26237B@apple.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Removal of features in CUPS
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
Cc: printing-architecture@lists.linux-foundation.org

On 02/08/2012 05:19 PM, Michael Sweet wrote:
> On Feb 7, 2012, at 10:07 AM, Till Kamppeter wrote:
>> ...
>> Using the libpthread approach will also make the libusb-based backend very similar to the Darwin backend, which should make maintenance of CUPS easier.
>>
>> Mike, what do you think about that?
>
> That is exactly how I would do it.  And thanks again for working on this!

I have implemented it this way now. The result is in

http://www.cups.org/str.php?L2890

With this patch applied to CUPS 1.5.2

echo -en '#CUPS-COMMAND\nAutoConfigure\n' | lpr -P <printer>

works now also for USB-connected PostScript printers when using the 
libusb-based USB backend.

    Till
