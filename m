Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:references:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=Bjjo/cXF2qW2/3RD53wagN0u8I3hKBZmHz0bmYEYpqw=;
 b=YWlh1yI3LOotqqUHB1fH0hrprPsHrAhPDzUNrPw5YQ/vIk0N7EVR4kV3broCJoVLoL
 JiNmCH80UhTcnksRXID0AOyT0AmNnOM3hfISY1bp7CTl5Ga6s33oUMw6XfEQsN7MQd3O
 mn/O/t6SyGpn7oFRjjs16LJrPzTTXvhy1mcPU6GBZRQCzYBFFoIKKzCq79CNVTeNXawr
 UdAfOKEXOpS0g4mqXDwSeZ06r5RU4ngr9puaPsHQFqmgquGIfS+ZgJ0TqxrBlnxyNxVa
 LUmlvFDZWo3xqj0HRSvIAdaehd5MVboxweQ+3ftSGJqekoTS/abU33cMJ/S5TwkKGwlS
 ZIsw==
From: Till Kamppeter <till.kamppeter@gmail.com>
References: <b9b25328-27b3-4008-8ec0-bac7aa1f0b67@gmail.com>
Message-ID: <981b69fe-6611-ac9c-23ae-8019ca01ed28@gmail.com>
Date: Fri, 14 Aug 2020 13:42:44 +0200
MIME-Version: 1.0
In-Reply-To: <b9b25328-27b3-4008-8ec0-bac7aa1f0b67@gmail.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: Re: [Printing-architecture] OpenPrinting News
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Ira McDonald <blueroofmusic@gmail.com>, Aveek Basu <aveek.basu@lexmark.com>, Open Printing <printing-architecture@lists.linux-foundation.org>

I have done two little updates in my August news post, after getting 
hints from Alexander Pevzner (thanks a lot):

1. ippusbxd is deprecated now. After Linux distributions switching to 
the better ipp-usb, Chrome OS has created their own ippusb_bridge in Rust:

https://github.com/dgreid/platform2/tree/master/ippusb_bridge

2. sane-airscan is now in updates-testing repository for Fedora 32

    Till


On 14/08/2020 08:29, Till Kamppeter wrote:
> Hi,
> 
> I have posted the newest development of the last month on our web site now.
> 
> Here we go:
> 
> https://openprinting.github.io/OpenPrinting-News-August-2020/
> 
>     Till
