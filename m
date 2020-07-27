Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=vQ0SByAeE6p6BRV06zwqVEgLRavHmr9g+bWk89Bavgg=;
 b=RZNdl4tzaXtRdzkXllLl1iUtck/7UCZNfx1uuS5jnboC5/TAzVC2jO3z3n/aGsGmx/
 jiQoeC5NUt0UqliwoivlwdHEEfv0WWirkQ0tyJtTrDz5kpaOFQtG7caM6tc8UO+OyuRE
 N5B5zVW9aSTFXuS6JSxsZwvC6NzpG2dAB1//If2BOd/ls/w9Xgwq0y0bawYqbiQJqd7v
 vyCJ7JvOALDXr6jx3B0rKJrg3jnsdAq0Q7+8YZCdR91fgM00RGlG6CHb02osktW8nNuS
 LSzx+7BcD09lT40CCLORe6Tv2A10oUZiNYKQVrXMCmr+zPn0V5OqoCbqeNkWIKnvNoem
 1UKQ==
References: <1a1f8955-f2ab-b741-a6af-8950bbbe8b15@gmail.com>
 <588DCEE8-BBFC-4C93-AE76-1DDE16E24CDA@msweet.org>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <d2cdf110-8a80-7180-34f7-e6666af8d663@gmail.com>
Date: Mon, 27 Jul 2020 22:39:39 +0200
MIME-Version: 1.0
In-Reply-To: <588DCEE8-BBFC-4C93-AE76-1DDE16E24CDA@msweet.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] PostScript printers without PPD files?
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@msweet.org>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

On 27/07/2020 22:21, Michael Sweet wrote:
> PostScript is dead, long live PDF...
> 
> Seriously, PostScript (and PCL) are provided for legacy enterprise application support but PDF and Apple/PWG Raster/PCLm are the formats-de-jour of the current network printing standards, even for Microsoft now that they have gone whole-hog for Mopria-based "universal" printing.
> 

Great, so PostScript is retro-fit-only, I can simply add the filter 
function to libppd then.

> I think it makes sense to have a generic Level 2 PostScript printer PPD (as macOS has shipped for almost 20 years and as CUPS has had for almost as long) that covers the standard Letter/Legal/Tabloid, A4/A3, and Env10/EnvDL office printer sizes.  You could also have a generic Level 3 PPD (not that the current filters do all that much different for Level 3), and it is possible to query a PS printer for the list of supported paper sizes, color support, duplexer, etc. so that a PPD file can be generated in the absence of a product-specific PPD.

Yes, the "Generic PostScript Printer" PPDs from CUPS I had put into the 
PostScript Printer Application anyway. I am also planning to grab the 
code of CUPS' commandtops filter for querying PostScript printers for 
default settings (I had put a lot of love into this filter years ago to 
make it actually working, and made system-config-printer using it).

Is there already some free software code to query an arbitrary, non-IPP 
PostScript printer so that one can create a PPD for it?

    Till
