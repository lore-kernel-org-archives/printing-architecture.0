Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=06bR35/QQNAE0OQA+0GBIE0oNrSWJEHqwhhzQhj4lGY=;
	b=S33KuemdzCxS1W+W2didsigl0UKlPAp0qS7aLFe1VRhMwQypQvv0Kz3/tCXtDefbKj
	Mb72N6BggFcjYpb8X7oXy8nDSrYtO3JxG7TXDZDLDpeMc387q408FYoIJr8DybGbIL2N
	mL/d5eoZ9C0XkJLrF7K+GvMeYXnvURr7iVbaGzjvqeezGtKRtmywNpxBitAFygB8jaPm
	QoL8BxMqGcakhfDOTCPL11VlIqtlNk95RDwGBcFY2wQrU6f/73Vbd3+3h/ohLlhHBso/
	59YbjA9j3HU6/p7AJ15kITQrSMGaTz8aR0A9PAvpogYcjS4bD77sFDyH9nRJxIvuayl7
	1UFQ==
Message-ID: <51A50A38.4070209@gmail.com>
Date: Tue, 28 May 2013 21:49:12 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <E8C3B9E653C80C48B0951F8494C049A98E9A5F@EEAEX02.us.epson.net>
	<E8C3B9E653C80C48B0951F8494C049A98E9A60@EEAEX02.us.epson.net>
	<E8C3B9E653C80C48B0951F8494C049A98E9A61@EEAEX02.us.epson.net>
In-Reply-To: <E8C3B9E653C80C48B0951F8494C049A98E9A61@EEAEX02.us.epson.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Common Mobile Print Client software
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Cc: printing-architecture@lists.linux-foundation.org, mfd@pwg.org

Thank you very much for making all your code available.

I have downloaded and uncompressed it (why did you zip it twice? Zipping
zips does not gain extra compression), but did not succeed to compile
it. On which operating system(s) did you compile and test it? Which UI
toolkits did you use? Is it written in a generic, portable C or C++?

I am using Ubuntu Linux.

   Till


On 05/21/2013 07:52 PM, Petrie, Glen wrote:
> Till,
> 
>  
> 
> I added the PWG/PJT code.  The tool is incomplete but is a good start.
> 
>  
> 
> Glen
> 
>  
> 
>  
> 
> ------------------------------------------------------------------------
> 
> *From:*Petrie, Glen
> *Sent:* Tuesday, May 21, 2013 10:29 AM
> *To:* Petrie, Glen; Till Kamppeter
> *Cc:* printing-architecture@lists.linux-foundation.org
> *Subject:* RE: [Printing-architecture] Common Mobile Print Client software
> 
>  
> 
> Till,
> 
>  
> 
> I added the Preview code.  There is not much code here but I thought I
> would post it.
> 
>  
> 
> Glen
> 
>  
> 
>  
> 
> ------------------------------------------------------------------------
> 
> *From:*printing-architecture-bounces@lists.linux-foundation.org
> [mailto:printing-architecture-bounces@lists.linux-foundation.org] *On
> Behalf Of *Petrie, Glen
> *Sent:* Tuesday, May 21, 2013 8:59 AM
> *To:* Till Kamppeter
> *Cc:* printing-architecture@lists.linux-foundation.org
> *Subject:* [Printing-architecture] Common Mobile Print Client software
> 
>  
> 
> Till,
> 
>  
> 
> As we discussed at the recent PWG/OpenPrint Summit, I am posting the
> software I developed for the Common Mobile Print Clint (CMPC) based on
> the slides I provided at last year's summit meeting.  As I informed you,
> the software provides only a skeleton of the GUI and is based on JTAPI
> objects, elements and values.   I would suggest converting JTAPI
> objects, elements and values to the PWG/PJT objects, elements and
> values.    I hope to post the PWG/PJT content as C-code very soon.
>   Also based on the slides from last year, I developed a skeleton for
> the Common Mobile Print Preview; which I will try to publish.
> 
>  
> 
> See content at ftp://ftp.pwg.org/pub/pwg/openprinting/common.mobile.print/
> 
>  
> 
> Glen
> 
>  
> 

