Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=jZ2DpZVCqUDggBxrFzICo/UV3vWQwr9J3nWKu3kIHG8=;
	b=g3dsdNVtVuY69Q/YYipQBOjO7cGzjIoX/wYMYKj7MdxBEU+AFYzrtH9Swmfq7hNjJj
	WrYTCWuhQe0oiQ0UrfI2BKLo4uvXJS7ImMPpUF3YCrPqdgxKqQBZpjUuUwTBCS9K5saX
	s4bi0qeCGkYS0jz8/g60R3ssuIgbfHvApQ4lLTcQPEZo4iZgwLZXJYQM649XWIhB87S6
	GZikgVdfgocelqkwfn/z0Kn9tbox3v/uKkdrYG/5i7nVJoekbH/zdVpONqgDJ0sqpPLn
	cp7MGP6340am3mubVBiCHNNn2+/ZiTteFUaj5d7ZyK3ang4gLjd4o7K7Rq8T2X1wNDKl
	89AA==
Message-ID: <527AA2C9.4070709@gmail.com>
Date: Wed, 06 Nov 2013 21:12:57 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <1383759129.10582.11.camel@rubik>
In-Reply-To: <1383759129.10582.11.camel@rubik>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [patch] cups-filters 1.0.41: gstoraster
 needs dbus
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Tim Waugh <twaugh@redhat.com>, Open Printing <printing-architecture@lists.linux-foundation.org>

Thank you for the patch, I have found the problem independently today
and have fixed it (in rev. 7121).

By the way, today I have moved foomatic-rip (the one with obsolete
spooler support removed in this year's GSoC) into cups-filters. The
foomatic-filters package is obsolete now.

   Till

On 11/06/2013 06:32 PM, Tim Waugh wrote:
> This patch fixes gstoraster, which uses dbus for colord support.
> Previously, it was being built without dbus and so colord support was
> missing.
> 
> Original bug report:
>   https://bugzilla.redhat.com/show_bug.cgi?id=1026928
> 
> Tim.
> */
> 
> 
> 
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
> 

