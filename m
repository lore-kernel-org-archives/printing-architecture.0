Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=32WVyTuZkPZMDtGcPW/oSKgcbLFrKfECeBfXoiAgZTA=;
	b=B3Gf+OAOO7y2V+mPsWeILMA9p/n3zlsumvUk7MyGOhCWgpEb1Dawep/mKEbQAhQnMy
	WW8ccqwWoe49vSfPecNahhoplam58du4Hg7i2HMgdSVwfubdH+Fm2e6+infZnUgMM3Z+
	wxnj1a8Pw9sELbxGmP35cm78z5D6TpFkmhGNG5lgVxmTavOQukygoWqXlZajtht8XhlM
	+Wa9f/g36gkjXdnY5lu5qxmHFCIGYSqkr05SAmZIaHaKf/7+Bi/ZWtYLgeqgqzOCUab7
	YGH/0CIG9+qcgR3yOZ9Q7VeUaRBb3B2D2te+KqplDrRPRaHnhA9IrOmdqGYEv/zjc5s+
	0R4w==
Message-ID: <54C79494.20402@gmail.com>
Date: Tue, 27 Jan 2015 11:37:24 -0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <54C65044.7030501@gmail.com>
	<CAN40gStNSnXwgw7r-cdXHGiLk10LPQj2Uq1qYh+CmRjZNuO-bg@mail.gmail.com>
	<BFBB8879-FEAD-4797-8ADC-7EEF6A810E19@apple.com>
In-Reply-To: <BFBB8879-FEAD-4797-8ADC-7EEF6A810E19@apple.com>
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
To: Michael Sweet <msweet@apple.com>, Ira McDonald <blueroofmusic@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <Printing-architecture@lists.linux-foundation.org>

On 27.01.2015 10:53, Michael Sweet wrote:
> Ira,
>
>> On Jan 26, 2015, at 8:59 PM, Ira McDonald <blueroofmusic@gmail.com> wrote:
>> ...
>> <ira> The IPP standard for uploading firmware will only be in the work-in-progress
>> IPP System Service (milestone of Q3/Q4 2015 for Prototype draft).   Actually doing
>> the reboot to the new firmware is currently just an idea of mine for a new operation
>> in IPP System Service.
>
> There are a lot of security issues to address with firmware updates, and we'll need widespread adoption to make this useful.  On the consumer end of printers, most now offer updates via their control panels and/or web interfaces, and on the high end you need a service engineer to apply the update.
>
> In any case, I don't see this as a GSoC 2015 project (2016?)
>

OK, so my suggestions (1) and (3) are not (yet) suitable for a GSoC project.

WDYT about my suggestion (2), the SANE drier for IPP network scanners? 
Is the standard already in a usable state? Are there already MF devices 
with standard-conforming scanners?

Ira, what were your ideas of implementing PWG standards in GSoC projects?

    Till


