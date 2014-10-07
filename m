Return-Path: <msweet@apple.com>
DKIM-Signature: v=1; a=rsa-sha256; d=apple.com; s=mailout2048s;
	c=relaxed/simple; 
	q=dns/txt; i=@apple.com; t=1412721642; x=2276635242;
	h=From:Sender:Reply-To:Subject:Date:Message-id:To:Cc:MIME-version:Content-type:
	Content-transfer-encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-reply-to:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=ZTqFxgRstKzh0XBQdR5MYITOXaQsZQ+X/NzG5CsOvPQ=;
	b=wD94pliLtLBysFFIZr6hKM0EGw4HlaO7oaN0aTrHOf/TudZN/agvbUPnMjCrdZOE
	8hlOlGEXZZSs9fAlsHfSfFKiKvZ/G+VxXIUXXDRuTgJNIYPVzwIcbkye+WkiZyyC
	1oo0/gNoqGhkN+zrqbAdt/nA/PWo+jG5piHhk9hzw6w8I34zYq9PxPkEO4aa3vnV
	YbLtbWsqSzM1mXCluJ8xGigKpF8Vy4SAZA0C51VQnBCNZ9wrXhu9dZ/Rq7xuSXLA
	sbx8vJANq2YGmnBBA8ilCluzFP/pHPKKK4iJLmGLDnWIYxyzJsLhMUNCh5fJnyVF
	AMtOv4ipTwIRKTxs8QSM2w==;
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <54344707.4080604@gmail.com>
Date: Tue, 07 Oct 2014 18:40:39 -0400
Message-id: <BD370003-7D7F-4AE6-8B5F-7EB88945FC00@apple.com>
References: <CA+3RNfiMXAVRKoFH8XD+YyWatt-Fc+mKMGkAQyQPJ=8_SX9T3g@mail.gmail.com>
	<5B66FA40-ED1E-461E-B00F-D5CD6C7DBC30@apple.com>
	<CA+3RNfgR9Ucx+mQezWVwi8XMCF-4EBtFV5bukKOsTfZsTBZURw@mail.gmail.com>
	<34701921-5F04-411C-B35C-78CED619AAC3@apple.com>
	<5432910A.4030500@gmail.com>
	<CA+3RNfj6twoEN9y0k+dfxeQ+14jVyE_Tz9Fe5fdQSmOKcbg=_Q@mail.gmail.com>
	<54344707.4080604@gmail.com>
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
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Till,

> On Oct 7, 2014, at 4:03 PM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
> ...
> How can I make pdftopdf add an IPP attribute to the job which generates
> the copies with the attribute being passed on to the printer by the IPP
> backend (when output format is set to PDF or PWG Raster by a cupsFilter2
> keyword in the PPD.

You don't have control over that; if the output format (FINAL_CONTENT_TYPE) is application/pdf, application/vnd.cups-pdf, or image/*, then the backend will generate suitable IPP Job Template attributes based on the PPD.

> And for PPD-less printing, how do I set the FINAL_CONTENT_TYPE there? Is
> it possible to do it out of a System V interface script?

Through the CUPS filter chain, you don't.  A queue using an interface script will NEVER send IPP Job Template attributes. (interface scripts are strictly for backwards compatibility and their days are numbered...)

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

