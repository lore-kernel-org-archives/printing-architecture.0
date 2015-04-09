Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=njf92BsVN2ZKCjXg9yXGrCjlq6unqRkh2Zn/a9I9j2o=;
	b=KP2veJyW/0Im6pgtccpu/L9jONiLMqJ2N6iPPfcVx11tuf2VCl+3c6hnpMwC1izs17
	FT0ZeA80H0gyhGJSJpj1wUY8o6AR4z1+ZAGZ9IDsfqgPsZI+rNwry71bYwbPHXUlBS7H
	QuRZf3O1oAT+BTzCdW3iErTQSLgqsD/NaBDSn469knnrXNXdqopH4WJ1+2r67PwqEzJ1
	cga7Ru858AS0OxQi7QEgRfuBc2ni3qfE5lJYt1xZ/JLgC6CJSPlAblXZiVVREoODxsla
	fnYHSAewFPivm5bqynQrEDVAw0N5gSih0L3lp+UNLuXxRtmGvWsHSlEPjzWLNumjMq7s
	Z5ng==
Message-ID: <5525C9EA.4040509@gmail.com>
Date: Wed, 08 Apr 2015 21:38:02 -0300
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <CAOd_LFx_Vz3ZKp6bauA6vFRV_gLrXAJX16NFw4tPiMn-eAV0XA@mail.gmail.com>
In-Reply-To: <CAOd_LFx_Vz3ZKp6bauA6vFRV_gLrXAJX16NFw4tPiMn-eAV0XA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] printing architecture for embedded
 Linux system
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

Hi,

unfortunately, the HPLIP developers have discontinued the HPIJS driver 
already some time ago. Support for new models is only added to the 
hpcups driver. The HPIJS driver is still included in the package but 
only supports older printers and standard PCL 5c/e laser printers.

The hpcups driver can also be used without the CUPS daemon, but it needs 
the CUPS libraries to support the CUPS Raster input format. Ghostscript 
is not needed, you simply need to generate CUPS Raster for feeding into 
hpcups.

    Till

On 08.04.2015 18:46, Cliff Brake wrote:
> Hi,
>
> We've been using the hpijs printer driver in an embedded system for a
> number of years very successfully.
>
> http://bec-systems.com/site/218/printing-from-embedded-systems
>
> However, it seems that newer printers are not supported by the hpijs driver:
>
> https://answers.launchpad.net/hplip/+question/264258
>
> Does anyone have suggestions for a printing architecture going forward
> -- we'd prefer not to ship cups+ghostscript in our system due to size.
>
> Or, are there printer vendors who still use ijs drivers?
>
> Thanks,
> Cliff
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>

