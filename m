Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
References: <51ED6BDA.2080206@redhat.com> <51ED6CC4.1040501@redhat.com>
	<0C413B5E-6225-4CF7-BF17-8E164B520D7E@apple.com>
	<1374570518.4832.2.camel@rubik>
	<C01D5828-4CCD-4A70-8549-B976AE80DF4C@apple.com>
	<51EE90D7.9070607@gmail.com>
	<AB1EE3DA-E24E-489D-B1A8-FED07237D651@apple.com>
	<51EEBF83.2090006@gmail.com>
	<14E6A268-7B57-4F95-9384-647E0A8D3C47@apple.com>
	<51EECDF8.9070209@gmail.com>
	<000AC9EF-2754-4A7D-805B-4832B50EB57A@apple.com>
	<51EEECD8.4030002@gmail.com>
In-reply-to: <51EEECD8.4030002@gmail.com>
Message-id: <ABA49FCD-8F11-4375-899E-1A310A343127@apple.com>
From: Michael R Sweet <msweet@apple.com>
Date: Tue, 23 Jul 2013 19:04:12 -0400
Subject: Re: [Printing-architecture] printers.conf frequently gets truncated
 to zero length after unclean shutdowns
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Steve Bergman <sbergman27@gmail.com>, Eric Sandeen <sandeen@redhat.com>

We might use the .O file but never the .N file - it is likely incomplete.

Sent from my iPhone

On 2013-07-23, at 4:51 PM, Till Kamppeter <till.kamppeter@gmail.com> wrote:

> As a measure of automatic recovery one could perhaps let the startup
> script of CUPS check whether printers.conf is zero length and if so,
> copy printers.conf.O to printers.conf. And if printers.conf.N exists and
> is of non-zero length one could copy printers.conf.N to printers.conf
> and only after that start the scheduler.
> 
>   Till
> 
> On 07/23/2013 09:01 PM, Michael Sweet wrote:
>> I can make sure that the changes apply cleanly to 1.6.x and are included in the final 1.6.x release (1.6.4).  Beyond that, yes, you'll need to coordinate with your distro of choice or edit and compile yourself.
>> 
>> 
>> On 2013-07-23, at 2:39 PM, Steve Bergman <sbergman27@gmail.com> wrote:
>> 
>>> On 07/23/2013 01:16 PM, Michael Sweet wrote:
>>>> In this case the unrealistic expectation is that if you pull the plug on a running system that you won't lose any data.  Systems that offer that level of assurance are designed accordingly and generally include some form of backup power that will allow pending writes to complete.
>>> 
>>> That flies in the face of the 12 years of experience I have with the same workloads running under ext3. And running under ext4/delalloc or xfs, cups should be able to do even better for both performance and reliability if it does things right.
>>> 
>>> But that's all just spilled milk over the dam now. Most all current Unix/Linux filesystems now require fsync in order to provide sane integrity guarantees. That's just a fact of life that we've all got to live with. If offering a fix in the next major CUPS release is the best you're willing to do, then it is, at least, better than nothing at all. Thank you, at least, for that much.
>>> 
>>> This moves the focus to convincing the CUPS package maintainers of existing distros to patch their pre-1.7 versions with the necessary functionality. Which is kind of where I started. So back to the RH Bugzilla thread...
>>> 
>>> -Steve
>> 
>> _________________________________________________________
>> Michael Sweet, Senior Printing System Engineer, PWG Chair
>> 
>> _______________________________________________
>> Printing-architecture mailing list
>> Printing-architecture@lists.linux-foundation.org
>> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
> 
