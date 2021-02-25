Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=kvB3w7QuYXz87zxTktt0DxciiJDnSsYIMv0qcyEH+Q0=;
 b=aCeJHmkrNuzbfTjXfbINdnSAej+W65B+uFth1JqHJutOICkhYWIHMaYrRz5/PFxxoH
 7PVVSqzOyh8GBlTNY7UvYKx5fEBRRgUPc3ITyCiizp5JGROwKVC1Piy6FlNk/Lo1OC99
 RE+sQzCnyiks3tFuODjMw6wpExzxUQJ7vo3g6XXJkWUXT1UhMunsl9sma+wYAUpfGcjT
 0CAKVK7jujk33iMuoU8xmmxb3nX11ao1tqJdDnqjvPbnT6URRqXMSOSCdLnvUkK9LO4y
 ALxyV3WFzCIdKSp9l/grK5171fe1n8QZDo8lGSXGGv/8zJ6crFgTUK2lR4xCos01eg2k
 argQ==
References: <12af8541-3113-341d-6b7f-d7393203368f@gmail.com>
 <1099419D-7CC7-448C-84B1-5C35D75F7A03@msweet.org>
 <b6f4687d-fe34-c3e7-d378-a07405dc936e@redhat.com>
 <1AF4A2E5-31EC-4B89-97E1-C181FF4ED4DF@msweet.org>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <03848a6c-7fb8-50c7-6ad9-80df4b36e97e@gmail.com>
Date: Thu, 25 Feb 2021 16:24:58 +0100
MIME-Version: 1.0
In-Reply-To: <1AF4A2E5-31EC-4B89-97E1-C181FF4ED4DF@msweet.org>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Automatic printer setup with Printer
	Applications
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@msweet.org>, Zdenek Dohnal <zdohnal@redhat.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Jai Luthra <luthrajaiji@gmail.com>

On 25/02/2021 14:33, Michael Sweet wrote:
> Actually, I don't think you're going to find as many broken IPP-USB printers as you think since all but the first couple HP models  implemented IPP-USB to get AirPrint certification, which means it got tested extensively... :)
>

When I see bug reports on OpenPrinting or Ubuntu on non-working 
IPP-over-USB printers they are usually HP, probably these old printers 
which you mean.

> 
> Up to you, but I would expect some user confirmation before installing any software on my computer...
>

Simply some pop-up like "Found Acme LaserStar 1000+. Install Acme 
Printer Application?" would be enough.

> 
> Why?  The printer application can just be run with the "autoadd" sub-command, no need to link against PAPPL for that.

Or if you do not want to call an external executable via command line, 
do IPP with libcups to create the queue (with driver selection "auto").

    Till
