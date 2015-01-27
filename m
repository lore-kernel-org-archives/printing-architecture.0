Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=qvkBMqgjX53bWgMfwsMjNWls0Zd/lHb5VLOtg9e328g=;
	b=ZuqfgubsMVCfTWJFBA66EXJXU6COJ4VkaVPAkWzevGV7tEzd50x8iQHxv+iWhYKsCR
	velrzQlcknTa1gvSsvQ2zrfknIpI/5sWqgENW8RreIohVk5g85CCKKUyjrLz3/5xQ/PL
	nslLRpevq4Hnhe3snrFL5jrMQEYMxMpuRzPMsbTeF6IdUBaie7uJiOGxPkri/5kq+PnV
	JJyYCBFTfxDgG02dCkgpPyn5CnB/LtN7kYbENbn9w0BnSZWllzddtGwofaaEYHZplQr4
	rj8PTyY+LCATzcKNJulj8tVVE9A679gdU+h+11mzTjCvHHY9IZhwgXHZ+KzFClX1jQOY
	zjTA==
Message-ID: <54C7C052.30306@gmail.com>
Date: Tue, 27 Jan 2015 14:44:02 -0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <54C65044.7030501@gmail.com>
	<CAN40gStNSnXwgw7r-cdXHGiLk10LPQj2Uq1qYh+CmRjZNuO-bg@mail.gmail.com>
	<BFBB8879-FEAD-4797-8ADC-7EEF6A810E19@apple.com>
	<54C79494.20402@gmail.com>
	<CAN40gSvS+q2Sd61TqF62tHo5a=GkcsUjcxXi7mFZBTm0zZJF6Q@mail.gmail.com>
In-Reply-To: <CAN40gSvS+q2Sd61TqF62tHo5a=GkcsUjcxXi7mFZBTm0zZJF6Q@mail.gmail.com>
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
To: Ira McDonald <blueroofmusic@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <Printing-architecture@lists.linux-foundation.org>

On 27.01.2015 14:01, Ira McDonald wrote:
> Hi Till,
>
> I'm not sure that there are recent IPP standards that are suitable for
> GSoC 2015
> projects.
>

So then I will simply re-post what did not get taken last year.

> I have reservations about SANE, because it competes with new IPP Scan
> Service,
> but doesn't add any value (that I can see).

The value is that common scan frontends (simple-scan, X-Sane, scan 
functionality of LibreOffice, ...) can be used with IPP scanners.

>
> IPP Everywhere self-certification is moving forward, but slower than we
> all hoped.
>

And I do not see where this would benefit from a GSoC project.

> IPP Finishings 2.0, IPP FaxOut, IPP Scan are all good technology, but
> much too
> new to be widely deployed in shipping printers.
>

Are the standard ready for use? Is it only the manufacturers not 
adopting them? If the standard is ready and at least one somewhat 
available device on the market it should already be enough for a GSoC 
project (at least if there is a good chance of wide adoption in the near 
future).

> IPP MSN 2.0 (Media Standardized Names) does do important extensions to
> media properties that would be worth reflecting in client print UIs, but
> it might be hard to get
> a student excited about more complete and accurate media properties.
>

This looks like some of the boring thingies which one can get only done 
if one pays someone for it. And if one is not able to find students to 
make a Common Print Dialog then one will never, ever find one for this.

> IPP JPS3 (Job and Printer Extensions Set 3) is full of good stuff - high
> value
> new attributes include "ipp-features-supported", "job-contraints-supported",
> "media-source-supported", "preferred-attributes-supported",
> "printer-geo-location", "printer-get-attributes-supported", "printer-icons",
> "printer-mandatory-job-attributes", and "printer-supply".  Many of these are
> required by the subsequent IPP Everywhere spec, but it's IPP Everywhere
> that will be the impetus for widespread adoption, I think.
>

This is what could perhaps make up a project, like "Extend 
system-config-printer to poll printer capabilities and features via IPP 
based on IPP JPS3)".

> We should talk about GSoC 2015 more after next week's PWG F2F meeting.
>

OK, you could also talk about the GSoC as possible implementation 
platform for standards on the meeting.

    Till

