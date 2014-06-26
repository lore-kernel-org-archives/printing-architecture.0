Return-Path: <danieru.dressler@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=1iCeROxgYpFvyZXxd/oGu+YM285wVsQAVEUVv4RLT4c=;
	b=xwUaomKp3eyJST9VUtdkko9Jx1O2K4V8coIEt8gBppFwxmEshEIhBsIbH1tl13q8Tc
	Xxnwt2Pj5ErnREo2IpKcbgUTb547HD6upPln+d8Q9FWHOW4PnI8Ud7H8Pb5+oXsjwWiL
	icl2s5y9aAg0bauejjJO0tTMlKwSnEAnbEN6ww6rzYF9EFUfE4FZpjqq5A941PUyt9eA
	dYw4Jpn9DLki27wcQ5MCCVJKb1zXoSV691UO2JBy4Rv+qXHERndfAVv9q6pRzN2ClIvf
	1tPozb2hN1wdi4HhLkYjW0m+8Y8PeW3D3MoB0TqoDunTkjq0sIax5eRPJ9NDeDi/nETN
	zBnw==
MIME-Version: 1.0
In-Reply-To: <CAGC3nLDNvAHQQ9jUTqazxB-wMw7Zh8kRQSVio34cfOs6_0Q8_g@mail.gmail.com>
References: <m38up3ymxw.fsf@carbon.jhcloos.org> <53A9C50D.4000306@gmail.com>
	<B8CEB731-2C01-4D1D-9B72-EC02A9CDFE44@apple.com>
	<CAN40gSsvBphwY22EKrx15k3k6B4zkLapy3+8SLVhFTNr6zzO=w@mail.gmail.com>
	<53A9D7F0.1010909@gmail.com>
	<7231748A-31C3-4C70-9C91-19437661D464@apple.com>
	<53AADC12.50705@gmail.com>
	<CAGC3nLAJH3o=0UeB7LdjKSoCapwk5pdT6rPjgVgUEY=BnUzwuA@mail.gmail.com>
	<94101C68-DC20-420E-8C93-AAC754638926@apple.com>
	<CAGC3nLB4HvB7Xnxm5_LiOrvjtFAcPYr+6TTUrGV+XnPgiYF_UA@mail.gmail.com>
	<CAN40gSuxUUg1xaf=M3achUk+B7kUwxkM1_71ZHVswBKEHzEP8w@mail.gmail.com>
	<CAGC3nLB7mcHxK-LTE9PVsnbphkNOASUZNPj9n2ssKZNc1JR=zQ@mail.gmail.com>
	<C8C68FE1-C463-409C-AFD7-9852227E9DB4@apple.com>
	<CAGC3nLDNvAHQQ9jUTqazxB-wMw7Zh8kRQSVio34cfOs6_0Q8_g@mail.gmail.com>
Date: Thu, 26 Jun 2014 02:19:55 -0600
Message-ID: <CAGC3nLB5FYKs4dkRUAafXdNNMe8GZTccSYvVGBXU89bP+HRsAg@mail.gmail.com>
From: Daniel Dressler <danieru.dressler@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Printing-architecture] ippusbd license
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@apple.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Till Kamppeter <till.kamppeter@gmail.com>

With some thought maybe I've been too much of a stick in the mud.

If I ask myself "what would it take for me to want to release ippusbxd
under a non-copyleft license", my answer is adoption of IPP by
Android.

I think Android has been a massive boon to user freedoms. Yet they did
it by allowing but discouraging restriction of user freedoms by phone
manufacturers. The final result has been more freedoms for the users.
There was a time where it looked like every Android phone would be
locked at the bootloader. Now the major manufacturers have simple
unlock procedures.

In short: I am very interested in working with anyone brining IPP to
Android and re-licensing ippusbxd is included in that offer.

Daniel

2014-06-26 1:59 GMT-06:00 Daniel Dressler <danieru.dressler@gmail.com>:
> Hello Everyone
>
> I'm worried we're having a "color of the bikeshed" discussion.
>
> We've hit many major trade offs to strong copyleft. Please understand
> I think the GPLv3 best fulfils my intentions.
>
> If someone needs a disclaimer or exception to test against ippusbxd
> please contact me.
>
> Daniel
>
> PS: I also hope Android and ChromeOS will have IPP over USB support.
> If anyone is interested in that or knows anything about it please do
> contact me.
>
> 2014-06-25 19:59 GMT-06:00 Michael Sweet <msweet@apple.com>:
>> Daniel,
>>
>> On Jun 25, 2014, at 5:14 PM, Daniel Dressler <danieru.dressler@gmail.com=
> wrote:
>>> Thank you Ira, and thank you for the support you have given me and
>>> ippusbxd in the past.
>>>
>>> Do you know of any printer vendors or OS interested in using ippusbxd?
>>> I must admit I only expected ippusbxd to be used by the open source
>>> distributions. I am not sure what changes need to be made to reuse
>>> ippusbxd from the printer side.
>>
>> You wouldn't use it on the printer side, but you *would* use it to test =
your printer implementation.
>>
>>> Of the OSes which avoid GPLv3: Android, Chromeos, MacOSX, Windows. I
>>> did not expect any of them to adopt ippusbxd. MacOSX alone has Michael
>>> Sweet himself working on their ippusbd.
>>
>> I can see Android and ChromeOS supporting IPP USB.
>>
>> And don't forget the BSD-derived operating systems.  And Solaris.
>>
>>> I would a company prevent their developers from testing against
>>> ippusbxd? Under the GPLv3 if they download a compiled binary through a
>>> linux distrobution, or an exe from a website, they have no
>>> obligations. They only need to worry if desire to redistribute the
>>> source or binary.
>>
>> I can only state that Apple legal is leery of even allowing employees to=
 run GPL3 code - while the GPL3 isn't a typical EULA, the output of a GPL3 =
program or library can also fall under the GPL3 terms - some GNU software h=
as disclaimers/exceptions for output, but not all.
>>
>> _________________________________________________________
>> Michael Sweet, Senior Printing System Engineer, PWG Chair
>>
