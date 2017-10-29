Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=Un0r4pS9JJ9eEx5cYMSWxddXkzaBMCENNOpDGZanGSQ=;
	b=Q/n7kbknbVZChmVmsw+EAxOGiTLrLPQU+SmJiC9fwjIr11u1cQloFk7yDe2isVZ8pN
	dOOeuEfWBryP8h7XVIKrW/Os8ZmGGKujvHtQkg06S3PqlE/ByuK6PO3qlE30lW5lEYXk
	PrGPsYlZFO1VXpngqudsZxr4KjPEfGtLQeB50yoqwGVE9kxTGr9c+5uRh6u+BKmXHpsv
	qGzBCmrtwANeaxrRPb+9S033Kiwn1aKzcH2iCyDXaYouEJQPbT0MptfjhtPAIXAy00qU
	gBuJ5TwqtNBiSHncSU2GMYve5R570hNTDpKY7JGMZ8GMKTODbI+tRuR59nmUKsf1x981
	KBrA==
References: <20171029212554.volqq54tg5a7gmhz@var.youpi.perso.aquilenet.fr>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <bf03f307-1bcd-ca24-dae8-02eaca6cad83@gmail.com>
Date: Sun, 29 Oct 2017 21:15:22 -0200
MIME-Version: 1.0
In-Reply-To: <20171029212554.volqq54tg5a7gmhz@var.youpi.perso.aquilenet.fr>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [PATCH] braille: fix computation with
 old bash
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

On 10/29/2017 07:25 PM, Samuel Thibault wrote:
> Old bash does not like quotes in $(("123" + 0)) , the attached patch
> removes these unneeded quotes.

Applied, thank you very much.

    Till
