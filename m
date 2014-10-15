Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=doOJM0LLk6MGmzej/TYSLnApb7j6KTP/hXCzSPmYWMM=;
	b=BS5QDRzZohbGS6Wu/+RDsKMc8tMHtxGqE15cdM+bobNiyOWjD6q4mqarBRkhEdEv3l
	xL06sdqaPiJB0jIR4eQ0vxJc3nIPM/wlmxacFkNb0u9TSxnKveaxYZM+fxh2l0JkgdxO
	5yTC+aqNajZMxng98OaYKbLgulASS7zwbu/0ofOvLmG4u0lGDgk+6d7ppU0MAm+0ujjt
	RQ+NmR9elz4QsRp9G0aks1gsiqHukHsRR2c3zwigWbagkL1gbvaeVdeHQHsFn7dKIRvH
	EcDppIBIGiJwwZfDfdM9oM364Z8h0z935Eda1S0Bz6aqQOe2Ss0TmJTbS+Tsm2VAYts2
	WmdQ==
Message-ID: <543E8CF6.30209@gmail.com>
Date: Wed, 15 Oct 2014 17:04:22 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <CA+3RNfiMXAVRKoFH8XD+YyWatt-Fc+mKMGkAQyQPJ=8_SX9T3g@mail.gmail.com>
	<5B66FA40-ED1E-461E-B00F-D5CD6C7DBC30@apple.com>
	<CA+3RNfgR9Ucx+mQezWVwi8XMCF-4EBtFV5bukKOsTfZsTBZURw@mail.gmail.com>
	<34701921-5F04-411C-B35C-78CED619AAC3@apple.com>
	<5432910A.4030500@gmail.com>
	<CA+3RNfj6twoEN9y0k+dfxeQ+14jVyE_Tz9Fe5fdQSmOKcbg=_Q@mail.gmail.com>
	<54344707.4080604@gmail.com>
	<CA+3RNfj8JFdQHekjs0gQ_z8_dxPFk-qL-dGzzJtp8ACBB0KhHg@mail.gmail.com>
	<54345EF9.5010405@thax.hardliners.org> <54350A8E.1010406@gmail.com>
	<54354CDA.50401@thax.hardliners.org>
	<CA+3RNfjSMOmxf89XPW2vMf2SBXo7aJE+CREG99ACd0Kz0LQ3tQ@mail.gmail.com>
	<5435A44F.7080504@thax.hardliners.org>
	<CA+3RNfiAna118VGc=zLoRsyNTc5oGcynhMNy3UJRG7dNrHmWWw@mail.gmail.com>
	<54383C34.6020108@thax.hardliners.org> <5438486E.9050201@gmail.com>
	<CA+3RNfgZtn64UZZEX5uYRK=CyDEoS3Ly+gvkQCL20TMys6XKnA@mail.gmail.com>
	<543D9108.6050307@thax.hardliners.org>
	<543E5168.9010108@thax.hardliners.org> <543E72C7.3090603@gmail.com>
In-Reply-To: <543E72C7.3090603@gmail.com>
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
To: Tobias Hoffmann <lprint-list@thax.hardliners.org>, Alex Korobkin <korobkin+op@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

On 10/15/2014 03:12 PM, Till Kamppeter wrote:
> 1. using *pdftopdfJCL... instead of *JCL... in the PPD, with "<0a>" in
> the code snippets where line ends are supposed to be.
> 

This will not work with unmodified pdftopdf, first, newlines are
filtered out of the *pdftopdfJCLBegin, and second, there is no
*pdftopdfJCLtoPDFInterpreter read by pdftopdf. Also if there is any
option without *pdftopdfJCL... entries for each of its choices,
"option=choice;" is inserted for that option. So it seems that this
facility is really only to pass info to the next filter.

   Till

