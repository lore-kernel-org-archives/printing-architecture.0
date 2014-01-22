Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=RZDnnbLinqMoPXjgsgEOgyr1JUC6168QzERfS8G8AYk=;
	b=YglP3UEPVUbBlTAvhPg8h2npW5lt+MB/EVZu6jmCbfS5gty1RtQVKhMvxehAIduB0p
	TZ19GpDnQ2v+6ahkmleWxt5rxJhR3Lkg2lT3FbRJUAVfE588suv4oi+vaHZ17MUtG90n
	bXwxQ/92U7BWlShiOiy92RPpDuD/vO/twaMLkwnQnImoIynHuOh9r+6eWNa28W/tC/XC
	yanT4a/VRB8LtoPGBEEgzDB4RxD96PZ9RyJBE+FaPxbb/aUqTA8BCOZcEq4hfDc8ldb1
	KHKJzvA6VKPdtleYs19Ni5iWETvbMVBP/M3L9ESP4io6iFIKsr0XK4JnjVXHR4+HIFFh
	bvBw==
Message-ID: <52E00F63.3060001@gmail.com>
Date: Wed, 22 Jan 2014 19:35:15 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <SNT149-W14813CFD43AB9543F81B488A70@phx.gbl>
In-Reply-To: <SNT149-W14813CFD43AB9543F81B488A70@phx.gbl>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] CUPS Raster filter Question
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

On 01/22/2014 06:45 PM, Shane Lin wrote:
> Dear List,
>  
> Are there other filters (other than the gstoraster) can generate CUPS
> raster in the Ubuntu system? What should I do to use them if there is any?
> 
> Thanks,
>  
> Shane

Applications usually send print jobs in PDF, leading to a

pdftopdf -> gstoraster -> rasterto...

filter chain. gstoraster which uses Ghostscript can be replaced by
pdftoraster which is Poppler-based:

pdftopdf -> pdftoraster -> rasterto...

This can be done by editing the file
/usr/share/cups/mime/cupsfilters.convs, changing the line

application/vnd.cups-pdf        application/vnd.cups-raster     100
pdftoraster

to

application/vnd.cups-pdf        application/vnd.cups-raster     98
pdftoraster

Then gstoraster is not used any more but always pdftoraster instead.

There is also an imagetoraster filter which converts many image formats
into CUPS Raster, but this does not work with multi-page jobs.

   Till

