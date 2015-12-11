Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-type:content-transfer-encoding;
	bh=U8w8AkBUSxhzpwZf0CZm/nX00Ckdp/HSy5zeo6PfTOs=;
	b=yN1F6RUPrxKAz5tQ/cafOwVtvsYHMwYLuOS+/ScAxbhPKWyeJ/VFJFwmwgJQ4dI3HE
	rbA3IeBM56LNiLgnY7ymsYJGI6btFIbkBi51X25CaNM71I0BtKSspfRmL7/EXD2QV8S9
	/0iSlfF+UtOfjchniV2ty3cRJ8I86/qxNBtjD90E4ZdmE8XCzUd1pqCnYQyXgIfVbh+w
	/lOS4BnntuE4h+ShWYPeh/VybrFz5McO8IPJryLJMFDB5XdAYGa6BNGaIITcnbUrDr3X
	O1rKh3lJaZd+VkLu5n6jwTmeRT7MI50zCDHzJ7uBQscftoE/H1Pp8BhXdySbD5gy4pEc
	B8Ng==
References: <20151209102736.GC16751@var.bordeaux.inria.fr>
	<5669E0B4.9040009@gmail.com> <20151210204505.GJ2905@var.home>
	<5669E84B.2090400@gmail.com> <20151210213147.GK2905@var.home>
	<566A16AA.7080602@gmail.com> <20151211003126.GB2905@var.home>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <566A240D.8030203@gmail.com>
Date: Thu, 10 Dec 2015 23:17:01 -0200
MIME-Version: 1.0
In-Reply-To: <20151211003126.GB2905@var.home>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Contributing braille embosser support
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

On 12/10/2015 10:31 PM, Samuel Thibault wrote:
> Till Kamppeter, on Thu 10 Dec 2015 22:19:54 -0200, wrote:
>> I think MIT would be best.
>
> Here is a tarball with fixed copyrights.  I have also moved the shell
> helpers to /usr/share instead of /usr/lib since they are
> architecture-independent.
>
> Samuel
>

All OK now, I will integrate your software in cups-filters 1.4.0.

Thank you very much.

    Till

