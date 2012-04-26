Return-Path: <ku.b@gmx.de>
Date: Thu, 26 Apr 2012 18:45:42 +0200 (CEST)
From: Kai-Uwe Behrmann <ku.b@gmx.de>
In-Reply-To: <CAD2FfiEp0POX1B69KbZFy7FHHAVid7s6eTvUGE3xfzK0WX9cRQ@mail.gmail.com>
Message-ID: <alpine.LNX.2.00.1204260919170.8774@siras.rasena>
References: <CA++JLR+st2adL_vf0+rC=OUBFXNqAbTSfrvvoZBtZ_hA_GA56Q@mail.gmail.com>
	<CA++JLRKGqqLQi_JjkA+ZghwWeN1=jdsivYCPCMB3_J0CLxpfMQ@mail.gmail.com>
	<4F97B82B.7040306@gmail.com>
	<CAN40gStH4vSYTEm4syWMUO1j3itm7V7iTE23e+1mFEAWthbjVg@mail.gmail.com>
	<1335363815.2535.0.camel@rubik>
	<alpine.LNX.2.00.1204260704580.8774@siras.rasena>
	<CAD2FfiEp0POX1B69KbZFy7FHHAVid7s6eTvUGE3xfzK0WX9cRQ@mail.gmail.com>
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
To: Open Printing <printing-architecture@lists.linux-foundation.org>
Cc: Tim Waugh <cyberelk11@gmail.com>

Am 26.04.12, 08:11 +0100 schrieb Richard Hughes:
> On 26 April 2012 07:06, Kai-Uwe Behrmann <ku.b@gmx.de> wrote:
>> Tim,
>>
>> the slides from last years colord presentation answere the question,
>> which profile will be selected inside CUPS server this way:

>> "Mapping the device to the profile: Preferences are per-user" [1]
>
> The http://www.freedesktop.org/software/colord/specifics.html page is
> a good reference to how it all really works behind the scenes.

Yes, that's from where the above citation originates.

> So, yes, you can have a file in the users home directory that is used
> by CUPS, on the assumption the user is logged in and the home
> directory is thus accessible. This isn't great for shared user

So, Tim's yesterdays statement was unfortunately misleading. Thanks for 
clearifying that.

>> Your stated during my presentation, that colord is a per system 
>> configuration, suggesting that only system profiles will be used inside
>> CUPS server.
>
> How does these both contrary statements go together? Will CUPS see a per 
> user printer profile from colord or not?

The description of colord inside CUPS server, including the comparision 
table, in my yesterdays presentation, hit pretty much the situation,
and I feel none of my concerns have been dispelled:
* colord configuration is time(session) dependent
* contrary CUPS server organises jobs in print queues
* thus interference of colord in multi user sessions are likely
* ICC Profile selection is largely undefined due to above reasons
* That means colord+CUPS become hard and laborous to debug for users.

All in all, the colord hook inside CUPS server appears to be a 
pretty problematic and orthogonal approach.

The two other presented configuration approaches integrate nicely into 
CUPS server. Thus the per queue ICC profile and per job ICC embeddeding 
into PDF OutputIntent are in my opinion much more robust, useable and 
maintainable for enterprise and professional support.

kind regards
Kai-Uwe Behrmann
-- 
www.oyranos.org

[1] ftp://ftp.pwg.org/pub/pwg/openprinting/summits/April2012_OPSummit/CM-Print-Paths2012.pdf
