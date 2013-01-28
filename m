Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:message-id:date:from:user-agent:mime-version:to:cc
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=ErsSdBbHFc8p6j21TuqDVfW2ORzTnzOZPxDJaAJR8/g=;
	b=ySJhAqlNjmkKf2GxMNvmwidb69UN6MrAH7upTdmv8INwIB/75BG1jzLUjBk5iuqKCu
	8iTxDsANzn8ZGeMi2knyWONUFMSJGb/E0BXUFPb/mpSBZD7yWh13HBhSSNby1o6JpPur
	DUDC6W3wk1RL4gYiqgkeCIR2gnlldoWSW0Gqi+CjUSPwK43LZv0xINFvmOty9WYVMx8B
	trvZjwJzmMdH/N0uJJxDvKFhJ+9HOinuVW8vP+J44pJLKdt9iA/T4L/6OarhNpdBIVAf
	rOADVQC5l5xLjUoQd9Z8Wk8zmHLBpC/2GdhnjX+r+DtyhGzk/XKccjUVqJvyNOd/vaE1
	WH/A==
Message-ID: <5106EB81.3050001@gmail.com>
Date: Mon, 28 Jan 2013 22:20:01 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <50EDBBC6.4090408@gmail.com>
	<CCF496C9-2B07-4A25-AC1F-72D12F118A61@apple.com>
In-Reply-To: <CCF496C9-2B07-4A25-AC1F-72D12F118A61@apple.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] IPP Everywhere: How to make CUPS queue
 so that applications can use these printers
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
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>

On 01/09/2013 08:53 PM, Michael Sweet wrote:
> Till,
>
> Responses inline...
>
> On Jan 9, 2013, at 1:49 PM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
>> ...
>> 1. How to print from a Linux machine to an IPP Everywhere printer?
>> ------------------------------------------------------------------
>> ...
>
> Currently the only way to do this is to query the printer and generate a PPD file from the data. Then add the queue.  All of the generated PPDs should contain:
>
>      *cupsFilter2: "application/vnd.cups-raster image/pwg-raster 100 rastertopwg"
>
> Printers with PDF support should list:
>
>      *cupsFilter2: "application/vnd.cups-pdf application/pdf 0 -"
>
> Printers with JPEG support should list:
>
>      *cupsFilter2: "image/jpeg image/jpeg 0 -"
>
> I have this on my to-do list for CUPS, but thus far haven't had the time to write it...

I have seen in the source of the IPP backend that for PDF and all image 
formats the IPP attributes are carried on to the IPP printer. So this 
means that for PDF, JPEG, and PWG Raster the PPD simply needs to have 
the option and choice names being the ones of the IPP attributes 
reported back by the Get-Printer-Attributes request and no PostScript 
code needs to get assigned to the choices. Am I right? Will CUPS supply 
all atributes on the filter/backend command line then?

Another problem would be some PPD options where the Adobe specs impose 
certain option and choice names, like PageSize, InputSlot, Duplex, 
OutputBin, Resolution, ... How do I proceed with these options?

Can I "translate" the IPP attributes somehow into PostScript commands so 
that I can also generate PPDs for PostScript printers?

    Till

