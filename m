Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=fppOgCFTljVn1X/YLc8g959yIKVhLtNH9JvBfIEpNBk=;
	b=u0Qy73QI33g9GYF8x+6+CiTsXclPLiVw4PIRBAriLDz8k8eFddJ5TLj0LcJ5hQLkRX
	E/FQbB9sblHj+WhcqkGYJYNhWPCIr9DP0hyscLaJSeFmbQfAme3QpXuItyCCiLET6yuY
	1W+I3BIGOretRyyMH7g0foY/cuunYsSRJjUyL/W2aUMXisUGXBiKrxIaJO/56iI8XEVr
	yqPzr19nNCI44h1s8rGW/2u8uuN2YmL9O0wDJ+yn2Q+efT4GjoIJfpsYWBn+TBDNC3Nu
	H/FB4b0zM9MSg1GiNEE5jIiwSMqgJEbtzQZXV+/cdArHgIkLIKshcvXa1iXRNTWlsKaE
	oOeg==
References: <20170226185712.jzs2ohpyvugl3dve@var.youpi.perso.aquilenet.fr>
	<20170227230811.iyzvbno6qjizmwgq@var.youpi.perso.aquilenet.fr>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <9da8d433-9154-5fd7-9ae6-59d68e8a777f@gmail.com>
Date: Fri, 3 Mar 2017 19:10:21 -0300
MIME-Version: 1.0
In-Reply-To: <20170227230811.iyzvbno6qjizmwgq@var.youpi.perso.aquilenet.fr>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit
Subject: Re: [Printing-architecture] Complete table list for braille
 embosser support
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

Thank you for the last two patches. I have applied them now.

    Till

On 02/27/2017 08:08 PM, Samuel Thibault wrote:
> Samuel Thibault, on dim. 26 févr. 2017 19:57:12 +0100, wrote:
>> Here is an update for the table list.
>> I have contacted the liblouis project for them to include the
>> descriptions in liblouis itself. For now we can code these here.
>
> And here is a patch to be applied on top of it, that automatically
> selects a table according to the current locale.
>
> Samuel

