Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :references:from:in-reply-to:content-transfer-encoding;
 bh=QbBoEAYqbI248es5grDlLCgCcdokNnzrLe7jrX92ug0=;
 b=g4oKywpTOxB/fXYQoNi0AN59UtJWrX9KxSO8ZpwI3GxEaQFjW+UKb15WMae8EMYg69
 cxRk3EOtugUvwRY6fL5AIK8Xk9iM2AfpDAtO9E2EDuXErRiabtAVvuOrIvoQm7QT1XIf
 QTJeKP//ye0ZRvCQQV+g12uoF5zdWNOU05YSOxyTAvL0IwslqJTeHuB4uzXpbr+tH8q6
 h6+0cEalvS3M3YRqRYcCWqF/Mzqzc/ZPY+KUJ7zxyNdSJ+ie8WAT9H4LgGL4kJRGscpH
 vIFZoEvP4os1UVWjeb9SSlQ1zG49dSmsMeB6YuYofWJMPo2aNmhfO7GDSCJ62SVAyqet
 bzLg==
Message-ID: <1489e0d9-cacb-bd92-7985-9fef4afb02bb@gmail.com>
Date: Mon, 25 Oct 2021 15:44:26 +0200
MIME-Version: 1.0
Content-Language: en-US
References: <34184587.8yKaOjHuOU@cwolf-work>
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <34184587.8yKaOjHuOU@cwolf-work>
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

On 25/10/2021 15:25, Christian Wolf wrote:
> Hello,
> 
> I stumbled upon a formulation in `man 8 lpadmin` related to the -m switch:
> 
>> Note: Models other than "everywhere" are deprecated and will not be
>> supported in a future version of CUPS.
> 
> I am a bit confused/alert. Are you telling me that in the near future there is
> the plan that *only* IPP everywhere capable printers are supported?
> 
> I am not using the newest printers at the moment. Honestly I doubt, that these
> are anywhere close to IPP-everywhere-capable. Some are even connected using a
> plain old dumb USB cable (at least not centronics/IEEE 1284).
> Removing the support for PPDs will invalidate my complete print environment in
> one step.
> 
> How is this intended to be covered? Are you really considering forcing the
> users to throw away their existing hardware?

Classic CUPS printer drivers are replaced by Printer Applications and 
Printer Applications are emulations of IPP Everywhere printers. With 
trhis all printers will appear as IPP Everywhere (or driverless IPP) 
printers. The modern ones do this already by themselves, for the old 
ones we use Printer Applications.

Most existing free software CUPS drivers are already available as 
Printer Applications. You get them here:

https://snapcraft.io/search?q=OpenPrinting

The PostScript Printer Application (ps-printer-app) supports all 
PostScript printers. If your printer model is not listed/recognized, you 
can simply load a the PPD file from the manufacturer into the Printer 
Application.

The HPLIP Printer Application supports all HP printers, also the ones 
for which HPLIP needs the proprietary plugin, you can lod it into the 
Printer Application.

Epson and Canon inkjets, dye sublimation printers and several others are 
supported by the Gutenprint Printer Application.

For all the other printers use the Ghostscript Printer Application.

More Printer Application will come, for example for Braille embossers, 
or Printer Applications from the manufacturers.

I am also working on a Printer Application which makes classic CUPS 
drivers installed from standard Debian or RPM packages available to any 
CUPS which does not support classic drivers (CUPS 3.x or the CUPS Snap).

    Till
