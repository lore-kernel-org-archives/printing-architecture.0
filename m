Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <1373532534.14725.3.camel@rubik>
Date: Thu, 11 Jul 2013 09:11:02 -0400
Message-id: <0B81606D-48D0-451E-9575-C5ECF92704D0@apple.com>
References: <51DC8343.4020104@gmail.com>
	<8CA7D32C-A551-482E-9F26-9C1909D74736@apple.com>
	<843B55ED-9D7F-4ECD-B50B-272848E9649B@apple.com>
	<51DD7DB2.4070808@gmail.com>
	<FF2054C7-A4B4-4709-8267-D6D202DC0BCE@apple.com>
	<1373532534.14725.3.camel@rubik>
Subject: Re: [Printing-architecture] Options in /etc/cups/printers.conf
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Tim Waugh <twaugh@redhat.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Till Kamppeter <till.kamppeter@gmail.com>

Tim,

On 2013-07-11, at 4:48 AM, Tim Waugh <twaugh@redhat.com> wrote:

> On Wed, 2013-07-10 at 11:47 -0400, Michael Sweet wrote: 
>> Also, I now have an official GIT mirror of live SVN up at:
>> 
>>    http://www.cups.org/cups.git
>> 
>> I will be posting information on the download page shortly...
> 
> This only has history starting from May this year.  Is there any plan to
> have a single git repository containing all of the SVN history, like the
> one I have at http://twaugh.fedorapeople.org/cups-avahi.git?


Unfortunately, I was unable to coerce GIT-SVN into pulling from a single repository.  The CUPS SVN repository has been split since 2002 (easysw.com and apple.com), and so what I ended up doing is pulling all of the snapshots and releases from easysw.com and the commits from apple.com since late April/early May.

If you know of some GIT-fu that will allow me to push the SVN history from the old repository onto the new one (or start with easysw.com's SVN repo and then overlay and track new changes from the apple.com SVN repo) then I'll be happy to rebuild the GIT mirror.  But going forward everything is setup to mirror changes from the internal apple.com SVN repository to the GIT repository on cups.org...

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

