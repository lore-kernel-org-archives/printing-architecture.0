Return-Path: <msweet@apple.com>
DKIM-Signature: v=1; a=rsa-sha256; d=apple.com; s=mailout2048s;
	c=relaxed/simple; 
	q=dns/txt; i=@apple.com; t=1412250183; x=2276163783;
	h=From:Sender:Reply-To:Subject:Date:Message-id:To:Cc:MIME-version:Content-type:
	Content-transfer-encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-reply-to:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=qsiCnFgvtvcG7w+ZrJ1HomcMicMq5ZDoZ/QmROCeFZg=;
	b=dHxY397wpOzpxf5O1nxn13aLflJDHJGTSOEZiUyeCykVAW4bpItPxP8ikJSgZL9t
	sJTWNeakNJMRAZINvyCfR9WecAiu2R8e9Wrmd+2W+3N9zIav5Go1pFMlEzzBNzwH
	Kd4h3Zj2K0kqPeqj4NhdbSh2L3uoDiXxUob5DH58uY0015LSc0YenP/AIaUGcO2w
	CbQuftVhmWeTm/S9GwwxkrRURxxJ7LmeSSwZsUsTPWZz+wsguOe5CJnMriOfLGj1
	Eak36/6Pr7Aku2kwcH1fFSyoGVx/ojQOEGbqSJ35vVBQGPBxz5szR2QdK9TvCxeG
	5c7aLcwkqqn5X+FMEdfudg==;
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <541B3B89.7020001@redhat.com>
Date: Thu, 02 Oct 2014 07:43:01 -0400
Message-id: <8F84CF47-44E1-4125-A4AA-3FFAEAB435D8@apple.com>
References: <1405506739.2713.12.camel@rubik>
	<671AA375-8084-4E36-A942-169664096611@apple.com>
	<541B3B89.7020001@redhat.com>
Subject: Re: [Printing-architecture] CUPS: fail-over without load-balancing
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Clark Hale <chale@redhat.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Clark,

Apologies for the delay in responding...

> On Sep 18, 2014, at 4:07 PM, Clark Hale <chale@redhat.com> wrote:
> ...
> Sorry for reviving an old thread, but I've been working with Tim on this, and we're looking for some feedback on our solution.
> 
> What we've come up with is as follows:
> 
> The "failover" backend, as we've been calling it, is configured with a list of IPP URI.  The first URI in the list is the de facto "primary" printer.

How do you separate/encode the other URIs?

> When a job is sent to the backend, it will loop through the list. For the first one found that's not stopped and is accepting jobs, the backend will exec the regular ipp backend to send the job to that queue.

As long as your backend runs as root, this will work.

> This seems to work fairly well from our tests.  Does this seem like a reasonable way to go about implementing this?

Yes, provided you have addressed the URI encoding/separation issues.

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

