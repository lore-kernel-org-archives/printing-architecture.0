Return-Path: <msweet@apple.com>
DKIM-Signature: v=1; a=rsa-sha256; d=apple.com; s=mailout2048s;
	c=relaxed/simple; q=dns/txt; i=@apple.com; t=1506535087;
	h=From:Sender:Reply-To:Subject:Date:Message-id:To:Cc:MIME-version:Content-type:
	Content-transfer-encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-reply-to:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=tqECNi6etjiFADjsHzvgPBk3PW0USQgiQ66Uhw+We88=;
	b=i3171IKTMBmxLi72iT06Acg0GMS06Rlplz/oQJibD+LiCCjhsF0ytLUkVl3PsRD1
	bqDsqSWtcYtKp2T4lWUZm92bLFyPeSGD6yd11VF8uaiKqsjTBmp1P8BWy/CtwUoG
	jaH3ausQD7dzdX+DkoaZca8XW9YjTBDzt9qV1rGPTxvO8wjfTL7CYnZA5ZbBoAPE
	+0uuiARhqQlkY+ulPYtgyWeR4MP2ju4T9Avu9SYa/2hQFIOnDJmsFFHlxzvUXCU7
	xLuXEmDX8/seGPQ37a2hiFrqJtdN17tBM9i0KD3unxl0OK8H40DaXUj3pDejYPK7
	mH1xgXNL32Blf89XUXs57w==;
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
Sender: msweet@apple.com
From: Michael Sweet <msweet@apple.com>
In-reply-to: <CA+3RNfhNgNFupp3AboQc8vi2FZiitRRtoK8schu4JCqTK6M8VQ@mail.gmail.com>
Date: Wed, 27 Sep 2017 13:58:05 -0400
Message-id: <D869C264-319C-45AC-B102-986F1EF3FF4D@apple.com>
References: <CA+3RNfhNgNFupp3AboQc8vi2FZiitRRtoK8schu4JCqTK6M8VQ@mail.gmail.com>
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

It was precisely written to address cloud and split-network infrastructure issues.  I did some (private) prototyping back when we did the spec, and some of that work is present in the current ippsample project maintained by the PWG/Apple at:

    https://github.com/istopwg/ippsample

I still haven't finished adding IPP INFRA support to the ippsample project yet (lack of time) but ultimately we want to have a more robust publicly-available sample implementation available to show how to do it efficiently.

(I believe there are some commercial "release printing" solutions coming that will use IPP INFRA as well, although nothing that has been released AFAIK...)


> On Sep 27, 2017, at 1:32 PM, Alex Korobkin <korobkin+op@gmail.com> wrote:
> 
> Hi all, 
> 
> There is this interesting design of a cloud-like infrastructure called "IPP Shared Infrastructure Extensions", http://ftp.pwg.org/pub/pwg/candidates/cs-ippinfra10-20150619-5100.18.pdf
> 
> Have you heard of anyone actually implementing that? 
> 
> In general, I'm curious how people handle shared printers in the world of public networks and no direct connection between a printer and a user's device. That doc looks like an answer. 
> 
> -- 
> -Alex
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture

_________________________________________________________
Michael Sweet, Senior Printing System Engineer

