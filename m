Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :references:from:in-reply-to:content-transfer-encoding;
 bh=OG9ZyKB3RuDrdes1sRbhWBdiYcTvKomtkOkpH7ZiYvQ=;
 b=pgshD1mpaOft4e6fsVld8mfmI4uQdaJOz98sKPvqF2ex+dsi057f3ehkM6WnPh0NHG
 g2nWfqX95kN/INylV8t242gkqg7gfg9Zo+8zSogF6SQuiTn5oorRordRcTNdHuO5VIfN
 VQpudxzJHOM32beudri0AH4uTVlo0nXY/ht4BvPNHHHyPJopolJxware1jK4E5CUMLPE
 F1eSxYfS5T4YYRY15ocEddUMLG0s0LlrOAFgo1WjHviALAkxp7svwq+KkbpBYGbBWg9u
 jSTrwDRo1Ed9mR5gMvrgbLY6NYBySDG90SJ4DisqqY+6qlwqPgE4+gpCDbtUltkKaUZs
 PjOw==
Message-ID: <d263b5ce-4a76-5dd2-6e2b-88a0dfcaef24@gmail.com>
Date: Mon, 25 Oct 2021 17:19:14 +0200
MIME-Version: 1.0
Content-Language: en-US
References: <34184587.8yKaOjHuOU@cwolf-work>
 <1489e0d9-cacb-bd92-7985-9fef4afb02bb@gmail.com>
 <1880865.CGEiM1yXm4@cwolf-work>
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <1880865.CGEiM1yXm4@cwolf-work>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Deprecation of all modules except for
 everywhere
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



On 25/10/2021 16:36, Christian Wolf wrote:
> Hello,
> 
>> Classic CUPS printer drivers are replaced by Printer Applications and
>> Printer Applications are emulations of IPP Everywhere printers. With
>> trhis all printers will appear as IPP Everywhere (or driverless IPP)
>> printers. The modern ones do this already by themselves, for the old
>> ones we use Printer Applications.
> 
> so, I see there is a fallback plan in place. If I understand this correctly,
> one mainly sourced the usage of PPDs out into standalone applications so the
> CUPS core is free of bloat. Makes sense.
>

Generally, Printer Applications do not use PPDs. One can use any 
architecture to get an emulation of an IPP printer. LPrint for example 
does not use PPD files internally, same for the sample Printer 
Application in the PAPPL project.

For PostScript printers, where the manufacturer provides a PPD file, and 
also for classic CUPS drivers for old printers where I do not have 
access to for testing, the easiest way to go is to have an architecture 
which wraps the classic CUPS driver with its PPD files into a Printer 
Application. For this I have created the pappl-retrofit 
(https://github.com/OpenPrinting/pappl-retrofit) library with which I 
have maded my 4 Printer Applications to retro-fit practically all free 
software CUPS drivers which are available as *.deb packages in the 
Debian distribution.

    Till
