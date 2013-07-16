Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <1373992044.4007.37.camel@rubik>
Date: Tue, 16 Jul 2013 12:34:12 -0400
Message-id: <D834FFC7-4392-4096-9DD3-8C996E3D3989@apple.com>
References: <51DC8343.4020104@gmail.com>
	<8CA7D32C-A551-482E-9F26-9C1909D74736@apple.com>
	<843B55ED-9D7F-4ECD-B50B-272848E9649B@apple.com>
	<51DD7DB2.4070808@gmail.com>
	<FF2054C7-A4B4-4709-8267-D6D202DC0BCE@apple.com>
	<1373532534.14725.3.camel@rubik>
	<0B81606D-48D0-451E-9575-C5ECF92704D0@apple.com>
	<1373985228.4007.4.camel@rubik>
	<3FEAB426-CCAA-4897-BDB2-66DBAEDF60E6@apple.com>
	<1373992044.4007.37.camel@rubik>
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

On 2013-07-16, at 12:27 PM, Tim Waugh <twaugh@redhat.com> wrote:
> On Tue, 2013-07-16 at 10:48 -0400, Michael Sweet wrote:
>> To make matters worse, it doesn't look like GIT-SVN is properly
>> mirroring things with the current GIT repository and I think I need to
>> redo the whole thing again to make GIT happy...
> 
> I've found that '--stdlayout' is the magic option to make things work
> right, every time I've used git-svn to date. *shrug*

That only works if you have a standard layout... :/  The internal Apple repo doesn't have a standard layout due to it having more than just cups.org content, so my next attempt will be to try to convert the old repo into the new layout, convert to GIT, and then try to merge changes from the internal repo...

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

