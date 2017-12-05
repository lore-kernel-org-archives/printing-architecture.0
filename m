Return-Path: <msweet@apple.com>
DKIM-Signature: v=1; a=rsa-sha256; d=apple.com; s=mailout2048s;
	c=relaxed/simple; q=dns/txt; i=@apple.com; t=1512441015;
	h=From:Sender:Reply-To:Subject:Date:Message-id:To:Cc:MIME-version:Content-type:
	Content-transfer-encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-reply-to:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Vh8lcmb4jqTuQca0IbFN2tltoz31rEaW23Ydj2l+UAs=;
	b=4FdFAIxT9mCc9BjXQSnLxMv/WpOl6IrTTF1OihnEvzd0qqNCKUwau796O4mI5l7Y
	Rfkqi6z9U19MZNtTsh5eIQj5UerELeYwDGrcB54y8hzJmLsamoZX0SwO67dfO0DO
	yurGV6ywNlh+FEfhXD6XGsResDQOg9arCiqqdOvT9MFma/KyUTqlbmVLK3cSJrrb
	ZeZLuIv7ThtCiJ9hF+qRwBtWHrbRGzwcD1yl320VCg/vXWpOiRY/JUfbQk2Zax9U
	p9p1QCwHxmSq+hgb5yUii7BvIkTodd/T6NnIlVFl4TuSUuUr94NHsYnhUn9Pj409
	jGeFM9oIIof3He/HzNEpfQ==;
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
Sender: msweet@apple.com
From: Michael Sweet <msweet@apple.com>
In-reply-to: <CA+3RNfhzLeqKCTS1QOovw=jOp94QBKKNkbLQAEzFW2KZC-hrjw@mail.gmail.com>
Date: Mon, 04 Dec 2017 21:30:12 -0500
Message-id: <F43A3DFD-E49A-4E5F-8892-4BAF296D7B24@apple.com>
References: <CA+3RNfhNgNFupp3AboQc8vi2FZiitRRtoK8schu4JCqTK6M8VQ@mail.gmail.com>
	<D869C264-319C-45AC-B102-986F1EF3FF4D@apple.com>
	<CA+3RNfhzLeqKCTS1QOovw=jOp94QBKKNkbLQAEzFW2KZC-hrjw@mail.gmail.com>
Subject: Re: [Printing-architecture] IPP Shared Infrastructure Extensions
 (INFRA)
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

Alex,

That is exactly the point of IPP INFRA - the local Printer (in its Proxy role) fetches the jobs and documents from the Infrastructure (cloud) Printer.  The Proxy can either be part of the Printer or another network device the relays the fetched jobs to the local Printer.


> On Dec 4, 2017, at 5:21 PM, Alex Korobkin <korobkin+op@gmail.com> wrote:
> 
> Thank you Michael. 
> 
> Is there a way for IPP/IPP Everywhere printer to pull jobs from print server, instead of server pushing them to the printer? For example, we tell the printer to periodically check this server/proxy for waiting jobs, so that it could download and print them. 
> 
> It seems like it would fit nicely into this IPP INFRA idea, but I don't see it mentioned. I got an impression that the only method is to push jobs to the printer (from Proxy or from a print server). 
> 
> On Wed, Sep 27, 2017 at 1:58 PM, Michael Sweet <msweet@apple.com> wrote:
> Alex,
> 
> It was precisely written to address cloud and split-network infrastructure issues.  I did some (private) prototyping back when we did the spec, and some of that work is present in the current ippsample project maintained by the PWG/Apple at:
> 
>     https://github.com/istopwg/ippsample
> 
> I still haven't finished adding IPP INFRA support to the ippsample project yet (lack of time) but ultimately we want to have a more robust publicly-available sample implementation available to show how to do it efficiently.
> 
> (I believe there are some commercial "release printing" solutions coming that will use IPP INFRA as well, although nothing that has been released AFAIK...)
> 
> 
> > On Sep 27, 2017, at 1:32 PM, Alex Korobkin <korobkin+op@gmail.com> wrote:
> >
> > Hi all,
> >
> > There is this interesting design of a cloud-like infrastructure called "IPP Shared Infrastructure Extensions", http://ftp.pwg.org/pub/pwg/candidates/cs-ippinfra10-20150619-5100.18.pdf
> >
> > Have you heard of anyone actually implementing that?
> >
> > In general, I'm curious how people handle shared printers in the world of public networks and no direct connection between a printer and a user's device. That doc looks like an answer.
> >
> > --
> > -Alex
> > _______________________________________________
> > Printing-architecture mailing list
> > Printing-architecture@lists.linux-foundation.org
> > https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
> 
> _________________________________________________________
> Michael Sweet, Senior Printing System Engineer
> 
> 
> 
> 
> -- 
> -Alex

_________________________________________________________
Michael Sweet, Senior Printing System Engineer

