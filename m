Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=8Gdw0PbtOOgz9qDNgccYnDZG1REisHKncMFUlzA4Puo=;
	b=q67b1BAVecymfot/JUR5MHPfSLW9flwORbwYTwRNbRnZXQYgfJ8skMTSCWx5cjASOF
	fGCKnwndrX+KZNdtAZNjYcgObjJskXSPkbY3legUm6NUQ/6EpjYvGejThYbesJFEI1Cs
	OcZuZ9bRuUTSvC+eagwZvjvf3C2iEwoumz5z4pWNFSt1h9otFlXBOQibIfFi3p9H2u0G
	fyhFcwE+Poebvc9NdBkxh6GAadkuNPo3o3JkdcbyKfj7YHzCEflof5UnAS0u4Xa1Isgx
	TzAwum7Zo9GAZ7uh/hkA0RkVXW54nZM8xVbcM8ElUEYrP4xIpvFX2/xP0LCLnykVOGYZ
	QPyA==
Message-ID: <54344707.4080604@gmail.com>
Date: Tue, 07 Oct 2014 22:03:19 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <CA+3RNfiMXAVRKoFH8XD+YyWatt-Fc+mKMGkAQyQPJ=8_SX9T3g@mail.gmail.com>
	<5B66FA40-ED1E-461E-B00F-D5CD6C7DBC30@apple.com>
	<CA+3RNfgR9Ucx+mQezWVwi8XMCF-4EBtFV5bukKOsTfZsTBZURw@mail.gmail.com>
	<34701921-5F04-411C-B35C-78CED619AAC3@apple.com>
	<5432910A.4030500@gmail.com>
	<CA+3RNfj6twoEN9y0k+dfxeQ+14jVyE_Tz9Fe5fdQSmOKcbg=_Q@mail.gmail.com>
In-Reply-To: <CA+3RNfj6twoEN9y0k+dfxeQ+14jVyE_Tz9Fe5fdQSmOKcbg=_Q@mail.gmail.com>
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
To: Alex Korobkin <korobkin+op@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

On 10/06/2014 04:06 PM, Alex Korobkin wrote:
> Hi Till, 
> 
> You're right, JCLToPDFInterpreter is already set in the example PPDs
> shipped with cups-filters [1]. 
> But what needs to be added to those PPDs to have printers make copies in
> hardware instead of cupsManualCopies? 

pdftopdf uses cupsManualCopies. If cupsManualCopies is set in the PPD
software copies are done, otherwise hardware copies. If the printer
supports PJL, an appropriate command to generate the copies is added to
the PJL header.

How can I make pdftopdf add an IPP attribute to the job which generates
the copies with the attribute being passed on to the printer by the IPP
backend (when output format is set to PDF or PWG Raster by a cupsFilter2
keyword in the PPD.

And for PPD-less printing, how do I set the FINAL_CONTENT_TYPE there? Is
it possible to do it out of a System V interface script?

   Till

