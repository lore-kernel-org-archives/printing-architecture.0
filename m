Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=O/08PCPN+xONX8XGA2DvxSmMrWgTYtPUb/CNib/kdtE=;
	b=c0JngYk1Q28lzheXTHbit60UNzF6lbOFe+zpKyvQFsHC976W9KsbnmZ5MQQGUJFGf+
	rxG8UGycEQaZpDRBvUchtpqos+IUzJ4TPf6ADfMiuQ496GIA1K5gXa2Gp2gAIpwbKsz9
	YFYf7fRepudgWEpWseBdXNUqsKOElgxkBwyrQeNEEy4NA97OUIaY7f9BffXWse2dX6ix
	xm7ImZfvPuwWrjlSBoTHa0WdeMpLTsAzYwa1KsaX6UME9iyulkdIG8A7Dxn8zglfsbgE
	eQ0qOronweoLDy40xizZvlFt1ik25d18BwjdEfC3CBp5KW/87PrKT827Yg3PNcxrNMcA
	Lhgw==
Message-ID: <547E1A07.7020900@gmail.com>
Date: Tue, 02 Dec 2014 20:59:03 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <8ACDAB6F-4D54-4AA5-9C08-51D013D0CB39@apple.com>
In-Reply-To: <8ACDAB6F-4D54-4AA5-9C08-51D013D0CB39@apple.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] CUPS STR #4521: Unexplained high CPU
 use by cupsd on Linux...
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
Cc: Didier Raboud <odyx@debian.org>

On 12/02/2014 05:35 PM, Michael Sweet wrote:
> All,
> 
> We've received several bug reports about cupsd using 100% CPU, either on startup or after connecting/turning on a printer:
> 
>     https://www.cups.org/str.php?L4521
> 
> I cannot reproduce myself, but was hoping someone more familiar with all of the helper programs running on Linux might be able to shed some light on this?
> 

We (Didier Raboud and me) did not yet update Debian and Ubuntu to CUPS
2.0.x. Therefore we did not hit the problem yet.

   Till


