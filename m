Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=MP2FQLnT2LirX3+ebh5Vgm60rMHX3uRvm/kUSRbuvjE=;
	b=ZOa9+vvWz7NldlTXsFqLzwxddVguBg7ZmOJCe0pvFWhMhWzZAK4QelCUg6mGrGVhwU
	mRvbb/AuuWGy5mafSZ7ptzthWUbj9T7sYBTFT8rvPTOEGE36K/9hM50gu1Ac6dhjlrAg
	yBw0Rxk+HqHOwxrLJAMS3KtZB2iA36RjpI79MuQWTjaIWMjQvVKAkybhB2b3gRzcYpmC
	DqAWFereGD8f0RULFspIeauTU0r0vuZ3g0JaASFkLVczvkohYKQU7ct+7LhBJUv/ghXj
	FX3JmjLH6/2+G5CZQu/qbv1MuBsJIj3VDt2SCmgyeQj1eRO13CthMSA7S8lB57qQ8jHT
	vfTw==
Message-ID: <51B9D885.8040304@gmail.com>
Date: Thu, 13 Jun 2013 16:34:45 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <519537F0.8020405@gmail.com>
	<FDC917F9-BB2B-4117-9F4A-D817841E5AE8@apple.com>
	<51B99888.2040406@gmail.com>
	<D58FE099-79EB-4E3D-904F-B09F4D787B89@apple.com>
In-Reply-To: <D58FE099-79EB-4E3D-904F-B09F4D787B89@apple.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Some suggestions for the DNS-SD
 (Bonjour) printer support in the dialog
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@apple.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, Marek Kasik <mkasik@redhat.com>

On 06/13/2013 01:25 PM, Michael Sweet wrote:
> One of the things I'll be working on post-1.7 is a generic IPP service API that can be used to implement custom spoolers, lightweight print services on NAS boxes, etc. The same API could be used as the basis of a user session print service that interfaces directly with IPP printers and talks to a local cupsd for USB and other legacy queues, or to (for example) implement a service on top of, say, Gutenprint to provide an IPP Everywhere gateway to raster drivers (one possible post-PPD future).
> 
> The key is re-use of the core CUPS bits (we've already had a lot of success with that at Apple) and abstracting away the common service/spooler aspects so that the only maintenance you have is for the small bits of glue code you use.

This is a great idea which was really missing, having the daemon's
functionality in a library and letting the developer costumize a
printing system concept as needed. In which time frame will this be
done? 1.8? Summer 2014?

   Till


