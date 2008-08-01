Message-ID: <4893474C.9070004@gmail.com>
Date: Fri, 01 Aug 2008 19:26:36 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <200807310223.m6V2NkAv006976@dsl092-065-009.bos1.dsl.speakeasy.net>
	<48918374.8080404@gmail.com>
	<200807311309.m6VD9s5n018013@dsl092-065-009.bos1.dsl.speakeasy.net>
	<p06110400c4b793ad4cd1@[192.168.1.102]>
	<200807312114.m6VLEhgd004613@dsl092-065-009.bos1.dsl.speakeasy.net>
	<489230B6.8050306@gmail.com>
	<200807312156.m6VLusVF004364@dsl092-065-009.bos1.dsl.speakeasy.net>
	<4892B6A9.90609@gmail.com>
	<200808011134.m71BYXdK003793@dsl092-065-009.bos1.dsl.speakeasy.net>
	<4892FDDB.5060104@gmail.com>
	<20080801123314.GA26452@nagini.vm.bytemark.co.uk>
	<200808011243.m71ChRZ9004044@dsl092-065-009.bos1.dsl.speakeasy.net>
	<48934629.3060501@apple.com>
In-Reply-To: <48934629.3060501@apple.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [Gimp-print-devel] Common Printing
 Dialog: PPD	extension	specs updated
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael R Sweet <msweet@apple.com>
Cc: Roger Leigh <rleigh@whinlatter.ukfsn.org>, jriddell@ubuntu.com, printing-architecture@lists.linux-foundation.org, printing-japan@lists.linux-foundation.org, Robert Krawitz <rlk@alum.mit.edu>, gimp-print-devel@lists.sourceforge.net

Michael R Sweet wrote:
> One method would be to simply not use gettext at all, and instead
> read the .po files directly (which is what we do for CUPS, for a
> number of reasons...)  The code isn't hard (in fact it is part of
> the po2strings program I use to make the Mac OS X bundle stuff
> right now) and it avoids all of these issues.  We'd still use
> setlocale() to get the current locale and localize to that for users
> of the gutenprint library (genppd would just localize the English
> strings from the library...)
> 
> If you'd like, I can spend time on this and back out the bundle
> changes for Mac OS X, since then we would no longer require them.

This would be great to save duplicate effort.

    Till

