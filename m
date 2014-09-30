Return-Path: <msweet@apple.com>
DKIM-Signature: v=1; a=rsa-sha256; d=apple.com; s=mailout2048s;
	c=relaxed/simple; 
	q=dns/txt; i=@apple.com; t=1412076688; x=2275990288;
	h=From:Sender:Reply-To:Subject:Date:Message-id:To:Cc:MIME-version:Content-type:
	Content-transfer-encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-reply-to:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=bMYeX4PAYBM9/QdpPafjJ7DE8Mon025b4DQsNsRSxDM=;
	b=bouL+56F+fqsbAcInOeuH6n9Ia53/iuBbccmUerBYlnyiZpZm2U+so/l9Gx/DG1c
	cRux/gJw7h99vl9gRv2ZMhNV6c2bFJHEFNVXaBsTGyqFtRWP5HLFgi7+dGKREoDo
	PaUdI+Hgu2x/sZ5/7N3pZBEpUCvhQEgen770KYdb006PAG2DOm/Od+rCROZgANXM
	7xMfBsx0liKT31wCsXh0NuwAz/eUYK1TjCTSLCeUEUTMK27hu0RBju8FKn+4sbIf
	iDRJ9Oy6+anROPqrahlR1CXDiCr3pvonPSU5EYMEz6q/GLVOvwXpMrK0syLi+6hv
	rHSa19XwrfqTghV2krIT3g==;
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <542A8535.4050602@gmail.com>
Date: Tue, 30 Sep 2014 07:31:28 -0400
Message-id: <7948AB2C-721B-4A76-A876-963BA2C94EF7@apple.com>
References: <542A8535.4050602@gmail.com>
Subject: Re: [Printing-architecture] Mopria
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

> On Sep 30, 2014, at 6:25 AM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
> 
> Hi,
> 
> got this link today:
> 
> http://www.mopria.org/
> 
> It is all about standardized mobile printing. Is this known inside the
> PWG? It was not talked about on the Summit.

Yes, it is known.

The Mopria Alliance is mainly a marketing organization for Android printing over Wi-Fi.  It uses IPP Everywhere for infrastructure networks and P2P Print Services (a subset of IPP Everywhere) for Wi-Fi Direct.

The Mopria Alliance is a closed (members-only) organization.  When they originally were formed, they did reach out to the PWG and make some presentations at F2F meetings.  However, since they will not allow us to put those presentations online and the PWG's bylaws require everything we do to be openly available, we have not had a Mopria presentation in almost a year.  (the invitation for Mopria to participate remains open, under the terms of the PWG IP policy, and we are trying to setup a formal liaison with them...)

> And another question: How is a printer identified as IPP Everywhere or
> as accepting PWG Raster? What has to be in the device ID (in the CMD:
> field)? What has to be in the Bonjour TXT record?

An IPP Everywhere printer reports 'ipp-everywhere' in the "ipp-features-supported" Printer attribute.

At the Bonjour level, it registers the _print subtype and reports "image/pwg-raster" in the "pdl" key.

In the 1284 Device ID you can look for "PWGRaster" in the CMD field.

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

