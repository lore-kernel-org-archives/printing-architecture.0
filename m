Return-Path: <pascal@obry.net>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=obry-net.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=323LM5+TaYeQDDK3hBJ9/5njN6XFTPytUnVRAJCGweU=;
	b=oDyf5LkfKTvhR9P8vGnY0huGmxT26X36lzi7Vqb0JAUT8HNk5SGH0NeqmCAF8r2jya
	2R1qDdRbcW/f/R0Gn+haxEoxDC/bfBLYAAMpr896vtqlEBqB9yYZwjP0KPZufga9P6X5
	I+5R4KM93KBtSw7EMYo3OQzjKiOnpajegVAsno754+ThjL0dMwn2PPAY6uYX7/3SzRXO
	QAp0X79UyKGBTCifVjcPSvCffC6pHYRfUhtAMRjkzLJ1rH3R1Xh6l+54INvysY5I2+nT
	VkS1nPE8W13FbYXsieeAAlKpNW+S82PaCzZ+7AoiGqbrhvC+3zF7VigNO8EwZQjLTV12
	s7ng==
Message-ID: <1513192373.2462.33.camel@obry.net>
From: Pascal Obry <pascal@obry.net>
Date: Wed, 13 Dec 2017 20:12:53 +0100
In-Reply-To: <7C9470F2-1453-469F-B71E-3B7499A44CED@apple.com>
References: <1404294158.28244.1.camel@pascal.home.net>
	<1513184881.2462.20.camel@obry.net>
	<E8206D91-E58D-426A-A666-2186AD8C3047@apple.com>
	<1513189960.2462.29.camel@obry.net>
	<7C9470F2-1453-469F-B71E-3B7499A44CED@apple.com>
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

Hi Michael,

> cupsLocalizeDestOption will give you the localized string, if the
> printer supplies one.

Ok.

> (but prior to CUPS 2.3 you need to connect to the device/printer to
> get the localized string for vendor-specific names...)

I see, but now using: 

      http_t *hcon = cupsConnectDest(dest, CUPS_DEST_FLAGS_DEVICE, 2000, &cancel, resource, sizeof(resource), NULL, (void *)NULL);

Makes attr null in the following code:

      ipp_attribute_t *attr = cupsFindDestSupported(hcon, dest, info, "media-type");


With CUPS_DEST_FLAGS_NONE I can list media.

I'm on CUPS 2.2.6.

Any idea?

-- 
  Pascal Obry /  Magny Les Hameaux (78)

  The best way to travel is by means of imagination

  http://www.obry.net

  gpg --keyserver keys.gnupg.net --recv-key F949BD3B
