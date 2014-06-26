Return-Path: <msweet@apple.com>
DKIM-Signature: v=1; a=rsa-sha256; d=apple.com; s=mailout2048s;
	c=relaxed/simple; 
	q=dns/txt; i=@apple.com; t=1403747997; x=2267661597;
	h=From:Sender:Reply-To:Subject:Date:Message-id:To:Cc:MIME-version:Content-type:
	Content-transfer-encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-reply-to:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=KEDYx/r3SpclYTpTEU3TlryYO7b9EOImo1TYZxDoGFA=;
	b=UuWzx+3rbPeBOJACWk7B5pwJkQBVAiY9iqAlqxbHlb5tIxd5BLrsFNsGsUMiAF9G
	ze2htsDtMu3kq5GNg0+S6JMAfRHFarA6QCbMSJEnITg3Nttd6DKaL1Hdwdkm+Blp
	VGiqCWrcMNMeBaGhStj5sqqsmr9e259HnHJ/6GWwg2m/eLfDwu/aOOwGBAFoU39U
	zG7j1BhwpauUHXww4B8xufZ4PFXAhpZJEsaJ3v7Pz65ZYTTGUpaLHah/sQGlnemc
	8J8ev3bAmAv3rOfpwbJbG0tq2zdDhILK848nTw3CMkqcFR0dYCCwDGFdF8tHKBBI
	x5liIkKiiFEO2KOVfqjQOA==;
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <CAGC3nLB7mcHxK-LTE9PVsnbphkNOASUZNPj9n2ssKZNc1JR=zQ@mail.gmail.com>
Date: Wed, 25 Jun 2014 21:59:54 -0400
Message-id: <C8C68FE1-C463-409C-AFD7-9852227E9DB4@apple.com>
References: <m38up3ymxw.fsf@carbon.jhcloos.org> <53A9C50D.4000306@gmail.com>
	<B8CEB731-2C01-4D1D-9B72-EC02A9CDFE44@apple.com>
	<CAN40gSsvBphwY22EKrx15k3k6B4zkLapy3+8SLVhFTNr6zzO=w@mail.gmail.com>
	<53A9D7F0.1010909@gmail.com>
	<7231748A-31C3-4C70-9C91-19437661D464@apple.com>
	<53AADC12.50705@gmail.com>
	<CAGC3nLAJH3o=0UeB7LdjKSoCapwk5pdT6rPjgVgUEY=BnUzwuA@mail.gmail.com>
	<94101C68-DC20-420E-8C93-AAC754638926@apple.com>
	<CAGC3nLB4HvB7Xnxm5_LiOrvjtFAcPYr+6TTUrGV+XnPgiYF_UA@mail.gmail.com>
	<CAN40gSuxUUg1xaf=M3achUk+B7kUwxkM1_71ZHVswBKEHzEP8w@mail.gmail.com>
	<CAGC3nLB7mcHxK-LTE9PVsnbphkNOASUZNPj9n2ssKZNc1JR=zQ@mail.gmail.com>
Subject: Re: [Printing-architecture] ippusbd license
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Daniel Dressler <danieru.dressler@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Till Kamppeter <till.kamppeter@gmail.com>

Daniel,

On Jun 25, 2014, at 5:14 PM, Daniel Dressler <danieru.dressler@gmail.com> wrote:
> Thank you Ira, and thank you for the support you have given me and
> ippusbxd in the past.
> 
> Do you know of any printer vendors or OS interested in using ippusbxd?
> I must admit I only expected ippusbxd to be used by the open source
> distributions. I am not sure what changes need to be made to reuse
> ippusbxd from the printer side.

You wouldn't use it on the printer side, but you *would* use it to test your printer implementation.

> Of the OSes which avoid GPLv3: Android, Chromeos, MacOSX, Windows. I
> did not expect any of them to adopt ippusbxd. MacOSX alone has Michael
> Sweet himself working on their ippusbd.

I can see Android and ChromeOS supporting IPP USB.

And don't forget the BSD-derived operating systems.  And Solaris.

> I would a company prevent their developers from testing against
> ippusbxd? Under the GPLv3 if they download a compiled binary through a
> linux distrobution, or an exe from a website, they have no
> obligations. They only need to worry if desire to redistribute the
> source or binary.

I can only state that Apple legal is leery of even allowing employees to run GPL3 code - while the GPL3 isn't a typical EULA, the output of a GPL3 program or library can also fall under the GPL3 terms - some GNU software has disclaimers/exceptions for output, but not all.

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

