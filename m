Return-Path: <pascal@obry.net>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=obry-net.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=N8NRp+DlNuZBRBixH+fsK2NXv+0v65to6+5FlF9GHeQ=;
	b=0+vyiEKhoeIOHjI6hOilib2cPcuEQCDh+hWVa+J3AC/mz+AhknflpwUDxUL2OIahFU
	YW52F3wbQtRdpchTFGZBU2/UdmqFeHdphZi9V5uAWtULMpT2XF2hmX8c8nsS3VG87V66
	cX2TAv1H9vCVHFeEOnFCqiW0ImriE42ZkV8HHBUIMYuDQM82se53Qiov3CfhfBtiRFrc
	clGGB3iKpOqYOUuK+6YZ/90a2s0bx2g//k/jpImSim6rZF1UQKbXTyFJEGvjs99Vs6pX
	pw+AH5Z9i/puw7HVJCyXzMEIGcDbpjfTvJvvBkk+dDgoAJVwk9imWe2iX7xG3kmZyt29
	RDsw==
Message-ID: <1514798347.2381.36.camel@obry.net>
From: Pascal Obry <pascal@obry.net>
Date: Mon, 01 Jan 2018 10:19:07 +0100
In-Reply-To: <6CDDA660-B1D5-48E5-9F7E-4C5C80A70861@apple.com>
References: <1404294158.28244.1.camel@pascal.home.net>
	<1513184881.2462.20.camel@obry.net>
	<E8206D91-E58D-426A-A666-2186AD8C3047@apple.com>
	<1513189960.2462.29.camel@obry.net>
	<7C9470F2-1453-469F-B71E-3B7499A44CED@apple.com>
	<1513192373.2462.33.camel@obry.net>
	<4C3DF113-A35B-4D88-8A3C-0E5A699BB41C@apple.com>
	<1513204278.2462.45.camel@obry.net>
	<CA+9ZNicGERJ38dBhN7abEXaC30wPRbkNuzWF8Oo09VEpjh5pqQ@mail.gmail.com>
	<1E61ADED-A678-4953-8533-8818C39FA63E@apple.com>
	<1514644818.2747.67.camel@obry.net>
	<6CDDA660-B1D5-48E5-9F7E-4C5C80A70861@apple.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] CUPS and Borderless
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

> You can use the cupsGetDestMedia* APIs with the
> CUPS_MEDIA_FLAGS_BORDERLESS flags value.

I tried that already, but when using CUPS_MEDIA_FLAGS_BORDERLESS for
the Epson 3880 gutenprint driver I get 0 media.

-- 
  Pascal Obry /  Magny Les Hameaux (78)

  The best way to travel is by means of imagination

  http://www.obry.net

  gpg --keyserver keys.gnupg.net --recv-key F949BD3B
