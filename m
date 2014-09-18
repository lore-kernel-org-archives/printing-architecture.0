Return-Path: <chale@redhat.com>
Message-ID: <541B3B89.7020001@redhat.com>
Date: Thu, 18 Sep 2014 16:07:37 -0400
From: Clark Hale <chale@redhat.com>
MIME-Version: 1.0
References: <1405506739.2713.12.camel@rubik>
	<671AA375-8084-4E36-A942-169664096611@apple.com>
In-Reply-To: <671AA375-8084-4E36-A942-169664096611@apple.com>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] CUPS: fail-over without load-balancing
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org

On 07/16/2014 11:07 AM, Michael Sweet wrote:
> Tim,
>
> We've had a few requests for this functionality over the years.  The current bug tracking it is:
>
>     http://www.cups.org/str.php?L1240
>
> Right now the simplest thing to do is add a backend that implements the required functionality.  Longer term we'll address STR #1240 as a manual operation that (temporarily) redirects jobs queued on one queue to another.
>
> More comments inline...
>
> On Jul 16, 2014, at 6:32 AM, Tim Waugh <twaugh at redhat.com> wrote:
>> Hello!
>>
>> I'm investigating how to implement fail-over for CUPS, but without
>> having load-balancing as a side effect.
>>
>> The usual way of implementing fail-over is simply to use classes, so
>> that printers are used round-robin fashion.
>>
>> However, I'd like to implement fail-over as follows:
>>
>> Each class will have one active printer accepting jobs, and a fail-over
>> printer not accepting jobs. When all is well, only the active printer
>> will be in use.
>>
>> When the active printer fails, a daemon will spot this and start the
>> fail-over printer accepting jobs.
> This was basically the point of another feature request (STR #2878), however after we looked at implementing such a scheme it didn't seem workable - right now the class accepts the job and any printer in the class will process the job, regardless of the state of its "printer-is-accepting-jobs" attribute.  And if you use change the class code to honor "printer-is-accepting-jobs", or use "printer-state" instead, you'll basically need printers that are dedicated to a particular class since most of the time they will be disabled/not accepting jobs.
>
> In the end we decided the only thing that made sense was to track a selected/primary printer for the class, and have the admin change this when needed.  And that is what STR #1240 is tracking, for any queue (even a class).
>
>> ...
>> Does this sound like the best approach? Is it something that would be
>> best implemented as part of CUPS, or cups-filters, or a standalone
>> project?
> Long term this should be part of CUPS.  Short term it can be implemented as a backend.  I would hesitate to patch cupsd for this since you will introduce long-term support issues when we finally do add the functionality ourselves.  At least with a backend the migration path is clear and can be staged over many releases.
Hi Michael,

Sorry for reviving an old thread, but I've been working with Tim on 
this, and we're looking for some feedback on our solution.

What we've come up with is as follows:

The "failover" backend, as we've been calling it, is configured with a 
list of IPP URI.  The first URI in the list is the de facto "primary" 
printer.

When a job is sent to the backend, it will loop through the list. For 
the first one found that's not stopped and is accepting jobs, the 
backend will exec the regular ipp backend to send the job to that queue.

This seems to work fairly well from our tests.  Does this seem like a 
reasonable way to go about implementing this?

Thanks,

-Clark Hale

