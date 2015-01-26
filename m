Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=Mx3UZR2CBifxP1zA66evk9irU8fe3fPdrxrTZAjuTTs=;
	b=GUV3ZJSGNEZJiQNRsBGXKjNsBzQxnENSopvIm6EfGigvfjs9QihDQlQ0kPFjCLqGQq
	nQQYio0t2VbumhQiWwV0VuUm6OTFiCyA2S1+oOV4H4wIGcHeBo0B3as+xG5VFjDHB2tK
	+pfujuOqR1nRt8b8rM7fmwjd06iV9DAWe6XQ8aSwY50hcunYZWCnd7xPMVqYXhrb7Mq7
	eat+LzQTRYdOw2xULWvvF0CytZSIJQgsXfgRovt/xja/Zg5BGlPdq4ow/EZcKv2zzE9e
	CpvMF5N8pd/Yc55j0OnYmGfVHhvI/cBr63D7wF2dUmeAQ6UWLkIcHpH7Ry9vSKp5hYPH
	4CKg==
Message-ID: <54C6B7CA.3040402@gmail.com>
Date: Mon, 26 Jan 2015 19:55:22 -0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <54C65044.7030501@gmail.com>
	<43E8D0B5-1E23-4799-AB04-F32DDF745FD3@apple.com>
In-Reply-To: <43E8D0B5-1E23-4799-AB04-F32DDF745FD3@apple.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Projects for GSoC 2015: Implementing
 PWG standards
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
Cc: "printing-architecture@lists.linux-foundation.org" <Printing-architecture@lists.linux-foundation.org>

On 26.01.2015 14:20, Michael Sweet wrote:
> Till,
>
>> On Jan 26, 2015, at 9:33 AM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
>> ...
>> 3. Fax wih IPP multi-function printers
>> --------------------------------------
>>
>> Fax integration in he Linux desktop with PWG-Standard-conforming fax parts in multi-function devices via IPP and IPP-over-USB.
>
> This is really just a matter of creating fax queues with PPDs containing "*cupsFax: true" and providing UI for the cover page (phone number, recipient, sender, subject, description, etc.)
>
> CUPS itself already supports fax queues.
>
> (and that is just if you feel there is enough demand for it - "PC fax" is increasingly not a supported MFP feature)
>

So the missing piece here is support by the GTK and Qt print dialogs. 
And at least Marek Kasik from GTK does not like to mentor GSoC students 
... At least we should post feature requests for the two dialogs.

So let us prepare the first two points (and any new suggestion) as 
project ideas for the GSoC.

    Till


