Return-Path: <till.kamppeter@gmail.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5E2A54057C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EEA41401DF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1702324786; x=1702929586;
 darn=lists.linux-foundation.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=KBFHBsW/JlNqTxnEJvUSejxiN44YkRXrEkYJcOtLiGw=;
 b=a9/lqCzhZ+3dKTpaS9XbtKar1LCWoPZlgRLQlYvljhZTSKL8JNynW+bNJEXu5ju13C
 YgGTzzjUt8IVs4ndB7DRR9sF7fOUmnT8fxsVZXaAJj8QplGhfWX/Upw2QfNMkZ5MXiYK
 QaHxUlecIOkR4EqA30qA+V1gfNK3N4K/sHFmKrTX05jjCDUWCBemEYngGE/0kjGv2LWw
 opHwp8RNowmdg5VpiVljfSPqloNnQrAMuCCTuCL6y5CXwixSLUoxUcPTQI7ICsWzBhyW
 XAzV9P5xkAJo20DYqwQgZCSf8hR4JpS/SZ7UCGX170+lWt390OHxEuriPPKRlWg/9cSr
 UwtQ==
Message-ID: <e9362830-436b-45cb-964a-18d95819f32c@gmail.com>
Date: Mon, 11 Dec 2023 20:59:44 +0100
MIME-Version: 1.0
Content-Language: en-US
References: <trinity-aa4ecf8b-1604-4eb3-b482-ee17d53c54a8-1701190767678@3c-app-gmx-bap02>
 <540a6eb1-4964-4281-a333-cf18f44ecac2@gmail.com>
 <trinity-dc79b1f8-46da-4df4-b10d-8ba39c8c1512-1701249802882@3c-app-gmx-bap15>
 <SYBP282MB261780509FF7F2F97B2A31D78785A@SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM>
 <trinity-3c8ea779-9126-4afa-872b-a88075ac08bf-1702280122490@3c-app-gmx-bap41>
 <832fed55-c020-48e8-9815-c00198875e90@redhat.com>
 <BBF2A8EF-9A59-492E-8431-1DD760BF0848@msweet.org>
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <BBF2A8EF-9A59-492E-8431-1DD760BF0848@msweet.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] high delay while printing
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

On 11/12/2023 17:12, Michael Sweet via Printing-architecture wrote:
> OK, so AirPrint (which is the spec that drove this; the same is true for IPP Everywhere) uses attributes (document-format-supported, pdf-*-supported) and job-state-reasons keywords ('document-format-error' and 'document-format-unprintable') to drive whether PDF is used for a job.
> 
> The preference is always PDF, because regardless of any speed concerns it is the most capable of producing optimal output for a printer (dynamic resolution features, color management, font hinting, etc.)  This functionality has been in place since the original AirPrint release in 2010, and we should not second guess the printer or the protocol.
> 
> *If* the PDF file is too large (pdf-k-octets-supported tells you this), uses unsupported PDF features (pdf-features-supported tells you what versions of PDF the printer supports), or the printer reports a problem with the PDF file (via the job-state-reasons keywords), then the Client (re)submits the job as raster (URF/Apple Raster for AirPrint, PWG Raster for IPP Everywhere/Mopria/Wi-Fi Direct).  The file size issue is easy to check and CUPS already does this.  The supported PDF versions are less of an issue today since PDF isn't going through as much churn today as 10-15 years ago.  But if a printer isn't able to print a particular PDF file you get the "document-format-unprintable" keyword and can automatically re-submit as raster.
> 

So slow printing speed can also be caused by the printer failing on the 
PDF and then CUPS sending Raster, but this should be easily visible in 
CUPS' error_log (in debug mode). This should also be checked. Perhaps a 
certain application's PDF (or pdftopdf's output) is always failing on a 
printer and CUPS retries with Raster ...

    Till
