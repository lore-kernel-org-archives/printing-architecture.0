Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=5EXocdy+ejXR7Z/iWjYGTzMJsnltCw1McJ8drtoLgGI=;
	b=WDOpJs1iH7ZrW1gvEN+2ZLk0j32Ak6+2hwH5OctAPPRUp0wP04nuVixaY380/lK9i3
	p3cI5w3HQRRdlQkMTBkpoAVlyC7Hyx/eWGE/8EnzuR08gRYU10ZkQI6vj0nO2T/n7EIl
	mOvhh6nPcyX+TtxPxnsg7RYqrQ936Bgsm6mzsZt7a2bAr+bc3J8pdx5s19FLd03lQLzP
	8Bv4PdxG28xm/w+1qGETxeF5JyNLjGqVS+WkBmjj1QpbGFY+cXHjnhlel6fujXizTFy1
	Rdw0O3pJBHUBn2ruW7RbqtB4wWAk7zBaFdVR7WUFVwOeFajhRRr8UG6tSXX18o5/gjBN
	5/Mg==
Message-ID: <52A5F0B8.7030409@gmail.com>
Date: Mon, 09 Dec 2013 17:32:56 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <52A101D4.40107@gmail.com>
	<CAOTiGeV0wWsZ6nJhb2D+QjHQ0iVDof+TvVQPRMy=0QdR75K7Fw@mail.gmail.com>
In-Reply-To: <CAOTiGeV0wWsZ6nJhb2D+QjHQ0iVDof+TvVQPRMy=0QdR75K7Fw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] What should the "landscape" and
 "orientation-requested" options exactly do?
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Tobias Hoffmann <lprint-list@thax.hardliners.org>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>

On 12/07/2013 12:01 AM, Tobias Hoffmann wrote:
> I don't think so.
> E.g. for N-up, fitplot, adding of borders the pdftopdf filter looks at
> the final destination size. This size is determined by page-size,
> *together* with orientation-requested. pdftopdf also makes sure that
> filters like pdftoXYZ only get portrait pdfs as input, so that these can
> rasterize from to bottom and get the correct raster pixel ordering
> without thinking about rotations (e.g. an inkjet still prints along the
> short edge, regardless whether the input is landscape or not).
> 
> Two examples with texttopdf:
> 1)  A4, portrait: output pdf has (roughly) 21x29 cm, pdftopdf keeps it,
> pdftoijs renders (e.g.) 1000x1400 pixel output "image" for the printer.
> 2)  A4, landscape: output pdf has 29x21 cm, pdftopdf rotates it (in the
> ppd-specified normal_landscape direction), pdftoijs renders 1000x1400
> pixels.
> 
>   Tobias
> 

Thank you very much for your help. So now the handling of "landscape"
and "orientation-requested" in cups-filters should be correct: ...topdf
filters use it for generating layout, pdftopdf for n-up and fitplot. My
recent test files also show that pdftopdf does not break anything when
landscape" or "orientation-requested" is supplied and not n-up or fitplot.

Tobias, can you also have a look into fixing the handling of collate by
pdftopdf (see the other thread on this list)? Thanks.

   Till

