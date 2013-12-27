Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=bFy5zSWAbSryJ99RVveg2Jvqd1B9DfwkY+iAPvWzSzc=;
	b=WW9D+FhsuPmQP1Xf5SmSr8TzWSvonjQRx8dvUGFxzdW/CZqJ0MqVgJy1mKCZhh6mhK
	4ZHWC6ksS85jw9kQpCKC3kwnaY5dUNhV8GV4wPCPJYfNCgSCMS5MxxY8W52duqiSyM3h
	aBbnYJRmVc7oZWp8jCkQRyYycWlT5arpE5Hso/0JstQlP94LnskojyaHLgGmtVTS1mVA
	9fB3h2Stu+E+KrCnzNv49FxcD9s6IaToOMgjNibYe6Qbkn+oTgGAEt+NqvWVXOqGhVu1
	AclSxGnk6NhyUDShGeftpBjvi/bRr/RxiqJIPNOmaYOajrXRfjVcyl1GVgUc5VL6zjTf
	VntQ==
Message-ID: <52BD9CC2.3030409@gmail.com>
Date: Fri, 27 Dec 2013 16:29:06 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <1387213857.12274.26.camel@rubik> <52AF35A2.6060804@gmail.com>
	<1387214818.12274.33.camel@rubik>
	<2F134E47-1770-43E0-9DC9-61D1E3066A08@apple.com>
In-Reply-To: <2F134E47-1770-43E0-9DC9-61D1E3066A08@apple.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Useful utility: cups-filter-check
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@apple.com>, Tim Waugh <twaugh@redhat.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

On 12/16/2013 06:54 PM, Michael Sweet wrote:
> Tim,
> 
> On Dec 16, 2013, at 12:26 PM, Tim Waugh <twaugh@redhat.com> wrote:
>> ...
>> Incidentally, while playing around with it I noticed the only route from
>> application/vnd.adobe-reader-postscript -> application/vnd.cups-pdf is
>> via image/tiff. Is that intentional? I expect any printer capable of
>> handling PDF can also handle PostScript, and that path works fine at
>> less cost.
> 
> I'm guessing the reason for this is Adobe's stupid enforcement of PDF form content protection - some forms can't be processed by Ghostscript or Adobe's own PS distiller to generate PDF because of restrictions that are placed in the PostScript code.  But it is A-OK to RIP the content for printing/export to an image... :/
>

For going this way I suggest to go

PostScript --gstoraster-> CUPS Raster --rastertopdf-> PDF ...

as first, imagetopdf/imagetoraster supports only single-page TIFF and
HPLIPs pstotiff filter only produces monochrome low-res TIFF for faxing.

rastertopdf needs to get created anyway for making CUPS a complete IPP
Everywhere implementation, as IPP Everywhere printers need to take PWG
Raster as input format. See

http://www.cups.org/str.php?L4266

> But yes, if the printer reports support for PostScript then application/vnd.adobe-reader-postscript should go to application/vnd.cups-postscript without a side-trip through TIFF and PDF...

Yes, this I already cover in cups-filters,
application/vnd.adobe-reader-postscript is converted into
application/vnd.cups-postscript through pstops, without PDF detour.

   Till


