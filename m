Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=o00T+r4Ww60qxlMARNVpQ/jssB739PZY4lvtMoklTeQ=;
	b=S6dBcx/Vp5M/O48qe3D8cfuRicTR/tyK8ubKxihnhANzwrgBdPoFPYga/womrtXuo5
	oE4GbSH6P6Vy0ELfgXVxzusjANgHQDddjsLB38Arpui3sxK5Upvd0l4grXreNmOJsAf3
	tbYsbfFqpzlnYgcUF6InD0sDdVeFY+kD+9/TVJJQNTcpSUm7K5feCiknDEecOVfbZvOa
	ilF+nS58mcH6+OzcXps/3UmAuhowTM6wQQC7DCtLAzOmNtKBAdYxZMuAiKUZdgMV7GeD
	brVE3tG4JhTiHevn7rQqEGq/uRuM/GHr7BWr8tjKlrz/Ej3RD2WqSI1fPapTI1naXOCF
	Xecg==
References: <20170909190207.koqjoe5qpfoarmjl@var.youpi.perso.aquilenet.fr>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <096ec9d7-7dbb-9d5c-184f-40b4c384bbac@gmail.com>
Date: Mon, 11 Sep 2017 11:59:01 -0300
MIME-Version: 1.0
In-Reply-To: <20170909190207.koqjoe5qpfoarmjl@var.youpi.perso.aquilenet.fr>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [PATCH] Add braille support for vector
 images
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Samuel Thibault <samuel.thibault@ens-lyon.org>, printing-architecture@lists.linux-foundation.org

On 09/09/2017 04:02 PM, Samuel Thibault wrote:
> Hello,
> 
> This adds support for embossing vector images as braille, by using
> ghostscript to rasterize without antialias.
> 
> Samuel

Thank you very much for your two patches. I have applied them now.

    Till

