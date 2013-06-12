Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <51B83096.9090705@redhat.com>
Date: Wed, 12 Jun 2013 08:58:43 -0400
Message-id: <AEDF5B10-510A-4CD5-A603-C46F8FF68B64@apple.com>
References: <51B754BC.3040302@gmail.com> <51B83096.9090705@redhat.com>
Subject: Re: [Printing-architecture] CUPS 1.7.x packaged for Ubuntu!
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Jiri Popelka <jpopelka@redhat.com>
Cc: printing-architecture@lists.linux-foundation.org, Till Kamppeter <till.kamppeter@gmail.com>

Really, on Linux ARM you can't check for a valid va_list?

I'll apply for the next 1.7 release (coming out Real Soon Now)


On 2013-06-12, at 4:25 AM, Jiri Popelka <jpopelka@redhat.com> wrote:

> Hi
> 
> On 06/11/2013 06:47 PM, Till Kamppeter wrote:
>> I have packaged CUPS 1.7b1, a first beta version of the 1.7.x series of
>> CUPS and uploaded it to my Ubuntu PPA [1] for both Raring and Saucy,
> 
> I packaged and built it for Fedora rawhide [1].
> 
>> Note that most of the upstream web site is down currently, so I do not
>> have much more info about the new release.
> 
> There's been only one problem so far - it was failing to build on ARM, here's [2] the patch if anyone's interested .
> 
> [1] https://koji.fedoraproject.org/koji/buildinfo?buildID=419263
> [2] http://pkgs.fedoraproject.org/cgit/cups.git/plain/cups-17b1-va_list.patch
> 
> --
> Jiri
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

