Message-ID: <480F9127.5090308@gmail.com>
Date: Wed, 23 Apr 2008 21:42:31 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <2F7D63A21DB2C74EB8EB8C09AF667DB0152D3819@eitc220.eitc.epson.com>
	<480F68C5.4070508@gmail.com> <20080423180848.GA19456@suse.de>
In-Reply-To: <20080423180848.GA19456@suse.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] LF Collaboration Summit Open Printing
 Minutes from Glen Petrie
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Klaus Singvogel <kssingvo@suse.de>
Cc: "Petrie, Glen" <glen.petrie@eitc.epson.com>, printing-architecture@lists.linux-foundation.org

Klaus Singvogel wrote:
> Till Kamppeter wrote:
> [...]
>>> --- Glen is worried of extensibility of the dialog for manufacture.
>>>
>> Manufacturer extensions cannot be done by means of executable code, as 
>> printer drivers run on the server and server and client can be different 
>> architectures. Manufacturer extensions can only be done by PPD options, 
>> the custom options of CUPS allow extended data formats.
> [...]
> 
> I agree.
> 
> But want to point out that manufacturers should also keep in mind,
> that there is no _our_ nor any _single_ printer on _the_ only USB
> port.
>

See for example the Brother drivers, you cannot install two of them on 
the same machine (independent of the connection type), due to common 
files. Bad for good customers of Brother, who want to use more than one 
Brother printer. I have found a volunteer and mentored him through 
making these drivers distro friendly. It was a HUGE effort for him to 
make 14 simultaneously installable Ubuntu packages out of ~200 .deb 
packages provided by Brother:

https://bugs.launchpad.net/bugs/25966
https://bugs.launchpad.net/bugs/219509

This made me adding several new items to the driver design guidelines:

http://www.linux-foundation.org/en/OpenPrinting/WritingAndPackagingPrinterDrivers
http://www.linux-foundation.org/en/OpenPrinting/WritingAndPackagingPrinterDrivers#What_to_do_and_what_not_to_do

> Means: LSB team should remember manufacturers regularly to avoid using
> a direct communication to "/dev/usb/lp*" (or similar) to a printer in
> their drivers.
>

Mike Sweet tries to move distros and driver developers away from this 
bad behavior by not supporting URIs like usb:///dev/usb/lp0 with his 
"usb" CUPS backend.

But anyway, good point you mention here. I will add it to my guidelines.

    Till
