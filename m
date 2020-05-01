Return-Path: <leonardo@schenkel.net>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=schenkel.net;
 s=MBO0001; t=1588322943;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=QosGvmRxHdJhq0ujo0FUZu4JEwIqnA7xSlwLmpsOd/M=;
 b=kd+D+xufcb72e2Z6YX3IrvU6rAKkl9Vur4alW+OL8brFpBORrCz1x6IzFQlSPPTtG6fBAv
 KXCJlJgXafADvoA6MHmxJ9Gjsj5Krbt/oq0mkQIsLCFFdYTelu7Rl96GpHffVCE4qknrMp
 cXmgIhoDECppoPkLx1qkg1Y5KXBJfZBK2Rw0X1gIUNVLeFEBCrIfiG7V7tbccvcayB1g0b
 2olZ4qB5ev3rtO4TGJsJ+czGwIRqV9yNIkXE07TS5aYd5Y71ej3/Jw7W6kAeqTjcBqYkDQ
 6tHo4iZjX8MG3p3J1n9bKWjKIX10uos+mlNOQ+jj9dGGoXhAYkI6pAxfj6akrg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=schenkel.net;
 s=mail; t=1588322941;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=QosGvmRxHdJhq0ujo0FUZu4JEwIqnA7xSlwLmpsOd/M=;
 b=M5Pn/RtPj67ycWBrK/99XB0N/KXbnzrU78iRI0Lx8pMz0hUU0rWHerDCif5l8+o8qvlasQ
 XU8765dN+y34N6NJMhqLox5zW3rqXkmzuaS96u8fnS6QuuQB60lCTDIyZkq+zfR53IYfNC
 sKCqa7kp4dG2KNxev9TdLsatymTiUYRwNBRl8HP/tCF/XKAgHGITedSUEN8IxVMjLEH7Do
 D5UDFlFmTuIIrMt9jbYXZhHPKG7gzsyZYRt53kohnqa2aB2muFMxreLNdcn5cawTHdwIj4
 ix2i/YPKgMCRIWgHo8pRlJfWESUiH1WxVI1tHFq4/9slt2cSo2shVMJgE7ytpQ==
From: Leonardo Brondani Schenkel <leonardo@schenkel.net>
Message-ID: <c45e2d11-d468-2f08-9c64-9d2340e098f6@schenkel.net>
Date: Fri, 1 May 2020 10:49:00 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Why doesn't driverless copy remote PPD
	options?
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

Hi all,

I have read https://wiki.debian.org/CUPSDriverlessPrinting and 
surrounding wiki pages (which I found very helpful, by the way). I think 
I've managed to get a good grasp about how a modern CUPS setup should 
work, and the differences between CUPS' "everywhere" and cups-filters' 
"driverless" PPD generators.

I'm still confused about a particular detail, though.

I have an old printer (meaning: not supporting AirPrint or IPP 
everywhere) locally connected to a CUPS server (2.2.10). I use the 
Gutenprint printer drivers. The shared CUPS queue supports all the types 
necessary for a "everywhere" or "driverless" setup in clients. My 
desktop computer is running 'cups-browsed' (1.27.4-1) which auto-setups 
a queue using 'drvless.ppd'. I can print through it. So far so good.

However, what I don't understand is why aren't the PPD options available 
in the server (the ones exposed by Gutenprint, and very comprehensive) 
copied over and available in my local queue? I only see generic (and 
fewer) options for paper size, resolution, etc. When using macOS as a 
client I noticed that it does copy the server options in the client PPD, 
which is great. So I am wondering why 'driverless' does not do the same? 
Is this a deliberate design decision? Or is my set-up broken somehow?

This current behaviour decreases the usefulness of cups-browsed quite a 
lot, because if I need to control those non-exposed options I'm forced 
to print directly to the remote queue via a print dialog that does 
discovery.

Thank you,
Leonardo.
