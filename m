Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:from:subject:to
 :content-language:content-transfer-encoding;
 bh=/fjLKIBKkuJqzc9e2lV+8URaHegPtMAklLc/gm0DBD0=;
 b=kFxnJGBm0mb3JvQo+eIphGUg0C9vrTOYiHmDqGpkTvFVZnntBGSOwrlKXo4FlzqHAM
 s8svJWnHyW4GePJ3WoeJNOgMIs4KzXLaWt5NJsES5w6kDodp1sLITjnv/a4lQSkWmp/J
 YogDPIb+dzQAJLzt/gN1hVPTY2ztBCpT8+p2P0liEjuRxy2gGTx4hQb6vJj7wTaKuw7B
 CWI+CvMPLFw5LQnxLtWolRsp2aLoKXQfrBZj1YsizzASq9GLa3bUYU4vcQcXEeKYfpGq
 EMi4DE//xeCu9ktAjVEjNQMV4su7JfkuQmQIRroDjUOiGOWBwxMEam5dSVKlf59m7h+c
 SVAQ==
Message-ID: <759877ae-a719-ed65-f39f-34035e6057a7@gmail.com>
Date: Mon, 4 Apr 2022 13:26:24 +0200
MIME-Version: 1.0
From: Till Kamppeter <till.kamppeter@gmail.com>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] cups-filters 1.28.14 released!
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Open Printing <printing-architecture@lists.linux-foundation.org>

Hi,

I have done another cups-filters release now!

Bug fix release to get correct PDF output when using "landscape", 
"orientation-requested", and/or "nopdfAutoRotate" options, and to get 
PCLm printing work on printers not telling their PCLM default resolution.

Here we go:

https://github.com/OpenPrinting/cups-filters/releases/tag/1.28.14

    Till
