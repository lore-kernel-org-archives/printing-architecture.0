Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=MudzwhfBohheuMd5xfY1BTAneVZ9Zuqx770cQesIcRA=;
 b=akfyox7MggN2Mvr4uwUOXsRmu5KOyuArEHCy2sLOzo5pgSdHB4cW/dZaJmcU9VGJDx
 QAAsjIbsNZ0O0+fIqvTQSVb5rgcXwMijGr9Lrr4TSwuIPz21JT0ftF3WKtMd93e517Cm
 LadPWiWCIQjOi9S4Iov7OuYOlsR+wm96gJq9g5ItBrADsaZrNZq7SGIQ2LCd+woHafyG
 vv9EjRNHYDcY73OXZPn0Sxr6owF0yPynb9/KD1s4pTA592CHP/q/7MO3iFCI9gOPruEv
 davwaPMZFstfs117m09nEOwB/OeaOKbdG5uOuPqYhzjesqHfKxmf5jxeVt7jJs+G08zs
 f+HQ==
Message-ID: <34366be2-d1fd-6ac8-2a60-3f091d5f596c@gmail.com>
Date: Sun, 15 May 2022 21:01:22 +0200
MIME-Version: 1.0
Content-Language: en-US
References: <8FA81456-F65C-47A7-927D-50B4FE05E6D7@msweet.org>
 <0a8a483f-edec-212b-c4b7-029833de0d84@gmail.com>
 <917E2E0A-E1BA-4219-8C96-E0A31808BA11@msweet.org>
 <8db7ade3-a098-5ca1-d3b4-f1d2df02a8e6@gmail.com>
 <F24F1B74-BA5F-44F5-A083-4E8A925A3B6F@msweet.org>
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <F24F1B74-BA5F-44F5-A083-4E8A925A3B6F@msweet.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] PAPPL 1.2.0
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@msweet.org>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

On 15/05/2022 17:42, Michael Sweet wrote:
> Till,
> 
> You will need to maintain a single strings file for each language that is localized, among all of the added printers.  Then make sure to remove any existing resource file before re-adding it, otherwise the resource will not be added:
> 
>      // Update LOCALE.strings file
>      papplSystemRemoveResource(system, "/LOCALE.strings");
>      papplSystemAddStringsData/File(system, "/LOCALE.strings", "LOCALE", ...);
> 

So it needs to be a single file for all printers set up? Or can it be 
one per printer and per language (4 printers, each printer's PPD has 3 
languages -> 12 files)?

And the localization for PAPPL's UI has to be in the same file as the 
localization for the vendor options?

> I've been working on a new StringsUtil library and utility project that can be used to manipulate .strings files more easily - it's what I've used to localize PAPPL and will be using for libcups3 as well:
> 
>      https://github.com/michaelrsweet/stringsutil
> 
> I'm in the process of moving the .strings file save functionality out of the utility and into the library, at which point it should do everything you need it to do to dynamically maintain a set of .strings files.
> 

Will have a look into it.

    Till
