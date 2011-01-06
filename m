Date: Thu, 6 Jan 2011 12:44:36 +0100 (MET)
From: Kai-Uwe Behrmann <ku.b@gmx.de>
In-Reply-To: <1294311302.2824.31.camel@worm.elk>
Message-ID: <alpine.LNX.2.00.1101061228270.6846@roma.rasena>
References: <alpine.LNX.2.00.1101061000050.6846@roma.rasena>
	<1294306085.2824.3.camel@worm.elk>
	<alpine.LNX.2.00.1101061031470.6846@roma.rasena>
	<1294307620.2824.9.camel@worm.elk>
	<alpine.LNX.2.00.1101061058270.6846@roma.rasena>
	<1294309133.2824.23.camel@worm.elk>
	<alpine.LNX.2.00.1101061119110.6846@roma.rasena>
	<1294311302.2824.31.camel@worm.elk>
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

Am 06.01.11, 10:55 -0000 schrieb Tim Waugh:
> On Thu, 2011-01-06 at 11:33 +0100, Kai-Uwe Behrmann wrote:
>> Indeed, that will be very useful. Can you imagine to have that in a
>> generic way, so more CMS's can utilise that capability?
>
> I think it's already pretty generic actually -- I don't think there's
> anything in colord that ties it to any scheme in particular.  Really
> it's just a small daemon to associate printer queues with ICC files.  I
> imagine (but don't know for sure) that Oyranos CMS could add a small
> hook into colord and that would be all that is required.

Oyranos CMS had developed a very robust approach to select ICC profiles 
for all sorts of devices and drivers. This approach is flexible 
and integrates very well with existing ICC standards.

I see no signs that this will go into colord. So using colord is not an 
option for Oyranos CMS. As users will fall short compared to generaly 
careful, flexible and well integrated information handling in Oyranos.

>> The reason I ask is that Oyranos CMS provides already a lot for
>> configuring and colour managing the desktop and devices. Its going to be
>> integrated into KDE, can run standalone with Xorg or in small devices. So
>> the Oyranos project would be interessted to hook as well into CUPS and
>> tell pstoraster, which ICC profile to use for printing.
>
> Yes, this is similar to how gnome-color-manager works I believe.
>
>> I have nothing against D-Bus as is. But is it relly needed in that
>> context? I guess not. A simple convention can reach the same effect and
>> remains open for a heterogenous environment.
>
> The associations between devices, profiles and ICC files are kept in a
> running daemon which starts on first use, and this is managed by D-Bus.
> I'm sure it could be done another way, but again it just seems the most
> convenient already-implemented way.

It is not convenient to have a new unneeded dependency, when it can be 
done likewise without. The Posix shell is good and enough. D-Bus 
would be a bloated requirement for that simple task.

Please do not confuse this task with typical desktop systems. CUPS and 
Ghostscript are no desktop only software. The printing system needs to run 
on a wide variety of Linux configurations, where the desktop is only a 
small part of.

> Is this sort of system really likely to be needed on a system without
> D-Bus installed?

D-Bus a hard requirement on embedded systems and for servers?

>> The task is to
>> * create a request with meta information (e.g. PPD) to get ICC
>> * send and wait for an answere from command line tool, C interface ...
>> * get the answere and translate it to a ICC profile
>> * use the ICC profile with ghostscript
>
> That's part of it.  The other part is for the CUPS scheduler to register
> colour profiles and ICC files with colord for each queue on start-up.

Querying ICC profile, which are configured in a CUPS queue, is already 
solved in Oyranos. The CUPS C library calls are fine for that.

> Tim.
> */

kind regards
Kai-Uwe Behrmann
-- 
developing for colour management 
www.behrmann.name + www.oyranos.org

