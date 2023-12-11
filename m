Return-Path: <till.kamppeter@gmail.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 882B882028
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B67D981F92
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1702326593; x=1702931393;
 darn=lists.linux-foundation.org; 
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Rd0RwJnyv8UDt49UIxeFhQDe5Bf8Pv19gaZJeishFJo=;
 b=FQ6ly+4ygDM/djR6qXMxJbNDVpLH9bOQs9sOD3bQtMRrC7lbHZggFxvpZyjsr2Ab2S
 GJ8jWcA70XzcrDs2sy+542wiN35E5us8k/EH1Oa9FxJmLbO0v4m3QEu605suV92sIOCa
 OHZz5lC8T3bF23fMHWpPTz1fF2jBUvhJNEr2a85V2EMgpnOBNRJcF9TTo23B8T5vqw2J
 kWES/SRFLxxBeW92Glkp7mQqcM2QeWl3vnOOcvbORjrYjUfalYb5eYRl9A3+x6OgO5dg
 LW58onmFUopOXHdtX5Uh7wEk/b49/cHXOxnNWLSevd91Z/sOpMo70c2qnFvpscOzze/u
 G4mQ==
Message-ID: <6992d5a4-71b0-4860-872f-f223872b2edb@gmail.com>
Date: Mon, 11 Dec 2023 21:29:52 +0100
MIME-Version: 1.0
Content-Language: en-US
References: <CAK+62wgybwAcCznC5PXuPJn-BoYuMa5E_soy6nsKeahoQ+GAWw@mail.gmail.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <CAK+62wgybwAcCznC5PXuPJn-BoYuMa5E_soy6nsKeahoQ+GAWw@mail.gmail.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit
Subject: Re: [Printing-architecture] How to request "Media Limits: ..." on
 job-sheets to print mm instead of inches?
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: kurt.pfeifle@gmail.com, printing-architecture@lists.linux-foundation.org

On 10/12/2023 21:19, Kurt Pfeifle wrote:
> I have a print queue installed via "lpadmin ... -m everywhere". This 
> auto-generated a PPD with a line for the printable area saying
> 
>     *ImageableArea A4: "11.990551181102 11.990551181102 583.285039370079 
> 829.899212598425"
> 
> When I request job-sheets to be printed the respective line on the 
> printed sheet reads
> 
>     Media Limits: 0.17 x 0.17 to 8.10 x 11.53 inches
> 
> What should I do to get this Info given in millimeters instead of inches?
> 
> I tried adding a line of "DefaultLanguage de"to cupsd.conf and restarted 
> the service. But this didn't change the printed line on the job-sheet 
> (not even the English /"Media Limits" /changed -- but I do not care so 
> much about that).
> 
> P.S.: Is this currently the right forum to ask such questions? I 
> searched OpenPrinting's github, but couldn't figure it out there, and I 
> didn't want to open an issue (yet).

I think, this functionality of displaying sizes and margins in mm on 
test and banner pages is really missing. It should either find the 
locale or simply output two lines, one for inches and another for mm.

The program generating the banners nowadays is the bannertopdf filter of 
cups-filters, which in the latest cups-filters (2.x uses the 
cfFilterBannerToPDF() filter function of libcupsfilters, so it would be 
a feature request for libcupsfilters, to be reported as issue on GitHub ...

    Till
