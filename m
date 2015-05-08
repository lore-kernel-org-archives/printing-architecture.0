Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=eKJPXgwfLd1MiftbZaihzQUUlIHcUs5UrBXxIMJkUzY=;
	b=byXyjsgXdx8MFJ5DXgoswxj3GSKqHLZDPbsFuw0nkkAMqZTFtPOkPmx4RfB/rMcXz4
	LM+vU3YLx4dYC3W5TfFdcipWaTRcudS8yc/IF6cWmHnPgPmaPmNRY+NY4r3LaKpmTR7S
	eC6LLidfloQHFgl5t5SChecwvx03T/XmstxBOTiOXPdMAny2DE7lCAZjXw6oxut8nsRp
	8JQgmPDLPTlfM213Ht0CniY6+Yz+gqD39llYhs0/hGP5J2tV5M6ZEEIa9+/UTVVANiC/
	62VUVYrRI1GpqF1vr3uND1mK13GjBXMuHIZZCWKl6tEVnwtTx9VTlQl5Zt86TEGpH0YI
	rF7A==
Message-ID: <554D2EF6.6030906@gmail.com>
Date: Fri, 08 May 2015 18:47:34 -0300
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <554BEDA8.9080003@gmail.com>
	<0E9CA9DC-A99D-485D-9FFF-EA0EA09FBDA3@apple.com>
In-Reply-To: <0E9CA9DC-A99D-485D-9FFF-EA0EA09FBDA3@apple.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] CUPS queues should emulate IPP
 Everywhere printers - First tests
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
Cc: "printing-architecture@lists.linux-foundation.org" <Printing-architecture@lists.linux-foundation.org>

On 05/08/2015 04:03 PM, Michael Sweet wrote:
> Till,
>
>> On May 7, 2015, at 6:56 PM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
>> ...
>> 1. Many FAILs. Where should I report them? CUPS bugs? CUPS mailing list? This mailing list?
>
> Problems with CUPS should be filed as CUPS bugs.

Filed https://www.cups.org/str.php?U4630

Note that I had problems to attach the plist files. Can you make your 
bug system accepting them directly (files with spaces in name, *.plist 
files, data format)? I succeeded only by putting them into a tarball.

>
>> 2. The IPP test prints a JPG file. Isit required for an IPP Everywhere printer to print JPG? Is not PWG Raster the only required format?
>
> Both JPEG and PWG Raster are required.
>

OK, so I will make the System V interface for PPD-less 
cups-browsed-auto-generated queues also accept JPG.

>> 3. The JPG file printed by the IPP test consumes a lot of ink. Can one not use a text page converted to JPG for this test?
>
> No.  The purpose of JPEG file printing is photo printing, so we need to validate the output quality.  Text-as-JPEG would not adequately test things.
>

So then the IPP test which is not about whether photos come out 
correctly but whether jobs are sent, correctly listed, and removed from 
list when donw shoot use documents in PWG Raster format as example 
files. Can be very low resolution for this test,

>> P. S.: CUPS 2.0.2 has no everywhere directory, does this only appear in 2.1.x?
>
> The source tarballs don't have the "everywhere" directory, you need to get them from the Git repository...
>

OK.

> But like I said at the PWG meeting, you need to use the tools posted on the PWG web site; what is in the CUPS repository is for development of the tools only.
>

I have the scripts from these PWG packages. I only wanted to know of 
their upstream home.

    Till

