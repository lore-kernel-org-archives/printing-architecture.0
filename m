Date: Thu, 6 Jan 2011 11:10:18 +0100 (MET)
From: Kai-Uwe Behrmann <ku.b@gmx.de>
In-Reply-To: <1294307620.2824.9.camel@worm.elk>
Message-ID: <alpine.LNX.2.00.1101061058270.6846@roma.rasena>
References: <alpine.LNX.2.00.1101061000050.6846@roma.rasena>
	<1294306085.2824.3.camel@worm.elk>
	<alpine.LNX.2.00.1101061031470.6846@roma.rasena>
	<1294307620.2824.9.camel@worm.elk>
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

Am 06.01.11, 09:53 -0000 schrieb Tim Waugh:
> On Thu, 2011-01-06 at 10:33 +0100, Kai-Uwe Behrmann wrote:
>> What are you doing inside CUPS?
>
> CUPS needs to register ICC profiles with colord for each printer queue,
> so that colord can associate ICC files with them.  This way a user can
> choose an arbitrary profile without having to modify the PPD file.

If the PPD shall not be changed, for what needs CUPS to interact 
with a external daemon? It is already now possible to fetch the PPD from 
CUPS. We do this in the CUPS ICC module for Oyranos for instance.

How shall the CMS and CUPS interact in your plans?

>> Do you plan or write a generic C interface any system or independent
>> application can have access to?
>
> Yes, colord already has a D-Bus interface.

DBUS is not a C interface. As well many applications will reject to use 
D-Bus as its is overkill. I would not consider it an appropriate 
replacement for a generic C interface.


kind regards
Kai-Uwe Behrmann
-- 
developing for colour management 
www.behrmann.name + www.oyranos.org

