Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=sOWOLxpIl0+KFdSXiStwvU0G2/+1X5zzOqDrVWdJ82M=;
	b=pIYGV5nZmwzvLpR/05NU00EaF+MWtraczlCn+VYvjow7hb8foPj4SBhCDycMl7yadA
	3OHPx1l3/KUwoKTS7u+clBMRJWvsP6QwoX1f7HuUrT4nelmfWECyl5PZ0cr8aXc9MN5u
	ZmoNP79GSC7XW6R/qt/Hui8r+XiP63PQ8AaHMYNiMEcv0hhLiF3efu+yAyslv+4Ui+S0
	aW8X6fQDt+PP6hAHd14E5g+qkwec9Anh/uTgLo4P+N5P0OkhQO0epDmtudRBGa5/LwjM
	pekm2TcYrzlUYfQSM9LOaazFxdQJlTswFwnkoWHuM1Holvx2lWjP9YmIl9n7JzdPC7tl
	dh3Q==
Message-ID: <53F3C7C4.5000808@gmail.com>
Date: Tue, 19 Aug 2014 23:55:16 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <CAGC3nLAb=qA1VJ+vUohTHyA-x_EnaSohxUT4MOqE0mGsccy_Zw@mail.gmail.com>	<1408456344.30728.40.camel@rubik>	<53F37CFE.30807@gmail.com>	<CAGC3nLC5K+nKaHAx+o59u3Cjbn=fg0OxyBpb65maevH0Gz6ELw@mail.gmail.com>
	<CAGC3nLCnVYTjLFXwNNhJB3a-Fq1Qy6cq4U=sK5kRNsxT_j6c9g@mail.gmail.com>
In-Reply-To: <CAGC3nLCnVYTjLFXwNNhJB3a-Fq1Qy6cq4U=sK5kRNsxT_j6c9g@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Patch for system-config-printer to add
	ippusb support
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Daniel Dressler <danieru.dressler@gmail.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, James Cloos <cloos@jhcloos.com>

Thank you very much for the patch. I have applied it now to the Ubuntu
package of system-config-printer. As I have added ippusbxd to Ubuntu's
cups-filters package yesterday, IPP-over-USB support is now completely
included in Ubunto Utopic, in time before Feature Freeze. Now we all
have to test and to fix all remaining bugs.

Thank you very much to everyone who helped to make that happen,
especially to Daniel for his great GSoC work.

   Till

On 08/19/2014 10:10 PM, Daniel Dressler wrote:
> Hello Till & Tim
> 
> @Till: I've attached the fixed export of the patch. I double checked
> that the is_ippusb_interface() function (the first function I added)
> was present.
> 
> @Tim: Thank you for the debugging instructions, I will use them. I am
> not sure if you will want to merge this patch yet, I will be doing
> more work and bug fixing.
> 
> Daniel
> 
> 2014-08-19 10:39 GMT-06:00 Daniel Dressler <danieru.dressler@gmail.com>:
>> Sorry Till, Just to make sure you've read my other email so I want to
>> re-iterate: that would not work with the ipp over usb standard.
>>
>> Daniel
>>
>> 2014-08-19 10:36 GMT-06:00 Till Kamppeter <till.kamppeter@gmail.com>:
>>> On 08/19/2014 03:52 PM, Tim Waugh wrote:
>>>> Have you thought about structuring the URIs like
>>>> ipp://localhost:5000/printers/$vid-$pid-$serial?
>>>
>>> This is a very good idea, but to make the URIs easily distinguishable
>>> from IPP printers provided by CUPS (have "/printers/"), I suggest
>>>
>>> ipp://localhost:5000/ippusbxd/$vid-$pid-$serial
>>>
>>>    Till
>>>

