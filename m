Return-Path: <msweet@apple.com>
DKIM-Signature: v=1; a=rsa-sha256; d=apple.com; s=mailout2048s;
	c=relaxed/simple; 
	q=dns/txt; i=@apple.com; t=1402575465; x=2266489065;
	h=From:Sender:Reply-To:Subject:Date:Message-id:To:Cc:MIME-version:Content-type:
	Content-transfer-encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-reply-to:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=j0auozDid4gfVi2Ht7WR1jW9thUTFExXMeKvpnIaBmI=;
	b=xiVuh9s9OCMek09JBxrDDLdQpQMQAKHc0WGXriKYM9psfKy7+m7wfpXVeoiG06o6
	IYw+ynSsRtx4lH6c1XyU6521NGOzexPFsz089C75vXaw4PIYACl1N70y2oDaWXzX
	2B+3TYFDoCQR74cxNMtcLwJF7tUs8y6iXzmS7qUWaLcQNcl3lBM9uyWUSzZTdJhV
	K3FwFOqmNrhdpqwTp+PK8SILQWIbtIiKb/FX5e1kVlndtCT+yuQZMe4ekGQ+jKn8
	qfdJuVlZlQdL9nmXA+yXOL7FAU6dVxCLKFqQBSlvpIdVBCYP9v7uAxCaosyEVITI
	GzmjAIjuFVDhdHkk0WshKA==;
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <53997D3F.2060803@gmail.com>
Date: Thu, 12 Jun 2014 08:17:42 -0400
Message-id: <ACB4085B-27D1-4426-8F1F-77C899EBC607@apple.com>
References: <53997D3F.2060803@gmail.com>
Subject: Re: [Printing-architecture] "no-color-management" not a good idea
 for a name of a boolean CUPS option
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

On Jun 12, 2014, at 6:13 AM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
> ...
> let it be interpreted as not set. To support the "-o noxxx" case
> cupsGetOption() seems to split a "no" in the beginning of the name off
> if there is no '='. Therefore "no-color-management=" works but
> "no-color-management" not. The latter is probably interpreted as
> "-color-management=false".
> 
> Mike, am I right with this?

Yes.

> So I suggest something like "calibration-mode", "cm-calibration-mode",
> "cm-calibration", or similar.

Or just use "color-managemnt" as the option so you can specify "nocolor-management" or "color-management=false".  The filter will see "nocolor-management".

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

