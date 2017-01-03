Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=DBR6XS0SiRe3Ixd1EB8LxT+849zad1pmxN0vzTj29UI=;
	b=k6hxLS3ySK/raBPoN9cSpZg37lP6YbYpOt7tL3g+Eer0r38zUeiLZG+069lMsdYUO4
	rQPl5xhYfS1RJoi9fiSpv9OIlrxj7LfyyLDzPpfkUDMkfEWvtH7YL5WXrxPFNfgW0Nve
	WEwVzTKF+NDHmy/nd6Y2NplLUAxXyNNllVss/u9REjaTgXHx7ONIbXWvbUAQrLe+wmG/
	gBpt8V8hnfbtO5XKuMTJakpIRFRdbsK4DBuht1Xsek/xDdHAH6hugOGYOEKY9wjS+LWj
	nD8YOpHjYPxT1SdmVKqO3admiVqLfmaZxdFtRjob7ZES/XPrMEwdTuUub7Si0LhgT55m
	9j3Q==
References: <c8eab08c-255b-c00d-a4dd-320f362a04a3@gmail.com>
	<A18DDFC9-8572-442A-ABFF-60FFA167E2D3@apple.com>
	<589105e7-3986-7904-2344-9e8ee9f45974@gmail.com>
	<3CC2C94E-02C3-471E-B592-C72270678C18@apple.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <a16ff402-1aaf-1fda-42ef-c56c5de19524@gmail.com>
Date: Tue, 3 Jan 2017 17:15:00 -0200
MIME-Version: 1.0
In-Reply-To: <3CC2C94E-02C3-471E-B592-C72270678C18@apple.com>
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
To: Michael Sweet <msweet@apple.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

On 01/03/2017 03:05 PM, Michael Sweet wrote:
> Till,
>
> We won't be adding IPP Scan support to ippserver (or anything in CUPS
> for that matter).  Feel free to file a feature request for the PWG's
> "ippsample" project at:
>
>     https://github.com/istopwg/ippsample/issues
>
> but at this point I can say we don't have the resources to develop it...

So perhaps we should open one student project for the emulator and one 
for the SANE module then ...

    Till


