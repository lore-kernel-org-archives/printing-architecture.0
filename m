Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <52A0C52B.5060707@gmail.com>
Date: Thu, 05 Dec 2013 13:48:42 -0500
Message-id: <E3EE29B3-EDB7-4452-8803-9D150FBB3554@apple.com>
References: <52A0C52B.5060707@gmail.com>
Subject: Re: [Printing-architecture] cupsd crashes when Avahi is used
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Till,

Based on the bug report, it sounds like this is an internal bug of Avahi.

The fact that a production build of a library is forcing an assert is troubling - it doesn't allow the caller to perform any recovery and IMHO makes Avahi totally unsuited to production use at all.

The fix on the CUPS side is easy - bundle mDNSResponder (Apache license) with Ubuntu and build CUPS against it.  For Avahi, we'll need to get someone from Avahi to look at the issue...


On Dec 5, 2013, at 1:25 PM, Till Kamppeter <till.kamppeter@gmail.com> wrote:

> Hi,
> 
> at Ubuntu many users (> 2000) hit the following bug:
> 
> https://bugs.launchpad.net/ubuntu/+source/avahi/+bug/1131854
> 
> It is an assert failure in a function of the Avahi library which makes
> the CUPS daemon abort, naturally only if CUPS uses Avahi which is the
> case in Ubuntu.
> 
> The Ubuntu patches on CUPS do not change anything in the Avahi support,
> so the problem most probably also occurs with other distributions.
> 
> Anyone has already observed this problem? Can it be a CUPS bug? If it is
> an Avahi bug, is it already known?
> 
>   Till

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

