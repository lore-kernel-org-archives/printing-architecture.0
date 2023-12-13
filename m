Return-Path: <pzz@apevzner.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7B6E443612
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3D67B435F7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=apevzner.com; s=google; t=1702502350; x=1703107150;
 darn=lists.linux-foundation.org; 
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=EE9L7H8ti8qKDBqotlGUUQ3psvT34anFOlkOqx7x46w=;
 b=PVsESh1AgpNGzp4YY3hkXKmryQnO2h1W2fYxIUwdKf2Z32SNCAprLF/RsT5VicTY88
 d2L1LBBvaWdbSwwy9OBGse/wtHKiMGLnzRnijnM9g8bsWH7a5q4dcjJl3BdUn56jnGyq
 FmqPu68BiYGcUHY5y/48Yo1miGCDan5XNAJTaLoNx5IuLPkjzqOqnWSvQYnK0rFUCXOh
 D4ToFsSj9Wo2+4HtXe62Of573G597Ux0D0Y/VlmQX7lSOUL1wHw5GxPhjc9HMn7Vt9MF
 NodDwZ+5kcFcMSicFG3mwPWwX7dApXhEjGIXd4PhEW8OemN+vnVIYVz2U0S4InKqfRc7
 upww==
Message-ID: <e585f22f-480b-4d2d-aa1d-d5af782e00ca@apevzner.com>
Date: Thu, 14 Dec 2023 00:19:08 +0300
MIME-Version: 1.0
Content-Language: en-US
References: <CCC014DE-78D5-4CC7-839B-8C0C23F080DC@msweet.org>
 <4c51b17b-e5e6-4212-8144-0fff694fa909@apevzner.com>
 <63d1702c-3cfc-4c0b-8273-d10cd83f92e5@gmail.com>
From: Alexander Pevzner <pzz@apevzner.com>
In-Reply-To: <63d1702c-3cfc-4c0b-8273-d10cd83f92e5@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] RFC: Pantum M7300FDW and similar
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>, Open Printing <printing-architecture@lists.linux-foundation.org>

On 12/13/23 23:37, Till Kamppeter wrote:

> Alex, Could you install and run the self-certification software from the 
> PWG (should be available as source code) to check whether this printer 
> is still passing certification?

I did. With the current version of this software, the printer doesn't 
pass certification, because IPP parser rejects Get-Printer-Attributes 
response.

BTW, my Kyocera also doesn't pass certification (for some different 
reason), but still prints (and claims to be Mopria/AirPrint-certified).

-- 

	Wishes, Alexander Pevzner (pzz@apevzner.com)

