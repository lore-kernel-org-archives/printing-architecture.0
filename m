Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=/R20jwo8bo2v4Yb+xQx8PUyUac0jIiZ9JO6V5P2aJY4=;
	b=nIOaCThOFjMTF5QhnP7ehjMWbEJ4N9kKYJTo2rQgEB4IYiOmOFupkfnhyMXwFa/ut2
	IrCp3KqKGf2Z/jDFqrr2xi5R0UZSH7tZwv7YgkqPeYXIWbjTXli8OKcoN9kglabjFmcK
	vh+WmYtBBfThU4rwJFtgvqqxQW5P8HXpxWK9IvQy8/jPoMdiGHcLVa7pnhZpJVo8zg6i
	bfgn7ZqQbUlrdacDuevtBCQoPpvyq+z3APHQ6WXv/NGsbFedFo+4QT+tvwv3ATfQdpuD
	DzBPrqVd8qithoiDKEDbZN2zKuYpmpZZHq7BhTpmUpSCs0eo+gWJEoQ+eYlEiQJnr8rL
	o0MQ==
References: <20170914174009.hs6uhfcyzauzmd6m@var.youpi.perso.aquilenet.fr>
	<20170914213329.jmx3ujph6ps5z2cr@var.youpi.perso.aquilenet.fr>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <ab681fb6-064d-3c73-dc74-3011f3b4b763@gmail.com>
Date: Thu, 14 Sep 2017 19:28:43 -0300
MIME-Version: 1.0
In-Reply-To: <20170914213329.jmx3ujph6ps5z2cr@var.youpi.perso.aquilenet.fr>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [PATCH] round graphical braille images
 to braille cell
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

On 09/14/2017 06:33 PM, Samuel Thibault wrote:
> Embossers would typically need a round number of cells to emboss, so
> round the graphical area to a multiple of 2x4.

Applied. Thanks.

    Till

