Return-Path: <msweet@apple.com>
DKIM-Signature: v=1; a=rsa-sha256; d=apple.com; s=mailout2048s;
	c=relaxed/simple; q=dns/txt; i=@apple.com; t=1514774008;
	h=From:Sender:Reply-To:Subject:Date:Message-id:To:Cc:MIME-version:Content-type:
	Content-transfer-encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-reply-to:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=1bDEr8oxrwOBXNYTFwC/fHRY3FiKI36QPa6obsWSypI=;
	b=vzZGdn3yxdNJxPqnsXisOnnJ+v8HZsWcd2cm/zTpZ2vkx3ssO5fUrYHHrz58n7jO
	zDWoydfK61kxarXO0i8VK42UnREoZfHaBrIn2UVpRDDLgKcTl4pAhF27aIwTJ9uE
	ywG00TaEZLIU/5OD84LmbxTwAAgvJDcLDKgPsD6dvgop3PnVPmFdk6m9epyZVbPA
	kCO5O2p69BMCLw5XNoOUwiaQMQGXxSFfcMF1ruFiQZr02jplHfG5Tbaw0Sht8pw8
	GnZ5Q53JjDTC16euxvOKMXoNI+L3O432YCq/1brLSwtZRybsll1lmuHtwgg4erYY
	BtFez8i5FJNvEpslO5pGFw==;
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
Sender: msweet@apple.com
From: Michael Sweet <msweet@apple.com>
In-reply-to: <1514644818.2747.67.camel@obry.net>
Date: Sun, 31 Dec 2017 21:33:26 -0500
Message-id: <6CDDA660-B1D5-48E5-9F7E-4C5C80A70861@apple.com>
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

You can use the cupsGetDestMedia* APIs with the CUPS_MEDIA_FLAGS_BORDERLESS flags value.


> On Dec 30, 2017, at 9:40 AM, Pascal Obry <pascal@obry.net> wrote:
> 
> 
> Hello Michael,
> 
> I'm wondering what is the solution to check, using the CUPS IPP API, if
> a printer does support borderless printing?
> 
> Is that with cupsGetDestMediaByIndex(..., &size)? Where in size we have
> for a given paper left, top, bottom and right set to 0?
> 
> Thanks,
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

