Return-Path: <pascal@obry.net>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=obry-net.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=htPav/SNeJrhIItYWYWE/yY3GwcareVuL4oePF9CoTc=;
	b=FwcZjYTWw3drsnfIsqQ1a1uKmSO5vXJlZf1bWe3Tn+IoNXDihCKbs4H+xhcL/Azuq9
	n+LGoKATYKzyT/kISLtk6BE6dgdCVJSlxFPeItDRH/yEcUL+qAnNKWK1R1l8RqbDiyiD
	5W2fjAUlggxElvNdxjrTsafWT4rD6VDpEEnKHnQlMa/rYdakNRtMf/VGrWNeDWxdo2La
	iWorZPFecQp/SzQy7ek9z5GnsSzUTT6oXdshxDQ4GEznC6eK5OUnVJW+GjlVZmMylwZ+
	wlK/x9UTsIPnDIJjVwlsMbSLNPj5+GqF1Hos1UHofgY8r2DJjb1lgrHCPMm5sDFM8xCW
	XD+g==
Message-ID: <1513196707.2462.38.camel@obry.net>
From: Pascal Obry <pascal@obry.net>
Date: Wed, 13 Dec 2017 21:25:07 +0100
In-Reply-To: <4C3DF113-A35B-4D88-8A3C-0E5A699BB41C@apple.com>
References: <1404294158.28244.1.camel@pascal.home.net>
	<1513184881.2462.20.camel@obry.net>
	<E8206D91-E58D-426A-A666-2186AD8C3047@apple.com>
	<1513189960.2462.29.camel@obry.net>
	<7C9470F2-1453-469F-B71E-3B7499A44CED@apple.com>
	<1513192373.2462.33.camel@obry.net>
	<4C3DF113-A35B-4D88-8A3C-0E5A699BB41C@apple.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] CUPS and PPD
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@apple.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Michael,

> First, make sure you've gotten a copy of the attributes from the
> device with cupsCopyDestInfo.

Right, this is done on my code.

> Second, make sure your printer actually reports the media types
> separately; the following command will show:
> 
>     ipptool -tv PRINTER-URI get-printer-attributes.test | grep media-
> type-supported

$ ipptool -tv http://localhost:631/printers/Epson_Stylus_Pro_3880 get-printer-attributes.test | grep media-type-supported
        media-type-supported (1setOf keyword) =
stationery,postcard,photographic-glossy,transparency,envelope,back-
film,photographic-matte,matte-heavy,stationery-inkjet,stationery-
coated,photo,photographic-glossy,semigloss,luster,archival-matte,water-
color-radiant,photographic-glossy,ilford,color-life,other

> (the CUPS media APIs help insulate you from dealing with these things
> BTW...)

I'm certainly missing some information here. I've only worked with the
PPD API, so all this is new to me and I do not find lot of
documentation around.

Thanks,

-- 
  Pascal Obry /  Magny Les Hameaux (78)

  The best way to travel is by means of imagination

  http://www.obry.net

  gpg --keyserver keys.gnupg.net --recv-key F949BD3B
