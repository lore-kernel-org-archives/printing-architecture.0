Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <51ED6CC4.1040501@redhat.com>
Date: Mon, 22 Jul 2013 23:00:33 -0400
Message-id: <0C413B5E-6225-4CF7-BF17-8E164B520D7E@apple.com>
References: <51ED6BDA.2080206@redhat.com> <51ED6CC4.1040501@redhat.com>
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
Cc: printing-architecture@lists.linux-foundation.org, sbergman27@gmail.com

Eric,

On 2013-07-22, at 1:32 PM, Eric Sandeen <sandeen@redhat.com> wrote:
> ..
> Any time an application does buffered IO, and requires it to be there even if we crash, it needs to take steps to persist that data on disk.  See also http://lwn.net/Articles/457667/

The problem with fsync() is that it is a blocking API.  Blocking cupsd (single-threaded daemon process) is *not* a good idea.

Future versions of cupsd will be multi-threaded where we can look at calling fsync or fcntl(fd, F_FULLSYNC), but adding fsync calls now will just cause more problems that it will solve.

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

