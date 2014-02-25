Return-Path: <cloos@jhcloos.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jhcloos.com;
	s=ore13; t=1393370487;
	bh=3xYu6pZxEG5tVqvhRcLE/Shz//BkVmgecUQPN2kYY3w=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=bDsdURd5jkEx+1kyoZzUIQZ6PdEm/PrKM4V/uvzfLjF+fxOVm1bt1iRYH22yENpXO
	SObzTeXkwW1a4gXQXQY5vv9bgcURQ63I/C3tEjgz8nlQjjkWgX2cD4htlGs+2PdBcD
	XMe5ZcqAx23Y25wYHWjBW1ydUkBnRZPVulpko5FBl3w==
From: James Cloos <cloos@jhcloos.com>
In-Reply-To: <0B81606D-48D0-451E-9575-C5ECF92704D0@apple.com> (Michael Sweet's
	message of "Thu, 11 Jul 2013 09:11:02 -0400")
References: <51DC8343.4020104@gmail.com>
	<8CA7D32C-A551-482E-9F26-9C1909D74736@apple.com>
	<843B55ED-9D7F-4ECD-B50B-272848E9649B@apple.com>
	<51DD7DB2.4070808@gmail.com>
	<FF2054C7-A4B4-4709-8267-D6D202DC0BCE@apple.com>
	<1373532534.14725.3.camel@rubik>
	<0B81606D-48D0-451E-9575-C5ECF92704D0@apple.com>
Date: Tue, 25 Feb 2014 18:00:37 -0500
Message-ID: <m37g8iztjl.fsf@carbon.jhcloos.org>
MIME-Version: 1.0
Content-Type: text/plain
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
To: Michael Sweet <msweet@apple.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Till Kamppeter <till.kamppeter@gmail.com>

>>>>> "MS" == Michael Sweet <msweet@apple.com> writes:

MS> If you know of some GIT-fu that will allow me to push the SVN history
MS> from the old repository onto the new one (or start with easysw.com's
MS> SVN repo and then overlay and track new changes from the apple.com SVN
MS> repo) then I'll be happy to rebuild the GIT mirror.

It is probably doable.  Publishing a git repo with the the old data in
parallel with the current repo would help get the surgery planned.

Also, it is possible to update www.cups.org to support git's smart
git/http protocol?  (Cf the man page for git-http-backend.  It runs
as a CGI.)  It would improve clones and pulls, as well as provide
users with progress info akin to that seem when using git:// URIs.

-JimC
--
James Cloos <cloos@jhcloos.com>         OpenPGP: 1024D/ED7DAEA6
