Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <522E2609.20302@gmail.com>
Date: Mon, 09 Sep 2013 16:49:54 -0400
Message-id: <60E4622E-7C19-48F8-A03C-538D606C5814@apple.com>
References: <5228F4E5.8030203@gmail.com>
	<298AA5C8-4EA4-455C-B5DB-F665EEDF9B1C@apple.com>
	<522E2609.20302@gmail.com>
Subject: Re: [Printing-architecture] Fix for STR #4187 incomplete,
	missing part attached
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Didier Raboud <odyx@debian.org>

Till,

On Sep 9, 2013, at 3:48 PM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
> On 09/09/2013 04:40 PM, Michael Sweet wrote:
>> Till,
>> 
>> This is already fixed for <rdar://problem/14484313>, which was created in response to the bug below back in July.  The 1.6.4 and 1.7.0 releases that are queued up both contain the fix.
>> 
>> (and FWIW, "n" needs to be ssize_t, not int...)
> 
> Thank you very much, Then I know that I can remove the patch when
> switching to 1.7.0 final.
> 
> By the way, when do you plan to put out 1.7.0 and what are the show
> stoppers still preventing you from putting it out?

1.7.0 is tied to the release of OS X 10.9 (nothing I can do about that, sorry...)  Once 10.9 is out I'll be able to do periodic 1.7.x releases separate from the 10.9.x releases (no more ties for the patch updates...)

(and yes, I did not say when 1.7.0/10.9 is coming out on purpose...)

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

