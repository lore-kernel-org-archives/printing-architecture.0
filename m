Return-Path: <cloos@jhcloos.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jhcloos.com;
	s=eagle; t=1334924721;
	bh=e+gSjglbTvo+XAZPdq0Vrd29sVOovE4tPDJ1Q/9WKA0=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	MIME-Version:Content-Type;
	b=dmqb7VFy9SuBjKvXX/Wg0NSGsVx7LpvNCKkgu6S5sEwSIXMtuZQT15tSld2Q8k22U
	+YaDrHB1bcJtoO2LnE1mMnHyDfHQeoMkezVRPl/qGjY+SgBZmDTFIctDIQxWDRyyFX
	zwvMYJOQ7y1OoygAuDZ0r+aWhtg+nXen6jV0Ixf4=
From: James Cloos <cloos@jhcloos.com>
In-Reply-To: <4F907C9C.4090308@gmail.com> (Till Kamppeter's message of "Thu,
	19 Apr 2012 22:59:08 +0200")
References: <m3wr5bjvzm.fsf@carbon.jhcloos.org> <4F907C9C.4090308@gmail.com>
Date: Fri, 20 Apr 2012 07:55:49 -0400
Message-ID: <m3zka6iplu.fsf@carbon.jhcloos.org>
MIME-Version: 1.0
Content-Type: text/plain
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
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: printing-architecture@lists.linux-foundation.org

>>>>> "TK" == Till Kamppeter <till.kamppeter@gmail.com> writes:

TK> Thank you very much. Can you post a link to the Ghostscript bug report?

Sure.  Good point.

http://bugs.ghostscript.com/show_bug.cgi?id=692969

Their short-term resolution is to disable xref verification for the
files with object streams, but that wont ship until 9.06.

-JimC
-- 
James Cloos <cloos@jhcloos.com>         OpenPGP: 1024D/ED7DAEA6
