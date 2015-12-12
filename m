Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-type:content-transfer-encoding;
	bh=fEm3s+QBUQfEM/3cVlJ2dNL086DPCSJwQoeNEGQ4yZk=;
	b=YLUXeK6cOfpINu0L0Gzr62jF8KgfPmHJIE6NGcBFjE0Goc0/lhW6QeRX2eobXP0LsF
	HImn9A9rRwanpLc/niUeICS1ILq3Vnyv7Ns/J9weVeQCnZFqHLI6fTLj3lZY1kMWI3ts
	y3PutIelBnw63TN52LhG9uKsXoiyLpoXDuE8KJRjx/P66DMClbzeB/2ebXXAUS8M0/Gp
	Ux6gHlDu3JcEkvRbIO4kHClKIEG6hxlTvlRHGD+ss9sBHU7PT8kNAtM4dIXDEeWcdDfc
	t50caCwz/Do6Q3fzCn6ccuqc+flvuD2OudfMDT/a2ZFvwzNA7OUpOr/XoW6vuuENF5/7
	M3cw==
References: <20151212083605.GX2764@var.home>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <566C3682.8060501@gmail.com>
Date: Sat, 12 Dec 2015 13:00:18 -0200
MIME-Version: 1.0
In-Reply-To: <20151212083605.GX2764@var.home>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Contributing braille embosser support
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Samuel Thibault <samuel.thibault@ens-lyon.org>, printing-architecture@lists.linux-foundation.org

On 12/12/2015 06:36 AM, Samuel Thibault wrote:
>> >and drivers/index/ubrlto4dot.c. For what are these
>> >files used, especially what does drivers/index/ubrlto4dot.c do?
> This file is used to generate the translation table in
> drivers/index/imageubrltoindexv[34].  I felt it was good to integrate it
> as "source code" for them, even if actually running the generation in
> Makefile is more tedious than really useful.
>

Added the drivers/index/ubrlto4dot.c to cups-filters now and documented 
the fact in README.

    Till

