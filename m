Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=LIEdDWJghomIKPOOjiTdr5rgbQ0Y50qWmdtESC0GjvE=;
	b=tyS7p+gwhCCLuiL5n0XCxEeLl0uopWRKJQqx30k7smo04DDQkYrfcbnsKRQann1fxZ
	4ZBsu9hcan3GdFwRQHdX9xpXmlNcENC0FU/Sx3TGbFdGfOIRuRetzgL01P7XQ43Od8FD
	2M0KcuLz0K7kIKcZC4i9rfnkZ2Cv5F8MIHah4Lze4uT+JX5q0Mt4N0TasdH6MUP4RJUZ
	l5H8rpvZ0KknXK6ABh7W/iQI79aCvMYz5uNT9XdAGfElpInoEpLYMzsRTeGCPMY7ztDQ
	sGco+pwG7oHOsn3dwO1lLU1L/t5zEVmqfp1GUdjYsYznFw/FDzDIzY7CJh8tM+iBvP+Z
	HXfQ==
References: <20170914174009.hs6uhfcyzauzmd6m@var.youpi.perso.aquilenet.fr>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <2639aaac-7d16-c8b6-e3af-7684b1e5881b@gmail.com>
Date: Thu, 14 Sep 2017 18:04:40 -0300
MIME-Version: 1.0
In-Reply-To: <20170914174009.hs6uhfcyzauzmd6m@var.youpi.perso.aquilenet.fr>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [PATCH] Fix graphical braille margins
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

On 09/14/2017 02:40 PM, Samuel Thibault wrote:
> In Index graphical mode we need to disable the text margins, since they
> come in the way there too.
> Also, we should always add a 1.6mm margin for taking into account the
> width of dots.

Applied. Thank you very much for the patch.

    Till

