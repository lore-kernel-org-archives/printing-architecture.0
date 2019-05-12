Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=ICOB9sAHOLIKsS6hk2bIEigwxodtWkxbewt8rcvMRD4=;
	b=pA1w73vF6fQKcMPZr3NKaMRaxXO1pIPTQsMeKVXwSu8IQbFRwA0unSKEQQ4B94WaLW
	zosHACBB1DCLq2rrNkw3HC+H3vkLXcNFmmuX4ubpotxzfeIFjVYPPld0YAkTzwRkzUPN
	bGNMelr5oOcVZ3vnDYIyTqTe8J4XMwJgYada3rhSk69iQf7xKchdYhuiHJih1rj7PNu2
	TPxndqhkOBlVW/mJ6U3s+kqWQRWzDaO7hV7fiCdjnJXU9P0tYH3he6Q/N4C2JUuaePfv
	AuSVA2BXgD+bm2LSCs6fzXpqGJrzEE0tz3ncJpl9qZbpfsyaL/E6JWOOIliWrCFDRXNY
	NULw==
References: <763bec17-f576-00cd-8633-c07e1b039003@gmail.com>
	<20190512181559.GA2312@c720-r342378>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <69a81966-5a01-10f7-b607-e6c5b4b7db33@gmail.com>
Date: Sun, 12 May 2019 20:48:46 +0200
MIME-Version: 1.0
In-Reply-To: <20190512181559.GA2312@c720-r342378>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
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
To: Matthias Apitz <guru@unixarea.de>
Cc: Aveek Basu <aveek.basu@lexmark.com>, Open Printing <printing-architecture@lists.linux-foundation.org>

On 12/05/2019 20:15, Matthias Apitz wrote:
> I updated last week to 2.3b8 and found this issue fixed. But, I can't
> see it in the list of 2.3b8 fixes. Any idea?

These lists are simple copy and paste of the upstream ChangeLog 
(CHANGES.md) of CUPS, not only the one of 2.3b8 in this mail but also 
for 2.3b6 and 2.3b7 in earlier mails to this list. If your fix does not 
appear in none of them, please ask on the CUPS mailing list (see 
http://www.cups.org/).

    Till
