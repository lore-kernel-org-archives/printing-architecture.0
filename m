Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=K7g3KHOZQRg/yQTyCwgtimx84hz1p4pSovNE8Vfahj0=;
 b=mPUWSetw99YkaEwmcxFBS+iSh6EuY0GWbmthNfh3DyBXNGcleqWFwlQ5vcrOCKFNFt
 tOLD5x8MdfGzH0LLD8D4ET9tSvLcV7jr+EicwmCnU8wPILiA6SlJfz1v11LXWB6mup96
 bG/srMal/bGolLeGrJAuIln4BRfQ0u7oUHRrpAlJust+ZDFabxHrM683U6wNo4SvZW/Q
 Ub/euBASxs6vrygNmQvHkzhA9nZ3cMSc1Ytp1cXSYvsiX7TMGXx/EC1DZubhrsWOx9Yd
 47CopuHaBUOb6VhjEfMj1LuD4eRnLPHMOPqib/6nZleGt5b9NKGEYv+UqB+luGLpQC8O
 V+Zw==
References: <d157a0d9-6cc4-39e2-b06f-710daeac0483@gmail.com>
 <CAABHnQ2xa00=aH+LgHpdnS3-CTtMMSYQ6u+rtzqW7VJqPWoY_w@mail.gmail.com>
 <18af2b4b-81cd-6607-19a6-22a4a625e595@gmail.com>
 <BE27FEA8-677C-46BE-8FEF-B0BA00DE4236@msweet.org>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <5b1615fc-81ad-8f01-e68d-fb96348d080d@gmail.com>
Date: Sun, 9 Aug 2020 09:45:18 +0200
MIME-Version: 1.0
In-Reply-To: <BE27FEA8-677C-46BE-8FEF-B0BA00DE4236@msweet.org>
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
To: Michael Sweet <msweet@msweet.org>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Sambhav Dusad <sambhavdusad24@gmail.com>, Jai Luthra <luthrajaiji@gmail.com>, dipanshu verma <dipanshu.career@gmail.com>, Aveek Basu <basu.aveek@gmail.com>

On 09/08/2020 06:49, Michael Sweet wrote:
>> Great, thanks. So this callback function is probably expected to be written by the individual Printer Application developers?
> 
> Yes, absolutely.  A printer application will use the device ID string to determine whether it can support a device.

OK, thanks.

    Till
