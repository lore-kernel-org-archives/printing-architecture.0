Return-Path: <till.kamppeter@gmail.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C1CFB40207
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 45886400D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1702839608; x=1703444408;
 darn=lists.linux-foundation.org; 
 h=content-transfer-encoding:subject:from:cc:to:content-language
 :user-agent:mime-version:date:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=HCR8qyv3oHl28zwmNobbZyA5yVCi2cUC99ENF7cxNVo=;
 b=NV/0C2GASCl3qRRCXFj/DwBUnwiTH+A3mgDOuJvKzrlf+da5gOAnSLvTbHtmMYIrxc
 e2U0SOs9OrX+qJdtSk6oEXNvF+oYaTeXfVXnZdFUtL6LPrqdz8flyu9dThb/ukeQ/Cij
 dGxTYFTI8KtMv6kDLmilXEZpiM9YFlnljkrYbELNovq+HEk1j6fL8jduFU9PdFwcpoPL
 qVxqNvLYADfhwFHfSQFWClYE9q1Od3J4ldK0SJuECGEqthkYrpNbQNf7KiEyxmWSENHV
 7lg8WGGRnMM1h3N1Ifwed80pqI8M43rTtS71c+f4R3gdcCf13yAx+/9OTRCGt33evgX9
 slIw==
Message-ID: <00f9e2e1-b496-4004-91b3-5ef13afdf3ff@gmail.com>
Date: Sun, 17 Dec 2023 20:00:06 +0100
MIME-Version: 1.0
Content-Language: en-US
From: Till Kamppeter <till.kamppeter@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Congrats,
	Mike! IPP Everywhere is now really Everywhere!
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
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>

Mike,

I want to express my congratulations as the driverless IPP printing, 
which was created by you made it also to be the exclusive standard by 
Microsoft in Windows now!

Unfortunately, Microsoft did not adopt CUPS, but as you with CUPS 3.x 
Microsoft is going all-IPP now and does away with classic printer 
drivers, by their new Windows Protected Print architecture:

https://techcommunity.microsoft.com/t5/security-compliance-and-identity/a-new-modern-and-secure-print-experience-from-windows/ba-p/4002645

So all printer communication is via driverless IPP printing, in Windows 
they are actually following Mopria but IPP Everywhere is very similar, 
so we have IPP Everywhere everywhere now ...

Support for all non-driverless printers will get dropped and Microsoft 
does not provide any legacy support for them (so the solution would be 
WSL + Printer Applications: 
https://openprinting.github.io/wsl-printer-app/).

So IPP and IPP Everwhere (driverless printing) were really successful, Mike!

    Till
