Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=FpJ5aBg1sCq/1GcD+Fl7gTKq+QxVYAJkb+hgohALVPk=;
 b=r2tPT/D3mDXZMPfnZg3UXH75nNjvdRbNtwt5zpi13WNQuX9pJBYMBOoFLhd6tDRrO3
 z0zwWuOpCU4n5lRJ86OvKKbWW5dwjTPZDfAAKvLic4TiBoWweVMlkSQELk3aPYvz5LpI
 HCusGJy2nudVG0padezd+yPOKicY+cWKrcKDE/YBeoK1k/ltAfe8Sq7HhMqtLLeZrULQ
 QdvXe4jFRpLksZL8dHGnTuQzgPQrMHibujQqo1ZRXPBodmuZXCwIYdOZhY4yvx6NZBFo
 A+reAeDxE2HAPBMgKezzIFy+VxzqrjIxkixXPmXMo5FCWBcrqlq+NIdAHn6cjce4uvnn
 0i8g==
References: <12af8541-3113-341d-6b7f-d7393203368f@gmail.com>
 <1099419D-7CC7-448C-84B1-5C35D75F7A03@msweet.org>
 <b6f4687d-fe34-c3e7-d378-a07405dc936e@redhat.com>
 <1AF4A2E5-31EC-4B89-97E1-C181FF4ED4DF@msweet.org>
 <03848a6c-7fb8-50c7-6ad9-80df4b36e97e@gmail.com>
 <E1F3F31C-A2DF-4BCE-826A-FC4282F77670@msweet.org>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <f6f434cd-f9ea-6943-f1ef-4db0cf7cf762@gmail.com>
Date: Thu, 25 Feb 2021 22:51:28 +0100
MIME-Version: 1.0
In-Reply-To: <E1F3F31C-A2DF-4BCE-826A-FC4282F77670@msweet.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Automatic printer setup with Printer
	Applications
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Jai Luthra <luthrajaiji@gmail.com>

On 25/02/2021 16:30, Michael Sweet wrote:
>> Or if you do not want to call an external executable via command line, do IPP with libcups to create the queue (with driver selection "auto").
> 
> The challenge there is to find the right socket to talk to... :/

Yes, DNS-SD only reveals the host/port access. As every Printer 
Application which provides a web interface has a host/port, one could 
use it, but calling the command is probably the most universal.

    Till

