Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=nDbWnXnvQGAbTkmI9sdug0vzGYQ17u9U42osRnO4MFw=;
	b=UlNeYTPk2dc7iRt1YrZ/sqMe9pbAM2t3+ARJsiD8d4XDcdJJa5teBMqpft5SIdLYrM
	jexDBFMd6+mkctHaczRBc20xvd2ApI0+x713LwlSjEmg6DzIsVTP5ml2YrE5nx0Mt/ty
	fcR0W1RZw4Okh/RinDiQk1Exho3O0hLIEDgDt0CUjEFpW3FzSTqjRgAg+A5V1mUBm1rT
	DS32lQgNhmFiWxl9Am2PbiXEADdJ30wYHUUWeQ/kqxnRc7Nw1RiqtftjkcOJWKkoYecU
	PdMjIZC8QvFFiYZxc9Z6jUHKoh2OjtSl5bEGIUK8Sib10288O8eNkyZFHG61zaOwCX/g
	5RsA==
Message-ID: <5433D336.1070205@gmail.com>
Date: Tue, 07 Oct 2014 13:49:10 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <CA+3RNfiMXAVRKoFH8XD+YyWatt-Fc+mKMGkAQyQPJ=8_SX9T3g@mail.gmail.com>	<5B66FA40-ED1E-461E-B00F-D5CD6C7DBC30@apple.com>	<CA+3RNfgR9Ucx+mQezWVwi8XMCF-4EBtFV5bukKOsTfZsTBZURw@mail.gmail.com>	<34701921-5F04-411C-B35C-78CED619AAC3@apple.com>	<CA+3RNfgzaD28Gcy4N=k_=jJMsQ9Ao1i8fSiRpeU3VHvXoxx4fw@mail.gmail.com>	<23226792-DB2B-467B-A3F3-015D81C6A31B@apple.com>	<CA+3RNfgwqWxqc6D4Fe1fC8--xy0pV_c4SDHukwpwrC+N=G=WpA@mail.gmail.com>
	<0392028E-75B3-45B1-8826-3886A5EEC7E9@apple.com>
In-Reply-To: <0392028E-75B3-45B1-8826-3886A5EEC7E9@apple.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Number of copies in pure PDF workflow
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@apple.com>, Alex Korobkin <korobkin+op@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

On 10/06/2014 05:32 PM, Michael Sweet wrote:
> Alex,
> 
> The cupsFilter2 keyword has a different value syntax:
> 
>     *cupsFilter2: "src/type dst/type cost filter"
> 
> For a PDF printer you want:
> 
>     *cupsFilter2: "application/pdf application/vnd.cups-pdf 10 pdftopdf"
> 

What do I have to add to a /usr/share/cups/drv/*.drv filr to generate a
cupsFilter2 line? "Filter" only generates cupsFilter lines.

Or do I need to create completely static PPD files?

   Till

