Date: Thu, 6 Jan 2011 11:33:57 +0100 (MET)
From: Kai-Uwe Behrmann <ku.b@gmx.de>
In-Reply-To: <1294309133.2824.23.camel@worm.elk>
Message-ID: <alpine.LNX.2.00.1101061119110.6846@roma.rasena>
References: <alpine.LNX.2.00.1101061000050.6846@roma.rasena>
	<1294306085.2824.3.camel@worm.elk>
	<alpine.LNX.2.00.1101061031470.6846@roma.rasena>
	<1294307620.2824.9.camel@worm.elk>
	<alpine.LNX.2.00.1101061058270.6846@roma.rasena>
	<1294309133.2824.23.camel@worm.elk>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
Subject: Re: [Printing-architecture] Any news regarding colour management?
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Tim Waugh <twaugh@redhat.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>

Am 06.01.11, 10:18 -0000 schrieb Tim Waugh:
> On Thu, 2011-01-06 at 11:10 +0100, Kai-Uwe Behrmann wrote:
>> If the PPD shall not be changed, for what needs CUPS to interact
>> with a external daemon? It is already now possible to fetch the PPD from
>> CUPS. We do this in the CUPS ICC module for Oyranos for instance.
>>
>> How shall the CMS and CUPS interact in your plans?
>
> The pstoraster print filter will retrieve the correct ICC file and tell
> ghostscript to use it.

Indeed, that will be very useful. Can you imagine to have that in a 
generic way, so more CMS's can utilise that capability?

The reason I ask is that Oyranos CMS provides already a lot for 
configuring and colour managing the desktop and devices. Its going to be 
integrated into KDE, can run standalone with Xorg or in small devices. So 
the Oyranos project would be interessted to hook as well into CUPS and 
tell pstoraster, which ICC profile to use for printing.

>>>> Do you plan or write a generic C interface any system or independent
>>>> application can have access to?
>>>
>>> Yes, colord already has a D-Bus interface.
>>
>> DBUS is not a C interface. As well many applications will reject to use
>> D-Bus as its is overkill. I would not consider it an appropriate
>> replacement for a generic C interface.
>
> Well, yes, you could write it as a proper asynchronous C interface, but
> you would have to reinvent a lot of stuff.  Then if you want to run it
> from a shell script or from some other language, you'd need to write a
> command line front-end or language bindings.
>
> But with D-Bus, it is already callable from C, Python, the shell, etc,
> synchronously or asynchronously.

I have nothing against D-Bus as is. But is it relly needed in that 
context? I guess not. A simple convention can reach the same effect and 
remains open for a heterogenous environment.


The task is to
* create a request with meta information (e.g. PPD) to get ICC
* send and wait for an answere from command line tool, C interface ...
* get the answere and translate it to a ICC profile
* use the ICC profile with ghostscript


kind regards
Kai-Uwe Behrmann
-- 
developing for colour management 
www.behrmann.name + www.oyranos.org

