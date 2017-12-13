Return-Path: <pascal@obry.net>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=obry-net.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=ViLfq/r77uxiWRFzSsW27YlrqSsOqhw2WlmiCMItfFc=;
	b=qv1nhTnP7ReUPfobjPPWRDu/VR/3l0c5et5/6yDYpAZKJ1JUsj7uiRU0ejEb1Yf04F
	MQZ0reClcyFixaf40bMDjCDnVbFGMgWWiZDPZDcCUOfdLyYudvHIKw8+0aYdGXeDvHG/
	H8TNWeHxgWGt3V6tvM1rwqXH7Tl/3SIuk2se1EVjdMio2UpA5AxJWEtMokRETSsKrh3X
	Y4J2sMBrMt4Nq1yTk/oTovrMp5vTTccUjx4C5LksqUGwYqc2AueXVY1TU5OXVXU1ckm0
	EqM32WsIDVevmelSR4/jrT0QjzKc3hmsRVO7HJvis51Xo9om7Z2G4e2C2CjKLVFbmhhT
	DYeA==
Message-ID: <1513204278.2462.45.camel@obry.net>
From: Pascal Obry <pascal@obry.net>
Date: Wed, 13 Dec 2017 23:31:18 +0100
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

Hello Michael,

Making progress, I just found out that I can retrieve the attributes
when using cupsGetDestWithURI() but not cupsGetDests() and
cupsGetDest() if CUPS_DEST_FLAGS_DEVICE is used.

That is:

    cups_dest_t *dests;
    int num_dests = cupsGetDests(&dests);
    cups_dest_t *dest = cupsGetDest(printer_name, NULL, num_dests, dests);

Does not work, as reported previously cupsFindDestSupported returns
null. But I can list attributes with:

    cups_dest_t *dest = cupsGetDestWithURI(NULL, printer_uri);

Yet, the localized is still not working. So I'm not sure how to move
away from PPD API for media-type. This is quite important to have the
proper paper names listed here.

I have tried for an Epson 3880 with the gutenprint driver or the
turboprint driver. Do you see something I'm missing?

Thanks,

-- 
  Pascal Obry /  Magny Les Hameaux (78)

  The best way to travel is by means of imagination

  http://www.obry.net

  gpg --keyserver keys.gnupg.net --recv-key F949BD3B
