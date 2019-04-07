Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:from:to:cc:references:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=sqdyZr7LxKQLIopzwGzCM4QwQUMFJO/LY/OrzK9wn9w=;
	b=DZs85uXUdtF921QFFSTT44fDijTpNwIKrVB3ZlMCg6IQ8z6+Hm5IdtCgohlo46VI+F
	rXAFpn7iEIHwWuPPKQ4ewuvfHxVlKJcjFbI6QTpCbext26LZTiYZuBnOHCNbH+NUjW94
	4rwSRkIXFFmCHy6GVVjIPkfrffNCgPeLbpxdSH3soK3u/36tWYIRlPQMWUy3wuhYlcDg
	54izPwD0UJWK0FucSKeBGZFwgtP7TMqNJUPWn+9DZ9F1gU7txn7Ou8TAOjS6FNt39FvW
	q2nvWpNIawXPGnCRcfaeW01wey1ztvTXqAjDgJEm10G3CVMzMhY9o4dNrKSEY7SfBAZ9
	hgvA==
From: Till Kamppeter <till.kamppeter@gmail.com>
References: <33d66248-6dd2-5e8b-9068-4232eeeb2b8a@gmail.com>
	<b97db957-34e8-bd93-25b4-fd547e40e509@gmail.com>
Message-ID: <a23c30b0-1456-993e-ecb4-65e9b1835f0c@gmail.com>
Date: Sun, 7 Apr 2019 17:21:21 +0200
MIME-Version: 1.0
In-Reply-To: <b97db957-34e8-bd93-25b4-fd547e40e509@gmail.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: Re: [Printing-architecture] OpenPrinting News
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
Cc: Aveek Basu <aveek.basu@lexmark.com>, Open Printing <printing-architecture@lists.linux-foundation.org>

Another UPDATE: I have released cups-filters 1.22.5 now, due to an 
incompatibility of foomatic-rip with the new Ghostscript 9.27.

    Till

----------

1.22.5: Bug fix release, to make foomatic-rip working with Ghostscript 
9.27 and later.

1.22.4: Bug fix release, to fix various bugs in cups-browsed and in the 
filters.

CHANGES IN V1.22.5

	- foomatic-rip: Changed Ghostscript call to count pages in a
	  PDF file to use "runpdfbegin" and not the undocumented
	  Ghostscript internal "pdfdict", so that it works with
	  Ghostscript 9.27 and later (Debian bug #926576, Arch Linux
	  bug #62251).

CHANGES IN V1.22.4

	- cups-browsed: Fix broken trailing space removal on
	  "NickName" (Pull request #103).
	- pdftops: Emit PostScript Level 2 instead of Level 3 for
	  Brother PostScript printers as at least some of them
	  report to support level 3 but ontly work with Level 2
	  (Ubuntu bug #1306849, comment #42).
	- bannertopdf: When multiplying the page for N-up or Duplex
	  printing one page too much was generated (Issue #102).



On 05/04/2019 21:20, Till Kamppeter wrote:
> UPDATE: I have released cups-filters 1.22.4 now.
> 
>     Till
> 
> On 05/04/2019 17:10, Till Kamppeter wrote:
>> cups-filters
>> ------------
>>
>> Note that due to the fact that we have given GitHub issues of 
>> cups-filters to students as assignments for the GSoC 2019 student 
>> selection process I have checked through the issues and (together with 
>> issues which I have closed and which I have fixed by myself) reduced 
>> the number of issues from 26 to 18.
>>
>> I will release 1.22.4 still for Ubuntu 19.04.
>>
>> Currently released is 1.22.3.
>>
> 
> [...]

