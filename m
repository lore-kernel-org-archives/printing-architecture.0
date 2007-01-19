Return-Path: <till.kamppeter@gmail.com>
Message-ID: <45B12176.9000004@gmail.com>
Date: Fri, 19 Jan 2007 19:52:22 +0000
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <45B11475.4080704@gmail.com>
	<d75d8d530701191131o5b0ebdb9k5933705633cd1e49@mail.gmail.com>
In-Reply-To: <d75d8d530701191131o5b0ebdb9k5933705633cd1e49@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] FHS extension and CUPS
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: Ian Murdock <imurdock@imurdock.com>
Cc: printing-architecture@lists.freestandards.org, Dan Kohn <dan@dankohn.com>, lsb-discuss <lsb-discuss@lists.freestandards.org>

Leaving out the precedence rules one needs really only symlinks in 
/usr/share/cups/model to make CUPS searching the new directories.

The precedence rules should be implemented by the order how the PPD 
directories are searched for (as the drivers itself are tied to their 
PPD via the absolute path in the PPD). The search should be started in 
/usr/local/share/ppd/, followed by /opt/share/ppd, and after that 
/usr/share/ppd. Probaly one can reach this by appropriate naming of the 
symlinks. I will try that out later. If this works, we can introduce the 
new directories by only adding the symlinks which should be low-impact 
enough for the enterprise distros.

Instalation of new drivers will not replace drivers of existing queues 
(if the original driver is not overwritten by the new one). The queue 
has always be modified manually (but the FHS extension does not talk 
about auto-update of existing queues).

    Till



