Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=zXLVN0e++JCb2OuZQ43mpq0gpE6Uj91E0wCCqwXAt10=;
	b=p+kHEEVh/BJUXaAY7+49XXRhumUghPiH3NT60rDUuusFDT2eG/sP/Xvl0lMruvs9Qj
	BUD9NX706ejrTpLFjBsR46CJRgZ2zOsP86rWYyhANHyaHWXRXB6/ACUd38xoHILdAk18
	sXgVfINRuEhCFjfq3jQeeYfrPySLqLj8x12Q5r14wYWw2LT2SPixfJ8it2HpDsIFTBhA
	TYoe/XQsQDxlFBu5fAl141ySKyJLazKOhmWs1VZCpjpsh8XTQ2CSnpsf8GSCs9TvGlfq
	t7hb90ZdAfzNegZMKNaAixmo1c+bR/WBY2TRg/PQypHJjlL6PtBcKRGFqDbKsd+7BeE+
	m5UA==
References: <F6B3A5F7-EFB6-4A0B-9927-C9FEB97D05EA@gmail.com>
	<ba613dc1-0c9e-8859-d77c-a8bcd0f173f8@gmail.com>
	<m3vaz5oqpl.fsf@carbon.jhcloos.org>
	<882B54A8-FB8D-46BF-AB10-364BBBC487BE@gmail.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <69d9c76e-394e-604c-5ba8-7ed15d8aa453@gmail.com>
Date: Fri, 12 Aug 2016 21:04:11 -0300
MIME-Version: 1.0
In-Reply-To: <882B54A8-FB8D-46BF-AB10-364BBBC487BE@gmail.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit
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

On 08/12/2016 08:27 PM, YaoCL wrote:
>
>> 在 2016年8月13日，上午1:13，James Cloos <cloos@jhcloos.com> 写道：
>>
>> Adding 0 .setfilladjust to a postscript job should be done just like how
>> the ps2ps filter adds snippets from ppd files.
>>
>> For rendering pdf w/ gs, I'd expect:
>>
>>    -c '0 .setfilladjust'
>>
>> is required.  Yes?
>
> Yes, append this to gs command line is required. I tested with this method.
> I created a pdf with 0.125mm width parallel lines, render in 203.2 dpi, with `-c ‘0 .setfilladjust’`
> It generate perfect result. 0.125mm is dot size in 203.2 dpi.

Will we also have to make sure that CUPS, cups-filters, and Ghostscript 
use always floating point numbers for dpi resolutions?

    Till


