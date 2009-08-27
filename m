Date: Thu, 27 Aug 2009 11:07:34 +0200 (CEST)
From: Kai-Uwe Behrmann <ku.b@gmx.de>
Message-ID: <alpine.LSU.2.00.0908271056100.19414@sirius.rasena>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; format=flowed; charset=US-ASCII
Subject: [Printing-architecture] OpenICC GSoC 2009 finalised
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: OpenICC Liste <openicc@lists.freedesktop.org>, lprof-users@lists.sourceforge.net, oyranos-devel <oyranos-devel@lists.sourceforge.net>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>

Dear list readers,


Google Summer of Code 2009 projects have officially finished. All 
projects at OpenICC are brought to successful end. Two projects could 
almost be completed as planed. One could be brought to a reasonable end. 
The code will shurely find its way into the according projects or is 
already included. Even though further work is needed to get it full 
functional.

Many thanks to all three students for their great commitment during 
these months full of work and the community in giving a helpful hand. We 
obtained as well helpful feedback on email lists of device related 
projects.


Hal V. Engel, the mentor of Amit Kumar, stated the Qt4 work on LProf is 
complete and is currently in a branch waiting to be merged into LProf main 
line.  I plan on cleaning up the GSoC2009 branch over the next few weeks 
and merging it into the main line. 
This project ran ahead of schedule almost from the beginning.  In part 
this was because it was not nearly as ambitious as the Oyranos related 
projects and it had well defined goals that were fairly easy to achieve in 
the allotted time frame.  But it was also because the Amit worked hard on 
getting it done right from the beginning.

The two Oyranos related projects, mentored by me, started partitial very 
early and up to the last day many things in Oyranos itself where not 
clear. So the two students also worked on defining and discussing module 
APIs and protocols for the three new Oyranos device configuration modules. 
This contributed very much to clearing of device related concepts in 
Oyranos.

A very early start had the libraw and Sane modules from Yiannis Belias. He 
discussed many issues on te Sane email list and found a way, on how to tag 
colour relevance for Sane options. Still we have to prepare a patch to get 
this functionality included in Sane. After that it sould get ready to use.

Joe Simon's CUPS module for Oyranos had many interessting ideas 
implemented, but was due to a lack of time not finished. Anyway the 
"cupsICCProfile" PPD attribute is now understood by this module in Oyranos 
git. This allowes reading of CUPS server side root only accessible 
configurations (PPDs).
To know a way on how to tag PPD attributes for their colour relevance 
would be great. This would help to assign a local profile in Oyranos 
to a printing device with user rights like with all other device backends.

The other part of Joe's OpenICC project the KolorManager CMS control panel 
for KDE could in parts completely be substitited to rely on Oyranos for 
obtaining device information, reading profile and storing custom ones.

All this Oyranos related projects are still work in progress and in a 
pre-alpha state. Nevertheless this work helps much to advance in 
understanding many details related to the Oyranos CMS.


And last but not least Yiannis and Joe showed interesst in continuing 
their contributions to Oyranos and KM.


Kai-Uwe Behrmann
for the OpenICC GSoC 2009 team
-- 
Organiser for the OpenICC GSoC 2009 participation
http://freedesktop.org/wiki/OpenIcc/GoogleSoC2009



PS: I am cc'ing OpenPrinting as Till expressed special interesst.
