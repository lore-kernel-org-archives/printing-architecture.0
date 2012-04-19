Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=XBcTIqWb9V+5UXaX3l0NvoEUI7K8UYawN6IsvMXKh8E=;
	b=zJwWUsh/vUHhwCk2NRn9DnOAbSIKx18LNULMAWlRmPcIF5wSKTxFSvokZzGqyymRXJ
	eeDc7ErSbEVUPPt/LRNWyuw3x4EOy0F8Qp68fgpv/xuBt8umRSSUGxPQHpVI3kgmK/0A
	X3VKOAaS1UHoflwzcrLw6qDCIAgRrCPpeDjiPCGznAhBB/l5l/RNaB9PqTWRMUwcRdrb
	wDVasHx+ME5cNZUFLEcq5k5cBjdlOvxyfvqs3B9+QBavBROfUO0ZCZ/cuXWZV/yjs6ch
	86ts2xDR42pf4IQvQ6VvMMxcmvkJinS+lflRUvixxNO0vVbGpYeO5SQWa2ynWBvsL5nB
	Dv3w==
Message-ID: <4F907C9C.4090308@gmail.com>
Date: Thu, 19 Apr 2012 22:59:08 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <m3wr5bjvzm.fsf@carbon.jhcloos.org>
In-Reply-To: <m3wr5bjvzm.fsf@carbon.jhcloos.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit
Subject: Re: [Printing-architecture] When using gs to convert or rasterize
 pdf ...
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

Thank you very much. Can you post a link to the Ghostscript bug report?

    Till


On 04/19/2012 10:40 PM, James Cloos wrote:
> A recent gs bug report brought attention to the fact that gs cannot
> re-create an xref table in a pdf which has object streams.
>
> As such, when using gs for a pdf the filters should add -dNoVerifyXref
> to the gs command line.
>
> (There probably are a few more such flags which would help ensure the
> queues Just Work™.)
>
> -JimC

