Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <51DD95A9.1000506@gmail.com>
Date: Wed, 10 Jul 2013 13:30:30 -0400
Message-id: <10E1A012-2576-49D5-ABE1-ED036D5E0531@apple.com>
References: <51DC8343.4020104@gmail.com>
	<8CA7D32C-A551-482E-9F26-9C1909D74736@apple.com>
	<843B55ED-9D7F-4ECD-B50B-272848E9649B@apple.com>
	<51DD95A9.1000506@gmail.com>
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
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Till,

I don't know if you saw my followup message or not - I was unable to reproduce on TOT 1.6.  You can test TOT 1.6 from the GIT repository with:

    git clone -b branch-1.6 http://www.cups.org/cups.git cups-1.6


On Jul 10, 2013, at 1:11 PM, Till Kamppeter <till.kamppeter@gmail.com> wrote:

> Unfortunately, this patch applies to a completely new concept of CUPS
> 1.7.x which did not exist in 1.6.x. Can you also supply a fix for CUPS
> 1.6.x, so that I can do a patch release of CUPS for Ubuntu 13.04? Thanks.
> 
>   Till
> 
> On 07/10/2013 04:44 PM, Michael Sweet wrote:
>> Till,
>> 
>> Here is the patch for 1.7 (1.7rc1 to be released soon):
>> 

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

