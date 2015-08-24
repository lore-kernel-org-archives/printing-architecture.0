Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=Xs4ovPuKMfOBbn8CTJr2Hn7piYoJEaEzhcAzQdMFoIs=;
	b=ebpBxIX1rPy7Ge5MNn3m4SDDv4Ct0mHAEQitFy13cHZ02aOBEDJDb1GqTvzWCGtNQf
	N+Eiw3bCYtxDtvLeJBz9Nq9qxpufw+/vq826+rJkxa3d5aq8zZn4HhpKDvV/GanSjIL8
	GxYGWjbntFs0LAMxQuWabs/or/RWfI7CgA/FoBgDfcNrppd7mlPGHOR+xYG6k+yIH8zx
	tJIg4E1YlqH9GxNtLIiQkex9iBKz9Ix5zDdzQl/HVfYknY+1jcPI9j06ynLWHmxjgEIx
	coVjvBTO7SxDTmFUZJrrBo8zwQGhRgRkTDnLQkSi3BtnuUp4eL6JcP5n64S0WtMC3rKG
	/h4w==
Message-ID: <55DB5430.7000906@gmail.com>
Date: Mon, 24 Aug 2015 14:28:16 -0300
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <CA+3RNfipMp+TTLyfTGiSUGS1UAsFUPw8dOJbA7yOKTGbpn7YgQ@mail.gmail.com>	<CAN40gSsYjD_jZGDvY+ZjV5gwcE1FqSxRgmkzaghVnbw_ydczKg@mail.gmail.com>
	<FB5CC2D9-0026-4C01-B4E3-1AEEF3474674@apple.com>
In-Reply-To: <FB5CC2D9-0026-4C01-B4E3-1AEEF3474674@apple.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] PDF workflow, cupsaddsmb,
 and Windows clients
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@apple.com>, Ira McDonald <blueroofmusic@gmail.com>
Cc: Smith Kennedy <smith.kennedy@hp.com>, "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

On 08/24/2015 12:59 PM, Michael Sweet wrote:
> Alex,
>
> The Windows print system is based on Microsoft's XPS format, which is functionally the same as PDF but requiring different tools/filters.
>
> I know Ghostscript and mupdf have XPS support, but I don't know of anyone that has either written the necessary CUPS filters nor the corresponding Windows drivers (which need to comply with some unfortunately strict Microsoft licensing...)

One should check how well Ghostscript performs as XPS 
interpreter/converter If it does well, the needed CUPS filter would be a 
simple wrapper around Ghostscript, which we would name xpstopdf and 
after that we get the usual pdftopdf and then pdfto<whatever the printer 
needs>.

    Till

