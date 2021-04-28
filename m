Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=68jMiaV2gNher0PpG40uSKexj35z9yNQwpmhcs0rlVY=;
 b=AypHpgbD2i77SScaLpcVKdV6PNCxmsJQXI3KbtYvRIP9y8DtwNV8pAUb/j1TLc4CUB
 Vu7gvQheQWvzmUHg4ZbD812045VSDwZj6IFF6w5AXzlQusnfZlGvN6BPo3epO8Xgr17L
 0Y/7dKTrnDmUNkSW+M/b+X82nXlruGRJgl29iJ7ufDgkih9AjefyjqvvTMfgeuIZQUbp
 mBzPY/GVSgMnhQxayErOx4JCKzUCLBgxLfPDhTBNvN3SzPipnglJR5mtFIxy446qc3a5
 Sg0DZDKbNrG/N++EU7eJnwmddo6qeOaItLkzYoO6eJQ1ENu2aaOPICSt547VpaII7P0N
 UOvQ==
References: <8c101e3b-2f80-666c-db86-05b7dd170a7c@gmail.com>
 <FC123AED-25FA-4E37-9957-29565F89DC1D@msweet.org>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <e8060298-8b2b-94d9-3eaf-1386cbc9543c@gmail.com>
Date: Wed, 28 Apr 2021 10:17:08 +0200
MIME-Version: 1.0
In-Reply-To: <FC123AED-25FA-4E37-9957-29565F89DC1D@msweet.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Human-readable strings for standard IPP
 options/choices/attributes/propertirs
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

I have found one problem. For the color modes IPP has only the following 
choices:

"print-color-mode" = "Print Color Mode";
"print-color-mode.auto" = "Automatic";
"print-color-mode.auto-monochrome" = "Auto Monochrome";
"print-color-mode.bi-level" = "Text";
"print-color-mode.color" = "Color";
"print-color-mode.highlight" = "Highlight";
"print-color-mode.monochrome" = "Monochrome";
"print-color-mode.process-bi-level" = "Process Text";
"print-color-mode.process-monochrome" = "Process Monochrome";

Apple Raster and PWG Raster support more modes though, especially with 
16 bit instead of 8 bit color depth, "device" color modes and Adobe RGB 
instead of sRGB. Are there standard strings for these? And where do I 
find them?

    Till

On 27/04/2021 20:02, Michael Sweet wrote:
> Till,
> 
> The CUPS repository already contains a nearly-complete set of these, and they came from the IPP Registry project's exported strings from the IANA IPP registry.
> 
>      https://github.com/OpenPrinting/cups/tree/master/locale
>      https://github.com/istopwg/ippregistry/tree/master/localizations
> 
> The PWG maintains a copy of the English strings (I've tried a few times to get localizations for other languages without much success) on their FTP server (also served by HTTP/HTTPS):
> 
>      https://ftp.pwg.org/pub/pwg/ipp/examples/ipp.pot
>      https://ftp.pwg.org/pub/pwg/ipp/examples/ipp.strings
> 
> 
>> On Apr 27, 2021, at 1:46 PM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
>>
>> Hi,
>>
>> while I was looking through the code of the PPD file generators in CUPS and cups-filters for creating CUPS queues for driverless IPP printers I wa thinking about where the human-readable strings for the PPD files (and also for print dialogs) come from and whether one could also generate PPD files translated into non-English languages.
>>
>> I have also seen that printers supply human-readable strings for options and choices via the URL listed in the printer-strings-uri IPP attribute, but these strings are only for the options and choices which are not IPP or PWG standard.
>>
>> Seeing this I thought that the wide majority of IPP attributes, options, choices, and properties ar IPP/PWG standardized, and so they should always be well served by the same human-readable strings, independent of operating system, desktop, or other client software being used.
>>
>> So it would be great to have some central repository for these strings for any operating system and application software to use when working with IPP printers. Is there something like that? Was susch a thing already discussed at the PWG? Or is every OS or application developer supposed to "invent" his own, personal set of human-readable strings for standard IPP attributes?
>>
>>    Till
>> _______________________________________________
>> Printing-architecture mailing list
>> Printing-architecture@lists.linux-foundation.org
>> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>>
> 
> ________________________
> Michael Sweet
> 
> 
> 
