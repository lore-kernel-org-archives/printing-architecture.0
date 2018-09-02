Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=yywLv4WXBzi7xy7vYGx/GYGNvXKZWLsmTZwqZs+u+/M=;
	b=gMKvAsK+f/92IomeypuWxzprr57KY1ibaQ61ntrSBPcCyyNhq6QrNldCMeUQukQBAJ
	akdluKVPIAWtVvo/Ct90I2sPS+mGH/8CR1eK6sYoLCYx5N7LVPKfJLhmC7vE9prDaQps
	Ae2rpoTHX0Qz2RPynzXuSn0Nez92qZoqoQsIcqDgaGhNd+LPxMm5QBcDOEZHBd/SlxRU
	dKlspddIZIDPIJ8gzzsIDiYy8tjgBBhbBb6U36grV+ucwGnixeurSqR1jAQaktLdCMjk
	K9Ui+hvQNnBR/ZGjajGrrr0gAQHbTxqTcS3hfkvUHUKZFFBi2Uw+ZJUSTis2c8ZvrOMm
	r4tg==
References: <CAN40gStjA+xyG-caQ1sZ18bQOXmMdO9XYYVBEPMgE9Kdq_uerg@mail.gmail.com>
	<CA+3yCNLowGppT6uX_cs=oxmEnq60zo_dkPtVeskcbjVPrXL-pw@mail.gmail.com>
	<8b6d71ae-57ec-2af6-0758-b328e557d1b1@gmail.com>
	<CA+3yCN+bKTahsY5f75YK_X4oRVbM1KRjZa0skAK_t7P-DOsNzQ@mail.gmail.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <84d95953-4ff8-38b9-893a-b5fa80ef7125@gmail.com>
Date: Sun, 2 Sep 2018 19:23:15 +0200
MIME-Version: 1.0
In-Reply-To: <CA+3yCN+bKTahsY5f75YK_X4oRVbM1KRjZa0skAK_t7P-DOsNzQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] OP Minutes (21 August 2018)
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Sahil Arora <sahilarora.535@gmail.com>
Cc: Aveek Basu <aveek.basu@lexmark.com>, Open Printing <printing-architecture@lists.linux-foundation.org>

On 02/09/18 18:13, Sahil Arora wrote:
> With my experience in website designing, I have learnt that it is always 
> a better option to use a robust framework rather than building from 
> scratch. For this specific purpose, I searched a bit and found that 
> Docusaurus <https://docusaurus.io/> is a great tool which might help us 
> make a maintainable and good-looking website for our purpose. There are 
> many open-source projects which already use docusaurus for their 
> websites, such as Babel <https://babeljs.io/> and React 
> <https://facebook.github.io/react-native/>. I would urge you, and others 
> to have a look at docusaurus and if that meets the requirement, then we 
> can deploy a website.
> 
> One of the most important points which I think should be concentrated 
> upon is that the website we aim should be hostable directly via Github 
> pages <https://pages.github.com/>, since it is free(for open source 
> projects) and extremely easy to setup.
>

Looks nice. Also an easy news blog is possible (similar to the on on 
GitHub).

Important is to check whether

- docusaurus itself is free software and does not pull in any non-free
   dependencies

- docusaurus is maintained and under active development

Please check these two points.

    Till
