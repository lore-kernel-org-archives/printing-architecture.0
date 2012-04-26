Return-Path: <hughsient@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=AozCep5C7JdLKUxlT3+d1JV6B/MXBFP9MWXxiPirxw4=;
	b=IZmBI7klF5tGSXWpns0/KtJGkLfEjbK1zWC0KY6uabi75s5QbxZTsb4LJw/bgXOjOe
	q0Fs8Vh4CarxJM78CUEjaHwUJZO7pUDX80kbvsPh3mnh7MGB+C89iEmxGjA0HV3BySx7
	N9p5Gi8oGBaBlKJWRxqOhxy4hErtCfWtep2i5tz3IcD0zHS6ScYtTciaNs8U6FEvapoy
	2ByHeI8rNeoHv2uGwwJezYf0Uw6ohE+q4qGu3k6MNF2AllB4fMyPavGVpkD0UYzlIHJM
	Z8lcFpxGbj8oA/yz0ACPFV7qjbzItRbDhQgTKfdJlcetdRuD1FRxrx/WNW76XI08lh1E
	qTOA==
MIME-Version: 1.0
In-Reply-To: <alpine.LNX.2.00.1204260919170.8774@siras.rasena>
References: <CA++JLR+st2adL_vf0+rC=OUBFXNqAbTSfrvvoZBtZ_hA_GA56Q@mail.gmail.com>
	<CA++JLRKGqqLQi_JjkA+ZghwWeN1=jdsivYCPCMB3_J0CLxpfMQ@mail.gmail.com>
	<4F97B82B.7040306@gmail.com>
	<CAN40gStH4vSYTEm4syWMUO1j3itm7V7iTE23e+1mFEAWthbjVg@mail.gmail.com>
	<1335363815.2535.0.camel@rubik>
	<alpine.LNX.2.00.1204260704580.8774@siras.rasena>
	<CAD2FfiEp0POX1B69KbZFy7FHHAVid7s6eTvUGE3xfzK0WX9cRQ@mail.gmail.com>
	<alpine.LNX.2.00.1204260919170.8774@siras.rasena>
Date: Thu, 26 Apr 2012 18:05:01 +0100
Message-ID: <CAD2FfiHpgdkdLS1gazdUYwkzoyfSuG=jRMp9Jese7WQhA_KvAQ@mail.gmail.com>
From: Richard Hughes <hughsient@gmail.com>
Content-Type: text/plain; charset=UTF-8
Subject: Re: [Printing-architecture] colord profile per-user in CUPS server
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Kai-Uwe Behrmann <ku.b@gmx.de>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, Tim Waugh <cyberelk11@gmail.com>

On 26 April 2012 17:45, Kai-Uwe Behrmann <ku.b@gmx.de> wrote:
> The description of colord inside CUPS server, including the comparision
> table, in my yesterdays presentation, hit pretty much the situation,
> and I feel none of my concerns have been dispelled:
> * colord configuration is time(session) dependent

No, not at all. If you install a profile system wide then it's
available for all users at login time.

> * contrary CUPS server organises jobs in print queues

I don't understand this point, sorry.

> * thus interference of colord in multi user sessions are likely

Can you describe what you mean by 'interference' please?

> * ICC Profile selection is largely undefined due to above reasons
> * That means colord+CUPS become hard and laborous to debug for users.
> All in all, the colord hook inside CUPS server appears to be a pretty
> problematic and orthogonal approach.

I guess that comes down to opinion. Also it's probably pertinent to
note that colord works in a very similar way to ColorSync. And also,
that colord is being used by hundreds of thousands of users on Linux
*right now* rather than being a concept.

> The two other presented configuration approaches integrate nicely into CUPS
> server. Thus the per queue ICC profile and per job ICC embeddeding into PDF
> OutputIntent are in my opinion much more robust, useable and maintainable
> for enterprise and professional support.

Please, how many more times... If you embed an output ICC profile then
it gets used rather than the profile used specified by colord. It's
not an either/or situation.

Richard.
