Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=BbEHAxJRV+Fa27MttIMT1mM8gPC0wyIqZWReNxBxNyo=;
	b=kU1xjHjk91mJSWZaOORCLFxMNVc6X5DGgllPR0JPNtYvZtl1QYIYjZD8bn2R3XjBTV
	RUxrBjE2nt79gBKRBgGZ56P/IFLUmEN2y/1rJDeW/catZB7aDv8XAKtMCl1mGyLacHC3
	cwrS0wlSCuHZmLpUOGvuJd5Czg5LSJwvzy95PwErUGV1fezq4YHF42Hzfy9oSAi+Cr3+
	bua9eHmJbZx/bl28VWbGFQDNAe58UWV70c/5gTf34PCVBjvElMfvu6PFJYErhsWVtWL9
	dcQ8fK1X2XFODfAQsVpsXvXkejtj7XDy5SSzHk2EssCvXE2UGVfpBWMjA/tv3kbAF8UA
	j9/A==
References: <CAN40gSuri9epCC+gN8srjyG3zmRuCXQmWjdzdyQGMW+HYDxZ2g@mail.gmail.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <bea51b59-a6c0-4fc0-8b9b-168ce33fdfc5@gmail.com>
Date: Tue, 4 Oct 2016 22:11:28 -0300
MIME-Version: 1.0
In-Reply-To: <CAN40gSuri9epCC+gN8srjyG3zmRuCXQmWjdzdyQGMW+HYDxZ2g@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Fwd: First IPP Everywhere
	Self-Certified Printers !!!
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Ira McDonald <blueroofmusic@gmail.com>, "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Matthew Morikawa <Matthew.Morikawa@dda.kyocera.com>

On 10/04/2016 01:45 PM, Ira McDonald wrote:
> Hi,
>
> I'm very pleased to announce the HP has successfully self-certified
> twenty (20) IPP Everywhere Printer models!
>

Thank you very much for the info.

And congrats to HP to certify the first ones.

>
> The following new IPP Everywhere Printers have been submitted to the PWG
> web site:
>
>   - HP DesignJet T730 36-in Printer
>   - HP DesignJet T830 Multifunction Printer
>   - HP OfficeJet 8702 All-in-One Printer
>   - HP OfficeJet Pro 8710 All-in-One Printer
>   - HP OfficeJet Pro 8712 All-in-One Printer
>   - HP OfficeJet Pro 8714 All-in-One Printer
>   - HP OfficeJet Pro 8715 All-in-One Printer
>   - HP OfficeJet Pro 8716 All-in-One Printer
>   - HP OfficeJet Pro 8717 All-in-One Printer
>   - HP OfficeJet Pro 8718 All-in-One Printer
>   - HP OfficeJet Pro 8719 All-in-One Printer
>   - HP OfficeJet Pro 8720 All-in-One Printer
>   - HP OfficeJet Pro 8722 All-in-One Printer
>   - HP OfficeJet Pro 8723 All-in-One Printer
>   - HP OfficeJet Pro 8724 All-in-One Printer
>   - HP OfficeJet Pro 8725 All-in-One Printer
>   - HP OfficeJet Pro 8726 All-in-One Printer
>   - HP OfficeJet Pro 8727 All-in-One Printer
>   - HP OfficeJet Pro 8728 All-in-One Printer
>

When I look through them, these are actually only 5 models:

    - HP DesignJet T730 36-in Printer
    - HP DesignJet T830 Multifunction Printer
    - HP OfficeJet 8702 All-in-One Printer
    - HP OfficeJet Pro 8710 All-in-One Printer Series
    - HP OfficeJet Pro 8720 All-in-One Printer Series

When only the last digit of the number differs, these are only variants 
with regional adaptations. The printer itself is the same but the power 
supply can be 110 V or 220 V, the power cord can be with different plug 
and the printers front panel (what is printed on the printer's shell) 
can be in different languages.

So I would like to see the IEEE-1284 device IDs for that printers, as 
for listing them on OpenPrinting.org, there should be one printer entry 
per device ID.

I would then add a driver entry called "IPP Everywhere" and make it the 
recommended "driver" for these printers.

I have also discovered a bug on

http://www.pwg.org/dynamo/eveprinters.php

The link of the HP OfficeJet 8702 All-in-One Printer leads to HP's page 
of the HP OfficeJet Pro 8710 All-in-One Printer series.

    Till


