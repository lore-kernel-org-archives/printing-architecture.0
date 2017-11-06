Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=CIeWPjZDyg812i30jvl8kr4Fyc7SYJO/wEe87UVukPQ=;
	b=kfWwDDUzp6xN/jvecgmbtLJps6MTctwzF9DMhgeovijNHLWKmuNirKgOEY/EL28mEN
	WfQsfpZz4h/F3WOybnjvbvuDTd+1b4VqTFrI/Sk5ublqqA+Beag8wUwnIRcO7++VnuMu
	mp91z3cOH1uMWNlG8+KP3zdF3CiyDaHWwzJYlI41qi46A5540t9zF9bMgBrZBwrHYR2b
	txrMQhMOoNFtf43Cu3s4/mLtftIrsGfcLfLBibgSm7pt9WK6q05DJ0qzcc30IS+Ck4c7
	WqH7o4bSfF4n1vGhKRKKR/cCp1Cc6gGO5UzoIBmL9cLZbsWfSkjiTTMzVsht4lQx44yH
	qPoQ==
References: <20171102100944.y7z77pwuzddegw6r@var.youpi.perso.aquilenet.fr>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <6140f4fd-129b-54f0-66f6-9a163ae2020e@gmail.com>
Date: Mon, 6 Nov 2017 19:15:54 -0200
MIME-Version: 1.0
In-Reply-To: <20171102100944.y7z77pwuzddegw6r@var.youpi.perso.aquilenet.fr>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [PATCH] braille: Fix heading spaces
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

On 11/02/2017 08:09 AM, Samuel Thibault wrote:
> Spaces at the head of lines were not getting embossed, because bash
> would eat them in the read command. IFS allows to avoid the issue.

Patch applied in GIT repository, thank you very much for the patch.

    Till
