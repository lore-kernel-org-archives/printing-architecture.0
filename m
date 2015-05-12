Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=Dw6TAPVOFqATrMfj0UWy+6d6fbHdThyfDZ89Uf2+HOk=;
	b=RDa6ezl9UtMxj7cszQykxazBcilzTK8MjWO7ejJLwYA5wN6L/jXPosjywKJ/J8Fsy1
	/0Trp3jXhXa74YfeNoXW5AHX0xnFWio4/P9Uu/ezuoBmD23RFFUyaEgRruZl2LK4Albt
	iOhx7lV36dSAHQCc4pcYnXIGYBclybTSRWSglm2C9y9RayTB24Qkc4bTAnTJEWDhQCAW
	vGe+ZgjdsWctSvY9JnqcghLPngLI1GrYgyw0SkASB7DGEsFEagiaFLWHkFR2jKr8THku
	4toyGO++SKJ3qYGkmZuHGeUcC8IvTl3BJXXFO1ycmLy5hsdCM7enBxX75j7/F/00LSQh
	D4rA==
Message-ID: <55516852.7020901@gmail.com>
Date: Mon, 11 May 2015 23:41:22 -0300
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <5550D4B1.8030508@gmail.com>
	<EA92BE17-AC3A-4843-86F9-60F846220A3B@apple.com>
In-Reply-To: <EA92BE17-AC3A-4843-86F9-60F846220A3B@apple.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] IPP(-over-USB) scanners - How to
 distinguish them from printers
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, "Kumar,
	Sanjay" <sanjay.kumar14@hp.com>

On 05/11/2015 11:39 PM, Michael Sweet wrote:
> The non-IPP USB scanners will not respond to a Get-Printer-Attributes request.
>

And IPP-over-USB devices without print functionality, like these 
stand-alone scanners?

    Till

