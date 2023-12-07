Return-Path: <till.kamppeter@gmail.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B54F342069
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 89FC342039
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1701989134; x=1702593934;
 darn=lists.linux-foundation.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=rOLIlAOD5XdnhGdXl5WU9PDpjawcj0bi52JUR3syCHI=;
 b=jep0EP1KtP4jbaJ/vq16HWdrUH6BEmVC6C1BnIMqfepzRqnQqP92KLP8ThqZ76hU1x
 yGvP2e7cFy0Km+YNoMqnoZylvgEI2q5yX9ML18SDgrryLmRZlLGdQGcWttzsrD2q2jkM
 uzPtTNaRy54gETdKVfOHT3lvL5FSAQtBeE6b8E25ett+gy9Ix217+szrAEOdjo//31st
 HzpILT75x1LuTRk8luk2I9xWYww9pg1q/QpADii9wKKXX3Iq9tmfeEpdSfB2aeA/vArP
 bmthGj8s0kJHdv+cmCD9+nDmsSSwdV4I8yT9NkXztD03MZS3d3A8c5VZyor3ryaNet7J
 OBMA==
Message-ID: <632c7757-79e1-4b24-a1fd-9f6c3a8fcfb5@gmail.com>
Date: Thu, 7 Dec 2023 23:45:31 +0100
MIME-Version: 1.0
Content-Language: en-US
References: <c7a55ce9-b1a0-49f9-869a-b3c021fc51fb@gmail.com>
 <C4E3B308-74D8-43D7-9790-859BEE0CAB62@msweet.org>
 <6f83f586-b358-c2ba-4a81-e23b10f98e99@thax.hardliners.org>
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <6f83f586-b358-c2ba-4a81-e23b10f98e99@thax.hardliners.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit
Subject: Re: [Printing-architecture] PDFio: Replaced QPDF by PDFio in
 libcupsfilters as GSoC project?
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Tobias Hoffmann <lprint-list@thax.hardliners.org>, Michael Sweet <msweet@msweet.org>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

On 07/12/2023 21:17, Tobias Hoffmann wrote:
> AFAIR the hard thing was exactly this: To transform(move, rotate) the 
> annotations (just keeping them when no transformations are applied was 
> never the problem), as required esp. for n-up.
>

Yes, this is what I mean what has to be taken care off, independent of 
how many input pages are put on one output page.

> At the time, the "easiest" way – actually the only way I've seen it 
> implemented in other open source projects – was to first convert the 
> annotations into regular /Content commands (called "flatten" – 
> implemented by Jay in QPDF) that are then simply subject to all the 
> transformations applied there (which is not the case for /Annots, IIRC). 
> AFAIK this also the only way to "clip" annotations to only be drawn 
> inside a given area.
> 

Yes, for printing, where it does not matter whether the annotations are 
separately managed annotations or integral part of the graphical 
content, it simplifies a lot to flatten the annotations before doing any 
other operation, and so the risk to introduce bugs lowers a lot.

> But I would be delighted to see a different implementation.
> 

On the other side, keeping the annotations as such while doing the 
conversions makes the filter function more universal, and not only 
usable for printing.

> As a side note, when sufficiently complex transformations are required 
> (e.g. n-up), the current qpdf based pdftopdf implementation converts 
> pages to "Form XObjects", that could be draw just like Images onto new 
> pages. But these XObjects cannot have Annotations themselves, only the 
> Page where they would be drawn to has /Annots.
> 

And so probably flattening before the operation simplifies the work even 
more.

    Till
