Return-Path: <jsmeix@suse.de>
MIME-Version: 1.0
Date: Wed, 24 Feb 2021 15:46:36 +0100
From: Johannes Meixner <jsmeix@suse.de>
In-Reply-To: <1099419D-7CC7-448C-84B1-5C35D75F7A03@msweet.org>
References: <12af8541-3113-341d-6b7f-d7393203368f@gmail.com>
 <1099419D-7CC7-448C-84B1-5C35D75F7A03@msweet.org>
Message-ID: <3e467a3bd51a7bc8083e6f06532db4ad@suse.de>
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Automatic printer setup with Printer
 Applications
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org


Hello,

On 2021-02-24 15:17, Michael Sweet wrote (excerpt):
> Right now, the *expected* behavior is that the user
> has a compatible IPP printer and they don't need any
> special software for it.  The *exception* is that a user
> has a printer that needs extra software.
...
> Note: I am fully aware that in the photo/art printing arena
> there are people that will still want to use Gutenprint
> or other special purpose software rather than the
> standard IPP interface - that's fine, and that is what
> the Printer Application is for in the long term.
> But those users are "experts" and will know how to install
> the application and configure it for their printer.

I like to add that in enterprise environments
automated printer setup is almost never needed.

So nowadays any further efforts for automated printer setup
could be mostly a waste of time - time that could be better
spend elsewhere (even if that is just more time for beer ;-)

The more I think about it the more I like the idea
to deprectate all printer setup tools and related stuff
except what CUPS itself provides.

For the exceptional cases only documentation should be sufficient
like "when you have 'ACME SpecialPrinter XL' do this and that".


Kind Regards
Johannes Meixner
-- 
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5 - 90409 Nuernberg - Germany
(HRB 36809, AG Nuernberg) GF: Felix Imendoerffer
