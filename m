Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=IvU+BZfwxsy/1I/wXpvLMyb66DWUxpfGvoZoUb+qnG8=;
	b=Z1FfXy4kbDt2wLRyuzahXMZuVuaxRkiN0V087uyAY596NOUeBLa1/6KH2fCS5wwyrY
	m0S+zZH2Zev2wLjH0eJX9bmFghh+mjeOJK4141U45//kR/GEEQaj097zbUNYjG8FNsrc
	Sk14VARztxIm0fbqMMuVwNwFAh6CgrmUOwDOqUOtysJGWG5NtIrhCW30mTOa8Q6NUcds
	y9gYVHwywQ0+l8RRCKcKgsovG77m7E2Oxw+/C3/C6hMopD1LFDmjwvI+pzUPlTKuFyWx
	Ze3OxbdQ9xDiSt8tkleO/gql3TLQ+RKsiSsZ1NeYQAlWZEhwyM9c/CO2xRscpbkPvCny
	K0vw==
Message-ID: <4F553081.5090507@gmail.com>
Date: Mon, 05 Mar 2012 22:30:41 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <4F5527CB.9000101@comcast.net>
In-Reply-To: <4F5527CB.9000101@comcast.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Heads up on Poppler development release
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Koji Otani <sho@bbr.jp>
Cc: printing-architecture@lists.linux-foundation.org

On 03/05/2012 09:53 PM, Marty Jack wrote:
> I see it is a perfect time to bring up something Poppler related.
>
> The development release 0.19.0 has changed the interface to the error() function and replaced setErrorFunction with another setup interface in such a way that cups-filters no longer builds against it.

Marty, thank you very much for the hint.

Otani-san, can you check what has changed and adapt the code of the 
Poppler-based filters, perhaps with conditional compilation so that it 
builds with both the new and the old Poppler? Thanks.

    Till

