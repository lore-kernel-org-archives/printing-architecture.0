Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <51EDADB4.5000807@redhat.com>
Date: Mon, 22 Jul 2013 23:03:25 -0400
Message-id: <530B2305-F3F3-4EB4-94BA-83A2974BB525@apple.com>
References: <51ED6BDA.2080206@redhat.com> <51ED6FFD.7040700@gmail.com>
	<51EDADB4.5000807@redhat.com>
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
Cc: printing-architecture@lists.linux-foundation.org, sbergman27@gmail.com, Till Kamppeter <till.kamppeter@gmail.com>

Eric,

On 2013-07-22, at 6:09 PM, Eric Sandeen <sandeen@redhat.com> wrote:
> ...
> It might be nice to have queue state (which is pretty disposable?) in a
> file separate from queue definitions (which are not disposable, and
> rarely modified?).  But then I don't know much about cups internals.


One of the things I'm looking at for future versions of cupsd is separation of configuration from state information.

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

