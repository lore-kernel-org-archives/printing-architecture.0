Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-type:content-transfer-encoding;
	bh=Jjm7uYCPrXJ7P5plDFE4ZxeOUrpW6EHcriwvS0bUqqc=;
	b=rdF86/v6YeK3kgOLvD16rFsGVfiVqGux3HgL+z5G/sG5YENg37xzy6p5YZVqCX6PXy
	9I3XBU9mT6cgl5Ea6E3rD+NKIGcRdvSYZNKAcRMTPJdmzCX1KlUkN9LLir/wfXrXLUJl
	UgPa9HMUaAu7y+eT24O9BDYU/r5qlTYvKgpsTD26pLgOOgbbT87HvRfa23AdTc0uWOcX
	LDmYiUICLJxDxELogqbhO9IY2yIHdi1xxV5tWD35sEgBTnh+TKiMYTXh1AImXydD7T8m
	uneCeFDyiq0+ryvutgfh/yfdlufams/4FmhGcH2SsihAkO1kt2fDhQcugcG47Rt79bnf
	wQkg==
References: <20151209102736.GC16751@var.bordeaux.inria.fr>
	<5669E0B4.9040009@gmail.com> <20151210204505.GJ2905@var.home>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <5669E84B.2090400@gmail.com>
Date: Thu, 10 Dec 2015 19:02:03 -0200
MIME-Version: 1.0
In-Reply-To: <20151210204505.GJ2905@var.home>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Contributing braille embosser support
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Samuel Thibault <samuel.thibault@ens-lyon.org>, printing-architecture@lists.linux-foundation.org

On 12/10/2015 06:45 PM, Samuel Thibault wrote:
> Hello,
>
> Till Kamppeter, on Thu 10 Dec 2015 18:29:40 -0200, wrote:
>> I am looking into integrating it into cups-filters,
>
> Cool :)
>
>> 1. PPD files: If there are different options, like LibLouis2, libLouis3, ...
>> their name translations/long names should also be different,
>
> Sure, easy :)
>
>> 2. Cluttering of /usr/lib/cups/filter/: This directory should only contain
>> the actual CUPS filters
>
>> The auxiliary files should go into a separate directory, like
>> /usr/share/cups/braille/
>
> Sure, easy :)
>
>> 3. Binary bytes in shell scripts: Some scripts, like
>> drivers/index/textbrftoindexv3 contain binary bytes.
>
> Right. I'll use bash's $'\015' then.
>
>> Or do everything in C (this is even better),
>
> I had been wondering about turning these into C indeed, but the shell
> version seems to me easier to read and maintain actually.
>

OK, thanks. So please go ahead with the fixes.

And I am also grateful if you do the maintenance of your code when it is 
in cups-filters as I do not know much about Braille embossers and also 
do not have such a device available to me.

How are Braille embossers connected and how do they appear for the 
computer? Do they work with the standard usb/parallel/socket/ipp 
backends of CUPS?

    Till


