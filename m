Return-Path: <bjo@schafweide.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=schafweide.org;
 s=2007; t=1643968120;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=GfkRLVVsFyoELeXvb5CE4nTbHGqq51HkHl3otdT37SE=;
 b=pBq3zzY5q/aFEKt2bdQTgrOUuw8/CKaGrvdmgsg1q63WizIbfFrmXs5xTUUMqenKmdzCQI
 w9LJV72Pn2x61dsU5++3gbuAfE0fxZDatvwpNvg6hk5IYtBFhiOPtyyGV0aMNdq+sDnT4Y
 kVtgJUeepLGiGl+k9P8TP0E+D6M8prM=
Message-ID: <85705a65-55c5-418f-9f63-568c1b1b6526@schafweide.org>
Date: Fri, 4 Feb 2022 10:47:50 +0100
MIME-Version: 1.0
Content-Language: de-DE
References: <08fd428f-ca2d-8a9f-50a5-616b514d24b3@schafweide.org>
From: Bjoern Franke <bjo@schafweide.org>
In-Reply-To: <08fd428f-ca2d-8a9f-50a5-616b514d24b3@schafweide.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] lpinfo -m hangs
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

> 
> on Arch Linux running CUPS 2.4.1 "lpinfo -m" hangs and also trying to
> add an Epson XP 245 via the webinterface. On another system also running
> Arch with the same CUPS version the issue does not appear.
>

it was somehow caused by avahi. After stopping/disabling avahi lpinfo 
and ippfind did not hang any more.

Regards
Bjoern

