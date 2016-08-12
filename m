Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=D20gndf6Kmh55udhVpPrsMQSQ9tfCu20VwAfh5mMzrc=;
	b=kCd4c5PGxvq7qli7SqhbF1L4co9vOe1p3E8YAvaojDXyzsB9mN26DTHAp4QfZGSC4H
	8jy2kcyjjOAX9zdTAa4xSnyiWmGfC+leg/4D5JXGLYCHNryCkWjQRONkG//BT5saZsW8
	gWRfzv+Bx1PZ87q+plo2gG+tpGwLNxOjlHZk+FAbbyZPA7NYPh7Fc/pXeWbZx8QARKto
	6UVFOqel1Bfp+Wan1FeqGT6w2YF7Q1RZEvTKXHdI7bPRVrubV/eOcgV7pwZ4TLHXBJ1A
	IzG/73YFosV/G9iJIPstcX4Mk8pvOzE6ZlJoreNMnDZ4QQ1eyTl2bJx0h9LcqB3T8jUn
	2TSA==
References: <F6B3A5F7-EFB6-4A0B-9927-C9FEB97D05EA@gmail.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <ba613dc1-0c9e-8859-d77c-a8bcd0f173f8@gmail.com>
Date: Fri, 12 Aug 2016 10:47:22 -0300
MIME-Version: 1.0
In-Reply-To: <F6B3A5F7-EFB6-4A0B-9927-C9FEB97D05EA@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] better support for 203dpi label printer
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org

On 08/12/2016 08:13 AM, YaoCL wrote:
> Hi
>
> CUPS support 203dpi label printer, when print from pdf to label printer, cups use gstoraster to rasterlizing pdf.
> as discussed in <http://bugs.ghostscript.com/show_bug.cgi?id=696758> due to low resolution of 203dpi and any-part-of-pixel rule,
> the produced barcode may scannable. Ghostscript has a operator to control center-of-pixel rule  or any-part-of-pixel rule, which is `0 .setfilladjust`.
> I tested a pdf with and without this operator, and checked the result raster files. with this operator the barcode is more accurate.
>
> Can we add a option to enable or disable this adjustment?

It is no problem if you can tell me how you exactly apply this 
parameter, like Ghostscript command line for example. Especially I need 
to know how to do it in the gstoraster filter (patch) and in a way that 
it also works with PDF input files (apps send PDF by default, non-PDF is 
converted to PDF by CUPS/cups-filters).

Best is to post a feature request on

https://bugs.linuxfoundation.org/

Product OpenPrinting, component cups-filters.

with all this info and the link to the Ghostscript bug report.

Thanks.

    Till


