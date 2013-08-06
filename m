Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <1375791638.6320.8.camel@rubik>
Date: Tue, 06 Aug 2013 11:47:15 -0400
Message-id: <EFC5F35A-E9C3-4ED1-82A0-54D374548FE5@apple.com>
References: <1375791638.6320.8.camel@rubik>
Subject: Re: [Printing-architecture] Handling multiple files of varying
	formats in CUPS
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
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>

Tim,

Filed the following Apple bugs to track this:

    <rdar://problem/14660379> cups.org: Missing last-document attribute from IPP backend.
    <rdar://problem/14660414> cups.org: Multiple file printing with different document formats is broken

Comments inline...

On 2013-08-06, at 8:20 AM, Tim Waugh <twaugh@redhat.com> wrote:
> ...
> This is because the client, the ipp backend, only sets the last-document
> attribute for the last file -- but the scheduler requires it for each
> Send-Document request.
> 
> Attached is a patch to fix that.

Will include this in the final 1.6.4 and 1.7.0 releases.

> However, even with that patch there is another problem. The files are
> auto-typed correctly but the ipp backend sends:
> 
> Create-Document document-format=application/postscript
> Send-Document document-format=application/postscript
> Send-Document document-format=application/postscript (WRONG!)
> 
> In other words, CUPS sets the document-format attribute of every file in
> a multi-file job to the format it detected for the first file.
> 
> I don't think the ipp backend has access to the auto-typed formats for
> subsequent files (just the CONTENT_TYPE variable, which is set to that
> of the first file).
> 
> One possible solution is to simply use application/octet-stream and let
> the remote queue do its own auto-typing. I'm not sure what possible
> downsides this might have.


The downside is that we will rely on auto-typing, even for jobs that auto-typing doesn't work (e.g. raw jobs).

I'm not sure what the right answer is, but I am tracking this separately since it will be a harder problem to solve.  I am thinking that we need CONTENT_TYPE_n environment variables that provide the content type of each file, not just the first one.

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

