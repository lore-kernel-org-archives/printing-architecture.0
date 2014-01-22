Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=wexPwoVHmi1+NZj0pknpDGD1u3jUXElJyU1i1jcDB3A=;
	b=SXv1UqWPLJo0DMa6whKqrnVXUeY4BbZJLrf5OJyKsaSxB7F39Wmrd3z7ZcZX3M2ZV3
	a1o19flKYQ2tIv+0yA1QJ76+sTOTkEikGcUnAnTW0+u/VOvkAtDgMrjh1erm5WIqS3e9
	L27pO4kgr01wfwbth4luQ4thAJffqCKdEx9xdo8W9RMfmJZ0hZX3+W5YMDmBKHcupSuO
	NoyFh9uD8kXaljVmBjXf5Fr8zHPQ99yo6pp2gNS49m8sQI47z+kjpoPIqLZgTMOr/LY0
	+G28uXgzgcRibbjbTGvbL7oBcAv6Y9lJMIVrOy3ZYC6TszOwPDl1vBrma/5Hj33YG2cD
	Ta6g==
Message-ID: <52E0290B.3050502@gmail.com>
Date: Wed, 22 Jan 2014 21:24:43 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <SNT149-W14813CFD43AB9543F81B488A70@phx.gbl>,
	<52E00F63.3060001@gmail.com>
	<SNT149-W407B16F7728BAD7D8B9D8488A70@phx.gbl>
In-Reply-To: <SNT149-W407B16F7728BAD7D8B9D8488A70@phx.gbl>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] CUPS Raster filter Question
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Shane Lin <shane_lin2000@hotmail.com>, "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

There is perhaps a bug in the Document viewer or the GTK print dialog,
sending an incorrect option for the custom paper size. It has to send
"PageSize=Custom.<width>x<length><unit>", with <width> being replaced by
the width of the paper, <length> by the length, and <unit> by the unit
in which the width and the length are expressed ("in", "cm", "mm",
"pt"). If the unit is omitted the default unit "pt" (PostScript points,
1/72 inch) is used.

There were already reports that "PageSize=Custom" or
"PageSize=Custom.Custom.<width>x<length><unit>" got sent.

Please follow the instructions of the section "CUPS error_log" on
https://wiki.ubuntu.com/DebuggingPrintingProblems and see in the
error_log what gets actually sent.

   Till


On 01/22/2014 08:58 PM, Shane Lin wrote:
> Hi Till,
> 
> I tried to resolved the printing from the "Document Viewer" with custom
> paper size issue. Currently, if I open a PDF file in the Ubuntu 12.04
> and print with a custom paper size, I always get the "Unrecoverable
> error: rangecheck in setpagedevice". I did not see the CUPS raster get
> generated. Other page sizes printed ok.
> 
> I think my PPD for the page size should be good. it works well with the
> PS printer. 
> 
> I thought using different filter may resolve the issue. But it looks
> like Poppler-based titer did not resolve the issue. 
> 
> Do you have any suggestion?
> 
> Thanks,
> 
> Shane
> 
> 
> 
> 
> 
> <http://www.windowslive-hotmail.com/betathanks/?locale=en-us&ocid=TXT_PROED_thanks_HMWL_thanks_gifts_0507#>
> 
>> Date: Wed, 22 Jan 2014 19:35:15 +0100
>> From: till.kamppeter@gmail.com
>> To: printing-architecture@lists.linux-foundation.org
>> Subject: Re: [Printing-architecture] CUPS Raster filter Question
>>
>> On 01/22/2014 06:45 PM, Shane Lin wrote:
>> > Dear List,
>> >
>> > Are there other filters (other than the gstoraster) can generate CUPS
>> > raster in the Ubuntu system? What should I do to use them if there
> is any?
>> >
>> > Thanks,
>> >
>> > Shane
>>
>> Applications usually send print jobs in PDF, leading to a
>>
>> pdftopdf -> gstoraster -> rasterto...
>>
>> filter chain. gstoraster which uses Ghostscript can be replaced by
>> pdftoraster which is Poppler-based:
>>
>> pdftopdf -> pdftoraster -> rasterto...
>>
>> This can be done by editing the file
>> /usr/share/cups/mime/cupsfilters.convs, changing the line
>>
>> application/vnd.cups-pdf application/vnd.cups-raster 100
>> pdftoraster
>>
>> to
>>
>> application/vnd.cups-pdf application/vnd.cups-raster 98
>> pdftoraster
>>
>> Then gstoraster is not used any more but always pdftoraster instead.
>>
>> There is also an imagetoraster filter which converts many image formats
>> into CUPS Raster, but this does not work with multi-page jobs.
>>
>> Till
>>
>> _______________________________________________
>> Printing-architecture mailing list
>> Printing-architecture@lists.linux-foundation.org
>> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture

