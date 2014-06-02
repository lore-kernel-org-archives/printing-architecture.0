Return-Path: <cloos@jhcloos.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jhcloos.com;
	s=ore14; t=1401672732;
	bh=9jkdN+NRlwIyYL75YmL7bo+QzzwvU/JsLG1hPznrHd0=;
	h=From:To:Subject:In-Reply-To:References:Date:From;
	b=jLxpNCb1TNDuqwlDnlC1QdsIEtLegTClWbah0zvU+H2uNQao/A7kEZXAmEp6jSjFH
	8eS1b407oaror9oiA6TxjTWY/mKWSswYs95EAFhtQHtReTlNKFpjCX7iyQ7cxIx+Dw
	8r3YDkDfoqwAPsBf9DCQ3UfLB7d2YCymRn8Pmges=
From: James Cloos <cloos@jhcloos.com>
In-Reply-To: <m3wqd2b8h7.fsf@carbon.jhcloos.org> (James Cloos's message of
	"Sat, 31 May 2014 05:30:35 -0400")
References: <m3wqd2b8h7.fsf@carbon.jhcloos.org>
Date: Sun, 01 Jun 2014 21:29:05 -0400
Message-ID: <m3oayc85fp.fsf@carbon.jhcloos.org>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Printing-architecture] pwgtoraster vs calibrated spaces
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org

>>>>> "JC" == James Cloos <cloos@jhcloos.com> writes:

JC> [ /CalGray 
JC>   <<  /WhitePoint [ 0.96420288 1.0 0.82490540 ] 
JC>       /Gamma 2.2 
JC>   >> 
JC> ]

JC> [ /CalRGB
JC>   << /WhitePoint [ 0.95045471 1.0 1.08905029 ]
JC>      /Gamma [ 2.2 2.2 2.2 ]
JC>   >> 
JC> ]

I forgot the matrix in that last one. Add:

        /Matrix [ 0.60974121 0.31111145 0.01947021 0.20527649 0.62567139 0.06086731 0.14918518 0.06321716 0.74456785 ]

to that /CalRGB.

-JimC
--
James Cloos <cloos@jhcloos.com>         OpenPGP: 0x997A9F17ED7DAEA6
