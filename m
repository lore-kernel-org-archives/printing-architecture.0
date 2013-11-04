Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=lr/VYlPmQb5U/vAhQBVjP56sr01LBX4mKS/v2/D0c9w=;
	b=ed6IxQMdCuURVdTH6LiEQViUdKnBg/i1n8WszxMoZWMV9jSFrdPlRTivLzAI8CEjU3
	WPn9Q+G3VelKTwjmTWzCWKUwAIkRLgpwKcHUkEiF9+sZ7LVLkCiOcfBgMWvDbtta61TB
	gqoIsoWihzqsih/zaRWqfFUo71Vnf6J7uWmkRQa7IG4UBO/UxVsISAb6Db9vhYs1DaLa
	abuA82cjCeZbvMdNZwSrhHIbPVe+kbHkyxcSSznbuT2hQ8964hxBd9JgI2NW7TFgpsS7
	h8wLEd7eX1/qsiy+zxpicvhUDnJJYB6BNDrKxv9vtDmfxwVobQc5f0Id6D3c8WiQyPLM
	uwDA==
Message-ID: <5277B8C4.8000700@gmail.com>
Date: Mon, 04 Nov 2013 16:09:56 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <1383567790.3894.4.camel@rubik>
In-Reply-To: <1383567790.3894.4.camel@rubik>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] cups-browsed: how to treat rejecting
	queues?
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Tim Waugh <twaugh@redhat.com>, Open Printing <printing-architecture@lists.linux-foundation.org>

On 11/04/2013 01:23 PM, Tim Waugh wrote:
> When cups-browsed creates local queues to forward jobs to remote queues,
> I wonder how it should treat queues that are not accepting jobs? The way
> cupsd used to behave was to copy the remote printer's state to the local
> implicit queue, but cups-browsed is not structured in that way: it
> doesn't update the queues it creates.
> 
> The problem with the current behaviour is that the GTK+ print dialog
> will allow a queue rejecting jobs to be selected.
> 
> See also discussion of this for Fedora:
>   https://bugzilla.redhat.com/show_bug.cgi?id=1025263
> 
> Tim.
> */
> 

I have checked further, cups-browsed indeed does not update queues on
Bonjour record changes, the update to https is triggered by a completely
new Bonjour broadcast.

I have also tried to switch a printer on my server between accepting and
rejecting state, and this does not make CUPS/Avahi generating an update
of the Bonjour record (= sending a broadcast), avahi-discover on a
client did not show any evidence of a signal broadcasted because of this
change. Can this be a bug in CUPS which we should report?

   Till



