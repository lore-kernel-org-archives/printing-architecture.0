Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=8LqYyyUWL7E4DfUpK1Frc1yd9SHORI8x0PXpkEKl964=;
 b=Sj13RialM6jO3WhZiXJGDiqmrbZ0z4wnbfUuY4vIqEXPqRKsShS2r4Ao9E1HKvXCb8
 El43jLCNJRVHU/4KmOee+KS0E7wYununFiJ+ucdD9nlFU7hiJZj5TsfrNbt5SFG0aeD4
 yPrB4VnrxeCGxM/vLwHbDhf5Yy2dbrI2emxpkbLuuh4fcvvzy/yTcAtJ/21dlmJ6/MrF
 BWbamp4YN3W/4oKBMFtk6uM3XJCPs4Mp0zeySfc6/7y2mu7Xc9lFe2DCAuy9BhFJSRa1
 YhEkShYZzoCS8Rw5AYv3EYKtbL7JzSr5u8HGhpWLE04F4qK5U5xSHG+kDU6P4XernFdr
 7dzA==
References: <d157a0d9-6cc4-39e2-b06f-710daeac0483@gmail.com>
 <CAABHnQ2xa00=aH+LgHpdnS3-CTtMMSYQ6u+rtzqW7VJqPWoY_w@mail.gmail.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <18af2b4b-81cd-6607-19a6-22a4a625e595@gmail.com>
Date: Sat, 8 Aug 2020 13:31:10 +0200
MIME-Version: 1.0
In-Reply-To: <CAABHnQ2xa00=aH+LgHpdnS3-CTtMMSYQ6u+rtzqW7VJqPWoY_w@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Printer Application for PostScript
	printers
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Jai Luthra <luthrajaiji@gmail.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, Sambhav Dusad <sambhavdusad24@gmail.com>, dipanshu verma <dipanshu.career@gmail.com>, Aveek Basu <basu.aveek@gmail.com>

On 08/08/2020 10:32, Jai Luthra wrote:
> For the auto-setup, I am still working on it. But according to the 
> current plan(based on discussions with Michael and you), all that the 
> printer application will need to do is provide a callback that takes as 
> input the device id and returns the driver name(or "NULL" in case your 
> application doesn't support it).
> 
> Please note that this is not yet a part of PAPPL
> 
> https://github.com/michaelrsweet/pappl/pull/36
>

Great, thanks. So this callback function is probably expected to be 
written by the individual Printer Application developers?

    Till
