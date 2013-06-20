Return-Path: <cloos@jhcloos.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jhcloos.com;
	s=ore13; t=1371709695;
	bh=hkTB7MDeCYUsGYidP8hJCB8BWApcOq0Ziw/Yyer1tuM=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=FO/zuIYai/U1ZbOM0D6pmcllhFwJrsXnc8scb4Xv4Asv6B8ORFRx36Piwzkj+2UXN
	5ryBu9clt/PTJCFJ82cGgVvdKlAtIcwWcf71wNW4odZ+dUFqF63P+isSyhW1TGWg+V
	ag3QxEj3ZqUEsG5loJ09DTcP4NGDSHNCgqNlnMI7PvQ==
From: James Cloos <cloos@jhcloos.com>
In-Reply-To: <575765AD-A871-432A-9B93-61F0749CEFA9@apple.com> (Michael Sweet's
	message of "Wed, 19 Jun 2013 21:39:55 -0400")
References: <m34ncw46lj.fsf@carbon.jhcloos.org>
	<6E56AA29-A827-4F39-BD22-57B48270ACA3@apple.com>
	<m3obb1zow4.fsf@carbon.jhcloos.org>
	<575765AD-A871-432A-9B93-61F0749CEFA9@apple.com>
Date: Thu, 20 Jun 2013 02:23:45 -0400
Message-ID: <m361x9z4dx.fsf@carbon.jhcloos.org>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Printing-architecture] On the Continued Need for PostScript
	Workflows
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
Cc: printing-architecture@lists.linux-foundation.org

>>>>> "MS" == Michael Sweet <msweet@apple.com> writes:

MS> Generally speaking, any new printer that supports PDF supports it
MS> without a hard drive.

That is news.

MS> Most of HP's and Lexmark's laser printers support PDF now,
MS> and they all do it without a hard drive. 

Interesting.  Those two are among the few brands from which I don't get
ads and haven't recently researched. 

MS> The $229 OfficeJet 276 (an inkjet printer) supports PDF and has no
MS> hard drive - everything is stored in RAM (about 40MB available in
MS> that particular printer).

s/276/251/g for the $229 price point.

They (the 251 and the 276) are the first I've seen to spec "native PDF".

Running pdf from ram is definitely new.  I hope it is a trend.

Does it get ipp right?  Including with TLS?

-JimC
-- 
James Cloos <cloos@jhcloos.com>         OpenPGP: 1024D/ED7DAEA6
