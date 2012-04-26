Return-Path: <ku.b@gmx.de>
Date: Thu, 26 Apr 2012 20:17:30 +0200 (CEST)
From: Kai-Uwe Behrmann <ku.b@gmx.de>
In-Reply-To: <CAD2FfiHpgdkdLS1gazdUYwkzoyfSuG=jRMp9Jese7WQhA_KvAQ@mail.gmail.com>
Message-ID: <alpine.LNX.2.00.1204261939050.8774@siras.rasena>
References: <CA++JLR+st2adL_vf0+rC=OUBFXNqAbTSfrvvoZBtZ_hA_GA56Q@mail.gmail.com>
	<CA++JLRKGqqLQi_JjkA+ZghwWeN1=jdsivYCPCMB3_J0CLxpfMQ@mail.gmail.com>
	<4F97B82B.7040306@gmail.com>
	<CAN40gStH4vSYTEm4syWMUO1j3itm7V7iTE23e+1mFEAWthbjVg@mail.gmail.com>
	<1335363815.2535.0.camel@rubik>
	<alpine.LNX.2.00.1204260704580.8774@siras.rasena>
	<CAD2FfiEp0POX1B69KbZFy7FHHAVid7s6eTvUGE3xfzK0WX9cRQ@mail.gmail.com>
	<alpine.LNX.2.00.1204260919170.8774@siras.rasena>
	<CAD2FfiHpgdkdLS1gazdUYwkzoyfSuG=jRMp9Jese7WQhA_KvAQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; format=flowed; charset=US-ASCII
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
To: Richard Hughes <hughsient@gmail.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>

Am 26.04.12, 18:05 +0100 schrieb Richard Hughes:
> On 26 April 2012 17:45, Kai-Uwe Behrmann <ku.b@gmx.de> wrote:
>> The description of colord inside CUPS server, including the comparision
>> table, in my yesterdays presentation, hit pretty much the situation,
>> and I feel none of my concerns have been dispelled:
>> * colord configuration is time(session) dependent

> No, not at all.

Sorry, your negation does not fit to your other statement below.

Richard Hughes:
"Mapping the device to the profile: Preferences are per-user"

>> * contrary CUPS server organises jobs in print queues
>> * thus interference of colord in multi user sessions are likely

> Can you describe what you mean by 'interference' please?

Yes. A small multi user session scenario:
User A is logged into the system and user B's print job gets printed on 
the same machine. User A's ICC session profile kicks in through colord. B 
needs to invest time, material and money to find out, that colord needs to 
be uninstalled to get to relyable printing.

>> * ICC Profile selection is largely undefined due to above reasons
>> * That means colord+CUPS become hard and laborous to debug for users.
>> All in all, the colord hook inside CUPS server appears to be a pretty
>> problematic and orthogonal approach.
>
> I guess that comes down to opinion. Also it's probably pertinent to
> note that colord works in a very similar way to ColorSync. And also,
> that colord is being used by hundreds of thousands of users on Linux
> *right now* rather than being a concept.

What is your technical point here? Fuzzy marketing statements can not 
provide a helpful answere to a technical problem.

>> The two other presented configuration approaches integrate nicely into CUPS
>> server. Thus the per queue ICC profile and per job ICC embeddeding into PDF
>> OutputIntent are in my opinion much more robust, useable and maintainable
>> for enterprise and professional support.
>
> Please, how many more times... If you embed an output ICC profile then
> it gets used rather than the profile used specified by colord. It's

Oh, so you tested that? Can you point me to the according test methods?

> not an either/or situation.

For the one ICC profile per print queue concept colord will override the 
ICC selection undesireably.

regards
Kai-Uwe Behrmann
-- 
www.oyranos.org
