Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=erqiNNnN0QlQTKKsmpWBFV79qvk2mPxp+KlXEsneZsI=;
	b=kUQSiuhlzepyP+h/W1AwVbCusWh9L/QVaTqS7rjSgNPjnvi6BJyciBfp7tBEX2WuJ6
	xsLn3DJT/L3DaRMywnRk29qG6R0QiMtcZ0zg2+ruu3nHgfXHCdj36wnpW5QLZyVvdo8p
	0RVIhtwjp2hqWi3r7YijYD3e0Fv+ydgRN2ybr5f+1BxgdmommMiK5Z80sc3CvtWXPVGU
	p/JmTNZ80hgVXXYnk1q4qVb+rZaLW+PU3BODWetSuLUtklxlFMUvv+MJAAqzh3GWBN+J
	znJFvTeokUtFL9xL+FVzjKl9IadwL5kCs1ULWF5oii+BBXMe751SXk0UACxEc3TzuCUN
	kuKw==
Message-ID: <51DD95A9.1000506@gmail.com>
Date: Wed, 10 Jul 2013 19:11:05 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <51DC8343.4020104@gmail.com>
	<8CA7D32C-A551-482E-9F26-9C1909D74736@apple.com>
	<843B55ED-9D7F-4ECD-B50B-272848E9649B@apple.com>
In-Reply-To: <843B55ED-9D7F-4ECD-B50B-272848E9649B@apple.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Options in /etc/cups/printers.conf
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Unfortunately, this patch applies to a completely new concept of CUPS
1.7.x which did not exist in 1.6.x. Can you also supply a fix for CUPS
1.6.x, so that I can do a patch release of CUPS for Ubuntu 13.04? Thanks.

   Till

On 07/10/2013 04:44 PM, Michael Sweet wrote:
> Till,
> 
> Here is the patch for 1.7 (1.7rc1 to be released soon):
> 
