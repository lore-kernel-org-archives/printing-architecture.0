Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <51F2F05E.3000207@redhat.com>
Date: Fri, 26 Jul 2013 18:10:24 -0400
Message-id: <EF71AD3C-FAE9-4B96-BB61-2530227E1889@apple.com>
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
	<8F0DB4FE-3641-4495-A918-5A50918F158D@apple.com>
	<51F2F05E.3000207@redhat.com>
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
To: Eric Sandeen <sandeen@redhat.com>
Cc: Steve Bergman <sbergman27@gmail.com>, "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Eric,

On Jul 26, 2013, at 5:55 PM, Eric Sandeen <sandeen@redhat.com> wrote:
> ...
> Otherwise, this seems good.  The icing on the cake would be to fsync the parent dir after the renames are done...


Yeah, but then we start getting into the really-OS-and-filesystem-specific code. I'm happy to incorporate Linux-specific code if you provide it, but I know for sure that a simple open+fsync+close of directories doesn't work in general - the only portable way I know of is sync(2), which is a sledgehammer...

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

