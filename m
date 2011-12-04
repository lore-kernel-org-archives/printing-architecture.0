Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=3BbUh3BijS8KVEVmoEbAxvfPU2lryxHxuBZRqDqX9/c=;
	b=oOXc1aXj4Yj4mlo4IHeP3qh+g/oozAgUTaQe2md76c4cg0NA8flAKr1WNLkcIzp+Gz
	FITNcLCaEdOsverHtc+5536Yy3OWy72Gm6rDupMxGpuAaeGEtf6uaFPLK9aHDPJMpxd+
	N7hbDE9DZIy32MhtbjU6hrW3flr7w+nXqT4Dg=
Message-ID: <4EDBFDF0.1030709@gmail.com>
Date: Mon, 05 Dec 2011 00:10:40 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <4EDAE1F5.1030804@linuxfoundation.org>
	<4EDB49CD.9050908@gmail.com> <4EDBE9CE.3070207@gmail.com>
In-Reply-To: <4EDBE9CE.3070207@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] bzr.linuxfoundation.org is live
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Lars Uebernickel <larsuebernickel@gmx.de>, David Williams <dwilliams@ricohsv.com>, "Chitpadi, Raghavendra" <raghavendra.chitpadi@hp.com>, "Hsu, Ray" <ray.hsu@eitc.epson.com>, Open Printing <printing-architecture@lists.linux-foundation.org>, Daniel Dressler <danieru.dressler@gmail.com>, Didier Raboud <odyx@debian.org>, Yuji Saito <yuji.saito@avasys.jp>
Cc: Jeff Licquia <jeff@licquia.org>

On 12/04/2011 10:44 PM, Till Kamppeter wrote:
>
> Some additional info:
>
> Repositories cannot only be read/write-accessed via checkout, but also
> as before (this is an example, it works also with the other packages):
>
> bzr branch https+urllib://bzr.linuxfoundation.org/openprinting/foomatic-db
> cd foomatic-db
> bzr pull
> [ Do changes ]
> bzr push https+urllib://bzr.linuxfoundation.org/openprinting/foomatic-db
> [ Do changes ]
> bzr push
> ...
>
> Please test and inform Jeff if this does not work.

I have tested this method now and it also works.

    Till
