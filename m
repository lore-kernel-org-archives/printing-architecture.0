Message-ID: <47EC1E74.50409@gmail.com>
Date: Thu, 27 Mar 2008 23:23:48 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <47EA99E8.8020007@licquia.org> <47EAC155.4040206@gmail.com>
	<Pine.LNX.4.64.0803271421320.19740@nelson.suse.de>
In-Reply-To: <Pine.LNX.4.64.0803271421320.19740@nelson.suse.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [lsb-discuss] LSB 4.0 and printing
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Johannes Meixner <jsmeix@suse.de>
Cc: printing-architecture@lists.linux-foundation.org, lsb-discuss@lists.linux-foundation.org

Johannes Meixner wrote:
> Hello,
> 
> On Mar 26 22:34 Till Kamppeter wrote (shortened):
>> What can be added without problems is SANE
> 
> "SANE Standard Version 1.0" (the so called "SANE1")
> to be precise, see
> http://www.sane-project.org/docs.html
> 
> I would very much appreciate it if SANE1 was LSB standard.
> 
> As Till already mentioned:
> Without a scanning standard in LSB (which is compatible
> with the LSB printing standard), there is just no support
> for all-in-one devices in LSB.
> 

Having scanning covered by the LSB standard will not only help to get 
printer manufacturers fully support their multi-function devices, it 
will also help scanner manufacturers to ship Linux drivers for their 
devices.

> But I should mention that there is since a long time
> the discussion on sane-devel@lists.alioth.debian.org
> how to move forward with SANE.
> 

There was again a longer posting about SANE2 today on the SANE mailing 
liat. See below.

> Unfortunately - as far as I understand it - the planned
> SANE2 API would not be backward-compatible with SANE1
> which is a main reason - as far as I understand it - why
> there is no real progress how to move forward with SANE.
> 

We must standardize on SANE1, as this is in the distros. SANE2 will for 
sure take at least a year until it comes out when work on it would start 
today. And it will take two more years until it will make it into all 
enterprise distros.

> Perhaps the experience of LSB people with API upgrades
> could even help the SANE developers to find a solution
> how to move forward with SANE.

With a good planning one can perhaps even reach backward compatibility. 
Or one could write a piece of glue code to plug SANE1 drivers into SANE2.

    Till

--------------------------------------------------------------------------

Subject: [sane-devel] SANE2 standard completion
From: stef.dev@free.fr
To: sane-devel@lists.alioth.debian.org

	Hello,

	before any work can start on SANE 2, the current proposal has to be 
completed.

	The major change is the image data format. SANE 2 will be able to 
handle new formats easily (which matches the current needs, especially 
regarding ir
  channel). There will be 2 major image format, one pixel oriented and 
the other will give images as a mime attachment. There is also standard 
part for button handling.

	Here is a summary of the differences between SANE 1 and SANE 2 proposal 
standards:

structures changes:
	- the SANE_Device struct has more fields, giving contact information 
about the devices in case of bug, and the ability to send device 
capability flags
	- the SANE_Parameters changes to suit the image format improvement. It 
also gives new informations such as a proposed filename and X/Y dpi.
	
options changes:
	- capability hidden and allways settable added
	- more commonly used options are now part of the standard

SANE operations changes:
	- sane_open has a SANE_Device ** parameter
	- scanner's button handling

newtwork operation:
	The Network Protocol chapter seems to lag behind the SANE 1 chapter, 
and the SANE_NET_OPEN call needs to be updated to reflect sane_open 
evolution.

		The current proposal is in good shape, and the change regarding image 
format seems to suit the current need for new formats. Converting 
current backends
to SANE2 doesn't seem that difficult.

	But before starting, there are some things I'd like to see in the new 
standard:
	- the current code flow is
	sane_init
		sane_open
			sane_start
				sane_read
			sane_cancel
		sane_close
	sane_exit
	
		rather than calling sane_cancel at the end of scan, I'd like to have a 
sane_end function. Leaving the use of sane_cancel for canceling the scan 
like it allready does. This new function would do about the same, but 
code flow would be cleaner and easier to understand:
	sane_init
		sane_open
			sane_start
				sane_read
			sane_end
		sane_close
	sane_exit
	
	- the proposed button handling would surely be better if we create 
sane_lock_buttons(), sane_update_buttons() and sane_unlock() buttons, 
instead
of doing this with control options.
	
	- we should also add something about panels. Would some control options 
be enough,  or do we also need some lock/update/unlock behavior ?
	
	- there are some issues about backends configuration. In order to be 
detected, some backends need their  configuration files tweaked. I think 
that
having well-known configuration options would improve  the situation and 
would
also let us have a common way of accessing configuration parameters across
backends.
	
	- do we want to improve warmup handling ? Currently there is no 
feedback when warming-up is going on, which is sometime confusing, we 
can have the feeling that nothing is happening. Do we want a 
sane_warm_up() or a
SANE_STATUS_WARMING_UP would be enough ?
	
	There are other points that I feel they could be improved, but could be 
done as we develop SANE2:
	- we need a sane type for scanner buttons. Either we rename the 
SANE_TYPE_BUTTON to SANE_TYPE_SOFT_BUTTON and use SANE_TYPE_BUTTON for
physical buttons, or we create a SANE_TYPE_HARD_BUTTON. So that a 
frontend can easily detect hardware buttons. There should be a list of 
well-known buttons
description to use when  possible.
	- a SANE_TYPE_PANEL would be handy
	- since there are well-know options there should be well-known groups, 
and the SANE_CAP of these options should also be given.
	- a SANE_STATUS_LOCKED could be added to handle the case where the 
hardware lock of a scanner has been left.
	
Regards,
	Stef
	
		

-- sane-devel mailing list: sane-devel@lists.alioth.debian.org 
http://lists.alioth.debian.org/mailman/listinfo/sane-devel Unsubscribe: 
Send mail with subject "unsubscribe your_password" to 
sane-devel-request@lists.alioth.debian.org

