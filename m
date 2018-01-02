Return-Path: <msweet@apple.com>
DKIM-Signature: v=1; a=rsa-sha256; d=apple.com; s=mailout2048s;
	c=relaxed/simple; q=dns/txt; i=@apple.com; t=1514864688;
	h=From:Sender:Reply-To:Subject:Date:Message-id:To:Cc:MIME-version:Content-type:
	Content-transfer-encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-reply-to:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=4fFFm4VfEW8HhLDnk81Gg/VPx9yet2ARreo1/9DkbNM=;
	b=3cRuMs3wvX/cLPACCdCJhQozlfVgq2ZYn5UikgXzc2eRaE41lNJdnuK8/UkJLqGu
	L2wtid5Xn8ohXS/L96B8x+AJ+DOJ3Nigv1h2iW32aO3F/zYQLgbp07iCo3XBulU8
	dJA7xUdjqjG44mUj/5DiMz9lFSo+S6K8aBHAmLT7NB9pZN5N0qv0vP266SC84UMv
	F463qS+DjEK9eSz2phhYOCth7OOV/dsaoFhZUaRY+ErUiyQHT2nWTSeoEGKBlsxE
	y8sIClk5IweUlcyRXVFCk/osGJKVAgrLiGNP6QGJVbIkTzfsR98rekzsR+3tvUnL
	+nNZ2p2mbtH/1d+Igj3FjQ==;
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
Sender: msweet@apple.com
From: Michael Sweet <msweet@apple.com>
In-reply-to: <1514798347.2381.36.camel@obry.net>
Date: Mon, 01 Jan 2018 22:44:46 -0500
Message-id: <F5511DE2-C3E6-417C-BB06-8C59A0B73403@apple.com>
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
	<1514798347.2381.36.camel@obry.net>
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
To: Pascal Obry <pascal@obry.net>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Pascal,

Make sure you are testing with the latest CUPS code - I've fixed a bunch of bugs in the media code, particularly with the Gutenprint PPDs.


> On Jan 1, 2018, at 4:19 AM, Pascal Obry <pascal@obry.net> wrote:
> 
> 
> Michael,
> 
>> You can use the cupsGetDestMedia* APIs with the
>> CUPS_MEDIA_FLAGS_BORDERLESS flags value.
> 
> I tried that already, but when using CUPS_MEDIA_FLAGS_BORDERLESS for
> the Epson 3880 gutenprint driver I get 0 media.
> 
> -- 
>  Pascal Obry /  Magny Les Hameaux (78)
> 
>  The best way to travel is by means of imagination
> 
>  http://www.obry.net
> 
>  gpg --keyserver keys.gnupg.net --recv-key F949BD3B

_________________________________________________________
Michael Sweet, Senior Printing System Engineer

