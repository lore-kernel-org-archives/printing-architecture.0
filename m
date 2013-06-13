Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=UFKGYBBGhaMAuOkWtvA0Uk9kUn6I2QO3Btn2d30Jkio=;
	b=ONhrtQuLmN3x5/bzoreYCOrtV9fOSVCqtLcGh76G66fT4QzfIE0NAposBwAUqr2aF3
	+/wihOQqeSzDo3/LU4Qn/xDJVsmONZdFsAa6UooD99lLGpMIVNpe6Vj/ljn8R4QTNBEl
	GYB/4iOl0ETsFvgN0Z0o2i7kquyfwlQIH8oCh6Y+U4+KkjOMXBOy16+jRuUtdMCEP0OO
	CKe0xOZUF56YiGbHdKxbmNS2whTIXvxx8i/NDP3jiBmvVutsLzKRsWB4y9nvQdr/4IQh
	s3bDhYfXh3EeOFV88vusVovoWD314aGzc1pp860zNLuNu36MA+lZydmhSokqy52WTKHp
	bxbQ==
Message-ID: <51B9B91A.6010609@gmail.com>
Date: Thu, 13 Jun 2013 14:20:42 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <519537F0.8020405@gmail.com>
	<FDC917F9-BB2B-4117-9F4A-D817841E5AE8@apple.com>
	<51B99888.2040406@gmail.com> <1371123741.31435.2.camel@rubik>
In-Reply-To: <1371123741.31435.2.camel@rubik>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Some suggestions for the DNS-SD
 (Bonjour) printer support in the dialog
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Tim Waugh <twaugh@redhat.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, Marek Kasik <mkasik@redhat.com>

On 06/13/2013 01:42 PM, Tim Waugh wrote:
> On Thu, 2013-06-13 at 12:01 +0200, Till Kamppeter wrote:
>> This would mean to resemble large parts of CUPS (spooling, filtering,
>> but not networking) for a per-user/per-app printing system
> 
> My idea (printservice) for this was:
> 1. Avoid spooling altogether, just send job direct to network queue
> (this is often another spooler in any case)

Should be the case for laser printers with built-in network connection,
I don't know how it is with inkjets. Or does IPP Everywhere also require
spooling space inside the printer?

> 2. Avoid most filtering by requiring jobs to be application/pdf and
> requiring that allowable network queues support application/pdf.
> 

As IPP Everywhere has only PWG Raster as required format (the others are
optional), we need at least a pdftoraster filter, but this one filter is
already much better than having device-specific drivers and data fo
1000s of printers.

   Till