Ian Murdock wrote:
> I'm appending a conversation I had with Tim Waugh of Red Hat about this
> (posted with his permission). In short, unless it's a very trivial change
> to make the current RHEL 5, SLE 10, etc. compliant with the printer driver
> standard, it is not reasonable to expect this to be in LSB 3.2 (it was
> my understanding that it would be trivial, as you'll read in the included
> exchange). It should go without saying that it's not reasonable
> to expect them to uplift to something that hasn't even been released yet.
> 
> In short, the only way this will make it into LSB 3.2 is if it's trivial
> to implement, i.e., a change to the CUPS configuration or the creation of
> symlinks. If it takes more than that, this will have to wait for LSB 4.0.
> 
> -ian
> 
> 
> Forwarded Conversation
> Subject: Location of printer drivers
> ------------------------
> 
> From: Tim Waugh <twaugh@redhat.com>
> To: Ian Murdock <imurdock@imurdock.com>
> Date: Mon, Jan 15, 2007 at 11:25 AM
> Attachments: signature.asc
> 
> Hi Ian,
> 
> I just read through the proposed FHS extension, and it doesn't look
> workable to me:
> 
>        b. The contents of the driver directories are entirely
>        determined by the supplier.  The path to a driver is found
>        by using an absolute path in the ppd file.
> ...
> 5. Precedence Rules
> ...
>    Drivers
>      Admin :               /usr/local/lib(64)/printdriver Highest
>      Third Party Vendor :  /opt/<supplier>
>      Distro :              /usr/lib(64)/printdriver       Lowest
> 
> How can there be precedence rules when the absolute paths are used in
> the PPD files?  Or do you intend for CUPS to re-write them in memory and
> implement the precedence rules itself? (If so: UGH!)
> 
> Tim.
> */
> 
> --------
> From: Ian Murdock <imurdock@imurdock.com>
> To: Tim Waugh <twaugh@redhat.com>
> Date: Mon, Jan 15, 2007 at 11:35 AM
> 
> Hi Tim,
> 
> Hmm. Good question. I'll pass this along to the folks who wrote tihs.
> 
> Do you have suggestions on what the standard should say? I'm
> much less concerned with what the behavior is than there be
> some consistent behavior that we can rely on across distros.
> 
> Thanks,
> 
> -ian
> 
> --------
> From: Tim Waugh <twaugh@redhat.com>
> To: Ian Murdock <imurdock@imurdock.com>
> Date: Mon, Jan 15, 2007 at 11:46 AM
> Attachments: signature.asc
> 
> On Mon, 2007-01-15 at 11:35 -0500, Ian Murdock wrote:
>> Do you have suggestions on what the standard should say? I'm
>> much less concerned with what the behavior is than there be
>> some consistent behavior that we can rely on across distros.
> 
> I would suggest that there is no mechanism for magically 'over-riding'
> already-installed drivers at all, i.e. no precedence rules at all for
> drivers.
> 
> Tim.
> */
> 
> --------
> From: Ian Murdock <imurdock@imurdock.com>
> To: Tim Waugh <twaugh@redhat.com>
> Date: Tue, Jan 16, 2007 at 10:52 AM
> 
> Ok, I've passed that along too.
> 
> Assuming we can come up with something that's workable, is this something
> that could be a candidate for RHEL 5 Update 1? That's the key issue for me,
> because unless it is, it's not a candidate for LSB 3.2, and without
> it, we'll have difficulty moving forward on some
> of our other printing projects (the shared driver repository, etc.).
> 
> Thanks,
> 
> -ian
> 
> --------
> From: Tim Waugh <twaugh@redhat.com>
> To: Ian Murdock <imurdock@imurdock.com>
> Date: Wed, Jan 17, 2007 at 10:18 AM
> Attachments: signature.asc
> 
> On Tue, 2007-01-16 at 10:52 -0500, Ian Murdock wrote:
>> Assuming we can come up with something that's workable, is this something
>> that could be a candidate for RHEL 5 Update 1?
> 
> Extremely unlikely.  The spec isn't workable *now*, and changes like
> that can't just get thrown into Red Hat Enterprise Linux.  It's not even
> in Fedora yet.
> 
> Let's make sure everyone agrees on the spec, and how to implement it,
> and put the implementations through community testing first.
> 
> Tim.
> */
> 
> --------
> From: Ian Murdock <imurdock@imurdock.com>
> To: Tim Waugh <twaugh@redhat.com>
> Date: Wed, Jan 17, 2007 at 10:35 AM
> 
> Right, but we're talking about an extremely minor change here, ostensibly
> just agreeing on a set of paths, with big upside if we can manage to do
> that. And it's entirely additive--you don't have to change your current
> paths, just append the common path to the configuration file. Or am I
> missing something? Granted, I'm no doubt oversimplifying, but I
> don't think there's huge risk here, whereas there could be big reward.
> 
> If it's more complicated than that, then I do agree we're pushing a
> bit hard here. I'm hoping I'm right though. I explicitly asked
> this be done in such a way that it would be as
> minor a change as possible precisely so we could move quickly.
> 
> -ian
> 
> --------
> From: Tim Waugh <twaugh@redhat.com>
> To: Ian Murdock <imurdock@imurdock.com>
> Date: Wed, Jan 17, 2007 at 10:40 AM
> Attachments: signature.asc
> 
> On Wed, 2007-01-17 at 10:35 -0500, Ian Murdock wrote:
>> Right, but we're talking about an extremely minor change here,
> 
> No, it's not.  It means changing the method by which the "appropriate"
> PPD for a printer is decided.  That means changing (a) CUPS and (b)
> system-config-printer, both in non-trivial ways.
> 
> Otherwise what's the PPD search path for?
> 
> Tim.
> */
> 
> --------
> From: Ian Murdock <imurdock@imurdock.com>
> To: Tim Waugh <twaugh@redhat.com>
> Date: Wed, Jan 17, 2007 at 10:49 AM
> 
> Ok. I had assumed the driver search path worked like other paths, and
> that the main problem was getting CUPS etc. to see that a new driver had
> been installed. In other words, different distros put the drivers in
> different locations in the file system, so the main job that needed to be
> done was to settle on a common location, and from there, it was a
> matter of configuring CUPS to look in that common location.
> Again, I'm no expert here, so I was probably just oversimplifying.
> 
> Thanks for the feedback--I'll pass it along to the OpenPrinting group
> and will keep you posted on what they come up with.
> 
> P.S. - Do you mind if I forward this exchange to a public mailing list,
> or would you rather I summarize?
> 
> -ian
> 
> --------
> From: Tim Waugh <twaugh@redhat.com>
> To: Ian Murdock <imurdock@imurdock.com>
> Date: Wed, Jan 17, 2007 at 10:54 AM
> Attachments: signature.asc
> 
> On Wed, 2007-01-17 at 10:49 -0500, Ian Murdock wrote:
>> Ok. I had assumed the driver search path worked like other paths, and
>> that the main problem was getting CUPS etc. to see that a new driver had
>> been installed.
> 
> As I read it, the idea is to allow the sysadmin to "over-ride" the
> system-provided PPDs, which is a different prospect and needs special
> handling in all the PPD-finding tools.
> 
>>  In other words, different distros put the drivers in
>> different locations in the file system, so the main job that needed to be
>> done was to settle on a common location, and from there, it was a
>> matter of configuring CUPS to look in that common location.
>> Again, I'm no expert here, so I was probably just oversimplifying.
> 
> That part -- the common location part -- makes sense.  But even
> something as simple as tweaking CUPS to look in a different directory
> from /usr/share/cups/model is not entirely trivial.  It would be ideal
> if the only change needed is to add a symbolic link
> in /usr/share/cups/model to point to the common location, which is
> provided by "the system" as a physical directory.
> 
>> P.S. - Do you mind if I forward this exchange to a public mailing list,
>> or would you rather I summarize?
> 
> Forwarding the exchange is fine.
> 
> Thanks,
> Tim.
> */
> 
> --------
> 

